package com.onegravity.rteditor.converter.tagsoup;

import android.annotation.SuppressLint;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.commons.lang3.SystemUtils;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes7.dex */
public class Parser extends DefaultHandler implements ScanHandler, XMLReader, LexicalHandler {

    /* renamed from: A0 */
    public static boolean f40309A0 = false;

    /* renamed from: B0 */
    public static boolean f40310B0 = true;

    /* renamed from: C0 */
    public static boolean f40311C0 = false;
    public static final String CDATAElementsFeature = "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements";

    /* renamed from: D0 */
    public static boolean f40312D0 = true;

    /* renamed from: E0 */
    public static char[] f40313E0 = {'<', '/', '>'};

    /* renamed from: F0 */
    public static String f40314F0 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-'()+,./:=?;!*#@$_%";
    public static final String XML11Feature = "http://xml.org/sax/features/xml-1.1";
    public static final String autoDetectorProperty = "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector";
    public static final String bogonsEmptyFeature = "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty";
    public static final String defaultAttributesFeature = "http://www.ccil.org/~cowan/tagsoup/features/default-attributes";
    public static final String externalGeneralEntitiesFeature = "http://xml.org/sax/features/external-general-entities";
    public static final String externalParameterEntitiesFeature = "http://xml.org/sax/features/external-parameter-entities";
    public static final String ignorableWhitespaceFeature = "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace";
    public static final String ignoreBogonsFeature = "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons";
    public static final String isStandaloneFeature = "http://xml.org/sax/features/is-standalone";
    public static final String lexicalHandlerParameterEntitiesFeature = "http://xml.org/sax/features/lexical-handler/parameter-entities";
    public static final String lexicalHandlerProperty = "http://xml.org/sax/properties/lexical-handler";
    public static final String namespacePrefixesFeature = "http://xml.org/sax/features/namespace-prefixes";
    public static final String namespacesFeature = "http://xml.org/sax/features/namespaces";
    public static final String resolveDTDURIsFeature = "http://xml.org/sax/features/resolve-dtd-uris";
    public static final String restartElementsFeature = "http://www.ccil.org/~cowan/tagsoup/features/restart-elements";
    public static final String rootBogonsFeature = "http://www.ccil.org/~cowan/tagsoup/features/root-bogons";
    public static final String scannerProperty = "http://www.ccil.org/~cowan/tagsoup/properties/scanner";
    public static final String schemaProperty = "http://www.ccil.org/~cowan/tagsoup/properties/schema";
    public static final String stringInterningFeature = "http://xml.org/sax/features/string-interning";
    public static final String translateColonsFeature = "http://www.ccil.org/~cowan/tagsoup/features/translate-colons";
    public static final String unicodeNormalizationCheckingFeature = "http://xml.org/sax/features/unicode-normalization-checking";
    public static final String useAttributes2Feature = "http://xml.org/sax/features/use-attributes2";
    public static final String useEntityResolver2Feature = "http://xml.org/sax/features/use-entity-resolver2";
    public static final String useLocator2Feature = "http://xml.org/sax/features/use-locator2";

    /* renamed from: v0 */
    public static boolean f40315v0 = true;
    public static final String validationFeature = "http://xml.org/sax/features/validation";

    /* renamed from: w0 */
    public static boolean f40316w0 = false;

    /* renamed from: x0 */
    public static boolean f40317x0 = false;
    public static final String xmlnsURIsFeature = "http://xml.org/sax/features/xmlns-uris";

    /* renamed from: y0 */
    public static boolean f40318y0 = true;

    /* renamed from: z0 */
    public static boolean f40319z0 = true;

    /* renamed from: J */
    public String f40320J;

    /* renamed from: O */
    public String f40321O;

    /* renamed from: Q */
    public String f40322Q;

    /* renamed from: Z */
    public Element f40323Z;

    /* renamed from: j */
    public Schema f40329j;

    /* renamed from: k */
    public Scanner f40330k;

    /* renamed from: k0 */
    public Element f40331k0;

    /* renamed from: l */
    public AutoDetector f40332l;

    /* renamed from: q0 */
    public Element f40338q0;

    /* renamed from: t0 */
    public int f40342t0;

    /* renamed from: u0 */
    public boolean f40344u0;

    /* renamed from: v */
    public HashMap<String, Boolean> f40345v;

    /* renamed from: w */
    public Element f40346w;

    /* renamed from: x */
    public String f40347x;

    /* renamed from: y */
    public boolean f40348y;

    /* renamed from: z */
    public String f40349z;

    /* renamed from: e */
    public ContentHandler f40324e = this;

    /* renamed from: f */
    public LexicalHandler f40325f = this;

    /* renamed from: g */
    public DTDHandler f40326g = this;

    /* renamed from: h */
    public ErrorHandler f40327h = this;

    /* renamed from: i */
    public EntityResolver f40328i = this;

    /* renamed from: m */
    public boolean f40333m = f40315v0;

    /* renamed from: n */
    public boolean f40334n = f40316w0;

    /* renamed from: o */
    public boolean f40335o = f40317x0;

    /* renamed from: p */
    public boolean f40336p = f40318y0;

    /* renamed from: q */
    public boolean f40337q = f40319z0;

    /* renamed from: r */
    public boolean f40339r = f40309A0;

    /* renamed from: s */
    public boolean f40340s = f40310B0;

    /* renamed from: t */
    public boolean f40341t = f40311C0;

    /* renamed from: u */
    public boolean f40343u = f40312D0;

    /* renamed from: com.onegravity.rteditor.converter.tagsoup.Parser$a */
    /* loaded from: classes7.dex */
    public class C7057a implements AutoDetector {
        public C7057a() {
        }

        @Override // com.onegravity.rteditor.converter.tagsoup.AutoDetector
        public Reader autoDetectingReader(InputStream inputStream) {
            return new InputStreamReader(inputStream);
        }
    }

    public Parser() {
        HashMap<String, Boolean> hashMap = new HashMap<>();
        this.f40345v = hashMap;
        hashMap.put("http://xml.org/sax/features/namespaces", m31647s(f40315v0));
        HashMap<String, Boolean> hashMap2 = this.f40345v;
        Boolean bool = Boolean.FALSE;
        hashMap2.put("http://xml.org/sax/features/namespace-prefixes", bool);
        this.f40345v.put("http://xml.org/sax/features/external-general-entities", bool);
        this.f40345v.put("http://xml.org/sax/features/external-parameter-entities", bool);
        this.f40345v.put(isStandaloneFeature, bool);
        this.f40345v.put(lexicalHandlerParameterEntitiesFeature, bool);
        HashMap<String, Boolean> hashMap3 = this.f40345v;
        Boolean bool2 = Boolean.TRUE;
        hashMap3.put(resolveDTDURIsFeature, bool2);
        this.f40345v.put("http://xml.org/sax/features/string-interning", bool2);
        this.f40345v.put(useAttributes2Feature, bool);
        this.f40345v.put(useLocator2Feature, bool);
        this.f40345v.put(useEntityResolver2Feature, bool);
        this.f40345v.put("http://xml.org/sax/features/validation", bool);
        this.f40345v.put(xmlnsURIsFeature, bool);
        this.f40345v.put(xmlnsURIsFeature, bool);
        this.f40345v.put(XML11Feature, bool);
        this.f40345v.put(ignoreBogonsFeature, m31647s(f40316w0));
        this.f40345v.put(bogonsEmptyFeature, m31647s(f40317x0));
        this.f40345v.put(rootBogonsFeature, m31647s(f40318y0));
        this.f40345v.put(defaultAttributesFeature, m31647s(f40319z0));
        this.f40345v.put(translateColonsFeature, m31647s(f40309A0));
        this.f40345v.put(restartElementsFeature, m31647s(f40310B0));
        this.f40345v.put(ignorableWhitespaceFeature, m31647s(f40311C0));
        this.f40345v.put(CDATAElementsFeature, m31647s(f40312D0));
        this.f40346w = null;
        this.f40347x = null;
        this.f40348y = false;
        this.f40349z = null;
        this.f40320J = null;
        this.f40321O = null;
        this.f40322Q = null;
        this.f40323Z = null;
        this.f40331k0 = null;
        this.f40338q0 = null;
        this.f40342t0 = 0;
        this.f40344u0 = true;
    }

    /* renamed from: q */
    public static String[] m31645q(String str) throws IllegalArgumentException {
        String trim = str.trim();
        if (trim.length() == 0) {
            return new String[0];
        }
        ArrayList arrayList = new ArrayList();
        int length = trim.length();
        int i = 0;
        int i2 = 0;
        boolean z = false;
        char c = 0;
        boolean z2 = false;
        while (i < length) {
            char charAt = trim.charAt(i);
            if (!z && charAt == '\'' && c != '\\') {
                z2 = !z2;
                if (i2 >= 0) {
                    i++;
                    c = charAt;
                }
                i2 = i;
                i++;
                c = charAt;
            } else if (z2 || charAt != '\"' || c == '\\') {
                if (!z2 && !z) {
                    if (Character.isWhitespace(charAt)) {
                        if (i2 >= 0) {
                            arrayList.add(trim.substring(i2, i));
                        }
                        i2 = -1;
                    } else if (i2 < 0) {
                        if (charAt == ' ') {
                        }
                        i2 = i;
                    }
                }
                i++;
                c = charAt;
            } else {
                z = !z;
                if (i2 >= 0) {
                    i++;
                    c = charAt;
                }
                i2 = i;
                i++;
                c = charAt;
            }
        }
        arrayList.add(trim.substring(i2, i));
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* renamed from: r */
    public static String m31646r(String str) {
        int length;
        char charAt;
        return (str == null || (length = str.length()) == 0 || (charAt = str.charAt(0)) != str.charAt(length - 1)) ? str : (charAt == '\'' || charAt == '\"') ? str.substring(1, str.length() - 1) : str;
    }

    /* renamed from: s */
    public static Boolean m31647s(boolean z) {
        return z ? Boolean.TRUE : Boolean.FALSE;
    }

    /* renamed from: a */
    public final String m31648a(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length);
        boolean z = true;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (f40314F0.indexOf(charAt) != -1) {
                stringBuffer.append(charAt);
                z = false;
            } else if (!z) {
                stringBuffer.append(' ');
                z = true;
            }
        }
        return stringBuffer.toString().trim();
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    public void adup(char[] cArr, int i, int i2) throws SAXException {
        String str;
        Element element = this.f40346w;
        if (element == null || (str = this.f40347x) == null) {
            return;
        }
        element.setAttribute(str, null, str);
        this.f40347x = null;
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    @SuppressLint({"DefaultLocale"})
    public void aname(char[] cArr, int i, int i2) throws SAXException {
        if (this.f40346w != null) {
            this.f40347x = m31657i(cArr, i, i2).toLowerCase();
        }
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    public void aval(char[] cArr, int i, int i2) throws SAXException {
        if (this.f40346w == null || this.f40347x == null) {
            return;
        }
        this.f40346w.setAttribute(this.f40347x, null, m31651d(new String(cArr, i, i2)));
        this.f40347x = null;
    }

    /* renamed from: b */
    public final void m31649b(char[] cArr, int i, int i2) throws SAXException {
        String name;
        this.f40346w = null;
        if (i2 != 0) {
            ElementType elementType = this.f40329j.getElementType(m31657i(cArr, i, i2));
            if (elementType == null) {
                return;
            } else {
                name = elementType.name();
            }
        } else {
            name = this.f40323Z.name();
        }
        Element element = this.f40323Z;
        boolean z = false;
        while (element != null && !element.name().equals(name)) {
            if ((element.flags() & 4) != 0) {
                z = true;
            }
            element = element.next();
        }
        if (element == null || element.next() == null || element.next().next() == null) {
            return;
        }
        if (z) {
            element.preclose();
        } else {
            while (this.f40323Z != element) {
                m31663o();
            }
            m31658j();
        }
        while (this.f40323Z.isPreclosed()) {
            m31658j();
        }
        m31662n(null);
    }

    /* renamed from: c */
    public final boolean m31650c(char[] cArr, int i, int i2) throws SAXException {
        String name = this.f40323Z.name();
        if (this.f40343u && (this.f40323Z.flags() & 2) != 0) {
            boolean z = i2 == name.length();
            if (z) {
                int i3 = 0;
                while (true) {
                    if (i3 >= i2) {
                        break;
                    }
                    if (Character.toLowerCase(cArr[i + i3]) != Character.toLowerCase(name.charAt(i3))) {
                        z = false;
                        break;
                    }
                    i3++;
                }
            }
            if (!z) {
                this.f40324e.characters(f40313E0, 0, 2);
                this.f40324e.characters(cArr, i, i2);
                this.f40324e.characters(f40313E0, 2, 1);
                this.f40330k.startCDATA();
                return true;
            }
        }
        return false;
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    public void cdsect(char[] cArr, int i, int i2) throws SAXException {
        this.f40325f.startCDATA();
        pcdata(cArr, i, i2);
        this.f40325f.endCDATA();
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    public void cmnt(char[] cArr, int i, int i2) throws SAXException {
        this.f40325f.comment(cArr, i, i2);
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i, int i2) throws SAXException {
    }

    /* renamed from: d */
    public final String m31651d(String str) {
        int length = str.length();
        char[] cArr = new char[length];
        int i = -1;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = str.charAt(i3);
            int i4 = i2 + 1;
            cArr[i2] = charAt;
            if (charAt == '&' && i == -1) {
                i2 = i4;
                i = i2;
            } else {
                if (i != -1 && !Character.isLetter(charAt) && !Character.isDigit(charAt) && charAt != '#') {
                    if (charAt == ';') {
                        int m31656h = m31656h(cArr, i, (i4 - i) - 1);
                        if (m31656h > 65535) {
                            int i5 = m31656h - 65536;
                            cArr[i - 1] = (char) ((i5 >> 10) + 55296);
                            cArr[i] = (char) ((i5 & 1023) + 56320);
                            i++;
                        } else if (m31656h != 0) {
                            cArr[i - 1] = (char) m31656h;
                        } else {
                            i = i4;
                        }
                        i2 = i;
                        i = -1;
                    } else {
                        i = -1;
                    }
                }
                i2 = i4;
            }
        }
        return new String(cArr, 0, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void decl(char[] r5, int r6, int r7) throws org.xml.sax.SAXException {
        /*
            r4 = this;
            java.lang.String r0 = new java.lang.String
            r0.<init>(r5, r6, r7)
            java.lang.String[] r5 = m31645q(r0)
            int r6 = r5.length
            r7 = 0
            if (r6 <= 0) goto L52
            r6 = 0
            r6 = r5[r6]
            java.lang.String r0 = "DOCTYPE"
            boolean r6 = r0.equalsIgnoreCase(r6)
            if (r6 == 0) goto L52
            boolean r6 = r4.f40348y
            if (r6 == 0) goto L1d
            return
        L1d:
            r6 = 1
            r4.f40348y = r6
            int r0 = r5.length
            if (r0 <= r6) goto L52
            r6 = r5[r6]
            int r0 = r5.length
            r1 = 2
            r2 = 3
            if (r0 <= r2) goto L37
            java.lang.String r0 = "SYSTEM"
            r3 = r5[r1]
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L37
            r5 = r5[r2]
            goto L54
        L37:
            int r0 = r5.length
            if (r0 <= r2) goto L50
            java.lang.String r0 = "PUBLIC"
            r1 = r5[r1]
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L50
            r7 = r5[r2]
            int r0 = r5.length
            r1 = 4
            if (r0 <= r1) goto L4d
            r5 = r5[r1]
            goto L54
        L4d:
            java.lang.String r5 = ""
            goto L54
        L50:
            r5 = r7
            goto L54
        L52:
            r5 = r7
            r6 = r5
        L54:
            java.lang.String r7 = m31646r(r7)
            java.lang.String r5 = m31646r(r5)
            if (r6 == 0) goto L90
            java.lang.String r7 = r4.m31648a(r7)
            org.xml.sax.ext.LexicalHandler r0 = r4.f40325f
            r0.startDTD(r6, r7, r5)
            org.xml.sax.ext.LexicalHandler r0 = r4.f40325f
            r0.endDTD()
            r4.f40321O = r6
            r4.f40349z = r7
            com.onegravity.rteditor.converter.tagsoup.Scanner r6 = r4.f40330k
            boolean r7 = r6 instanceof org.xml.sax.Locator
            if (r7 == 0) goto L90
            org.xml.sax.Locator r6 = (org.xml.sax.Locator) r6
            java.lang.String r6 = r6.getSystemId()
            r4.f40320J = r6
            java.net.URL r6 = new java.net.URL     // Catch: java.lang.Exception -> L90
            java.net.URL r7 = new java.net.URL     // Catch: java.lang.Exception -> L90
            java.lang.String r0 = r4.f40320J     // Catch: java.lang.Exception -> L90
            r7.<init>(r0)     // Catch: java.lang.Exception -> L90
            r6.<init>(r7, r5)     // Catch: java.lang.Exception -> L90
            java.lang.String r5 = r6.toString()     // Catch: java.lang.Exception -> L90
            r4.f40320J = r5     // Catch: java.lang.Exception -> L90
        L90:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onegravity.rteditor.converter.tagsoup.Parser.decl(char[], int, int):void");
    }

    /* renamed from: e */
    public final boolean m31652e(String str, String str2) {
        return (str.equals("") || str2.equals("") || str2.equals(this.f40329j.getURI())) ? false : true;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endCDATA() throws SAXException {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endDTD() throws SAXException {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endEntity(String str) throws SAXException {
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    public void entity(char[] cArr, int i, int i2) throws SAXException {
        this.f40342t0 = m31656h(cArr, i, i2);
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    public void eof(char[] cArr, int i, int i2) throws SAXException {
        if (this.f40344u0) {
            m31661m(this.f40338q0);
        }
        while (this.f40323Z.next() != null) {
            m31658j();
        }
        if (!this.f40329j.getURI().equals("")) {
            this.f40324e.endPrefixMapping(this.f40329j.getPrefix());
        }
        this.f40324e.endDocument();
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    public void etag(char[] cArr, int i, int i2) throws SAXException {
        if (m31650c(cArr, i, i2)) {
            return;
        }
        m31649b(cArr, i, i2);
    }

    /* renamed from: f */
    public final InputStream m31653f(String str, String str2) throws IOException, SAXException {
        return new URL(new URL("file", "", System.getProperty(SystemUtils.f107422c) + "/."), str2).openConnection().getInputStream();
    }

    /* renamed from: g */
    public final Reader m31654g(InputSource inputSource) throws SAXException, IOException {
        Reader characterStream = inputSource.getCharacterStream();
        InputStream byteStream = inputSource.getByteStream();
        String encoding = inputSource.getEncoding();
        String publicId = inputSource.getPublicId();
        String systemId = inputSource.getSystemId();
        if (characterStream != null) {
            return characterStream;
        }
        if (byteStream == null) {
            byteStream = m31653f(publicId, systemId);
        }
        if (encoding == null) {
            return this.f40332l.autoDetectingReader(byteStream);
        }
        try {
            return new InputStreamReader(byteStream, encoding);
        } catch (UnsupportedEncodingException unused) {
            return new InputStreamReader(byteStream);
        }
    }

    @Override // org.xml.sax.XMLReader
    public ContentHandler getContentHandler() {
        ContentHandler contentHandler = this.f40324e;
        if (contentHandler == this) {
            return null;
        }
        return contentHandler;
    }

    @Override // org.xml.sax.XMLReader
    public DTDHandler getDTDHandler() {
        DTDHandler dTDHandler = this.f40326g;
        if (dTDHandler == this) {
            return null;
        }
        return dTDHandler;
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    public int getEntity() {
        return this.f40342t0;
    }

    @Override // org.xml.sax.XMLReader
    public EntityResolver getEntityResolver() {
        EntityResolver entityResolver = this.f40328i;
        if (entityResolver == this) {
            return null;
        }
        return entityResolver;
    }

    @Override // org.xml.sax.XMLReader
    public ErrorHandler getErrorHandler() {
        ErrorHandler errorHandler = this.f40327h;
        if (errorHandler == this) {
            return null;
        }
        return errorHandler;
    }

    @Override // org.xml.sax.XMLReader
    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        Boolean bool = this.f40345v.get(str);
        if (bool != null) {
            return bool.booleanValue();
        }
        throw new SAXNotRecognizedException("Unknown feature " + str);
    }

    @Override // org.xml.sax.XMLReader
    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str.equals("http://xml.org/sax/properties/lexical-handler")) {
            LexicalHandler lexicalHandler = this.f40325f;
            if (lexicalHandler == this) {
                return null;
            }
            return lexicalHandler;
        }
        if (str.equals(scannerProperty)) {
            return this.f40330k;
        }
        if (str.equals(schemaProperty)) {
            return this.f40329j;
        }
        if (str.equals(autoDetectorProperty)) {
            return this.f40332l;
        }
        throw new SAXNotRecognizedException("Unknown property " + str);
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    /* renamed from: gi */
    public void mo31655gi(char[] cArr, int i, int i2) throws SAXException {
        String m31657i;
        if (this.f40346w == null && (m31657i = m31657i(cArr, i, i2)) != null) {
            ElementType elementType = this.f40329j.getElementType(m31657i);
            if (elementType == null) {
                if (this.f40334n) {
                    return;
                }
                this.f40329j.elementType(m31657i, this.f40335o ? 0 : -1, this.f40336p ? -1 : Integer.MAX_VALUE, 0);
                if (!this.f40336p) {
                    Schema schema = this.f40329j;
                    schema.parent(m31657i, schema.rootElementType().name());
                }
                elementType = this.f40329j.getElementType(m31657i);
            }
            this.f40346w = new Element(elementType, this.f40337q);
        }
    }

    /* renamed from: h */
    public final int m31656h(char[] cArr, int i, int i2) {
        char c;
        if (i2 < 1) {
            return 0;
        }
        if (cArr[i] != '#') {
            return this.f40329j.getEntity(new String(cArr, i, i2));
        }
        if (i2 <= 1 || !((c = cArr[i + 1]) == 'x' || c == 'X')) {
            try {
                return Integer.parseInt(new String(cArr, i + 1, i2 - 1), 10);
            } catch (NumberFormatException unused) {
                return 0;
            }
        }
        try {
            return Integer.parseInt(new String(cArr, i + 2, i2 - 2), 16);
        } catch (NumberFormatException unused2) {
            return 0;
        }
    }

    /* renamed from: i */
    public final String m31657i(char[] cArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer(i2 + 2);
        boolean z = false;
        boolean z2 = true;
        while (true) {
            int i3 = i2 - 1;
            char c = NameUtil.USCORE;
            if (i2 <= 0) {
                break;
            }
            char c2 = cArr[i];
            if (Character.isLetter(c2) || c2 == '_') {
                stringBuffer.append(c2);
            } else if (Character.isDigit(c2) || c2 == '-' || c2 == '.') {
                if (z2) {
                    stringBuffer.append(NameUtil.USCORE);
                }
                stringBuffer.append(c2);
            } else {
                if (c2 == ':' && !z) {
                    if (z2) {
                        stringBuffer.append(NameUtil.USCORE);
                    }
                    if (!this.f40339r) {
                        c = c2;
                    }
                    stringBuffer.append(c);
                    z2 = true;
                    z = true;
                }
                i++;
                i2 = i3;
            }
            z2 = false;
            i++;
            i2 = i3;
        }
        int length = stringBuffer.length();
        if (length == 0 || stringBuffer.charAt(length - 1) == ':') {
            stringBuffer.append(NameUtil.USCORE);
        }
        return stringBuffer.toString().intern();
    }

    /* renamed from: j */
    public final void m31658j() throws SAXException {
        Element element = this.f40323Z;
        if (element == null) {
            return;
        }
        String name = element.name();
        String localName = this.f40323Z.localName();
        String namespace = this.f40323Z.namespace();
        String m31659k = m31659k(name);
        if (!this.f40333m) {
            localName = "";
            namespace = "";
        }
        this.f40324e.endElement(namespace, localName, name);
        if (m31652e(m31659k, namespace)) {
            this.f40324e.endPrefixMapping(m31659k);
        }
        AttributesImpl atts = this.f40323Z.atts();
        for (int length = atts.getLength() - 1; length >= 0; length--) {
            String uri = atts.getURI(length);
            String m31659k2 = m31659k(atts.getQName(length));
            if (m31652e(m31659k2, uri)) {
                this.f40324e.endPrefixMapping(m31659k2);
            }
        }
        this.f40323Z = this.f40323Z.next();
    }

    /* renamed from: k */
    public final String m31659k(String str) {
        int indexOf = str.indexOf(58);
        return indexOf != -1 ? str.substring(0, indexOf) : "";
    }

    /* renamed from: l */
    public final void m31660l(Element element) throws SAXException {
        String name = element.name();
        String localName = element.localName();
        String namespace = element.namespace();
        String m31659k = m31659k(name);
        element.clean();
        if (!this.f40333m) {
            localName = "";
            namespace = "";
        }
        if (this.f40344u0 && localName.equalsIgnoreCase(this.f40321O)) {
            try {
                this.f40328i.resolveEntity(this.f40349z, this.f40320J);
            } catch (IOException unused) {
            }
        }
        if (m31652e(m31659k, namespace)) {
            this.f40324e.startPrefixMapping(m31659k, namespace);
        }
        AttributesImpl atts = element.atts();
        int length = atts.getLength();
        for (int i = 0; i < length; i++) {
            String uri = atts.getURI(i);
            String m31659k2 = m31659k(atts.getQName(i));
            if (m31652e(m31659k2, uri)) {
                this.f40324e.startPrefixMapping(m31659k2, uri);
            }
        }
        this.f40324e.startElement(namespace, localName, name, element.atts());
        element.setNext(this.f40323Z);
        this.f40323Z = element;
        this.f40344u0 = false;
        if (!this.f40343u || (element.flags() & 2) == 0) {
            return;
        }
        this.f40330k.startCDATA();
    }

    /* renamed from: m */
    public final void m31661m(Element element) throws SAXException {
        Element element2;
        ElementType parent;
        while (true) {
            element2 = this.f40323Z;
            while (element2 != null && !element2.canContain(element)) {
                element2 = element2.next();
            }
            if (element2 == null && (parent = element.parent()) != null) {
                Element element3 = new Element(parent, this.f40337q);
                element3.setNext(element);
                element = element3;
            }
        }
        if (element2 == null) {
            return;
        }
        while (true) {
            Element element4 = this.f40323Z;
            if (element4 == element2 || element4 == null || element4.next() == null || this.f40323Z.next().next() == null) {
                break;
            } else {
                m31663o();
            }
        }
        while (element != null) {
            Element next = element.next();
            if (!element.name().equals("<pcdata>")) {
                m31660l(element);
            }
            m31662n(next);
            element = next;
        }
        this.f40346w = null;
    }

    /* renamed from: n */
    public final void m31662n(Element element) throws SAXException {
        while (true) {
            Element element2 = this.f40331k0;
            if (element2 == null || !this.f40323Z.canContain(element2)) {
                return;
            }
            if (element != null && !this.f40331k0.canContain(element)) {
                return;
            }
            Element next = this.f40331k0.next();
            m31660l(this.f40331k0);
            this.f40331k0 = next;
        }
    }

    /* renamed from: o */
    public final void m31663o() throws SAXException {
        Element element = this.f40323Z;
        m31658j();
        if (!this.f40340s || (element.flags() & 1) == 0) {
            return;
        }
        element.anonymize();
        element.setNext(this.f40331k0);
        this.f40331k0 = element;
    }

    /* renamed from: p */
    public final void m31664p() {
        if (this.f40329j == null) {
            this.f40329j = new HTMLSchema();
        }
        if (this.f40330k == null) {
            this.f40330k = new HTMLScanner();
        }
        if (this.f40332l == null) {
            this.f40332l = new C7057a();
        }
        this.f40323Z = new Element(this.f40329j.getElementType("<root>"), this.f40337q);
        this.f40338q0 = new Element(this.f40329j.getElementType("<pcdata>"), this.f40337q);
        this.f40346w = null;
        this.f40347x = null;
        this.f40322Q = null;
        this.f40331k0 = null;
        this.f40342t0 = 0;
        this.f40344u0 = true;
        this.f40320J = null;
        this.f40349z = null;
        this.f40321O = null;
    }

    @Override // org.xml.sax.XMLReader
    public void parse(String str) throws IOException, SAXException {
        parse(new InputSource(str));
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    public void pcdata(char[] cArr, int i, int i2) throws SAXException {
        if (i2 == 0) {
            return;
        }
        boolean z = true;
        for (int i3 = 0; i3 < i2; i3++) {
            if (!Character.isWhitespace(cArr[i + i3])) {
                z = false;
            }
        }
        if (!z || this.f40323Z.canContain(this.f40338q0)) {
            m31661m(this.f40338q0);
            this.f40324e.characters(cArr, i, i2);
        } else if (this.f40341t) {
            this.f40324e.ignorableWhitespace(cArr, i, i2);
        }
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    /* renamed from: pi */
    public void mo31665pi(char[] cArr, int i, int i2) throws SAXException {
        String str;
        if (this.f40346w != null || (str = this.f40322Q) == null || "xml".equalsIgnoreCase(str)) {
            return;
        }
        if (i2 > 0 && cArr[i2 - 1] == '?') {
            i2--;
        }
        this.f40324e.processingInstruction(this.f40322Q, new String(cArr, i, i2));
        this.f40322Q = null;
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    public void pitarget(char[] cArr, int i, int i2) throws SAXException {
        if (this.f40346w != null) {
            return;
        }
        this.f40322Q = m31657i(cArr, i, i2).replace(':', NameUtil.USCORE);
    }

    @Override // org.xml.sax.XMLReader
    public void setContentHandler(ContentHandler contentHandler) {
        if (contentHandler == null) {
            contentHandler = this;
        }
        this.f40324e = contentHandler;
    }

    @Override // org.xml.sax.XMLReader
    public void setDTDHandler(DTDHandler dTDHandler) {
        if (dTDHandler == null) {
            dTDHandler = this;
        }
        this.f40326g = dTDHandler;
    }

    @Override // org.xml.sax.XMLReader
    public void setEntityResolver(EntityResolver entityResolver) {
        if (entityResolver == null) {
            entityResolver = this;
        }
        this.f40328i = entityResolver;
    }

    @Override // org.xml.sax.XMLReader
    public void setErrorHandler(ErrorHandler errorHandler) {
        if (errorHandler == null) {
            errorHandler = this;
        }
        this.f40327h = errorHandler;
    }

    @Override // org.xml.sax.XMLReader
    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (this.f40345v.get(str) == null) {
            throw new SAXNotRecognizedException("Unknown feature " + str);
        }
        if (z) {
            this.f40345v.put(str, Boolean.TRUE);
        } else {
            this.f40345v.put(str, Boolean.FALSE);
        }
        if (str.equals("http://xml.org/sax/features/namespaces")) {
            this.f40333m = z;
            return;
        }
        if (str.equals(ignoreBogonsFeature)) {
            this.f40334n = z;
            return;
        }
        if (str.equals(bogonsEmptyFeature)) {
            this.f40335o = z;
            return;
        }
        if (str.equals(rootBogonsFeature)) {
            this.f40336p = z;
            return;
        }
        if (str.equals(defaultAttributesFeature)) {
            this.f40337q = z;
            return;
        }
        if (str.equals(translateColonsFeature)) {
            this.f40339r = z;
            return;
        }
        if (str.equals(restartElementsFeature)) {
            this.f40340s = z;
        } else if (str.equals(ignorableWhitespaceFeature)) {
            this.f40341t = z;
        } else if (str.equals(CDATAElementsFeature)) {
            this.f40343u = z;
        }
    }

    @Override // org.xml.sax.XMLReader
    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str.equals("http://xml.org/sax/properties/lexical-handler")) {
            if (obj == null) {
                this.f40325f = this;
                return;
            } else {
                if (!(obj instanceof LexicalHandler)) {
                    throw new SAXNotSupportedException("Your lexical handler is not a LexicalHandler");
                }
                this.f40325f = (LexicalHandler) obj;
                return;
            }
        }
        if (str.equals(scannerProperty)) {
            if (!(obj instanceof Scanner)) {
                throw new SAXNotSupportedException("Your scanner is not a Scanner");
            }
            this.f40330k = (Scanner) obj;
        } else if (str.equals(schemaProperty)) {
            if (!(obj instanceof Schema)) {
                throw new SAXNotSupportedException("Your schema is not a Schema");
            }
            this.f40329j = (Schema) obj;
        } else if (str.equals(autoDetectorProperty)) {
            if (!(obj instanceof AutoDetector)) {
                throw new SAXNotSupportedException("Your auto-detector is not an AutoDetector");
            }
            this.f40332l = (AutoDetector) obj;
        } else {
            throw new SAXNotRecognizedException("Unknown property " + str);
        }
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    public void stagc(char[] cArr, int i, int i2) throws SAXException {
        Element element = this.f40346w;
        if (element == null) {
            return;
        }
        m31661m(element);
        if (this.f40323Z.model() == 0) {
            m31649b(cArr, i, i2);
        }
    }

    @Override // com.onegravity.rteditor.converter.tagsoup.ScanHandler
    public void stage(char[] cArr, int i, int i2) throws SAXException {
        Element element = this.f40346w;
        if (element == null) {
            return;
        }
        m31661m(element);
        m31649b(cArr, i, i2);
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startCDATA() throws SAXException {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startDTD(String str, String str2, String str3) throws SAXException {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startEntity(String str) throws SAXException {
    }

    @Override // org.xml.sax.XMLReader
    public synchronized void parse(InputSource inputSource) throws IOException, SAXException {
        m31664p();
        Reader m31654g = m31654g(inputSource);
        this.f40324e.startDocument();
        this.f40330k.resetDocumentLocator(inputSource.getPublicId(), inputSource.getSystemId());
        Scanner scanner = this.f40330k;
        if (scanner instanceof Locator) {
            this.f40324e.setDocumentLocator((Locator) scanner);
        }
        if (!this.f40329j.getURI().equals("")) {
            this.f40324e.startPrefixMapping(this.f40329j.getPrefix(), this.f40329j.getURI());
        }
        this.f40330k.scan(m31654g, this);
    }
}
