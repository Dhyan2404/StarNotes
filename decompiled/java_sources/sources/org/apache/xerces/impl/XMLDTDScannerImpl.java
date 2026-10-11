package org.apache.xerces.impl;

import java.io.IOException;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLResourceIdentifierImpl;
import org.apache.xerces.util.XMLStringBuffer;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.XMLDTDContentModelHandler;
import org.apache.xerces.xni.XMLDTDHandler;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDTDScanner;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public class XMLDTDScannerImpl extends XMLScanner implements XMLDTDScanner, XMLComponent, XMLEntityHandler {
    protected static final int SCANNER_STATE_END_OF_INPUT = 0;
    protected static final int SCANNER_STATE_MARKUP_DECL = 2;
    protected static final int SCANNER_STATE_TEXT_DECL = 1;

    /* renamed from: k0 */
    public static final boolean f111959k0 = false;
    protected XMLDTDContentModelHandler fDTDContentModelHandler;
    protected XMLDTDHandler fDTDHandler;
    protected int fScannerState;
    protected boolean fSeenExternalDTD;
    protected boolean fSeenPEReferences;
    protected boolean fStandalone;

    /* renamed from: i */
    public boolean f111960i;

    /* renamed from: j */
    public int[] f111961j;

    /* renamed from: k */
    public int f111962k;

    /* renamed from: l */
    public int[] f111963l;

    /* renamed from: m */
    public boolean[] f111964m;

    /* renamed from: n */
    public int f111965n;

    /* renamed from: o */
    public int f111966o;

    /* renamed from: p */
    public int f111967p;

    /* renamed from: q */
    public int f111968q;

    /* renamed from: r */
    public final String[] f111969r;

    /* renamed from: s */
    public final XMLString f111970s;

    /* renamed from: t */
    public final XMLStringBuffer f111971t;

    /* renamed from: u */
    public final XMLStringBuffer f111972u;

    /* renamed from: v */
    public final XMLString f111973v;

    /* renamed from: w */
    public final XMLString f111974w;

    /* renamed from: x */
    public String[] f111975x;

    /* renamed from: y */
    public int f111976y;

    /* renamed from: z */
    public final XMLStringBuffer f111977z;

    /* renamed from: J */
    public static final String[] f111955J = {"http://xml.org/sax/features/validation", "http://apache.org/xml/features/scanner/notify-char-refs"};

    /* renamed from: O */
    public static final Boolean[] f111956O = {null, Boolean.FALSE};

    /* renamed from: Q */
    public static final String[] f111957Q = {"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-manager"};

    /* renamed from: Z */
    public static final Object[] f111958Z = {null, null, null};

    public XMLDTDScannerImpl() {
        this.f111961j = new int[5];
        this.f111963l = new int[5];
        this.f111964m = new boolean[5];
        this.f111969r = new String[3];
        this.f111970s = new XMLString();
        this.f111971t = new XMLStringBuffer();
        this.f111972u = new XMLStringBuffer();
        this.f111973v = new XMLString();
        this.f111974w = new XMLString();
        this.f111975x = new String[5];
        this.f111977z = new XMLStringBuffer(128);
    }

    public static String getScannerStateName(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("??? (");
        stringBuffer.append(i);
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public final void m69807a() {
        this.f111960i = false;
        this.f111967p = 0;
        this.f111968q = 0;
        this.f111966o = 0;
        this.f111965n = 0;
        this.fStandalone = false;
        this.fSeenExternalDTD = false;
        this.fSeenPEReferences = false;
        setScannerState(1);
    }

    /* renamed from: c */
    public final void m69808c(int i) {
        String[] strArr = this.f111975x;
        if (strArr.length == i) {
            String[] strArr2 = new String[i * 2];
            System.arraycopy(strArr, 0, strArr2, 0, i);
            this.f111975x = strArr2;
        }
    }

    /* renamed from: d */
    public final boolean m69809d() {
        return this.f111964m[this.f111965n - 1];
    }

    /* renamed from: e */
    public final int m69810e() {
        int[] iArr = this.f111961j;
        int i = this.f111962k - 1;
        this.f111962k = i;
        return iArr[i];
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.impl.XMLEntityHandler
    public void endEntity(String str, Augmentations augmentations) throws XNIException {
        super.endEntity(str, augmentations);
        if (this.fScannerState == 0) {
            return;
        }
        boolean z = false;
        if (!str.startsWith("%")) {
            if (str.equals("[dtd]")) {
                if (this.f111968q != 0) {
                    reportFatalError("IncludeSectUnterminated", null);
                }
                this.fScannerState = 0;
                this.fEntityManager.endExternalSubset();
                XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
                if (xMLDTDHandler != null) {
                    xMLDTDHandler.endExternalSubset(null);
                    this.fDTDHandler.endDTD(null);
                }
                this.f111967p--;
                return;
            }
            return;
        }
        boolean m69809d = m69809d();
        int m69811f = m69811f();
        if (m69811f == 0 && m69811f < this.f111966o) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "ILL_FORMED_PARAMETER_ENTITY_WHEN_USED_IN_DECL", new Object[]{this.fEntityManager.fCurrentEntity.name}, (short) 2);
        }
        if (m69811f == this.f111966o) {
            z = m69809d;
        } else if (this.fValidation) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "ImproperDeclarationNesting", new Object[]{str}, (short) 1);
        }
        if (this.fEntityScanner.isExternal()) {
            this.f111967p--;
        }
        XMLDTDHandler xMLDTDHandler2 = this.fDTDHandler;
        if (xMLDTDHandler2 == null || !z) {
            return;
        }
        xMLDTDHandler2.endParameterEntity(str, augmentations);
    }

    /* renamed from: f */
    public final int m69811f() {
        int[] iArr = this.f111963l;
        int i = this.f111965n - 1;
        this.f111965n = i;
        return iArr[i];
    }

    /* renamed from: g */
    public final void m69812g(int i) {
        int[] iArr = this.f111961j;
        int length = iArr.length;
        int i2 = this.f111962k;
        if (length == i2) {
            int[] iArr2 = new int[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f111961j = iArr2;
        }
        int[] iArr3 = this.f111961j;
        int i3 = this.f111962k;
        this.f111962k = i3 + 1;
        iArr3[i3] = i;
    }

    @Override // org.apache.xerces.xni.parser.XMLDTDContentModelSource
    public XMLDTDContentModelHandler getDTDContentModelHandler() {
        return this.fDTDContentModelHandler;
    }

    @Override // org.apache.xerces.xni.parser.XMLDTDSource
    public XMLDTDHandler getDTDHandler() {
        return this.fDTDHandler;
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f111955J;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f111956O[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f111957Q;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f111958Z[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) f111955J.clone();
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) f111957Q.clone();
    }

    /* renamed from: h */
    public final void m69813h(int i, boolean z) {
        int[] iArr = this.f111963l;
        int length = iArr.length;
        int i2 = this.f111965n;
        if (length == i2) {
            int[] iArr2 = new int[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f111963l = iArr2;
            int i3 = this.f111965n;
            boolean[] zArr = new boolean[i3 * 2];
            System.arraycopy(this.f111964m, 0, zArr, 0, i3);
            this.f111964m = zArr;
        }
        boolean[] zArr2 = this.f111964m;
        int i4 = this.f111965n;
        zArr2[i4] = z;
        int[] iArr3 = this.f111963l;
        this.f111965n = i4 + 1;
        iArr3[i4] = i;
    }

    /* renamed from: i */
    public final String m69814i(String str, String str2) throws IOException, XNIException {
        int scanChar;
        int scanChar2;
        this.f111976y = 0;
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
            this.f111966o++;
            do {
                m69821p(false, !scanningInternalSubset());
                String scanNmtoken = this.fEntityScanner.scanNmtoken();
                if (scanNmtoken == null) {
                    reportFatalError("MSG_NMTOKEN_REQUIRED_IN_ENUMERATION", new Object[]{str, str2});
                    scanChar = m69820o();
                    if (scanChar != 124) {
                        break;
                    }
                } else {
                    m69808c(this.f111976y + 1);
                    String[] strArr = this.f111975x;
                    int i = this.f111976y;
                    this.f111976y = i + 1;
                    strArr[i] = scanNmtoken;
                    m69821p(false, !scanningInternalSubset());
                    scanChar = this.fEntityScanner.scanChar();
                }
            } while (scanChar == 124);
            if (scanChar != 41) {
                reportFatalError("EnumerationUnterminated", new Object[]{str, str2});
            }
            this.f111966o--;
            return "ENUMERATION";
        }
        if (!m69821p(true, !scanningInternalSubset())) {
            reportFatalError("MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE", new Object[]{str, str2});
        }
        if (this.fEntityScanner.scanChar() != 40) {
            reportFatalError("MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE", new Object[]{str, str2});
        }
        this.f111966o++;
        do {
            m69821p(false, !scanningInternalSubset());
            String scanName = this.fEntityScanner.scanName();
            if (scanName == null) {
                reportFatalError("MSG_NAME_REQUIRED_IN_NOTATIONTYPE", new Object[]{str, str2});
                scanChar2 = m69820o();
                if (scanChar2 != 124) {
                    break;
                }
            } else {
                m69808c(this.f111976y + 1);
                String[] strArr2 = this.f111975x;
                int i2 = this.f111976y;
                this.f111976y = i2 + 1;
                strArr2[i2] = scanName;
                m69821p(false, !scanningInternalSubset());
                scanChar2 = this.fEntityScanner.scanChar();
            }
        } while (scanChar2 == 124);
        if (scanChar2 != 41) {
            reportFatalError("NotationTypeUnterminated", new Object[]{str, str2});
        }
        this.f111966o--;
        return "NOTATION";
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c3, code lost:
    
        m69821p(false, !scanningInternalSubset());
        r1 = r2;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m69815j(java.lang.String r12) throws java.io.IOException, org.apache.xerces.xni.XNIException {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLDTDScannerImpl.m69815j(java.lang.String):void");
    }

    /* renamed from: k */
    public final void m69816k(int i) throws IOException, XNIException {
        this.fReportEntity = false;
        m69821p(false, !scanningInternalSubset());
        if (this.fEntityScanner.skipString("INCLUDE")) {
            m69821p(false, !scanningInternalSubset());
            if (i != this.f111965n && this.fValidation) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "INVALID_PE_IN_CONDITIONAL", new Object[]{this.fEntityManager.fCurrentEntity.name}, (short) 1);
            }
            if (!this.fEntityScanner.skipChar(91)) {
                reportFatalError("MSG_MARKUP_NOT_RECOGNIZED_IN_DTD", null);
            }
            XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.startConditional((short) 0, null);
            }
            this.f111968q++;
            this.fReportEntity = true;
            return;
        }
        if (!this.fEntityScanner.skipString("IGNORE")) {
            reportFatalError("MSG_MARKUP_NOT_RECOGNIZED_IN_DTD", null);
            return;
        }
        m69821p(false, !scanningInternalSubset());
        if (i != this.f111965n && this.fValidation) {
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
        int i2 = this.f111968q + 1;
        this.f111968q = i2;
        if (this.fDTDHandler != null) {
            this.f111977z.clear();
        }
        while (true) {
            if (this.fEntityScanner.skipChar(60)) {
                if (this.fDTDHandler != null) {
                    this.f111977z.append('<');
                }
                if (this.fEntityScanner.skipChar(33)) {
                    if (this.fEntityScanner.skipChar(91)) {
                        if (this.fDTDHandler != null) {
                            this.f111977z.append("![");
                        }
                        this.f111968q++;
                    } else if (this.fDTDHandler != null) {
                        this.f111977z.append("!");
                    }
                }
            } else if (this.fEntityScanner.skipChar(93)) {
                if (this.fDTDHandler != null) {
                    this.f111977z.append(']');
                }
                if (this.fEntityScanner.skipChar(93)) {
                    if (this.fDTDHandler != null) {
                        this.f111977z.append(']');
                    }
                    while (this.fEntityScanner.skipChar(93)) {
                        if (this.fDTDHandler != null) {
                            this.f111977z.append(']');
                        }
                    }
                    if (this.fEntityScanner.skipChar(62)) {
                        int i3 = this.f111968q;
                        this.f111968q = i3 - 1;
                        if (i3 == i2) {
                            this.f111966o--;
                            if (this.fDTDHandler != null) {
                                this.f111973v.setValues(this.f111977z.f113585ch, 0, r1.length - 2);
                                this.fDTDHandler.ignoredCharacters(this.f111973v, null);
                                this.fDTDHandler.endConditional(null);
                                return;
                            }
                            return;
                        }
                        if (this.fDTDHandler != null) {
                            this.f111977z.append('>');
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
                    this.f111977z.append((char) scanChar);
                }
            }
        }
    }

    /* renamed from: l */
    public final void m69817l() throws IOException, XNIException {
        String str;
        boolean z;
        boolean z2;
        String str2;
        int i;
        this.fReportEntity = false;
        if (this.fEntityScanner.skipSpaces()) {
            if (this.fEntityScanner.skipChar(37)) {
                if (!m69821p(true, !scanningInternalSubset())) {
                    if (scanningInternalSubset()) {
                        reportFatalError("MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_PEDECL", null);
                    } else {
                        if (this.fEntityScanner.peekChar() == 37) {
                            m69821p(false, !scanningInternalSubset());
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
            if (!scanningInternalSubset() && this.fEntityScanner.skipChar(37)) {
                str = this.fEntityScanner.skipSpaces() ? "MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL" : "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL";
                z2 = false;
                z = true;
            }
            reportFatalError(str, null);
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
                    if (m69821p(true, !scanningInternalSubset())) {
                        z2 = true;
                        break;
                    }
                    z2 = this.fEntityScanner.skipChar(37);
                }
            }
        }
        String scanNCName = this.fNamespaces ? this.fEntityScanner.scanNCName() : this.fEntityScanner.scanName();
        if (scanNCName == null) {
            reportFatalError("MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL", null);
        }
        if (!m69821p(true, !scanningInternalSubset())) {
            if (this.fNamespaces && this.fEntityScanner.peekChar() == 58) {
                this.fEntityScanner.scanChar();
                XMLStringBuffer xMLStringBuffer = new XMLStringBuffer(scanNCName);
                xMLStringBuffer.append(':');
                String scanName2 = this.fEntityScanner.scanName();
                if (scanName2 != null) {
                    xMLStringBuffer.append(scanName2);
                }
                reportFatalError("ColonNotLegalWithNS", new Object[]{xMLStringBuffer.toString()});
                if (!m69821p(true, !scanningInternalSubset())) {
                    reportFatalError("MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL", new Object[]{scanNCName});
                }
            } else {
                reportFatalError("MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL", new Object[]{scanNCName});
            }
        }
        scanExternalID(this.f111969r, false);
        String[] strArr = this.f111969r;
        String str3 = strArr[0];
        String str4 = strArr[1];
        boolean m69821p = m69821p(true, !scanningInternalSubset());
        if (z2 || !this.fEntityScanner.skipString("NDATA")) {
            str2 = null;
        } else {
            if (!m69821p) {
                reportFatalError("MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL", new Object[]{scanNCName});
            }
            if (!m69821p(true, !scanningInternalSubset())) {
                reportFatalError("MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL", new Object[]{scanNCName});
            }
            String scanName3 = this.fEntityScanner.scanName();
            if (scanName3 == null) {
                reportFatalError("MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL", new Object[]{scanNCName});
            }
            str2 = scanName3;
        }
        if (str3 == null) {
            i = scanEntityValue(this.f111973v, this.f111974w);
            this.f111971t.clear();
            this.f111972u.clear();
            XMLStringBuffer xMLStringBuffer2 = this.f111971t;
            XMLString xMLString = this.f111973v;
            xMLStringBuffer2.append(xMLString.f113585ch, xMLString.offset, xMLString.length);
            XMLStringBuffer xMLStringBuffer3 = this.f111972u;
            XMLString xMLString2 = this.f111974w;
            xMLStringBuffer3.append(xMLString2.f113585ch, xMLString2.offset, xMLString2.length);
        } else {
            i = 0;
        }
        m69821p(false, !scanningInternalSubset());
        if (!this.fEntityScanner.skipChar(62)) {
            reportFatalError("EntityDeclUnterminated", new Object[]{scanNCName});
        }
        this.f111966o--;
        if (z2) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("%");
            stringBuffer.append(scanNCName);
            scanNCName = stringBuffer.toString();
        }
        if (str3 != null) {
            String baseSystemId = this.fEntityScanner.getBaseSystemId();
            XMLEntityManager xMLEntityManager = this.fEntityManager;
            if (str2 != null) {
                xMLEntityManager.addUnparsedEntity(scanNCName, str4, str3, baseSystemId, str2);
            } else {
                xMLEntityManager.addExternalEntity(scanNCName, str4, str3, baseSystemId);
            }
            if (this.fDTDHandler != null) {
                this.fResourceIdentifier.setValues(str4, str3, baseSystemId, XMLEntityManager.expandSystemId(str3, baseSystemId, false));
                XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
                XMLResourceIdentifierImpl xMLResourceIdentifierImpl = this.fResourceIdentifier;
                if (str2 != null) {
                    xMLDTDHandler.unparsedEntityDecl(scanNCName, xMLResourceIdentifierImpl, str2, null);
                } else {
                    xMLDTDHandler.externalEntityDecl(scanNCName, xMLResourceIdentifierImpl, null);
                }
            }
        } else {
            this.fEntityManager.addInternalEntity(scanNCName, this.f111971t.toString(), i);
            XMLDTDHandler xMLDTDHandler2 = this.fDTDHandler;
            if (xMLDTDHandler2 != null) {
                xMLDTDHandler2.internalEntityDecl(scanNCName, this.f111971t, this.f111972u, null);
            }
        }
        this.fReportEntity = true;
    }

    /* renamed from: m */
    public final void m69818m(String str) throws IOException, XNIException {
        this.f111971t.append("#PCDATA");
        XMLDTDContentModelHandler xMLDTDContentModelHandler = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler != null) {
            xMLDTDContentModelHandler.pcdata(null);
        }
        m69821p(false, !scanningInternalSubset());
        String str2 = null;
        while (this.fEntityScanner.skipChar(124)) {
            this.f111971t.append('|');
            XMLDTDContentModelHandler xMLDTDContentModelHandler2 = this.fDTDContentModelHandler;
            if (xMLDTDContentModelHandler2 != null) {
                xMLDTDContentModelHandler2.separator((short) 0, null);
            }
            m69821p(false, !scanningInternalSubset());
            str2 = this.fEntityScanner.scanName();
            if (str2 == null) {
                reportFatalError("MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT", new Object[]{str});
            }
            this.f111971t.append(str2);
            XMLDTDContentModelHandler xMLDTDContentModelHandler3 = this.fDTDContentModelHandler;
            if (xMLDTDContentModelHandler3 != null) {
                xMLDTDContentModelHandler3.element(str2, null);
            }
            m69821p(false, !scanningInternalSubset());
        }
        if (this.fEntityScanner.skipString(")*")) {
            this.f111971t.append(")*");
            XMLDTDContentModelHandler xMLDTDContentModelHandler4 = this.fDTDContentModelHandler;
            if (xMLDTDContentModelHandler4 != null) {
                xMLDTDContentModelHandler4.endGroup(null);
                this.fDTDContentModelHandler.occurrence((short) 3, null);
            }
        } else if (str2 != null) {
            reportFatalError("MixedContentUnterminated", new Object[]{str});
        } else if (this.fEntityScanner.skipChar(41)) {
            this.f111971t.append(')');
            XMLDTDContentModelHandler xMLDTDContentModelHandler5 = this.fDTDContentModelHandler;
            if (xMLDTDContentModelHandler5 != null) {
                xMLDTDContentModelHandler5.endGroup(null);
            }
        } else {
            reportFatalError("MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN", new Object[]{str});
        }
        this.f111966o--;
    }

    /* renamed from: n */
    public final void m69819n() throws IOException, XNIException {
        this.fReportEntity = false;
        if (!m69821p(true, !scanningInternalSubset())) {
            reportFatalError("MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL", null);
        }
        String scanNCName = this.fNamespaces ? this.fEntityScanner.scanNCName() : this.fEntityScanner.scanName();
        if (scanNCName == null) {
            reportFatalError("MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL", null);
        }
        if (!m69821p(true, !scanningInternalSubset())) {
            if (this.fNamespaces && this.fEntityScanner.peekChar() == 58) {
                this.fEntityScanner.scanChar();
                XMLStringBuffer xMLStringBuffer = new XMLStringBuffer(scanNCName);
                xMLStringBuffer.append(':');
                xMLStringBuffer.append(this.fEntityScanner.scanName());
                reportFatalError("ColonNotLegalWithNS", new Object[]{xMLStringBuffer.toString()});
                m69821p(true, !scanningInternalSubset());
            } else {
                reportFatalError("MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL", new Object[]{scanNCName});
            }
        }
        scanExternalID(this.f111969r, true);
        String[] strArr = this.f111969r;
        String str = strArr[0];
        String str2 = strArr[1];
        String baseSystemId = this.fEntityScanner.getBaseSystemId();
        if (str == null && str2 == null) {
            reportFatalError("ExternalIDorPublicIDRequired", new Object[]{scanNCName});
        }
        m69821p(false, !scanningInternalSubset());
        if (!this.fEntityScanner.skipChar(62)) {
            reportFatalError("NotationDeclUnterminated", new Object[]{scanNCName});
        }
        this.f111966o--;
        if (this.fDTDHandler != null) {
            this.fResourceIdentifier.setValues(str2, str, baseSystemId, XMLEntityManager.expandSystemId(str, baseSystemId, false));
            this.fDTDHandler.notationDecl(scanNCName, this.fResourceIdentifier, null);
        }
        this.fReportEntity = true;
    }

    /* renamed from: o */
    public final int m69820o() throws IOException {
        int scanChar;
        do {
            scanChar = this.fEntityScanner.scanChar();
            if (scanChar == 124) {
                break;
            }
        } while (scanChar != 41);
        m69808c(this.f111976y + 1);
        String[] strArr = this.f111975x;
        int i = this.f111976y;
        this.f111976y = i + 1;
        strArr[i] = XMLSymbols.EMPTY_STRING;
        return scanChar;
    }

    /* renamed from: p */
    public final boolean m69821p(boolean z, boolean z2) throws IOException, XNIException {
        int i = this.f111965n;
        boolean skipSpaces = this.fEntityScanner.skipSpaces();
        if (!z2 || !this.fEntityScanner.skipChar(37)) {
            return (z && !skipSpaces && i == this.f111965n) ? false : true;
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

    @Override // org.apache.xerces.impl.XMLScanner
    public void reset() {
        super.reset();
        m69807a();
    }

    public final String scanAttDefaultDecl(String str, String str2, String str3, XMLString xMLString, XMLString xMLString2) throws IOException, XNIException {
        this.f111970s.clear();
        xMLString.clear();
        String str4 = "#REQUIRED";
        if (!this.fEntityScanner.skipString("#REQUIRED")) {
            str4 = "#IMPLIED";
            if (!this.fEntityScanner.skipString("#IMPLIED")) {
                str4 = "#FIXED";
                boolean z = true;
                if (!this.fEntityScanner.skipString("#FIXED")) {
                    str4 = null;
                } else if (!m69821p(true, !scanningInternalSubset())) {
                    reportFatalError("MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL", new Object[]{str, str2});
                }
                if (this.fStandalone || (!this.fSeenExternalDTD && !this.fSeenPEReferences)) {
                    z = false;
                }
                scanAttributeValue(xMLString, xMLString2, str2, z, str);
            }
        }
        return str4;
    }

    public final void scanAttlistDecl() throws IOException, XNIException {
        int i;
        String str;
        String[] strArr;
        this.fReportEntity = false;
        if (!m69821p(true, !scanningInternalSubset())) {
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
        int i2 = 62;
        if (!m69821p(true, !scanningInternalSubset())) {
            if (this.fEntityScanner.skipChar(62)) {
                XMLDTDHandler xMLDTDHandler2 = this.fDTDHandler;
                if (xMLDTDHandler2 != null) {
                    xMLDTDHandler2.endAttlist(null);
                }
                this.f111966o--;
                return;
            }
            reportFatalError("MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF", new Object[]{scanName});
        }
        while (!this.fEntityScanner.skipChar(i2)) {
            String scanName2 = this.fEntityScanner.scanName();
            if (scanName2 == null) {
                reportFatalError("AttNameRequiredInAttDef", new Object[]{scanName});
            }
            if (!m69821p(true, !scanningInternalSubset())) {
                reportFatalError("MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF", new Object[]{scanName, scanName2});
            }
            String m69814i = m69814i(scanName, scanName2);
            if (!m69821p(true, !scanningInternalSubset())) {
                reportFatalError("MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF", new Object[]{scanName, scanName2});
            }
            String scanAttDefaultDecl = scanAttDefaultDecl(scanName, scanName2, m69814i, this.f111973v, this.f111974w);
            if (this.fDTDHandler != null) {
                int i3 = this.f111976y;
                if (i3 != 0) {
                    strArr = new String[i3];
                    System.arraycopy(this.f111975x, 0, strArr, 0, i3);
                } else {
                    strArr = null;
                }
                if (scanAttDefaultDecl == null || !(scanAttDefaultDecl.equals("#REQUIRED") || scanAttDefaultDecl.equals("#IMPLIED"))) {
                    i = i2;
                    str = scanName;
                    this.fDTDHandler.attributeDecl(str, scanName2, m69814i, strArr, scanAttDefaultDecl, this.f111973v, this.f111974w, null);
                } else {
                    i = i2;
                    str = scanName;
                    this.fDTDHandler.attributeDecl(scanName, scanName2, m69814i, strArr, scanAttDefaultDecl, null, null, null);
                }
            } else {
                i = i2;
                str = scanName;
            }
            m69821p(false, !scanningInternalSubset());
            i2 = i;
            scanName = str;
        }
        XMLDTDHandler xMLDTDHandler3 = this.fDTDHandler;
        if (xMLDTDHandler3 != null) {
            xMLDTDHandler3.endAttlist(null);
        }
        this.f111966o--;
        this.fReportEntity = true;
    }

    public final void scanComment() throws IOException, XNIException {
        this.fReportEntity = false;
        scanComment(this.f111971t);
        this.f111966o--;
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.comment(this.f111971t, null);
        }
        this.fReportEntity = true;
    }

    @Override // org.apache.xerces.xni.parser.XMLDTDScanner
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

    @Override // org.apache.xerces.xni.parser.XMLDTDScanner
    public boolean scanDTDInternalSubset(boolean z, boolean z2, boolean z3) throws IOException, XNIException {
        this.fEntityScanner = this.fEntityManager.getEntityScanner();
        this.fEntityManager.setEntityHandler(this);
        this.fStandalone = z2;
        if (this.fScannerState == 1) {
            XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.startDTD(this.fEntityScanner, null);
                this.f111960i = true;
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
        setScannerState(1);
        return false;
    }

    public final boolean scanDecls(boolean z) throws IOException, XNIException {
        int peekChar;
        m69821p(false, true);
        boolean z2 = true;
        while (z2 && this.fScannerState == 2) {
            if (this.fEntityScanner.skipChar(60)) {
                this.f111966o++;
                if (this.fEntityScanner.skipChar(63)) {
                    scanPI();
                } else {
                    if (this.fEntityScanner.skipChar(33)) {
                        if (this.fEntityScanner.skipChar(45)) {
                            if (this.fEntityScanner.skipChar(45)) {
                                scanComment();
                            }
                            reportFatalError("MSG_MARKUP_NOT_RECOGNIZED_IN_DTD", null);
                        } else if (this.fEntityScanner.skipString("ELEMENT")) {
                            scanElementDecl();
                        } else if (this.fEntityScanner.skipString("ATTLIST")) {
                            scanAttlistDecl();
                        } else if (this.fEntityScanner.skipString("ENTITY")) {
                            m69817l();
                        } else if (this.fEntityScanner.skipString("NOTATION")) {
                            m69819n();
                        } else if (this.fEntityScanner.skipChar(91) && !scanningInternalSubset()) {
                            m69816k(this.f111965n);
                        }
                    }
                    this.f111966o--;
                    reportFatalError("MSG_MARKUP_NOT_RECOGNIZED_IN_DTD", null);
                }
            } else if (this.f111968q > 0 && this.fEntityScanner.skipChar(93)) {
                if (!this.fEntityScanner.skipChar(93) || !this.fEntityScanner.skipChar(62)) {
                    reportFatalError("IncludeSectUnterminated", null);
                }
                XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
                if (xMLDTDHandler != null) {
                    xMLDTDHandler.endConditional(null);
                }
                this.f111968q--;
                this.f111966o--;
            } else {
                if (scanningInternalSubset() && this.fEntityScanner.peekChar() == 93) {
                    return false;
                }
                if (!this.fEntityScanner.skipSpaces()) {
                    reportFatalError("MSG_MARKUP_NOT_RECOGNIZED_IN_DTD", null);
                    do {
                        this.fEntityScanner.scanChar();
                        m69821p(false, true);
                        peekChar = this.fEntityScanner.peekChar();
                        if (peekChar != 60 && peekChar != 93) {
                        }
                    } while (!XMLChar.isSpace(peekChar));
                }
            }
            m69821p(false, true);
            z2 = z;
        }
        return this.fScannerState != 0;
    }

    public final void scanElementDecl() throws IOException, XNIException {
        this.fReportEntity = false;
        if (!m69821p(true, !scanningInternalSubset())) {
            reportFatalError("MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL", null);
        }
        String scanName = this.fEntityScanner.scanName();
        if (scanName == null) {
            reportFatalError("MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL", null);
        }
        if (!m69821p(true, !scanningInternalSubset())) {
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
                this.f111971t.clear();
                this.f111971t.append('(');
                this.f111966o++;
                m69821p(false, !scanningInternalSubset());
                if (this.fEntityScanner.skipString("#PCDATA")) {
                    m69818m(scanName);
                } else {
                    m69815j(scanName);
                }
                str = this.f111971t.toString();
            }
        }
        XMLDTDContentModelHandler xMLDTDContentModelHandler5 = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler5 != null) {
            xMLDTDContentModelHandler5.endContentModel(null);
        }
        this.fReportEntity = false;
        m69821p(false, !scanningInternalSubset());
        if (!this.fEntityScanner.skipChar(62)) {
            reportFatalError("ElementDeclUnterminated", new Object[]{scanName});
        }
        this.fReportEntity = true;
        this.f111966o--;
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.elementDecl(scanName, str, null);
        }
    }

    public final int scanEntityValue(XMLString xMLString, XMLString xMLString2) throws IOException, XNIException {
        XMLString xMLString3;
        int scanChar = this.fEntityScanner.scanChar();
        if (scanChar != 39 && scanChar != 34) {
            reportFatalError("OpenQuoteMissingInDecl", null);
        }
        int i = this.fEntityDepth;
        XMLString xMLString4 = this.f111970s;
        int i2 = 0;
        if (this.fEntityScanner.scanLiteral(scanChar, xMLString4) != scanChar) {
            this.f111971t.clear();
            this.f111972u.clear();
            do {
                this.f111971t.append(this.f111970s);
                this.f111972u.append(this.f111970s);
                if (!this.fEntityScanner.skipChar(38)) {
                    if (!this.fEntityScanner.skipChar(37)) {
                        int peekChar = this.fEntityScanner.peekChar();
                        if (XMLChar.isHighSurrogate(peekChar)) {
                            scanSurrogates(this.f111972u);
                        } else {
                            if (isInvalidLiteral(peekChar)) {
                                reportFatalError("InvalidCharInLiteral", new Object[]{Integer.toHexString(peekChar)});
                            } else if (peekChar != scanChar || i != this.fEntityDepth) {
                                char c = (char) peekChar;
                                this.f111971t.append(c);
                                this.f111972u.append(c);
                            }
                            this.fEntityScanner.scanChar();
                        }
                    }
                    do {
                        this.f111972u.append('%');
                        String scanName = this.fEntityScanner.scanName();
                        if (scanName == null) {
                            reportFatalError("NameRequiredInPEReference", null);
                        } else if (this.fEntityScanner.skipChar(59)) {
                            if (scanningInternalSubset()) {
                                reportFatalError("PEReferenceWithinMarkup", new Object[]{scanName});
                            }
                            this.f111972u.append(scanName);
                            this.f111972u.append(';');
                        } else {
                            reportFatalError("SemicolonRequiredInPEReference", new Object[]{scanName});
                        }
                        i2 += this.fEntityManager.getParamEntityRefCount(startPE(scanName, true)) + 1;
                        this.fEntityScanner.skipSpaces();
                    } while (this.fEntityScanner.skipChar(37));
                } else if (this.fEntityScanner.skipChar(35)) {
                    this.f111972u.append("&#");
                    scanCharReferenceValue(this.f111971t, this.f111972u);
                } else {
                    this.f111971t.append('&');
                    this.f111972u.append('&');
                    String scanName2 = this.fEntityScanner.scanName();
                    if (scanName2 == null) {
                        reportFatalError("NameRequiredInReference", null);
                    } else {
                        this.f111971t.append(scanName2);
                        this.f111972u.append(scanName2);
                    }
                    if (this.fEntityScanner.skipChar(59)) {
                        this.f111971t.append(';');
                        this.f111972u.append(';');
                    } else {
                        reportFatalError("SemicolonRequiredInReference", new Object[]{scanName2});
                    }
                }
            } while (this.fEntityScanner.scanLiteral(scanChar, this.f111970s) != scanChar);
            this.f111971t.append(this.f111970s);
            this.f111972u.append(this.f111970s);
            xMLString4 = this.f111971t;
            xMLString3 = this.f111972u;
        } else {
            xMLString3 = xMLString4;
        }
        xMLString.setValues(xMLString4);
        xMLString2.setValues(xMLString3);
        if (!this.fEntityScanner.skipChar(scanChar)) {
            reportFatalError("CloseQuoteMissingInDecl", null);
        }
        return i2;
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public final void scanPIData(String str, XMLString xMLString) throws IOException, XNIException {
        super.scanPIData(str, xMLString);
        this.f111966o--;
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.processingInstruction(str, xMLString, null);
        }
    }

    public final boolean scanTextDecl() throws IOException, XNIException {
        boolean z = false;
        if (this.fEntityScanner.skipString("<?xml")) {
            this.f111966o++;
            if (isValidNameChar(this.fEntityScanner.peekChar())) {
                this.f111971t.clear();
                this.f111971t.append("xml");
                if (this.fNamespaces) {
                    while (isValidNCName(this.fEntityScanner.peekChar())) {
                        this.f111971t.append((char) this.fEntityScanner.scanChar());
                    }
                } else {
                    while (isValidNameChar(this.fEntityScanner.peekChar())) {
                        this.f111971t.append((char) this.fEntityScanner.scanChar());
                    }
                }
                SymbolTable symbolTable = this.fSymbolTable;
                XMLStringBuffer xMLStringBuffer = this.f111971t;
                scanPIData(symbolTable.addSymbol(xMLStringBuffer.f113585ch, xMLStringBuffer.offset, xMLStringBuffer.length), this.f111970s);
            } else {
                scanXMLDeclOrTextDecl(true, this.f111969r);
                this.f111966o--;
                String[] strArr = this.f111969r;
                String str = strArr[0];
                String str2 = strArr[1];
                this.fEntityScanner.setXMLVersion(str);
                if (!this.fEntityScanner.fCurrentEntity.isEncodingExternallySpecified()) {
                    this.fEntityScanner.setEncoding(str2);
                }
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
        return this.f111967p == 0;
    }

    @Override // org.apache.xerces.xni.parser.XMLDTDContentModelSource
    public void setDTDContentModelHandler(XMLDTDContentModelHandler xMLDTDContentModelHandler) {
        this.fDTDContentModelHandler = xMLDTDContentModelHandler;
    }

    @Override // org.apache.xerces.xni.parser.XMLDTDSource
    public void setDTDHandler(XMLDTDHandler xMLDTDHandler) {
        this.fDTDHandler = xMLDTDHandler;
    }

    @Override // org.apache.xerces.xni.parser.XMLDTDScanner
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
    }

    public final void setScannerState(int i) {
        this.fScannerState = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x003c, code lost:
    
        if (r4.fEntityScanner.isExternal() != false) goto L17;
     */
    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.impl.XMLEntityHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startEntity(java.lang.String r5, org.apache.xerces.xni.XMLResourceIdentifier r6, java.lang.String r7, org.apache.xerces.xni.Augmentations r8) throws org.apache.xerces.xni.XNIException {
        /*
            r4 = this;
            super.startEntity(r5, r6, r7, r8)
            java.lang.String r0 = "[dtd]"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L26
            org.apache.xerces.xni.XMLDTDHandler r1 = r4.fDTDHandler
            r2 = 0
            if (r1 == 0) goto L19
            boolean r3 = r4.f111960i
            if (r3 != 0) goto L19
            org.apache.xerces.impl.XMLEntityScanner r3 = r4.fEntityScanner
            r1.startDTD(r3, r2)
        L19:
            org.apache.xerces.xni.XMLDTDHandler r1 = r4.fDTDHandler
            if (r1 == 0) goto L20
            r1.startExternalSubset(r6, r2)
        L20:
            org.apache.xerces.impl.XMLEntityManager r1 = r4.fEntityManager
            r1.startExternalSubset()
            goto L3e
        L26:
            r1 = 0
            char r1 = r5.charAt(r1)
            r2 = 37
            if (r1 != r2) goto L44
            int r1 = r4.f111966o
            boolean r2 = r4.fReportEntity
            r4.m69813h(r1, r2)
            org.apache.xerces.impl.XMLEntityScanner r1 = r4.fEntityScanner
            boolean r1 = r1.isExternal()
            if (r1 == 0) goto L44
        L3e:
            int r1 = r4.f111967p
            int r1 = r1 + 1
            r4.f111967p = r1
        L44:
            org.apache.xerces.xni.XMLDTDHandler r1 = r4.fDTDHandler
            if (r1 == 0) goto L51
            if (r0 != 0) goto L51
            boolean r4 = r4.fReportEntity
            if (r4 == 0) goto L51
            r1.startParameterEntity(r5, r6, r7, r8)
        L51:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLDTDScannerImpl.startEntity(java.lang.String, org.apache.xerces.xni.XMLResourceIdentifier, java.lang.String, org.apache.xerces.xni.Augmentations):void");
    }

    public String startPE(String str, boolean z) throws IOException, XNIException {
        int i = this.f111965n;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("%");
        stringBuffer.append(str);
        String stringBuffer2 = stringBuffer.toString();
        if (!this.fSeenPEReferences) {
            this.fSeenPEReferences = true;
            this.fEntityManager.m69844o();
        }
        if (this.fValidation && !this.fEntityManager.isDeclaredEntity(stringBuffer2)) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "EntityNotDeclared", new Object[]{str}, (short) 1);
        }
        this.fEntityManager.startEntity(this.fSymbolTable.addSymbol(stringBuffer2), z);
        if (i != this.f111965n && this.fEntityScanner.isExternal()) {
            scanTextDecl();
        }
        return stringBuffer2;
    }

    public XMLDTDScannerImpl(SymbolTable symbolTable, XMLErrorReporter xMLErrorReporter, XMLEntityManager xMLEntityManager) {
        this.f111961j = new int[5];
        this.f111963l = new int[5];
        this.f111964m = new boolean[5];
        this.f111969r = new String[3];
        this.f111970s = new XMLString();
        this.f111971t = new XMLStringBuffer();
        this.f111972u = new XMLStringBuffer();
        this.f111973v = new XMLString();
        this.f111974w = new XMLString();
        this.f111975x = new String[5];
        this.f111977z = new XMLStringBuffer(128);
        this.fSymbolTable = symbolTable;
        this.fErrorReporter = xMLErrorReporter;
        this.fEntityManager = xMLEntityManager;
        xMLEntityManager.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
    }

    @Override // org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        super.reset(xMLComponentManager);
        m69807a();
    }
}
