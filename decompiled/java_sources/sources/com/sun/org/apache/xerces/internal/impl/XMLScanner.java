package com.sun.org.apache.xerces.internal.impl;

import com.caverock.androidsvg.SVGParser;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.util.XMLResourceIdentifierImpl;
import com.sun.org.apache.xerces.internal.util.XMLStringBuffer;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.XMLEntityStorage;
import java.io.IOException;
import java.util.ArrayList;
import javax.xml.stream.events.XMLEvent;
import org.apache.logging.log4j.util.Chars;
import org.jsoup.nodes.DocumentType;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes10.dex */
public abstract class XMLScanner implements XMLComponent {
    protected static final boolean DEBUG_ATTR_NORMALIZATION = false;
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String NOTIFY_CHAR_REFS = "http://apache.org/xml/features/scanner/notify-char-refs";
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";
    protected int fEntityDepth;
    protected XMLErrorReporter fErrorReporter;
    protected XMLEvent fEvent;
    protected boolean fNamespaces;
    protected boolean fReportEntity;
    protected boolean fScanningAttribute;
    protected SymbolTable fSymbolTable;
    protected static final String fVersionSymbol = "version".intern();
    protected static final String fEncodingSymbol = "encoding".intern();
    protected static final String fStandaloneSymbol = "standalone".intern();
    protected static final String fAmpSymbol = WebvttCueParser.f27235o.intern();
    protected static final String fLtSymbol = WebvttCueParser.f27233m.intern();
    protected static final String fGtSymbol = WebvttCueParser.f27234n.intern();
    protected static final String fQuotSymbol = "quot".intern();
    protected static final String fAposSymbol = "apos".intern();
    private boolean fNeedNonNormalizedValue = false;
    protected ArrayList attributeValueCache = new ArrayList();
    protected ArrayList stringBufferCache = new ArrayList();
    protected int fStringBufferIndex = 0;
    protected boolean fAttributeCacheInitDone = false;
    protected int fAttributeCacheUsedCount = 0;
    protected boolean fValidation = false;
    protected boolean fNotifyCharRefs = false;
    protected boolean fParserSettings = true;
    protected PropertyManager fPropertyManager = null;
    protected XMLEntityManager fEntityManager = null;
    protected XMLEntityStorage fEntityStore = null;
    protected XMLEntityScanner fEntityScanner = null;
    protected String fCharRefLiteral = null;
    private XMLString fString = new XMLString();
    private XMLStringBuffer fStringBuffer = new XMLStringBuffer();
    private XMLStringBuffer fStringBuffer2 = new XMLStringBuffer();
    private XMLStringBuffer fStringBuffer3 = new XMLStringBuffer();
    protected XMLResourceIdentifierImpl fResourceIdentifier = new XMLResourceIdentifierImpl();
    int initialCacheCount = 6;

    private void init() {
        this.fEntityScanner = null;
        this.fEntityDepth = 0;
        this.fReportEntity = true;
        this.fResourceIdentifier.clear();
        if (!this.fAttributeCacheInitDone) {
            for (int i = 0; i < this.initialCacheCount; i++) {
                this.attributeValueCache.add(new XMLString());
                this.stringBufferCache.add(new XMLStringBuffer());
            }
            this.fAttributeCacheInitDone = true;
        }
        this.fStringBufferIndex = 0;
        this.fAttributeCacheUsedCount = 0;
    }

    public void endEntity(String str, Augmentations augmentations) throws IOException, XNIException {
        this.fEntityDepth--;
    }

    public boolean getFeature(String str) throws XMLConfigurationException {
        if ("http://xml.org/sax/features/validation".equals(str)) {
            return this.fValidation;
        }
        if (NOTIFY_CHAR_REFS.equals(str)) {
            return this.fNotifyCharRefs;
        }
        throw new XMLConfigurationException((short) 0, str);
    }

    public XMLStringBuffer getStringBuffer() {
        int i = this.fStringBufferIndex;
        if (i >= this.initialCacheCount && i >= this.stringBufferCache.size()) {
            XMLStringBuffer xMLStringBuffer = new XMLStringBuffer();
            this.stringBufferCache.add(this.fStringBufferIndex, xMLStringBuffer);
            return xMLStringBuffer;
        }
        ArrayList arrayList = this.stringBufferCache;
        int i2 = this.fStringBufferIndex;
        this.fStringBufferIndex = i2 + 1;
        return (XMLStringBuffer) arrayList.get(i2);
    }

    public boolean isInvalid(int i) {
        return XMLChar.isInvalid(i);
    }

    public boolean isInvalidLiteral(int i) {
        return XMLChar.isInvalid(i);
    }

    public boolean isValidNCName(int i) {
        return XMLChar.isNCName(i);
    }

    public boolean isValidNameChar(int i) {
        return XMLChar.isName(i);
    }

    public boolean isValidNameStartChar(int i) {
        return XMLChar.isNameStart(i);
    }

    public void normalizeWhitespace(XMLString xMLString) {
        XMLEntityScanner xMLEntityScanner = this.fEntityScanner;
        int[] iArr = xMLEntityScanner.whiteSpaceLookup;
        int i = xMLEntityScanner.whiteSpaceLen;
        int i2 = xMLString.offset + xMLString.length;
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iArr[i3];
            if (i4 < i2) {
                xMLString.f64120ch[i4] = ' ';
            }
        }
    }

    public void reportFatalError(String str, Object[] objArr) throws XNIException {
        this.fErrorReporter.reportError(this.fEntityScanner, "http://www.w3.org/TR/1998/REC-xml-19980210", str, objArr, (short) 2);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        try {
            this.fParserSettings = xMLComponentManager.getFeature("http://apache.org/xml/features/internal/parser-settings");
        } catch (XMLConfigurationException unused) {
            this.fParserSettings = true;
        }
        if (!this.fParserSettings) {
            init();
            return;
        }
        this.fSymbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        XMLEntityManager xMLEntityManager = (XMLEntityManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-manager");
        this.fEntityManager = xMLEntityManager;
        this.fEntityStore = xMLEntityManager.getEntityStore();
        try {
            this.fValidation = xMLComponentManager.getFeature("http://xml.org/sax/features/validation");
        } catch (XMLConfigurationException unused2) {
            this.fValidation = false;
        }
        try {
            this.fNamespaces = xMLComponentManager.getFeature("http://xml.org/sax/features/namespaces");
        } catch (XMLConfigurationException unused3) {
            this.fNamespaces = true;
        }
        try {
            this.fNotifyCharRefs = xMLComponentManager.getFeature(NOTIFY_CHAR_REFS);
        } catch (XMLConfigurationException unused4) {
            this.fNotifyCharRefs = false;
        }
        init();
    }

    public void scanAttributeValue(XMLString xMLString, XMLString xMLString2, String str, XMLAttributes xMLAttributes, int i, boolean z) throws IOException, XNIException {
        int peekChar = this.fEntityScanner.peekChar();
        if (peekChar != 39 && peekChar != 34) {
            reportFatalError("OpenQuoteExpected", new Object[]{str});
        }
        this.fEntityScanner.scanChar();
        int i2 = this.fEntityDepth;
        int scanLiteral = this.fEntityScanner.scanLiteral(peekChar, xMLString);
        if (this.fNeedNonNormalizedValue) {
            this.fStringBuffer2.clear();
            this.fStringBuffer2.append(xMLString);
        }
        if (this.fEntityScanner.whiteSpaceLen > 0) {
            normalizeWhitespace(xMLString);
        }
        if (scanLiteral != peekChar) {
            this.fScanningAttribute = true;
            XMLStringBuffer stringBuffer = getStringBuffer();
            stringBuffer.clear();
            while (true) {
                stringBuffer.append(xMLString);
                if (scanLiteral == 38) {
                    this.fEntityScanner.skipChar(38);
                    if (i2 == this.fEntityDepth && this.fNeedNonNormalizedValue) {
                        this.fStringBuffer2.append('&');
                    }
                    if (this.fEntityScanner.skipChar(35)) {
                        if (i2 == this.fEntityDepth && this.fNeedNonNormalizedValue) {
                            this.fStringBuffer2.append('#');
                        }
                        if (this.fNeedNonNormalizedValue) {
                            scanCharReferenceValue(stringBuffer, this.fStringBuffer2);
                        } else {
                            scanCharReferenceValue(stringBuffer, null);
                        }
                    } else {
                        String scanName = this.fEntityScanner.scanName();
                        if (scanName == null) {
                            reportFatalError("NameRequiredInReference", null);
                        } else if (i2 == this.fEntityDepth && this.fNeedNonNormalizedValue) {
                            this.fStringBuffer2.append(scanName);
                        }
                        if (!this.fEntityScanner.skipChar(59)) {
                            reportFatalError("SemicolonRequiredInReference", new Object[]{scanName});
                        } else if (i2 == this.fEntityDepth && this.fNeedNonNormalizedValue) {
                            this.fStringBuffer2.append(';');
                        }
                        if (scanName == fAmpSymbol) {
                            stringBuffer.append('&');
                        } else if (scanName == fAposSymbol) {
                            stringBuffer.append(Chars.QUOTE);
                        } else if (scanName == fLtSymbol) {
                            stringBuffer.append('<');
                        } else if (scanName == fGtSymbol) {
                            stringBuffer.append('>');
                        } else if (scanName == fQuotSymbol) {
                            stringBuffer.append('\"');
                        } else if (this.fEntityStore.isExternalEntity(scanName)) {
                            reportFatalError("ReferenceToExternalEntity", new Object[]{scanName});
                        } else {
                            if (!this.fEntityStore.isDeclaredEntity(scanName)) {
                                if (!z) {
                                    reportFatalError("EntityNotDeclared", new Object[]{scanName});
                                } else if (this.fValidation) {
                                    this.fErrorReporter.reportError(this.fEntityScanner, "http://www.w3.org/TR/1998/REC-xml-19980210", "EntityNotDeclared", new Object[]{scanName}, (short) 1);
                                }
                            }
                            this.fEntityManager.startEntity(scanName, true);
                        }
                    }
                } else if (scanLiteral == 60) {
                    reportFatalError("LessthanInAttValue", new Object[]{null, str});
                    this.fEntityScanner.scanChar();
                    if (i2 == this.fEntityDepth && this.fNeedNonNormalizedValue) {
                        this.fStringBuffer2.append((char) scanLiteral);
                    }
                } else if (scanLiteral == 37 || scanLiteral == 93) {
                    this.fEntityScanner.scanChar();
                    char c = (char) scanLiteral;
                    stringBuffer.append(c);
                    if (i2 == this.fEntityDepth && this.fNeedNonNormalizedValue) {
                        this.fStringBuffer2.append(c);
                    }
                } else if (scanLiteral == 10 || scanLiteral == 13) {
                    this.fEntityScanner.scanChar();
                    stringBuffer.append(' ');
                    if (i2 == this.fEntityDepth && this.fNeedNonNormalizedValue) {
                        this.fStringBuffer2.append('\n');
                    }
                } else if (scanLiteral == -1 || !XMLChar.isHighSurrogate(scanLiteral)) {
                    if (scanLiteral != -1 && isInvalidLiteral(scanLiteral)) {
                        reportFatalError("InvalidCharInAttValue", new Object[]{Integer.toString(scanLiteral, 16)});
                        this.fEntityScanner.scanChar();
                        if (i2 == this.fEntityDepth && this.fNeedNonNormalizedValue) {
                            this.fStringBuffer2.append((char) scanLiteral);
                        }
                    }
                } else if (scanSurrogates(this.fStringBuffer3)) {
                    stringBuffer.append(this.fStringBuffer3);
                    if (i2 == this.fEntityDepth && this.fNeedNonNormalizedValue) {
                        this.fStringBuffer2.append(this.fStringBuffer3);
                    }
                }
                scanLiteral = this.fEntityScanner.scanLiteral(peekChar, xMLString);
                if (i2 == this.fEntityDepth && this.fNeedNonNormalizedValue) {
                    this.fStringBuffer2.append(xMLString);
                }
                if (this.fEntityScanner.whiteSpaceLen > 0) {
                    normalizeWhitespace(xMLString);
                }
                if (scanLiteral == peekChar && i2 == this.fEntityDepth) {
                    break;
                }
            }
            stringBuffer.append(xMLString);
            xMLString.setValues(stringBuffer);
            this.fScanningAttribute = false;
        }
        if (this.fNeedNonNormalizedValue) {
            xMLString2.setValues(this.fStringBuffer2);
        }
        if (this.fEntityScanner.scanChar() != peekChar) {
            reportFatalError("CloseQuoteExpected", new Object[]{str});
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0159  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanCharReferenceValue(com.sun.org.apache.xerces.internal.util.XMLStringBuffer r17, com.sun.org.apache.xerces.internal.util.XMLStringBuffer r18) throws java.io.IOException, com.sun.org.apache.xerces.internal.xni.XNIException {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLScanner.scanCharReferenceValue(com.sun.org.apache.xerces.internal.util.XMLStringBuffer, com.sun.org.apache.xerces.internal.util.XMLStringBuffer):int");
    }

    public void scanComment(XMLStringBuffer xMLStringBuffer) throws IOException, XNIException {
        xMLStringBuffer.clear();
        while (this.fEntityScanner.scanData(MultiPartWriter.f115320h, xMLStringBuffer)) {
            int peekChar = this.fEntityScanner.peekChar();
            if (peekChar != -1) {
                if (XMLChar.isHighSurrogate(peekChar)) {
                    scanSurrogates(xMLStringBuffer);
                }
                if (isInvalidLiteral(peekChar)) {
                    reportFatalError("InvalidCharInComment", new Object[]{Integer.toHexString(peekChar)});
                    this.fEntityScanner.scanChar();
                }
            }
        }
        if (this.fEntityScanner.skipChar(62)) {
            return;
        }
        reportFatalError("DashDashInComment", null);
    }

    public void scanExternalID(String[] strArr, boolean z) throws IOException, XNIException {
        String str;
        String str2 = null;
        if (this.fEntityScanner.skipString(DocumentType.PUBLIC_KEY)) {
            if (!this.fEntityScanner.skipSpaces()) {
                reportFatalError("SpaceRequiredAfterPUBLIC", null);
            }
            scanPubidLiteral(this.fString);
            str = this.fString.toString();
            if (!this.fEntityScanner.skipSpaces() && !z) {
                reportFatalError("SpaceRequiredBetweenPublicAndSystem", null);
            }
        } else {
            str = null;
        }
        if (str != null || this.fEntityScanner.skipString(DocumentType.SYSTEM_KEY)) {
            if (str == null && !this.fEntityScanner.skipSpaces()) {
                reportFatalError("SpaceRequiredAfterSYSTEM", null);
            }
            int peekChar = this.fEntityScanner.peekChar();
            if (peekChar != 39 && peekChar != 34) {
                if (str != null && z) {
                    strArr[0] = null;
                    strArr[1] = str;
                    return;
                }
                reportFatalError("QuoteRequiredInSystemID", null);
            }
            this.fEntityScanner.scanChar();
            XMLString xMLString = this.fString;
            if (this.fEntityScanner.scanLiteral(peekChar, xMLString) != peekChar) {
                this.fStringBuffer.clear();
                do {
                    this.fStringBuffer.append(xMLString);
                    int peekChar2 = this.fEntityScanner.peekChar();
                    if (XMLChar.isMarkup(peekChar2) || peekChar2 == 93) {
                        this.fStringBuffer.append((char) this.fEntityScanner.scanChar());
                    }
                } while (this.fEntityScanner.scanLiteral(peekChar, xMLString) != peekChar);
                this.fStringBuffer.append(xMLString);
                xMLString = this.fStringBuffer;
            }
            String xMLString2 = xMLString.toString();
            if (!this.fEntityScanner.skipChar(peekChar)) {
                reportFatalError("SystemIDUnterminated", null);
            }
            str2 = xMLString2;
        }
        strArr[0] = str2;
        strArr[1] = str;
    }

    public void scanPI(XMLStringBuffer xMLStringBuffer) throws IOException, XNIException {
        this.fReportEntity = false;
        String scanName = this.fEntityScanner.scanName();
        if (scanName == null) {
            reportFatalError("PITargetRequired", null);
        }
        scanPIData(scanName, xMLStringBuffer);
        this.fReportEntity = true;
    }

    public void scanPIData(String str, XMLStringBuffer xMLStringBuffer) throws IOException, XNIException {
        if (str.length() == 3) {
            char lowerCase = Character.toLowerCase(str.charAt(0));
            char lowerCase2 = Character.toLowerCase(str.charAt(1));
            char lowerCase3 = Character.toLowerCase(str.charAt(2));
            if (lowerCase == 'x' && lowerCase2 == 'm' && lowerCase3 == 'l') {
                reportFatalError("ReservedPITarget", null);
            }
        }
        if (!this.fEntityScanner.skipSpaces()) {
            if (this.fEntityScanner.skipString("?>")) {
                return;
            } else {
                reportFatalError("SpaceRequiredInPI", null);
            }
        }
        if (!this.fEntityScanner.scanData("?>", xMLStringBuffer)) {
            return;
        }
        do {
            int peekChar = this.fEntityScanner.peekChar();
            if (peekChar != -1) {
                if (XMLChar.isHighSurrogate(peekChar)) {
                    scanSurrogates(xMLStringBuffer);
                } else if (isInvalidLiteral(peekChar)) {
                    reportFatalError("InvalidCharInPI", new Object[]{Integer.toHexString(peekChar)});
                    this.fEntityScanner.scanChar();
                }
            }
        } while (this.fEntityScanner.scanData("?>", xMLStringBuffer));
    }

    public String scanPseudoAttribute(boolean z, XMLString xMLString) throws IOException, XNIException {
        String scanName = this.fEntityScanner.scanName();
        if (scanName == null) {
            reportFatalError("PseudoAttrNameExpected", null);
        }
        this.fEntityScanner.skipSpaces();
        if (!this.fEntityScanner.skipChar(61)) {
            reportFatalError(z ? "EqRequiredInTextDecl" : "EqRequiredInXMLDecl", new Object[]{scanName});
        }
        this.fEntityScanner.skipSpaces();
        int peekChar = this.fEntityScanner.peekChar();
        if (peekChar != 39 && peekChar != 34) {
            reportFatalError(z ? "QuoteRequiredInTextDecl" : "QuoteRequiredInXMLDecl", new Object[]{scanName});
        }
        this.fEntityScanner.scanChar();
        int scanLiteral = this.fEntityScanner.scanLiteral(peekChar, xMLString);
        if (scanLiteral != peekChar) {
            this.fStringBuffer2.clear();
            do {
                this.fStringBuffer2.append(xMLString);
                if (scanLiteral != -1) {
                    if (scanLiteral == 38 || scanLiteral == 37 || scanLiteral == 60 || scanLiteral == 93) {
                        this.fStringBuffer2.append((char) this.fEntityScanner.scanChar());
                    } else if (XMLChar.isHighSurrogate(scanLiteral)) {
                        scanSurrogates(this.fStringBuffer2);
                    } else if (isInvalidLiteral(scanLiteral)) {
                        reportFatalError(z ? "InvalidCharInTextDecl" : "InvalidCharInXMLDecl", new Object[]{Integer.toString(scanLiteral, 16)});
                        this.fEntityScanner.scanChar();
                    }
                }
                scanLiteral = this.fEntityScanner.scanLiteral(peekChar, xMLString);
            } while (scanLiteral != peekChar);
            this.fStringBuffer2.append(xMLString);
            xMLString.setValues(this.fStringBuffer2);
        }
        if (!this.fEntityScanner.skipChar(peekChar)) {
            reportFatalError(z ? "CloseQuoteMissingInTextDecl" : "CloseQuoteMissingInXMLDecl", new Object[]{scanName});
        }
        return scanName;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006a, code lost:
    
        r9.fStringBuffer.append(' ');
        r4 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanPubidLiteral(com.sun.org.apache.xerces.internal.xni.XMLString r10) throws java.io.IOException, com.sun.org.apache.xerces.internal.xni.XNIException {
        /*
            r9 = this;
            com.sun.org.apache.xerces.internal.impl.XMLEntityScanner r0 = r9.fEntityScanner
            int r0 = r0.scanChar()
            r1 = 39
            r2 = 0
            r3 = 0
            if (r0 == r1) goto L16
            r1 = 34
            if (r0 == r1) goto L16
            java.lang.String r10 = "QuoteRequiredInPublicID"
            r9.reportFatalError(r10, r2)
            return r3
        L16:
            com.sun.org.apache.xerces.internal.util.XMLStringBuffer r1 = r9.fStringBuffer
            r1.clear()
            r1 = 1
            r4 = r1
            r5 = r4
        L1e:
            com.sun.org.apache.xerces.internal.impl.XMLEntityScanner r6 = r9.fEntityScanner
            int r6 = r6.scanChar()
            r7 = 32
            if (r6 == r7) goto L68
            r8 = 10
            if (r6 == r8) goto L68
            r8 = 13
            if (r6 != r8) goto L31
            goto L68
        L31:
            if (r6 != r0) goto L42
            if (r4 == 0) goto L3c
            com.sun.org.apache.xerces.internal.util.XMLStringBuffer r0 = r9.fStringBuffer
            int r2 = r0.length
            int r2 = r2 - r1
            r0.length = r2
        L3c:
            com.sun.org.apache.xerces.internal.util.XMLStringBuffer r9 = r9.fStringBuffer
            r10.setValues(r9)
            return r5
        L42:
            boolean r7 = com.sun.org.apache.xerces.internal.util.XMLChar.isPubid(r6)
            if (r7 == 0) goto L50
            com.sun.org.apache.xerces.internal.util.XMLStringBuffer r4 = r9.fStringBuffer
            char r6 = (char) r6
            r4.append(r6)
            r4 = r3
            goto L1e
        L50:
            r5 = -1
            if (r6 != r5) goto L59
            java.lang.String r10 = "PublicIDUnterminated"
            r9.reportFatalError(r10, r2)
            return r3
        L59:
            java.lang.String r5 = java.lang.Integer.toHexString(r6)
            java.lang.Object[] r5 = new java.lang.Object[]{r5}
            java.lang.String r6 = "InvalidCharInPublicID"
            r9.reportFatalError(r6, r5)
            r5 = r3
            goto L1e
        L68:
            if (r4 != 0) goto L1e
            com.sun.org.apache.xerces.internal.util.XMLStringBuffer r4 = r9.fStringBuffer
            r4.append(r7)
            r4 = r1
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLScanner.scanPubidLiteral(com.sun.org.apache.xerces.internal.xni.XMLString):boolean");
    }

    public boolean scanSurrogates(XMLStringBuffer xMLStringBuffer) throws IOException, XNIException {
        int scanChar = this.fEntityScanner.scanChar();
        int peekChar = this.fEntityScanner.peekChar();
        if (!XMLChar.isLowSurrogate(peekChar)) {
            reportFatalError("InvalidCharInContent", new Object[]{Integer.toString(scanChar, 16)});
            return false;
        }
        this.fEntityScanner.scanChar();
        char c = (char) scanChar;
        char c2 = (char) peekChar;
        int supplemental = XMLChar.supplemental(c, c2);
        if (isInvalid(supplemental)) {
            reportFatalError("InvalidCharInContent", new Object[]{Integer.toString(supplemental, 16)});
            return false;
        }
        xMLStringBuffer.append(c);
        xMLStringBuffer.append(c2);
        return true;
    }

    public void scanXMLDeclOrTextDecl(boolean z, String[] strArr) throws IOException, XNIException {
        Object obj;
        boolean skipSpaces = this.fEntityScanner.skipSpaces();
        char c = 0;
        boolean z2 = false;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (this.fEntityScanner.peekChar() != 63) {
            String scanPseudoAttribute = scanPseudoAttribute(z, this.fString);
            if (c != 0) {
                if (c != 1) {
                    if (c != 2) {
                        obj = null;
                        reportFatalError("NoMorePseudoAttributes", null);
                    } else {
                        obj = null;
                        if (scanPseudoAttribute.equals(fStandaloneSymbol)) {
                            if (!skipSpaces) {
                                reportFatalError("SpaceRequiredBeforeStandalone", null);
                            }
                            str3 = this.fString.toString();
                            if (!str3.equals("yes") && !str3.equals(SVGParser.f16048t)) {
                                reportFatalError("SDDeclInvalid", null);
                            }
                            c = 3;
                        } else {
                            reportFatalError("EncodingDeclRequired", null);
                        }
                    }
                } else if (scanPseudoAttribute.equals(fEncodingSymbol)) {
                    if (!skipSpaces) {
                        reportFatalError(z ? "SpaceRequiredBeforeEncodingInTextDecl" : "SpaceRequiredBeforeEncodingInXMLDecl", null);
                    }
                    str2 = this.fString.toString();
                    c = z ? (char) 3 : (char) 2;
                } else if (z || !scanPseudoAttribute.equals(fStandaloneSymbol)) {
                    obj = null;
                    reportFatalError("EncodingDeclRequired", null);
                } else {
                    obj = null;
                    if (!skipSpaces) {
                        reportFatalError("SpaceRequiredBeforeStandalone", null);
                    }
                    str3 = this.fString.toString();
                    if (!str3.equals("yes") && !str3.equals(SVGParser.f16048t)) {
                        reportFatalError("SDDeclInvalid", null);
                    }
                    c = 3;
                }
            } else if (scanPseudoAttribute.equals(fVersionSymbol)) {
                if (!skipSpaces) {
                    reportFatalError(z ? "SpaceRequiredBeforeVersionInTextDecl" : "SpaceRequiredBeforeVersionInXMLDecl", null);
                }
                str = this.fString.toString();
                if (!versionSupported(str)) {
                    reportFatalError("VersionNotSupported", new Object[]{str});
                }
                if (str.equals(SerializerConstants.XMLVERSION11)) {
                    this.fEntityManager.setScannerVersion((short) 2);
                }
                c = 1;
            } else if (scanPseudoAttribute.equals(fEncodingSymbol)) {
                if (!z) {
                    reportFatalError("VersionInfoRequired", null);
                }
                if (!skipSpaces) {
                    reportFatalError(z ? "SpaceRequiredBeforeEncodingInTextDecl" : "SpaceRequiredBeforeEncodingInXMLDecl", null);
                }
                str2 = this.fString.toString();
                if (!z) {
                    c = 2;
                }
                c = 3;
            } else if (z) {
                reportFatalError("EncodingDeclRequired", null);
            } else {
                reportFatalError("VersionInfoRequired", null);
            }
            skipSpaces = this.fEntityScanner.skipSpaces();
            z2 = true;
        }
        if (z && c != 3) {
            reportFatalError("MorePseudoAttributes", null);
        }
        if (z) {
            if (!z2 && str2 == null) {
                reportFatalError("EncodingDeclRequired", null);
            }
        } else if (!z2 && str == null) {
            reportFatalError("VersionInfoRequired", null);
        }
        if (!this.fEntityScanner.skipChar(63)) {
            reportFatalError("XMLDeclUnterminated", null);
        }
        if (!this.fEntityScanner.skipChar(62)) {
            reportFatalError("XMLDeclUnterminated", null);
        }
        strArr[0] = str;
        strArr[1] = str2;
        strArr[2] = str3;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        if ("http://xml.org/sax/features/validation".equals(str)) {
            this.fValidation = z;
        } else if (NOTIFY_CHAR_REFS.equals(str)) {
            this.fNotifyCharRefs = z;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/properties/")) {
            String substring = str.substring(33);
            if (substring.equals("internal/symbol-table")) {
                this.fSymbolTable = (SymbolTable) obj;
            } else if (substring.equals("internal/error-reporter")) {
                this.fErrorReporter = (XMLErrorReporter) obj;
            } else if (substring.equals("internal/entity-manager")) {
                this.fEntityManager = (XMLEntityManager) obj;
            }
        }
    }

    public void setPropertyManager(PropertyManager propertyManager) {
        this.fPropertyManager = propertyManager;
    }

    public void startEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        this.fEntityDepth++;
        this.fEntityScanner = this.fEntityManager.getEntityScanner();
        this.fEntityStore = this.fEntityManager.getEntityStore();
    }

    public boolean versionSupported(String str) {
        return str.equals("1.0") || str.equals(SerializerConstants.XMLVERSION11);
    }

    public void reset() {
        init();
        this.fValidation = true;
        this.fNotifyCharRefs = false;
    }

    public void reset(PropertyManager propertyManager) {
        init();
        this.fSymbolTable = (SymbolTable) propertyManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fErrorReporter = (XMLErrorReporter) propertyManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        XMLEntityManager xMLEntityManager = (XMLEntityManager) propertyManager.getProperty("http://apache.org/xml/properties/internal/entity-manager");
        this.fEntityManager = xMLEntityManager;
        this.fEntityStore = xMLEntityManager.getEntityStore();
        this.fEntityScanner = this.fEntityManager.getEntityScanner();
        this.fValidation = false;
        this.fNotifyCharRefs = false;
    }
}
