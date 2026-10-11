package com.sun.org.apache.xerces.internal.impl;

import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLAttributesImpl;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.util.XMLStringBuffer;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler;
import com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import com.sun.xml.internal.stream.dtd.nonvalidating.DTDGrammar;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes10.dex */
public class XMLDTDScannerImpl extends XMLScanner implements XMLDTDScanner, XMLComponent, XMLEntityHandler {
    private static final boolean DEBUG_SCANNER_STATE = false;
    protected static final int SCANNER_STATE_END_OF_INPUT = 0;
    protected static final int SCANNER_STATE_MARKUP_DECL = 2;
    protected static final int SCANNER_STATE_TEXT_DECL = 1;
    private XMLAttributesImpl fAttributes;
    private int fContentDepth;
    private int[] fContentStack;
    protected XMLDTDContentModelHandler fDTDContentModelHandler;
    public XMLDTDHandler fDTDHandler;
    private String[] fEnumeration;
    private int fEnumerationCount;
    private int fExtEntityDepth;
    private XMLStringBuffer fIgnoreConditionalBuffer;
    private int fIncludeSectDepth;
    private XMLString fLiteral;
    private XMLString fLiteral2;
    private int fMarkUpDepth;
    private int fPEDepth;
    private boolean[] fPEReport;
    private int[] fPEStack;
    protected int fScannerState;
    protected boolean fSeenExternalDTD;
    protected boolean fSeenExternalPE;
    protected boolean fStandalone;
    private boolean fStartDTDCalled;
    private XMLString fString;
    private XMLStringBuffer fStringBuffer;
    private XMLStringBuffer fStringBuffer2;
    private String[] fStrings;
    boolean nonValidatingMode;
    DTDGrammar nvGrammarInfo;
    private static final String[] RECOGNIZED_FEATURES = {"http://xml.org/sax/features/validation", "http://apache.org/xml/features/scanner/notify-char-refs"};
    private static final Boolean[] FEATURE_DEFAULTS = {null, Boolean.FALSE};
    private static final String[] RECOGNIZED_PROPERTIES = {"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-manager"};
    private static final Object[] PROPERTY_DEFAULTS = {null, null, null};

    public XMLDTDScannerImpl() {
        this.fDTDHandler = null;
        this.fAttributes = new XMLAttributesImpl();
        this.fContentStack = new int[5];
        this.fPEStack = new int[5];
        this.fPEReport = new boolean[5];
        this.fStrings = new String[3];
        this.fString = new XMLString();
        this.fStringBuffer = new XMLStringBuffer();
        this.fStringBuffer2 = new XMLStringBuffer();
        this.fLiteral = new XMLString();
        this.fLiteral2 = new XMLString();
        this.fEnumeration = new String[5];
        this.fIgnoreConditionalBuffer = new XMLStringBuffer(128);
        this.nvGrammarInfo = null;
        this.nonValidatingMode = false;
    }

    private final void ensureEnumerationSize(int i) {
        String[] strArr = this.fEnumeration;
        if (strArr.length == i) {
            String[] strArr2 = new String[i * 2];
            System.arraycopy(strArr, 0, strArr2, 0, i);
            this.fEnumeration = strArr2;
        }
    }

    private static String getScannerStateName(int i) {
        return "??? (" + i + ')';
    }

    private void init() {
        this.fStartDTDCalled = false;
        this.fExtEntityDepth = 0;
        this.fIncludeSectDepth = 0;
        this.fMarkUpDepth = 0;
        this.fPEDepth = 0;
        this.fStandalone = false;
        this.fSeenExternalDTD = false;
        this.fSeenExternalPE = false;
        setScannerState(1);
    }

    private final boolean peekReportEntity() {
        return this.fPEReport[this.fPEDepth - 1];
    }

    private final int popContentStack() {
        int[] iArr = this.fContentStack;
        int i = this.fContentDepth - 1;
        this.fContentDepth = i;
        return iArr[i];
    }

    private final int popPEStack() {
        int[] iArr = this.fPEStack;
        int i = this.fPEDepth - 1;
        this.fPEDepth = i;
        return iArr[i];
    }

    private final void pushContentStack(int i) {
        int[] iArr = this.fContentStack;
        int length = iArr.length;
        int i2 = this.fContentDepth;
        if (length == i2) {
            int[] iArr2 = new int[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.fContentStack = iArr2;
        }
        int[] iArr3 = this.fContentStack;
        int i3 = this.fContentDepth;
        this.fContentDepth = i3 + 1;
        iArr3[i3] = i;
    }

    private final void pushPEStack(int i, boolean z) {
        int[] iArr = this.fPEStack;
        int length = iArr.length;
        int i2 = this.fPEDepth;
        if (length == i2) {
            int[] iArr2 = new int[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.fPEStack = iArr2;
            int i3 = this.fPEDepth;
            boolean[] zArr = new boolean[i3 * 2];
            System.arraycopy(this.fPEReport, 0, zArr, 0, i3);
            this.fPEReport = zArr;
        }
        boolean[] zArr2 = this.fPEReport;
        int i4 = this.fPEDepth;
        zArr2[i4] = z;
        int[] iArr3 = this.fPEStack;
        this.fPEDepth = i4 + 1;
        iArr3[i4] = i;
    }

    private final String scanAttType(String str, String str2) throws IOException, XNIException {
        int scanChar;
        int scanChar2;
        this.fEnumerationCount = 0;
        if (this.fEntityScanner.skipString("CDATA")) {
            return "CDATA";
        }
        if (this.fEntityScanner.skipString("IDREFS")) {
            return "IDREFS";
        }
        if (this.fEntityScanner.skipString("IDREF")) {
            return "IDREF";
        }
        if (this.fEntityScanner.skipString("ID")) {
            return "ID";
        }
        if (this.fEntityScanner.skipString("ENTITY")) {
            return "ENTITY";
        }
        if (this.fEntityScanner.skipString("ENTITIES")) {
            return "ENTITIES";
        }
        if (this.fEntityScanner.skipString("NMTOKENS")) {
            return "NMTOKENS";
        }
        if (this.fEntityScanner.skipString("NMTOKEN")) {
            return "NMTOKEN";
        }
        if (!this.fEntityScanner.skipString("NOTATION")) {
            if (this.fEntityScanner.scanChar() != 40) {
                reportFatalError("AttTypeRequiredInAttDef", new Object[]{str, str2});
            }
            this.fMarkUpDepth++;
            do {
                skipSeparator(false, !scanningInternalSubset());
                String scanNmtoken = this.fEntityScanner.scanNmtoken();
                if (scanNmtoken == null) {
                    reportFatalError("MSG_NMTOKEN_REQUIRED_IN_ENUMERATION", new Object[]{str, str2});
                }
                ensureEnumerationSize(this.fEnumerationCount + 1);
                String[] strArr = this.fEnumeration;
                int i = this.fEnumerationCount;
                this.fEnumerationCount = i + 1;
                strArr[i] = scanNmtoken;
                skipSeparator(false, !scanningInternalSubset());
                scanChar = this.fEntityScanner.scanChar();
            } while (scanChar == 124);
            if (scanChar != 41) {
                reportFatalError("EnumerationUnterminated", new Object[]{str, str2});
            }
            this.fMarkUpDepth--;
            return "ENUMERATION";
        }
        if (!skipSeparator(true, !scanningInternalSubset())) {
            reportFatalError("MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE", new Object[]{str, str2});
        }
        if (this.fEntityScanner.scanChar() != 40) {
            reportFatalError("MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE", new Object[]{str, str2});
        }
        this.fMarkUpDepth++;
        do {
            skipSeparator(false, !scanningInternalSubset());
            String scanName = this.fEntityScanner.scanName();
            if (scanName == null) {
                reportFatalError("MSG_NAME_REQUIRED_IN_NOTATIONTYPE", new Object[]{str, str2});
            }
            ensureEnumerationSize(this.fEnumerationCount + 1);
            String[] strArr2 = this.fEnumeration;
            int i2 = this.fEnumerationCount;
            this.fEnumerationCount = i2 + 1;
            strArr2[i2] = scanName;
            skipSeparator(false, !scanningInternalSubset());
            scanChar2 = this.fEntityScanner.scanChar();
        } while (scanChar2 == 124);
        if (scanChar2 != 41) {
            reportFatalError("NotationTypeUnterminated", new Object[]{str, str2});
        }
        this.fMarkUpDepth--;
        return "NOTATION";
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c3, code lost:
    
        skipSeparator(false, !scanningInternalSubset());
        r1 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void scanChildren(java.lang.String r12) throws java.io.IOException, com.sun.org.apache.xerces.internal.xni.XNIException {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLDTDScannerImpl.scanChildren(java.lang.String):void");
    }

    private final void scanConditionalSect(int i) throws IOException, XNIException {
        this.fReportEntity = false;
        skipSeparator(false, !scanningInternalSubset());
        if (this.fEntityScanner.skipString("INCLUDE")) {
            skipSeparator(false, !scanningInternalSubset());
            if (i != this.fPEDepth && this.fValidation) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "INVALID_PE_IN_CONDITIONAL", new Object[]{this.fEntityManager.fCurrentEntity.name}, (short) 1);
            }
            if (!this.fEntityScanner.skipChar(91)) {
                reportFatalError("MSG_MARKUP_NOT_RECOGNIZED_IN_DTD", null);
            }
            XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.startConditional((short) 0, null);
            }
            this.fIncludeSectDepth++;
            this.fReportEntity = true;
            return;
        }
        if (!this.fEntityScanner.skipString("IGNORE")) {
            reportFatalError("MSG_MARKUP_NOT_RECOGNIZED_IN_DTD", null);
            return;
        }
        skipSeparator(false, !scanningInternalSubset());
        if (i != this.fPEDepth && this.fValidation) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "INVALID_PE_IN_CONDITIONAL", new Object[]{this.fEntityManager.fCurrentEntity.name}, (short) 1);
        }
        XMLDTDHandler xMLDTDHandler2 = this.fDTDHandler;
        if (xMLDTDHandler2 != null) {
            xMLDTDHandler2.startConditional((short) 1, null);
        }
        if (!this.fEntityScanner.skipChar(91)) {
            reportFatalError("MSG_MARKUP_NOT_RECOGNIZED_IN_DTD", null);
        }
        this.fReportEntity = true;
        int i2 = this.fIncludeSectDepth + 1;
        this.fIncludeSectDepth = i2;
        if (this.fDTDHandler != null) {
            this.fIgnoreConditionalBuffer.clear();
        }
        while (true) {
            if (this.fEntityScanner.skipChar(60)) {
                if (this.fDTDHandler != null) {
                    this.fIgnoreConditionalBuffer.append('<');
                }
                if (this.fEntityScanner.skipChar(33)) {
                    if (this.fEntityScanner.skipChar(91)) {
                        if (this.fDTDHandler != null) {
                            this.fIgnoreConditionalBuffer.append("![");
                        }
                        this.fIncludeSectDepth++;
                    } else if (this.fDTDHandler != null) {
                        this.fIgnoreConditionalBuffer.append("!");
                    }
                }
            } else if (this.fEntityScanner.skipChar(93)) {
                if (this.fDTDHandler != null) {
                    this.fIgnoreConditionalBuffer.append(']');
                }
                if (this.fEntityScanner.skipChar(93)) {
                    if (this.fDTDHandler != null) {
                        this.fIgnoreConditionalBuffer.append(']');
                    }
                    while (this.fEntityScanner.skipChar(93)) {
                        if (this.fDTDHandler != null) {
                            this.fIgnoreConditionalBuffer.append(']');
                        }
                    }
                    if (this.fEntityScanner.skipChar(62)) {
                        int i3 = this.fIncludeSectDepth;
                        this.fIncludeSectDepth = i3 - 1;
                        if (i3 == i2) {
                            this.fMarkUpDepth--;
                            if (this.fDTDHandler != null) {
                                this.fLiteral.setValues(this.fIgnoreConditionalBuffer.f64120ch, 0, r1.length - 2);
                                this.fDTDHandler.ignoredCharacters(this.fLiteral, null);
                                this.fDTDHandler.endConditional(null);
                                return;
                            }
                            return;
                        }
                        if (this.fDTDHandler != null) {
                            this.fIgnoreConditionalBuffer.append('>');
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            } else {
                int scanChar = this.fEntityScanner.scanChar();
                if (this.fScannerState == 0) {
                    reportFatalError("IgnoreSectUnterminated", null);
                    return;
                } else if (this.fDTDHandler != null) {
                    this.fIgnoreConditionalBuffer.append((char) scanChar);
                }
            }
        }
    }

    private final void scanEntityDecl() throws IOException, XNIException {
        boolean z;
        boolean z2;
        String str;
        this.fReportEntity = false;
        if (this.fEntityScanner.skipSpaces()) {
            if (this.fEntityScanner.skipChar(37)) {
                if (!skipSeparator(true, !scanningInternalSubset())) {
                    if (scanningInternalSubset()) {
                        reportFatalError("MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL", null);
                    } else {
                        if (this.fEntityScanner.peekChar() == 37) {
                            skipSeparator(false, !scanningInternalSubset());
                        }
                        z2 = false;
                        z = true;
                    }
                }
                z = false;
                z2 = true;
            }
            z = false;
            z2 = false;
        } else {
            if (scanningInternalSubset() || !this.fEntityScanner.skipChar(37)) {
                reportFatalError("MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL", null);
            } else {
                if (this.fEntityScanner.skipSpaces()) {
                    reportFatalError("MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL", null);
                }
                z2 = false;
                z = true;
            }
            z = false;
            z2 = false;
        }
        if (z) {
            while (true) {
                String scanName = this.fEntityScanner.scanName();
                if (scanName == null) {
                    reportFatalError("NameRequiredInPEReference", null);
                } else if (this.fEntityScanner.skipChar(59)) {
                    startPE(scanName, false);
                } else {
                    reportFatalError("SemicolonRequiredInPEReference", new Object[]{scanName});
                }
                this.fEntityScanner.skipSpaces();
                if (!this.fEntityScanner.skipChar(37)) {
                    break;
                }
                if (!z2) {
                    if (skipSeparator(true, !scanningInternalSubset())) {
                        z2 = true;
                        break;
                    }
                    z2 = this.fEntityScanner.skipChar(37);
                }
            }
        }
        String scanName2 = this.fEntityScanner.scanName();
        if (scanName2 == null) {
            reportFatalError("MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL", null);
        }
        if (!skipSeparator(true, !scanningInternalSubset())) {
            reportFatalError("MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL", new Object[]{scanName2});
        }
        scanExternalID(this.fStrings, false);
        String[] strArr = this.fStrings;
        String str2 = strArr[0];
        String str3 = strArr[1];
        if (z2 && str2 != null) {
            this.fSeenExternalPE = true;
        }
        boolean skipSeparator = skipSeparator(true, !scanningInternalSubset());
        if (z2 || !this.fEntityScanner.skipString("NDATA")) {
            str = null;
        } else {
            if (!skipSeparator) {
                reportFatalError("MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL", new Object[]{scanName2});
            }
            if (!skipSeparator(true, !scanningInternalSubset())) {
                reportFatalError("MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL", new Object[]{scanName2});
            }
            String scanName3 = this.fEntityScanner.scanName();
            if (scanName3 == null) {
                reportFatalError("MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL", new Object[]{scanName2});
            }
            str = scanName3;
        }
        if (str2 == null) {
            scanEntityValue(this.fLiteral, this.fLiteral2);
            this.fStringBuffer.clear();
            this.fStringBuffer2.clear();
            XMLStringBuffer xMLStringBuffer = this.fStringBuffer;
            XMLString xMLString = this.fLiteral;
            xMLStringBuffer.append(xMLString.f64120ch, xMLString.offset, xMLString.length);
            XMLStringBuffer xMLStringBuffer2 = this.fStringBuffer2;
            XMLString xMLString2 = this.fLiteral2;
            xMLStringBuffer2.append(xMLString2.f64120ch, xMLString2.offset, xMLString2.length);
        }
        skipSeparator(false, !scanningInternalSubset());
        if (!this.fEntityScanner.skipChar(62)) {
            reportFatalError("EntityDeclUnterminated", new Object[]{scanName2});
        }
        this.fMarkUpDepth--;
        if (z2) {
            scanName2 = "%" + scanName2;
        }
        if (str2 != null) {
            String baseSystemId = this.fEntityScanner.getBaseSystemId();
            if (str != null) {
                this.fEntityStore.addUnparsedEntity(scanName2, str3, str2, baseSystemId, str);
            } else {
                this.fEntityStore.addExternalEntity(scanName2, str3, str2, baseSystemId);
            }
            if (this.fDTDHandler != null) {
                this.fResourceIdentifier.setValues(str3, str2, baseSystemId, XMLEntityManager.expandSystemId(str2, baseSystemId));
                if (str != null) {
                    this.fDTDHandler.unparsedEntityDecl(scanName2, this.fResourceIdentifier, str, null);
                } else {
                    this.fDTDHandler.externalEntityDecl(scanName2, this.fResourceIdentifier, null);
                }
            }
        } else {
            this.fEntityStore.addInternalEntity(scanName2, this.fStringBuffer.toString());
            XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.internalEntityDecl(scanName2, this.fStringBuffer, this.fStringBuffer2, null);
            }
        }
        this.fReportEntity = true;
    }

    private final void scanMixed(String str) throws IOException, XNIException {
        this.fStringBuffer.append("#PCDATA");
        XMLDTDContentModelHandler xMLDTDContentModelHandler = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler != null) {
            xMLDTDContentModelHandler.pcdata(null);
        }
        skipSeparator(false, !scanningInternalSubset());
        String str2 = null;
        while (this.fEntityScanner.skipChar(124)) {
            this.fStringBuffer.append('|');
            XMLDTDContentModelHandler xMLDTDContentModelHandler2 = this.fDTDContentModelHandler;
            if (xMLDTDContentModelHandler2 != null) {
                xMLDTDContentModelHandler2.separator((short) 0, null);
            }
            skipSeparator(false, !scanningInternalSubset());
            str2 = this.fEntityScanner.scanName();
            if (str2 == null) {
                reportFatalError("MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT", new Object[]{str});
            }
            this.fStringBuffer.append(str2);
            XMLDTDContentModelHandler xMLDTDContentModelHandler3 = this.fDTDContentModelHandler;
            if (xMLDTDContentModelHandler3 != null) {
                xMLDTDContentModelHandler3.element(str2, null);
            }
            skipSeparator(false, !scanningInternalSubset());
        }
        if (this.fEntityScanner.skipString(")*")) {
            this.fStringBuffer.append(")*");
            XMLDTDContentModelHandler xMLDTDContentModelHandler4 = this.fDTDContentModelHandler;
            if (xMLDTDContentModelHandler4 != null) {
                xMLDTDContentModelHandler4.endGroup(null);
                this.fDTDContentModelHandler.occurrence((short) 3, null);
            }
        } else if (str2 != null) {
            reportFatalError("MixedContentUnterminated", new Object[]{str});
        } else if (this.fEntityScanner.skipChar(41)) {
            this.fStringBuffer.append(')');
            XMLDTDContentModelHandler xMLDTDContentModelHandler5 = this.fDTDContentModelHandler;
            if (xMLDTDContentModelHandler5 != null) {
                xMLDTDContentModelHandler5.endGroup(null);
            }
        } else {
            reportFatalError("MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN", new Object[]{str});
        }
        this.fMarkUpDepth--;
    }

    private final void scanNotationDecl() throws IOException, XNIException {
        this.fReportEntity = false;
        if (!skipSeparator(true, !scanningInternalSubset())) {
            reportFatalError("MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL", null);
        }
        String scanName = this.fEntityScanner.scanName();
        if (scanName == null) {
            reportFatalError("MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL", null);
        }
        if (!skipSeparator(true, !scanningInternalSubset())) {
            reportFatalError("MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL", new Object[]{scanName});
        }
        scanExternalID(this.fStrings, true);
        String[] strArr = this.fStrings;
        String str = strArr[0];
        String str2 = strArr[1];
        String baseSystemId = this.fEntityScanner.getBaseSystemId();
        if (str == null && str2 == null) {
            reportFatalError("ExternalIDorPublicIDRequired", new Object[]{scanName});
        }
        skipSeparator(false, !scanningInternalSubset());
        if (!this.fEntityScanner.skipChar(62)) {
            reportFatalError("NotationDeclUnterminated", new Object[]{scanName});
        }
        this.fMarkUpDepth--;
        this.fResourceIdentifier.setValues(str2, str, baseSystemId, XMLEntityManager.expandSystemId(str, baseSystemId));
        if (this.nonValidatingMode) {
            this.nvGrammarInfo.notationDecl(scanName, this.fResourceIdentifier, null);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.notationDecl(scanName, this.fResourceIdentifier, null);
        }
        this.fReportEntity = true;
    }

    private boolean skipSeparator(boolean z, boolean z2) throws IOException, XNIException {
        int i = this.fPEDepth;
        boolean skipSpaces = this.fEntityScanner.skipSpaces();
        if (!z2 || !this.fEntityScanner.skipChar(37)) {
            return (z && !skipSpaces && i == this.fPEDepth) ? false : true;
        }
        do {
            String scanName = this.fEntityScanner.scanName();
            if (scanName == null) {
                reportFatalError("NameRequiredInPEReference", null);
            } else if (!this.fEntityScanner.skipChar(59)) {
                reportFatalError("SemicolonRequiredInPEReference", new Object[]{scanName});
            }
            startPE(scanName, false);
            this.fEntityScanner.skipSpaces();
        } while (this.fEntityScanner.skipChar(37));
        return true;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.impl.XMLEntityHandler
    public void endEntity(String str, Augmentations augmentations) throws XNIException, IOException {
        super.endEntity(str, augmentations);
        if (this.fScannerState == 0) {
            return;
        }
        boolean z = this.fReportEntity;
        if (str.startsWith("%")) {
            z = peekReportEntity();
            int popPEStack = popPEStack();
            if (popPEStack == 0 && popPEStack < this.fMarkUpDepth) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "ILL_FORMED_PARAMETER_ENTITY_WHEN_USED_IN_DECL", new Object[]{this.fEntityManager.fCurrentEntity.name}, (short) 2);
            }
            if (popPEStack != this.fMarkUpDepth) {
                if (this.fValidation) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "ImproperDeclarationNesting", new Object[]{str}, (short) 1);
                }
                z = false;
            }
            if (this.fEntityScanner.isExternal()) {
                this.fExtEntityDepth--;
            }
        }
        boolean equals = str.equals("[dtd]");
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null && !equals && z) {
            xMLDTDHandler.endParameterEntity(str, null);
        }
        if (equals) {
            if (this.fIncludeSectDepth != 0) {
                reportFatalError("IncludeSectUnterminated", null);
            }
            this.fScannerState = 0;
            this.fEntityManager.endExternalSubset();
            this.fEntityStore.endExternalSubset();
            XMLDTDHandler xMLDTDHandler2 = this.fDTDHandler;
            if (xMLDTDHandler2 != null) {
                xMLDTDHandler2.endExternalSubset(null);
                this.fDTDHandler.endDTD(null);
            }
            this.fExtEntityDepth--;
        }
        if (augmentations == null || !Boolean.TRUE.equals(augmentations.getItem(Constants.LAST_ENTITY))) {
            return;
        }
        if (this.fMarkUpDepth != 0 || this.fExtEntityDepth != 0 || this.fIncludeSectDepth != 0) {
            throw new EOFException();
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource
    public XMLDTDContentModelHandler getDTDContentModelHandler() {
        return this.fDTDContentModelHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource
    public XMLDTDHandler getDTDHandler() {
        return this.fDTDHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_FEATURES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return FEATURE_DEFAULTS[i];
            }
            i++;
        }
    }

    public DTDGrammar getGrammar() {
        return this.nvGrammarInfo;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_PROPERTIES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return PROPERTY_DEFAULTS[i];
            }
            i++;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) RECOGNIZED_FEATURES.clone();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) RECOGNIZED_PROPERTIES.clone();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        super.reset(xMLComponentManager);
        init();
    }

    public final String scanAttDefaultDecl(String str, String str2, String str3, XMLString xMLString, XMLString xMLString2) throws IOException, XNIException {
        this.fString.clear();
        xMLString.clear();
        String str4 = "#REQUIRED";
        if (!this.fEntityScanner.skipString("#REQUIRED")) {
            str4 = "#IMPLIED";
            if (!this.fEntityScanner.skipString("#IMPLIED")) {
                str4 = "#FIXED";
                boolean z = true;
                if (!this.fEntityScanner.skipString("#FIXED")) {
                    str4 = null;
                } else if (!skipSeparator(true, !scanningInternalSubset())) {
                    reportFatalError("MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL", new Object[]{str, str2});
                }
                if (this.fStandalone || (!this.fSeenExternalDTD && !this.fSeenExternalPE)) {
                    z = false;
                }
                scanAttributeValue(xMLString, xMLString2, str2, this.fAttributes, 0, z);
            }
        }
        return str4;
    }

    public final void scanAttlistDecl() throws IOException, XNIException {
        int i;
        String[] strArr;
        int i2;
        String str;
        String str2;
        this.fReportEntity = false;
        if (!skipSeparator(true, !scanningInternalSubset())) {
            reportFatalError("MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ATTLISTDECL", null);
        }
        String scanName = this.fEntityScanner.scanName();
        if (scanName == null) {
            reportFatalError("MSG_ELEMENT_TYPE_REQUIRED_IN_ATTLISTDECL", null);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startAttlist(scanName, null);
        }
        int i3 = 62;
        if (!skipSeparator(true, !scanningInternalSubset())) {
            if (this.fEntityScanner.skipChar(62)) {
                XMLDTDHandler xMLDTDHandler2 = this.fDTDHandler;
                if (xMLDTDHandler2 != null) {
                    xMLDTDHandler2.endAttlist(null);
                }
                this.fMarkUpDepth--;
                return;
            }
            reportFatalError("MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF", new Object[]{scanName});
        }
        while (!this.fEntityScanner.skipChar(i3)) {
            String scanName2 = this.fEntityScanner.scanName();
            if (scanName2 == null) {
                reportFatalError("AttNameRequiredInAttDef", new Object[]{scanName});
            }
            if (!skipSeparator(true, !scanningInternalSubset())) {
                reportFatalError("MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF", new Object[]{scanName, scanName2});
            }
            String scanAttType = scanAttType(scanName, scanName2);
            if (!skipSeparator(true, !scanningInternalSubset())) {
                reportFatalError("MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF", new Object[]{scanName, scanName2});
            }
            String scanAttDefaultDecl = scanAttDefaultDecl(scanName, scanName2, scanAttType, this.fLiteral, this.fLiteral2);
            if ((this.fDTDHandler != null || this.nonValidatingMode) && (i = this.fEnumerationCount) != 0) {
                strArr = new String[i];
                System.arraycopy(this.fEnumeration, 0, strArr, 0, i);
            } else {
                strArr = null;
            }
            if (scanAttDefaultDecl == null || !(scanAttDefaultDecl.equals("#REQUIRED") || scanAttDefaultDecl.equals("#IMPLIED"))) {
                i2 = i3;
                str = scanName;
                XMLDTDHandler xMLDTDHandler3 = this.fDTDHandler;
                if (xMLDTDHandler3 != null) {
                    xMLDTDHandler3.attributeDecl(str, scanName2, scanAttType, strArr, scanAttDefaultDecl, this.fLiteral, this.fLiteral2, null);
                }
                if (this.nonValidatingMode) {
                    this.nvGrammarInfo.attributeDecl(str, scanName2, scanAttType, strArr, scanAttDefaultDecl, this.fLiteral, this.fLiteral2, null);
                }
            } else {
                XMLDTDHandler xMLDTDHandler4 = this.fDTDHandler;
                if (xMLDTDHandler4 != null) {
                    str2 = scanName2;
                    i2 = i3;
                    str = scanName;
                    xMLDTDHandler4.attributeDecl(scanName, scanName2, scanAttType, strArr, scanAttDefaultDecl, null, null, null);
                } else {
                    str2 = scanName2;
                    i2 = i3;
                    str = scanName;
                }
                if (this.nonValidatingMode) {
                    this.nvGrammarInfo.attributeDecl(str, str2, scanAttType, strArr, scanAttDefaultDecl, null, null, null);
                }
            }
            skipSeparator(false, !scanningInternalSubset());
            i3 = i2;
            scanName = str;
        }
        XMLDTDHandler xMLDTDHandler5 = this.fDTDHandler;
        if (xMLDTDHandler5 != null) {
            xMLDTDHandler5.endAttlist(null);
        }
        this.fMarkUpDepth--;
        this.fReportEntity = true;
    }

    public final void scanComment() throws IOException, XNIException {
        this.fReportEntity = false;
        scanComment(this.fStringBuffer);
        this.fMarkUpDepth--;
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.comment(this.fStringBuffer, null);
        }
        this.fReportEntity = true;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner
    public boolean scanDTDExternalSubset(boolean z) throws IOException, XNIException {
        this.fEntityManager.setEntityHandler(this);
        if (this.fScannerState == 1) {
            this.fSeenExternalDTD = true;
            boolean scanTextDecl = scanTextDecl();
            if (this.fScannerState == 0) {
                return false;
            }
            setScannerState(2);
            if (scanTextDecl && !z) {
                return true;
            }
        }
        while (scanDecls(z)) {
            if (!z) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner
    public boolean scanDTDInternalSubset(boolean z, boolean z2, boolean z3) throws IOException, XNIException {
        this.fEntityScanner = this.fEntityManager.getEntityScanner();
        this.fEntityManager.setEntityHandler(this);
        this.fStandalone = z2;
        if (this.fScannerState == 1) {
            XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.startDTD(this.fEntityScanner, null);
                this.fStartDTDCalled = true;
            }
            if (this.nonValidatingMode) {
                this.fStartDTDCalled = true;
                this.nvGrammarInfo.startDTD(this.fEntityScanner, null);
            }
            setScannerState(2);
        }
        while (scanDecls(z)) {
            if (!z) {
                return true;
            }
        }
        XMLDTDHandler xMLDTDHandler2 = this.fDTDHandler;
        if (xMLDTDHandler2 != null && !z3) {
            xMLDTDHandler2.endDTD(null);
        }
        if (this.nonValidatingMode && !z3) {
            this.nvGrammarInfo.endDTD(null);
        }
        setScannerState(1);
        return false;
    }

    public final boolean scanDecls(boolean z) throws IOException, XNIException {
        skipSeparator(false, true);
        boolean z2 = true;
        while (z2 && this.fScannerState == 2) {
            if (this.fEntityScanner.skipChar(60)) {
                this.fMarkUpDepth++;
                if (this.fEntityScanner.skipChar(63)) {
                    this.fStringBuffer.clear();
                    scanPI(this.fStringBuffer);
                } else if (!this.fEntityScanner.skipChar(33)) {
                    this.fMarkUpDepth--;
                    reportFatalError("MSG_MARKUP_NOT_RECOGNIZED_IN_DTD", null);
                } else if (this.fEntityScanner.skipChar(45)) {
                    if (this.fEntityScanner.skipChar(45)) {
                        scanComment();
                    } else {
                        reportFatalError("MSG_MARKUP_NOT_RECOGNIZED_IN_DTD", null);
                    }
                } else if (this.fEntityScanner.skipString("ELEMENT")) {
                    scanElementDecl();
                } else if (this.fEntityScanner.skipString("ATTLIST")) {
                    scanAttlistDecl();
                } else if (this.fEntityScanner.skipString("ENTITY")) {
                    scanEntityDecl();
                } else if (this.fEntityScanner.skipString("NOTATION")) {
                    scanNotationDecl();
                } else if (!this.fEntityScanner.skipChar(91) || scanningInternalSubset()) {
                    this.fMarkUpDepth--;
                    reportFatalError("MSG_MARKUP_NOT_RECOGNIZED_IN_DTD", null);
                } else {
                    scanConditionalSect(this.fPEDepth);
                }
            } else if (this.fIncludeSectDepth > 0 && this.fEntityScanner.skipChar(93)) {
                if (!this.fEntityScanner.skipChar(93) || !this.fEntityScanner.skipChar(62)) {
                    reportFatalError("IncludeSectUnterminated", null);
                }
                XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
                if (xMLDTDHandler != null) {
                    xMLDTDHandler.endConditional(null);
                }
                this.fIncludeSectDepth--;
                this.fMarkUpDepth--;
            } else {
                if (scanningInternalSubset() && this.fEntityScanner.peekChar() == 93) {
                    return false;
                }
                if (!this.fEntityScanner.skipSpaces()) {
                    reportFatalError("MSG_MARKUP_NOT_RECOGNIZED_IN_DTD", null);
                }
            }
            skipSeparator(false, true);
            z2 = z;
        }
        return this.fScannerState != 0;
    }

    public final void scanElementDecl() throws IOException, XNIException {
        this.fReportEntity = false;
        if (!skipSeparator(true, !scanningInternalSubset())) {
            reportFatalError("MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL", null);
        }
        String scanName = this.fEntityScanner.scanName();
        if (scanName == null) {
            reportFatalError("MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL", null);
        }
        if (!skipSeparator(true, !scanningInternalSubset())) {
            reportFatalError("MSG_SPACE_REQUIRED_BEFORE_CONTENTSPEC_IN_ELEMENTDECL", new Object[]{scanName});
        }
        XMLDTDContentModelHandler xMLDTDContentModelHandler = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler != null) {
            xMLDTDContentModelHandler.startContentModel(scanName, null);
        }
        this.fReportEntity = true;
        String str = "EMPTY";
        if (this.fEntityScanner.skipString("EMPTY")) {
            XMLDTDContentModelHandler xMLDTDContentModelHandler2 = this.fDTDContentModelHandler;
            if (xMLDTDContentModelHandler2 != null) {
                xMLDTDContentModelHandler2.empty(null);
            }
        } else {
            str = "ANY";
            if (this.fEntityScanner.skipString("ANY")) {
                XMLDTDContentModelHandler xMLDTDContentModelHandler3 = this.fDTDContentModelHandler;
                if (xMLDTDContentModelHandler3 != null) {
                    xMLDTDContentModelHandler3.any(null);
                }
            } else {
                if (!this.fEntityScanner.skipChar(40)) {
                    reportFatalError("MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN", new Object[]{scanName});
                }
                XMLDTDContentModelHandler xMLDTDContentModelHandler4 = this.fDTDContentModelHandler;
                if (xMLDTDContentModelHandler4 != null) {
                    xMLDTDContentModelHandler4.startGroup(null);
                }
                this.fStringBuffer.clear();
                this.fStringBuffer.append('(');
                this.fMarkUpDepth++;
                skipSeparator(false, !scanningInternalSubset());
                if (this.fEntityScanner.skipString("#PCDATA")) {
                    scanMixed(scanName);
                } else {
                    scanChildren(scanName);
                }
                str = this.fStringBuffer.toString();
            }
        }
        XMLDTDContentModelHandler xMLDTDContentModelHandler5 = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler5 != null) {
            xMLDTDContentModelHandler5.endContentModel(null);
        }
        this.fReportEntity = false;
        skipSeparator(false, !scanningInternalSubset());
        if (!this.fEntityScanner.skipChar(62)) {
            reportFatalError("ElementDeclUnterminated", new Object[]{scanName});
        }
        this.fReportEntity = true;
        this.fMarkUpDepth--;
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.elementDecl(scanName, str, null);
        }
        if (this.nonValidatingMode) {
            this.nvGrammarInfo.elementDecl(scanName, str, null);
        }
    }

    public final void scanEntityValue(XMLString xMLString, XMLString xMLString2) throws IOException, XNIException {
        XMLString xMLString3;
        int scanChar = this.fEntityScanner.scanChar();
        if (scanChar != 39 && scanChar != 34) {
            reportFatalError("OpenQuoteMissingInDecl", null);
        }
        int i = this.fEntityDepth;
        XMLString xMLString4 = this.fString;
        if (this.fEntityScanner.scanLiteral(scanChar, xMLString4) != scanChar) {
            this.fStringBuffer.clear();
            this.fStringBuffer2.clear();
            do {
                this.fStringBuffer.append(this.fString);
                this.fStringBuffer2.append(this.fString);
                if (!this.fEntityScanner.skipChar(38)) {
                    if (!this.fEntityScanner.skipChar(37)) {
                        int peekChar = this.fEntityScanner.peekChar();
                        if (XMLChar.isHighSurrogate(peekChar)) {
                            scanSurrogates(this.fStringBuffer2);
                        } else if (isInvalidLiteral(peekChar)) {
                            reportFatalError("InvalidCharInLiteral", new Object[]{Integer.toHexString(peekChar)});
                            this.fEntityScanner.scanChar();
                        } else if (peekChar != scanChar || i != this.fEntityDepth) {
                            char c = (char) peekChar;
                            this.fStringBuffer.append(c);
                            this.fStringBuffer2.append(c);
                            this.fEntityScanner.scanChar();
                        }
                    }
                    do {
                        this.fStringBuffer2.append('%');
                        String scanName = this.fEntityScanner.scanName();
                        if (scanName == null) {
                            reportFatalError("NameRequiredInPEReference", null);
                        } else if (this.fEntityScanner.skipChar(59)) {
                            if (scanningInternalSubset()) {
                                reportFatalError("PEReferenceWithinMarkup", new Object[]{scanName});
                            }
                            this.fStringBuffer2.append(scanName);
                            this.fStringBuffer2.append(';');
                        } else {
                            reportFatalError("SemicolonRequiredInPEReference", new Object[]{scanName});
                        }
                        startPE(scanName, true);
                        this.fEntityScanner.skipSpaces();
                    } while (this.fEntityScanner.skipChar(37));
                } else if (this.fEntityScanner.skipChar(35)) {
                    this.fStringBuffer2.append("&#");
                    scanCharReferenceValue(this.fStringBuffer, this.fStringBuffer2);
                } else {
                    this.fStringBuffer.append('&');
                    this.fStringBuffer2.append('&');
                    String scanName2 = this.fEntityScanner.scanName();
                    if (scanName2 == null) {
                        reportFatalError("NameRequiredInReference", null);
                    } else {
                        this.fStringBuffer.append(scanName2);
                        this.fStringBuffer2.append(scanName2);
                    }
                    if (this.fEntityScanner.skipChar(59)) {
                        this.fStringBuffer.append(';');
                        this.fStringBuffer2.append(';');
                    } else {
                        reportFatalError("SemicolonRequiredInReference", new Object[]{scanName2});
                    }
                }
            } while (this.fEntityScanner.scanLiteral(scanChar, this.fString) != scanChar);
            this.fStringBuffer.append(this.fString);
            this.fStringBuffer2.append(this.fString);
            xMLString4 = this.fStringBuffer;
            xMLString3 = this.fStringBuffer2;
        } else {
            xMLString3 = xMLString4;
        }
        xMLString.setValues(xMLString4);
        xMLString2.setValues(xMLString3);
        if (this.fEntityScanner.skipChar(scanChar)) {
            return;
        }
        reportFatalError("CloseQuoteMissingInDecl", null);
    }

    public final void scanPIData(String str, XMLString xMLString) throws IOException, XNIException {
        this.fMarkUpDepth--;
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.processingInstruction(str, xMLString, null);
        }
    }

    public final boolean scanTextDecl() throws IOException, XNIException {
        boolean z = false;
        if (this.fEntityScanner.skipString("<?xml")) {
            this.fMarkUpDepth++;
            if (isValidNameChar(this.fEntityScanner.peekChar())) {
                this.fStringBuffer.clear();
                this.fStringBuffer.append("xml");
                while (isValidNameChar(this.fEntityScanner.peekChar())) {
                    this.fStringBuffer.append((char) this.fEntityScanner.scanChar());
                }
                SymbolTable symbolTable = this.fSymbolTable;
                XMLStringBuffer xMLStringBuffer = this.fStringBuffer;
                scanPIData(symbolTable.addSymbol(xMLStringBuffer.f64120ch, xMLStringBuffer.offset, xMLStringBuffer.length), this.fString);
            } else {
                scanXMLDeclOrTextDecl(true, this.fStrings);
                this.fMarkUpDepth--;
                String[] strArr = this.fStrings;
                String str = strArr[0];
                String str2 = strArr[1];
                this.fEntityScanner.setEncoding(str2);
                XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
                if (xMLDTDHandler != null) {
                    xMLDTDHandler.textDecl(str, str2, null);
                }
                z = true;
            }
        }
        this.fEntityManager.fCurrentEntity.mayReadChunks = true;
        return z;
    }

    public final boolean scanningInternalSubset() {
        return this.fExtEntityDepth == 0;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource
    public void setDTDContentModelHandler(XMLDTDContentModelHandler xMLDTDContentModelHandler) {
        this.fDTDContentModelHandler = xMLDTDContentModelHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource
    public void setDTDHandler(XMLDTDHandler xMLDTDHandler) {
        this.fDTDHandler = xMLDTDHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDTDScanner
    public void setInputSource(XMLInputSource xMLInputSource) throws IOException {
        if (xMLInputSource != null) {
            this.fEntityManager.setEntityHandler(this);
            this.fEntityManager.startDTDEntity(xMLInputSource);
            return;
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startDTD(null, null);
            this.fDTDHandler.endDTD(null);
        }
        if (this.nonValidatingMode) {
            this.nvGrammarInfo.startDTD(null, null);
            this.nvGrammarInfo.endDTD(null);
        }
    }

    public final void setScannerState(int i) {
        this.fScannerState = i;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.impl.XMLEntityHandler
    public void startEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        super.startEntity(str, xMLResourceIdentifier, str2, augmentations);
        boolean equals = str.equals("[dtd]");
        if (equals) {
            XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
            if (xMLDTDHandler != null && !this.fStartDTDCalled) {
                xMLDTDHandler.startDTD(this.fEntityScanner, null);
            }
            XMLDTDHandler xMLDTDHandler2 = this.fDTDHandler;
            if (xMLDTDHandler2 != null) {
                xMLDTDHandler2.startExternalSubset(xMLResourceIdentifier, null);
            }
            this.fEntityManager.startExternalSubset();
            this.fEntityStore.startExternalSubset();
            this.fExtEntityDepth++;
        } else if (str.charAt(0) == '%') {
            pushPEStack(this.fMarkUpDepth, this.fReportEntity);
            if (this.fEntityScanner.isExternal()) {
                this.fExtEntityDepth++;
            }
        }
        XMLDTDHandler xMLDTDHandler3 = this.fDTDHandler;
        if (xMLDTDHandler3 == null || equals || !this.fReportEntity) {
            return;
        }
        xMLDTDHandler3.startParameterEntity(str, xMLResourceIdentifier, str2, null);
    }

    public void startPE(String str, boolean z) throws IOException, XNIException {
        int i = this.fPEDepth;
        String str2 = "%" + str;
        if (this.fValidation && !this.fEntityStore.isDeclaredEntity(str2)) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "EntityNotDeclared", new Object[]{str}, (short) 1);
        }
        this.fEntityManager.startEntity(this.fSymbolTable.addSymbol(str2), z);
        if (i == this.fPEDepth || !this.fEntityScanner.isExternal()) {
            return;
        }
        scanTextDecl();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner
    public void reset() {
        super.reset();
        init();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner
    public void reset(PropertyManager propertyManager) {
        setPropertyManager(propertyManager);
        super.reset(propertyManager);
        init();
        this.nonValidatingMode = true;
        this.nvGrammarInfo = new DTDGrammar(this.fSymbolTable);
    }

    public XMLDTDScannerImpl(SymbolTable symbolTable, XMLErrorReporter xMLErrorReporter, XMLEntityManager xMLEntityManager) {
        this.fDTDHandler = null;
        this.fAttributes = new XMLAttributesImpl();
        this.fContentStack = new int[5];
        this.fPEStack = new int[5];
        this.fPEReport = new boolean[5];
        this.fStrings = new String[3];
        this.fString = new XMLString();
        this.fStringBuffer = new XMLStringBuffer();
        this.fStringBuffer2 = new XMLStringBuffer();
        this.fLiteral = new XMLString();
        this.fLiteral2 = new XMLString();
        this.fEnumeration = new String[5];
        this.fIgnoreConditionalBuffer = new XMLStringBuffer(128);
        this.nvGrammarInfo = null;
        this.nonValidatingMode = false;
        this.fSymbolTable = symbolTable;
        this.fErrorReporter = xMLErrorReporter;
        this.fEntityManager = xMLEntityManager;
        xMLEntityManager.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
    }
}
