package org.apache.xerces.impl;

import com.caverock.androidsvg.SVGParser;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import java.io.IOException;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLResourceIdentifierImpl;
import org.apache.xerces.util.XMLStringBuffer;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.jsoup.nodes.DocumentType;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes13.dex */
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
    protected XMLEntityManager fEntityManager;
    protected XMLEntityScanner fEntityScanner;
    protected XMLErrorReporter fErrorReporter;
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
    protected boolean fValidation = false;
    protected boolean fNotifyCharRefs = false;
    protected boolean fParserSettings = true;
    protected String fCharRefLiteral = null;

    /* renamed from: e */
    public final XMLString f112089e = new XMLString();

    /* renamed from: f */
    public final XMLStringBuffer f112090f = new XMLStringBuffer();

    /* renamed from: g */
    public final XMLStringBuffer f112091g = new XMLStringBuffer();

    /* renamed from: h */
    public final XMLStringBuffer f112092h = new XMLStringBuffer();
    protected final XMLResourceIdentifierImpl fResourceIdentifier = new XMLResourceIdentifierImpl();

    /* renamed from: a */
    private void m69860a() {
        this.fEntityScanner = null;
        this.fEntityDepth = 0;
        this.fReportEntity = true;
        this.fResourceIdentifier.clear();
    }

    /* renamed from: b */
    public final String m69861b() throws IOException, XNIException {
        int peekChar = this.fEntityScanner.peekChar();
        if (peekChar == 101) {
            XMLEntityScanner xMLEntityScanner = this.fEntityScanner;
            String str = fEncodingSymbol;
            if (xMLEntityScanner.skipString(str)) {
                return str;
            }
            return null;
        }
        if (peekChar == 115) {
            XMLEntityScanner xMLEntityScanner2 = this.fEntityScanner;
            String str2 = fStandaloneSymbol;
            if (xMLEntityScanner2.skipString(str2)) {
                return str2;
            }
            return null;
        }
        if (peekChar != 118) {
            return null;
        }
        XMLEntityScanner xMLEntityScanner3 = this.fEntityScanner;
        String str3 = fVersionSymbol;
        if (xMLEntityScanner3.skipString(str3)) {
            return str3;
        }
        return null;
    }

    public void endEntity(String str, Augmentations augmentations) throws XNIException {
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

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public abstract Boolean getFeatureDefault(String str);

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public abstract Object getPropertyDefault(String str);

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public abstract String[] getRecognizedFeatures();

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public abstract String[] getRecognizedProperties();

    public String getVersionNotSupportedKey() {
        return "VersionNotSupported";
    }

    public boolean isInvalid(int i) {
        return XMLChar.isInvalid(i);
    }

    public boolean isInvalidLiteral(int i) {
        return XMLChar.isInvalid(i);
    }

    public int isUnchangedByNormalization(XMLString xMLString) {
        int i = xMLString.offset;
        int i2 = xMLString.length + i;
        while (i < i2) {
            if (xMLString.f113585ch[i] < ' ') {
                return i - xMLString.offset;
            }
            i++;
        }
        return -1;
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

    public boolean isValidNameStartHighSurrogate(int i) {
        return false;
    }

    public void normalizeWhitespace(XMLString xMLString) {
        int i = xMLString.offset;
        int i2 = xMLString.length + i;
        while (i < i2) {
            char[] cArr = xMLString.f113585ch;
            if (cArr[i] < ' ') {
                cArr[i] = ' ';
            }
            i++;
        }
    }

    public void reportFatalError(String str, Object[] objArr) throws XNIException {
        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", str, objArr, (short) 2);
    }

    public void reset() {
        m69860a();
        this.fValidation = true;
        this.fNotifyCharRefs = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0210 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanAttributeValue(org.apache.xerces.xni.XMLString r17, org.apache.xerces.xni.XMLString r18, java.lang.String r19, boolean r20, java.lang.String r21) throws java.io.IOException, org.apache.xerces.xni.XNIException {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLScanner.scanAttributeValue(org.apache.xerces.xni.XMLString, org.apache.xerces.xni.XMLString, java.lang.String, boolean, java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0156  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanCharReferenceValue(org.apache.xerces.util.XMLStringBuffer r17, org.apache.xerces.util.XMLStringBuffer r18) throws java.io.IOException, org.apache.xerces.xni.XNIException {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLScanner.scanCharReferenceValue(org.apache.xerces.util.XMLStringBuffer, org.apache.xerces.util.XMLStringBuffer):int");
    }

    public void scanComment(XMLStringBuffer xMLStringBuffer) throws IOException, XNIException {
        xMLStringBuffer.clear();
        while (this.fEntityScanner.scanData(MultiPartWriter.f115320h, xMLStringBuffer)) {
            int peekChar = this.fEntityScanner.peekChar();
            if (peekChar != -1) {
                if (XMLChar.isHighSurrogate(peekChar)) {
                    scanSurrogates(xMLStringBuffer);
                } else if (isInvalidLiteral(peekChar)) {
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
            scanPubidLiteral(this.f112089e);
            str = this.f112089e.toString();
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
            XMLString xMLString = this.f112089e;
            if (this.fEntityScanner.scanLiteral(peekChar, xMLString) != peekChar) {
                this.f112090f.clear();
                do {
                    this.f112090f.append(xMLString);
                    int peekChar2 = this.fEntityScanner.peekChar();
                    if (XMLChar.isMarkup(peekChar2) || peekChar2 == 93) {
                        this.f112090f.append((char) this.fEntityScanner.scanChar());
                    } else if (XMLChar.isHighSurrogate(peekChar2)) {
                        scanSurrogates(this.f112090f);
                    } else if (isInvalidLiteral(peekChar2)) {
                        reportFatalError("InvalidCharInSystemID", new Object[]{Integer.toHexString(peekChar2)});
                        this.fEntityScanner.scanChar();
                    }
                } while (this.fEntityScanner.scanLiteral(peekChar, xMLString) != peekChar);
                this.f112090f.append(xMLString);
                xMLString = this.f112090f;
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

    public void scanPI() throws IOException, XNIException {
        this.fReportEntity = false;
        String scanNCName = this.fNamespaces ? this.fEntityScanner.scanNCName() : this.fEntityScanner.scanName();
        if (scanNCName == null) {
            reportFatalError("PITargetRequired", null);
        }
        scanPIData(scanNCName, this.f112089e);
        this.fReportEntity = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0095, code lost:
    
        if (r5.fEntityScanner.scanData("?>", r5.f112090f) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0097, code lost:
    
        r6 = r5.fEntityScanner.peekChar();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009e, code lost:
    
        if (r6 == (-1)) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a4, code lost:
    
        if (org.apache.xerces.util.XMLChar.isHighSurrogate(r6) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a6, code lost:
    
        scanSurrogates(r5.f112090f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b0, code lost:
    
        if (isInvalidLiteral(r6) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b2, code lost:
    
        reportFatalError("InvalidCharInPI", new java.lang.Object[]{java.lang.Integer.toHexString(r6)});
        r5.fEntityScanner.scanChar();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00cc, code lost:
    
        if (r5.fEntityScanner.scanData("?>", r5.f112090f) != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ce, code lost:
    
        r7.setValues(r5.f112090f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d3, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void scanPIData(java.lang.String r6, org.apache.xerces.xni.XMLString r7) throws java.io.IOException, org.apache.xerces.xni.XNIException {
        /*
            r5 = this;
            int r0 = r6.length()
            r1 = 3
            r2 = 0
            if (r0 != r1) goto L34
            r0 = 0
            char r0 = r6.charAt(r0)
            char r0 = java.lang.Character.toLowerCase(r0)
            r1 = 1
            char r1 = r6.charAt(r1)
            char r1 = java.lang.Character.toLowerCase(r1)
            r3 = 2
            char r3 = r6.charAt(r3)
            char r3 = java.lang.Character.toLowerCase(r3)
            r4 = 120(0x78, float:1.68E-43)
            if (r0 != r4) goto L34
            r0 = 109(0x6d, float:1.53E-43)
            if (r1 != r0) goto L34
            r0 = 108(0x6c, float:1.51E-43)
            if (r3 != r0) goto L34
            java.lang.String r0 = "ReservedPITarget"
            r5.reportFatalError(r0, r2)
        L34:
            org.apache.xerces.impl.XMLEntityScanner r0 = r5.fEntityScanner
            boolean r0 = r0.skipSpaces()
            java.lang.String r1 = "?>"
            if (r0 != 0) goto L88
            org.apache.xerces.impl.XMLEntityScanner r0 = r5.fEntityScanner
            boolean r0 = r0.skipString(r1)
            if (r0 == 0) goto L4a
            r7.clear()
            return
        L4a:
            boolean r0 = r5.fNamespaces
            if (r0 == 0) goto L83
            org.apache.xerces.impl.XMLEntityScanner r0 = r5.fEntityScanner
            int r0 = r0.peekChar()
            r3 = 58
            if (r0 != r3) goto L83
            org.apache.xerces.impl.XMLEntityScanner r0 = r5.fEntityScanner
            r0.scanChar()
            org.apache.xerces.util.XMLStringBuffer r0 = new org.apache.xerces.util.XMLStringBuffer
            r0.<init>(r6)
            r0.append(r3)
            org.apache.xerces.impl.XMLEntityScanner r6 = r5.fEntityScanner
            java.lang.String r6 = r6.scanName()
            if (r6 == 0) goto L70
            r0.append(r6)
        L70:
            java.lang.String r6 = r0.toString()
            java.lang.Object[] r6 = new java.lang.Object[]{r6}
            java.lang.String r0 = "ColonNotLegalWithNS"
            r5.reportFatalError(r0, r6)
            org.apache.xerces.impl.XMLEntityScanner r6 = r5.fEntityScanner
            r6.skipSpaces()
            goto L88
        L83:
            java.lang.String r6 = "SpaceRequiredInPI"
            r5.reportFatalError(r6, r2)
        L88:
            org.apache.xerces.util.XMLStringBuffer r6 = r5.f112090f
            r6.clear()
            org.apache.xerces.impl.XMLEntityScanner r6 = r5.fEntityScanner
            org.apache.xerces.util.XMLStringBuffer r0 = r5.f112090f
            boolean r6 = r6.scanData(r1, r0)
            if (r6 == 0) goto Lce
        L97:
            org.apache.xerces.impl.XMLEntityScanner r6 = r5.fEntityScanner
            int r6 = r6.peekChar()
            r0 = -1
            if (r6 == r0) goto Lc4
            boolean r0 = org.apache.xerces.util.XMLChar.isHighSurrogate(r6)
            if (r0 == 0) goto Lac
            org.apache.xerces.util.XMLStringBuffer r6 = r5.f112090f
            r5.scanSurrogates(r6)
            goto Lc4
        Lac:
            boolean r0 = r5.isInvalidLiteral(r6)
            if (r0 == 0) goto Lc4
            java.lang.String r6 = java.lang.Integer.toHexString(r6)
            java.lang.Object[] r6 = new java.lang.Object[]{r6}
            java.lang.String r0 = "InvalidCharInPI"
            r5.reportFatalError(r0, r6)
            org.apache.xerces.impl.XMLEntityScanner r6 = r5.fEntityScanner
            r6.scanChar()
        Lc4:
            org.apache.xerces.impl.XMLEntityScanner r6 = r5.fEntityScanner
            org.apache.xerces.util.XMLStringBuffer r0 = r5.f112090f
            boolean r6 = r6.scanData(r1, r0)
            if (r6 != 0) goto L97
        Lce:
            org.apache.xerces.util.XMLStringBuffer r5 = r5.f112090f
            r7.setValues(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLScanner.scanPIData(java.lang.String, org.apache.xerces.xni.XMLString):void");
    }

    public String scanPseudoAttribute(boolean z, XMLString xMLString) throws IOException, XNIException {
        String m69861b = m69861b();
        XMLEntityManager.m69836p(this.fEntityManager.getCurrentEntity());
        if (m69861b == null) {
            reportFatalError("PseudoAttrNameExpected", null);
        }
        this.fEntityScanner.skipDeclSpaces();
        if (!this.fEntityScanner.skipChar(61)) {
            reportFatalError(z ? "EqRequiredInTextDecl" : "EqRequiredInXMLDecl", new Object[]{m69861b});
        }
        this.fEntityScanner.skipDeclSpaces();
        int peekChar = this.fEntityScanner.peekChar();
        if (peekChar != 39 && peekChar != 34) {
            reportFatalError(z ? "QuoteRequiredInTextDecl" : "QuoteRequiredInXMLDecl", new Object[]{m69861b});
        }
        this.fEntityScanner.scanChar();
        int scanLiteral = this.fEntityScanner.scanLiteral(peekChar, xMLString);
        if (scanLiteral != peekChar) {
            this.f112091g.clear();
            do {
                this.f112091g.append(xMLString);
                if (scanLiteral != -1) {
                    if (scanLiteral == 38 || scanLiteral == 37 || scanLiteral == 60 || scanLiteral == 93) {
                        this.f112091g.append((char) this.fEntityScanner.scanChar());
                    } else if (XMLChar.isHighSurrogate(scanLiteral)) {
                        scanSurrogates(this.f112091g);
                    } else if (isInvalidLiteral(scanLiteral)) {
                        reportFatalError(z ? "InvalidCharInTextDecl" : "InvalidCharInXMLDecl", new Object[]{Integer.toString(scanLiteral, 16)});
                        this.fEntityScanner.scanChar();
                    }
                }
                scanLiteral = this.fEntityScanner.scanLiteral(peekChar, xMLString);
            } while (scanLiteral != peekChar);
            this.f112091g.append(xMLString);
            xMLString.setValues(this.f112091g);
        }
        if (!this.fEntityScanner.skipChar(peekChar)) {
            reportFatalError(z ? "CloseQuoteMissingInTextDecl" : "CloseQuoteMissingInXMLDecl", new Object[]{m69861b});
        }
        return m69861b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0067, code lost:
    
        r9.f112090f.append(' ');
        r4 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanPubidLiteral(org.apache.xerces.xni.XMLString r10) throws java.io.IOException, org.apache.xerces.xni.XNIException {
        /*
            r9 = this;
            org.apache.xerces.impl.XMLEntityScanner r0 = r9.fEntityScanner
            int r0 = r0.scanChar()
            r1 = 39
            r2 = 0
            r3 = 0
            if (r0 == r1) goto L16
            r1 = 34
            if (r0 == r1) goto L16
            java.lang.String r10 = "QuoteRequiredInPublicID"
        L12:
            r9.reportFatalError(r10, r2)
            return r3
        L16:
            org.apache.xerces.util.XMLStringBuffer r1 = r9.f112090f
            r1.clear()
            r1 = 1
            r4 = r1
            r5 = r4
        L1e:
            org.apache.xerces.impl.XMLEntityScanner r6 = r9.fEntityScanner
            int r6 = r6.scanChar()
            r7 = 32
            if (r6 == r7) goto L65
            r8 = 10
            if (r6 == r8) goto L65
            r8 = 13
            if (r6 != r8) goto L31
            goto L65
        L31:
            if (r6 != r0) goto L42
            if (r4 == 0) goto L3c
            org.apache.xerces.util.XMLStringBuffer r0 = r9.f112090f
            int r2 = r0.length
            int r2 = r2 - r1
            r0.length = r2
        L3c:
            org.apache.xerces.util.XMLStringBuffer r9 = r9.f112090f
            r10.setValues(r9)
            return r5
        L42:
            boolean r7 = org.apache.xerces.util.XMLChar.isPubid(r6)
            if (r7 == 0) goto L50
            org.apache.xerces.util.XMLStringBuffer r4 = r9.f112090f
            char r6 = (char) r6
            r4.append(r6)
            r4 = r3
            goto L1e
        L50:
            r5 = -1
            if (r6 != r5) goto L56
            java.lang.String r10 = "PublicIDUnterminated"
            goto L12
        L56:
            java.lang.String r5 = java.lang.Integer.toHexString(r6)
            java.lang.Object[] r5 = new java.lang.Object[]{r5}
            java.lang.String r6 = "InvalidCharInPublicID"
            r9.reportFatalError(r6, r5)
            r5 = r3
            goto L1e
        L65:
            if (r4 != 0) goto L1e
            org.apache.xerces.util.XMLStringBuffer r4 = r9.f112090f
            r4.append(r7)
            r4 = r1
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLScanner.scanPubidLiteral(org.apache.xerces.xni.XMLString):boolean");
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
        Object[] objArr;
        XMLEntityManager.ScannedEntity scannedEntity;
        Object[] objArr2;
        boolean skipDeclSpaces = this.fEntityScanner.skipDeclSpaces();
        XMLEntityManager.ScannedEntity currentEntity = this.fEntityManager.getCurrentEntity();
        boolean z2 = currentEntity.literal;
        currentEntity.literal = false;
        char c = 0;
        boolean z3 = false;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (this.fEntityScanner.peekChar() != 63) {
            String scanPseudoAttribute = scanPseudoAttribute(z, this.f112089e);
            if (c != 0) {
                scannedEntity = currentEntity;
                if (c != 1) {
                    if (c != 2) {
                        reportFatalError("NoMorePseudoAttributes", null);
                    } else if (scanPseudoAttribute == fStandaloneSymbol) {
                        if (!skipDeclSpaces) {
                            reportFatalError("SpaceRequiredBeforeStandalone", null);
                        }
                        str3 = this.f112089e.toString();
                        if (!str3.equals("yes") && !str3.equals(SVGParser.f16048t)) {
                            reportFatalError("SDDeclInvalid", new Object[]{str3});
                        }
                    } else {
                        reportFatalError("EncodingDeclRequired", null);
                    }
                } else if (scanPseudoAttribute == fEncodingSymbol) {
                    if (!skipDeclSpaces) {
                        reportFatalError(z ? "SpaceRequiredBeforeEncodingInTextDecl" : "SpaceRequiredBeforeEncodingInXMLDecl", null);
                    }
                    str2 = this.f112089e.toString();
                    c = z ? (char) 3 : (char) 2;
                } else if (z || scanPseudoAttribute != fStandaloneSymbol) {
                    objArr2 = null;
                    reportFatalError("EncodingDeclRequired", objArr2);
                } else {
                    if (!skipDeclSpaces) {
                        reportFatalError("SpaceRequiredBeforeStandalone", null);
                    }
                    str3 = this.f112089e.toString();
                    if (!str3.equals("yes") && !str3.equals(SVGParser.f16048t)) {
                        reportFatalError("SDDeclInvalid", new Object[]{str3});
                    }
                }
                c = 3;
            } else {
                scannedEntity = currentEntity;
                if (scanPseudoAttribute == fVersionSymbol) {
                    if (!skipDeclSpaces) {
                        reportFatalError(z ? "SpaceRequiredBeforeVersionInTextDecl" : "SpaceRequiredBeforeVersionInXMLDecl", null);
                    }
                    str = this.f112089e.toString();
                    if (!versionSupported(str)) {
                        reportFatalError(getVersionNotSupportedKey(), new Object[]{str});
                    }
                    c = 1;
                } else if (scanPseudoAttribute == fEncodingSymbol) {
                    if (!z) {
                        reportFatalError("VersionInfoRequired", null);
                    }
                    if (!skipDeclSpaces) {
                        reportFatalError(z ? "SpaceRequiredBeforeEncodingInTextDecl" : "SpaceRequiredBeforeEncodingInXMLDecl", null);
                    }
                    str2 = this.f112089e.toString();
                    if (!z) {
                        c = 2;
                    }
                    c = 3;
                } else {
                    objArr2 = null;
                    if (!z) {
                        reportFatalError("VersionInfoRequired", null);
                    }
                    reportFatalError("EncodingDeclRequired", objArr2);
                }
            }
            skipDeclSpaces = this.fEntityScanner.skipDeclSpaces();
            currentEntity = scannedEntity;
            z3 = true;
        }
        if (z2) {
            currentEntity.literal = true;
        }
        if (!z || c == 3) {
            objArr = null;
        } else {
            objArr = null;
            reportFatalError("MorePseudoAttributes", null);
        }
        if (z) {
            if (!z3 && str2 == null) {
                reportFatalError("EncodingDeclRequired", objArr);
            }
        } else if (!z3 && str == null) {
            reportFatalError("VersionInfoRequired", objArr);
        }
        if (!this.fEntityScanner.skipChar(63)) {
            reportFatalError("XMLDeclUnterminated", objArr);
        }
        if (!this.fEntityScanner.skipChar(62)) {
            reportFatalError("XMLDeclUnterminated", objArr);
        }
        strArr[0] = str;
        strArr[1] = str2;
        strArr[2] = str3;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        if ("http://xml.org/sax/features/validation".equals(str)) {
            this.fValidation = z;
        } else if (NOTIFY_CHAR_REFS.equals(str)) {
            this.fNotifyCharRefs = z;
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/properties/")) {
            int length = str.length() - 33;
            if (length == 21 && str.endsWith("internal/symbol-table")) {
                this.fSymbolTable = (SymbolTable) obj;
                return;
            }
            if (length == 23 && str.endsWith("internal/error-reporter")) {
                this.fErrorReporter = (XMLErrorReporter) obj;
            } else if (length == 23 && str.endsWith("internal/entity-manager")) {
                this.fEntityManager = (XMLEntityManager) obj;
            }
        }
    }

    public void startEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        this.fEntityDepth++;
        this.fEntityScanner = this.fEntityManager.getEntityScanner();
    }

    public boolean versionSupported(String str) {
        return str.equals("1.0");
    }

    public void normalizeWhitespace(XMLString xMLString, int i) {
        int i2 = xMLString.offset;
        int i3 = xMLString.length + i2;
        for (int i4 = i2 + i; i4 < i3; i4++) {
            char[] cArr = xMLString.f113585ch;
            if (cArr[i4] < ' ') {
                cArr[i4] = ' ';
            }
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        try {
            this.fParserSettings = xMLComponentManager.getFeature("http://apache.org/xml/features/internal/parser-settings");
        } catch (XMLConfigurationException unused) {
            this.fParserSettings = true;
        }
        if (!this.fParserSettings) {
            m69860a();
            return;
        }
        this.fSymbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.fEntityManager = (XMLEntityManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-manager");
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
        m69860a();
    }
}
