package com.onegravity.rteditor.converter.tagsoup;

import android.text.util.Linkify;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.caverock.androidsvg.SVGParser;
import com.google.common.net.HttpHeaders;
import com.onegravity.rteditor.converter.tagsoup.util.StringEscapeUtils;
import com.onyx.android.sdk.base.common.CommonConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Stack;
import java.util.regex.Matcher;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.NamespaceSupport;
import org.xml.sax.helpers.XMLFilterImpl;

/* loaded from: classes7.dex */
public class HTMLWriter extends XMLFilterImpl implements LexicalHandler {
    public static final String CDATA_SECTION_ELEMENTS = "cdata-section-elements";
    public static final String DOCTYPE_PUBLIC = "doctype-public";
    public static final String DOCTYPE_SYSTEM = "doctype-system";
    public static final String ENCODING = "encoding";
    public static final String INDENT = "indent";

    /* renamed from: J */
    public static Map<String, Map<String, String>> f40284J = new HashMap();
    public static final String MEDIA_TYPE = "media-type";
    public static final String METHOD = "method";

    /* renamed from: O */
    public static final String[] f40285O;
    public static final String OMIT_XML_DECLARATION = "omit-xml-declaration";

    /* renamed from: Q */
    public static final Linkify.MatchFilter f40286Q;
    public static final String STANDALONE = "standalone";
    public static final String VERSION = "version";

    /* renamed from: i */
    public Writer f40291i;

    /* renamed from: v */
    public boolean f40304v;

    /* renamed from: w */
    public Stack<String> f40305w;

    /* renamed from: y */
    public boolean f40307y;

    /* renamed from: h */
    public int f40290h = 0;

    /* renamed from: k */
    public int f40293k = 0;

    /* renamed from: m */
    public String f40295m = "";

    /* renamed from: n */
    public boolean f40296n = false;

    /* renamed from: o */
    public boolean f40297o = false;

    /* renamed from: p */
    public boolean f40298p = false;

    /* renamed from: q */
    public String f40299q = null;

    /* renamed from: r */
    public String f40300r = null;

    /* renamed from: s */
    public String f40301s = null;

    /* renamed from: t */
    public String f40302t = null;

    /* renamed from: u */
    public boolean f40303u = false;

    /* renamed from: x */
    public String[] f40306x = {"checked", "compact", "declare", "defer", "disabled", "ismap", Constants.ATTRVAL_MULTI, "nohref", "noresize", "noshade", "nowrap", "readonly", "selected"};

    /* renamed from: z */
    public StringBuffer f40308z = new StringBuffer();

    /* renamed from: j */
    public NamespaceSupport f40292j = new NamespaceSupport();

    /* renamed from: e */
    public Hashtable<String, String> f40287e = new Hashtable<>();

    /* renamed from: f */
    public Hashtable<String, Boolean> f40288f = new Hashtable<>();

    /* renamed from: g */
    public Hashtable<String, String> f40289g = new Hashtable<>();

    /* renamed from: l */
    public Properties f40294l = new Properties();

    /* renamed from: com.onegravity.rteditor.converter.tagsoup.HTMLWriter$a */
    /* loaded from: classes7.dex */
    public class C7056a implements Linkify.MatchFilter {
        @Override // android.text.util.Linkify.MatchFilter
        public final boolean acceptMatch(CharSequence charSequence, int i, int i2) {
            return i == 0 || charSequence.charAt(i - 1) != '@';
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("http-equiv", HttpHeaders.REFRESH);
        f40284J.put("meta", hashMap);
        f40284J.put("iframe", hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("autoplay", "autoplay#true");
        f40284J.put("audio", hashMap2);
        f40284J.put("video", hashMap2);
        f40285O = new String[]{CommonConstant.SCHEME_HTTP, CommonConstant.SCHEME_HTTPS, "rtsp://"};
        f40286Q = new C7056a();
    }

    public HTMLWriter(boolean z) {
        setOutputProperty("method", "html");
        setOutputProperty("omit-xml-declaration", "yes");
        this.f40304v = z;
        this.f40305w = new Stack<>();
    }

    /* renamed from: a */
    public final boolean m31631a(String str, String str2, String str3) {
        int indexOf;
        if (str == null && (indexOf = str2.indexOf(58)) != -1) {
            str = str2.substring(indexOf + 1, str2.length());
        }
        if (!str.equals(str3)) {
            return false;
        }
        int i = 0;
        while (true) {
            String[] strArr = this.f40306x;
            if (i >= strArr.length) {
                return false;
            }
            if (str.equals(strArr[i])) {
                return true;
            }
            i++;
        }
    }

    /* renamed from: b */
    public final void m31632b(char[] cArr, int i, int i2) throws SAXException {
        this.f40308z.append(String.valueOf(cArr, i, i2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
    
        if (r0 == null) goto L57;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m31633c(java.lang.String r6, java.lang.String r7, boolean r8) {
        /*
            r5 = this;
            org.xml.sax.helpers.NamespaceSupport r0 = r5.f40292j
            java.lang.String r1 = ""
            java.lang.String r0 = r0.getURI(r1)
            boolean r2 = r1.equals(r6)
            r3 = 0
            if (r2 == 0) goto L19
            if (r8 == 0) goto L18
            if (r0 == 0) goto L18
            org.xml.sax.helpers.NamespaceSupport r5 = r5.f40292j
            r5.declarePrefix(r1, r1)
        L18:
            return r3
        L19:
            if (r8 == 0) goto L25
            if (r0 == 0) goto L25
            boolean r2 = r6.equals(r0)
            if (r2 == 0) goto L25
            r2 = r1
            goto L2b
        L25:
            org.xml.sax.helpers.NamespaceSupport r2 = r5.f40292j
            java.lang.String r2 = r2.getPrefix(r6)
        L2b:
            if (r2 == 0) goto L2e
            return r2
        L2e:
            java.util.Hashtable<java.lang.String, java.lang.String> r2 = r5.f40289g
            java.lang.Object r2 = r2.get(r6)
            java.lang.String r2 = (java.lang.String) r2
            if (r2 == 0) goto L4b
            if (r8 == 0) goto L3c
            if (r0 == 0) goto L42
        L3c:
            boolean r4 = r1.equals(r2)
            if (r4 != 0) goto L4a
        L42:
            org.xml.sax.helpers.NamespaceSupport r4 = r5.f40292j
            java.lang.String r4 = r4.getURI(r2)
            if (r4 == 0) goto L4b
        L4a:
            r2 = r3
        L4b:
            if (r2 != 0) goto L6a
            java.util.Hashtable<java.lang.String, java.lang.String> r2 = r5.f40287e
            java.lang.Object r2 = r2.get(r6)
            java.lang.String r2 = (java.lang.String) r2
            if (r2 == 0) goto L6a
            if (r8 == 0) goto L5b
            if (r0 == 0) goto L61
        L5b:
            boolean r4 = r1.equals(r2)
            if (r4 != 0) goto L6b
        L61:
            org.xml.sax.helpers.NamespaceSupport r4 = r5.f40292j
            java.lang.String r4 = r4.getURI(r2)
            if (r4 == 0) goto L6a
            goto L6b
        L6a:
            r3 = r2
        L6b:
            if (r3 != 0) goto L89
            if (r7 == 0) goto L89
            boolean r2 = r1.equals(r7)
            if (r2 != 0) goto L89
            r2 = 58
            int r2 = r7.indexOf(r2)
            r4 = -1
            if (r2 != r4) goto L83
            if (r8 == 0) goto L89
            if (r0 != 0) goto L89
            goto L8a
        L83:
            r8 = 0
            java.lang.String r1 = r7.substring(r8, r2)
            goto L8a
        L89:
            r1 = r3
        L8a:
            if (r1 == 0) goto La0
            org.xml.sax.helpers.NamespaceSupport r7 = r5.f40292j
            java.lang.String r7 = r7.getURI(r1)
            if (r7 == 0) goto L95
            goto La0
        L95:
            org.xml.sax.helpers.NamespaceSupport r7 = r5.f40292j
            r7.declarePrefix(r1, r6)
            java.util.Hashtable<java.lang.String, java.lang.String> r5 = r5.f40289g
            r5.put(r6, r1)
            return r1
        La0:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "__NS"
            r7.append(r8)
            int r8 = r5.f40293k
            int r8 = r8 + 1
            r5.f40293k = r8
            r7.append(r8)
            java.lang.String r1 = r7.toString()
            goto L8a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onegravity.rteditor.converter.tagsoup.HTMLWriter.m31633c(java.lang.String, java.lang.String, boolean):java.lang.String");
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        if (this.f40303u) {
            m31644n();
            for (int i3 = i; i3 < i + i2; i3++) {
                m31638h(cArr[i3]);
            }
        } else if (this.f40307y) {
            m31644n();
            m31641k(new String(cArr), i, i2, false);
        } else {
            m31632b(cArr, i, i2);
        }
        super.characters(cArr, i, i2);
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i, int i2) throws SAXException {
        int i3;
        m31639i(XMLStreamWriterImpl.START_COMMENT);
        int i4 = i;
        while (true) {
            int i5 = i + i2;
            if (i4 >= i5) {
                m31639i(XMLStreamWriterImpl.END_COMMENT);
                return;
            }
            m31638h(cArr[i4]);
            if (cArr[i4] == '-' && (i3 = i4 + 1) <= i5 && cArr[i3] == '-') {
                m31638h(' ');
            }
            i4++;
        }
    }

    /* renamed from: d */
    public final void m31634d() {
        Enumeration<String> keys = this.f40288f.keys();
        while (keys.hasMoreElements()) {
            m31633c(keys.nextElement(), null, true);
        }
    }

    /* renamed from: e */
    public final boolean m31635e(String str, String str2, String str3, Attributes attributes) {
        Map<String, String> map = f40284J.get(str3.toLowerCase(Locale.US));
        if (map != null) {
            for (String str4 : map.keySet()) {
                for (String str5 : map.get(str4).split("#")) {
                    String value = attributes.getValue(str4);
                    if (!m31636f(value) && str5.equalsIgnoreCase(value)) {
                        this.f40305w.push(str3);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endCDATA() throws SAXException {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endDTD() throws SAXException {
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        m31644n();
        m31638h('\n');
        super.endDocument();
        try {
            flush();
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        m31644n();
        if (!this.f40305w.isEmpty() && this.f40305w.peek().equalsIgnoreCase(str3)) {
            this.f40305w.pop();
            return;
        }
        if (!this.f40296n || ((!str.equals("http://www.w3.org/1999/xhtml") && !str.equals("")) || (!str3.equals("area") && !str3.equals(gon.f71271X) && !str3.equals("basefont") && !str3.equals("br") && !str3.equals("col") && !str3.equals(TypedValues.AttributesType.S_FRAME) && !str3.equals("hr") && !str3.equals("img") && !str3.equals("input") && !str3.equals("isindex") && !str3.equals("link") && !str3.equals("meta") && !str3.equals(Constants.ELEMNAME_PARAMVARIABLE_STRING)))) {
            m31639i(XMLStreamWriterImpl.OPEN_END_TAG);
            m31643m(str, str2, str3, true);
            m31638h('>');
        }
        if (this.f40290h == 1) {
            m31638h('\n');
        }
        if (this.f40296n && str2.equals("a")) {
            this.f40307y = false;
        }
        this.f40303u = false;
        super.endElement(str, str2, str3);
        this.f40292j.popContext();
        this.f40290h--;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endEntity(String str) throws SAXException {
    }

    /* renamed from: f */
    public final boolean m31636f(String str) {
        return str == null || str.length() == 0;
    }

    public void flush() throws IOException, SAXException {
        m31644n();
        this.f40291i.flush();
    }

    public void forceNSDecl(String str) {
        this.f40288f.put(str, Boolean.TRUE);
    }

    /* renamed from: g */
    public final String m31637g(String str, String[] strArr, Matcher matcher) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= strArr.length) {
                z = false;
                break;
            }
            String str2 = strArr[i];
            if (str.regionMatches(true, 0, str2, 0, str2.length())) {
                String str3 = strArr[i];
                z = true;
                if (!str.regionMatches(false, 0, str3, 0, str3.length())) {
                    str = strArr[i] + str.substring(strArr[i].length());
                }
            } else {
                i++;
            }
        }
        if (!z) {
            str = strArr[0] + str;
        }
        return str.replace(org.apache.poi.convert.htmlgen.Constants.UNICODECHAR_NO_BREAK_SPACE, "");
    }

    public String getOutputProperty(String str) {
        return this.f40294l.getProperty(str);
    }

    public String getPrefix(String str) {
        return this.f40287e.get(str);
    }

    /* renamed from: h */
    public final void m31638h(char c) throws SAXException {
        try {
            this.f40291i.write(c);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    /* renamed from: i */
    public final void m31639i(String str) throws SAXException {
        try {
            this.f40291i.write(str);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        m31644n();
        m31641k(new String(cArr), i, i2, false);
        super.ignorableWhitespace(cArr, i, i2);
    }

    /* renamed from: j */
    public final void m31640j(Attributes attributes) throws SAXException {
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            m31638h(' ');
            m31643m(attributes.getURI(i), attributes.getLocalName(i), attributes.getQName(i), false);
            if (this.f40296n && m31631a(attributes.getLocalName(i), attributes.getQName(i), attributes.getValue(i))) {
                return;
            }
            m31639i("=\"");
            String value = attributes.getValue(i);
            m31641k(value, 0, value.length(), true);
            m31638h('\"');
        }
    }

    /* renamed from: k */
    public final void m31641k(String str, int i, int i2, boolean z) throws SAXException {
        m31639i(StringEscapeUtils.escapeHtml4(str.substring(i, i2 + i)));
    }

    /* renamed from: l */
    public final void m31642l() throws SAXException {
        Enumeration declaredPrefixes = this.f40292j.getDeclaredPrefixes();
        while (declaredPrefixes.hasMoreElements()) {
            String str = (String) declaredPrefixes.nextElement();
            String uri = this.f40292j.getURI(str);
            if (uri == null) {
                uri = "";
            }
            m31638h(' ');
            if ("".equals(str)) {
                m31639i("xmlns=\"");
            } else {
                m31639i("xmlns:");
                m31639i(str);
                m31639i("=\"");
            }
            m31641k(uri, 0, uri.length(), true);
            m31638h('\"');
        }
    }

    /* renamed from: m */
    public final void m31643m(String str, String str2, String str3, boolean z) throws SAXException {
        String m31633c = m31633c(str, str3, z);
        if (m31633c != null && !"".equals(m31633c)) {
            m31639i(m31633c);
            m31638h(':');
        }
        if (str2 == null || "".equals(str2)) {
            m31639i(str3.substring(str3.indexOf(58) + 1, str3.length()));
        } else {
            m31639i(str2);
        }
    }

    /* renamed from: n */
    public final void m31644n() throws SAXException {
        if (this.f40308z.length() > 0) {
            String stringBuffer = this.f40308z.toString();
            Writer writer = this.f40291i;
            this.f40291i = new StringWriter();
            Matcher matcher = Patterns.WEB_URL.matcher(this.f40308z);
            int i = 0;
            while (matcher.find()) {
                Linkify.MatchFilter matchFilter = f40286Q;
                if (matchFilter == null || matchFilter.acceptMatch(this.f40308z, matcher.start(), matcher.start())) {
                    m31641k(stringBuffer, i, matcher.start() - i, false);
                    try {
                        String group = matcher.group(0);
                        String m31637g = m31637g(group, f40285O, matcher);
                        this.f40291i.append((CharSequence) ("<a href=\"" + m31637g + "\">"));
                        m31641k(group, 0, group.length(), false);
                        this.f40291i.append((CharSequence) "</a>");
                    } catch (IOException unused) {
                    }
                    i = matcher.end();
                }
            }
            if (i < stringBuffer.length()) {
                m31641k(stringBuffer, i, stringBuffer.length() - i, false);
            }
            String obj = this.f40291i.toString();
            this.f40291i = writer;
            m31639i(obj);
            this.f40308z.setLength(0);
        }
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        m31644n();
        m31639i("<?");
        m31639i(str);
        m31638h(' ');
        m31639i(str2);
        m31639i("?>");
        if (this.f40290h < 1) {
            m31638h('\n');
        }
        super.processingInstruction(str, str2);
    }

    public void reset() throws SAXException {
        m31644n();
        this.f40290h = 0;
        this.f40293k = 0;
        this.f40292j.reset();
    }

    public void setOutput(Writer writer) {
        if (writer == null) {
            this.f40291i = new OutputStreamWriter(System.out);
        } else {
            this.f40291i = writer;
        }
    }

    public void setOutputProperty(String str, String str2) {
        this.f40294l.setProperty(str, str2);
        if (str.equals("encoding")) {
            this.f40295m = str2;
            return;
        }
        if (str.equals("method")) {
            this.f40296n = str2.equals("html");
            return;
        }
        if (str.equals("doctype-public")) {
            this.f40299q = str2;
            this.f40297o = true;
        } else if (str.equals("doctype-system")) {
            this.f40300r = str2;
            this.f40297o = true;
        } else if (str.equals("version")) {
            this.f40301s = str2;
        } else if (str.equals("standalone")) {
            this.f40302t = str2;
        }
    }

    public void setPrefix(String str, String str2) {
        this.f40287e.put(str, str2);
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startCDATA() throws SAXException {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startDTD(String str, String str2, String str3) throws SAXException {
        if (str == null || this.f40298p) {
            return;
        }
        this.f40298p = true;
        m31639i("<!DOCTYPE ");
        m31639i(str);
        if (str3 == null) {
            str3 = "";
        }
        String str4 = this.f40300r;
        if (str4 != null) {
            str3 = str4;
        }
        char c = str3.indexOf(34) != -1 ? '\'' : '\"';
        String str5 = this.f40299q;
        if (str5 != null) {
            str2 = str5;
        }
        if (str2 == null || "".equals(str2)) {
            m31639i(" SYSTEM ");
        } else {
            char c2 = str2.indexOf(34) != -1 ? '\'' : '\"';
            m31639i(" PUBLIC ");
            m31638h(c2);
            m31639i(str2);
            m31638h(c2);
            m31638h(' ');
        }
        m31638h(c);
        m31639i(str3);
        m31638h(c);
        m31639i(">\n");
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        m31644n();
        reset();
        if (!"yes".equals(this.f40294l.getProperty("omit-xml-declaration", SVGParser.f16048t))) {
            m31639i("<?xml");
            if (this.f40301s == null) {
                m31639i(" version=\"1.0\"");
            } else {
                m31639i(" version=\"");
                m31639i(this.f40301s);
                m31639i("\"");
            }
            String str = this.f40295m;
            if (str != null && str != "") {
                m31639i(" encoding=\"");
                m31639i(this.f40295m);
                m31639i("\"");
            }
            if (this.f40302t == null) {
                m31639i(" standalone=\"yes\"?>\n");
            } else {
                m31639i(" standalone=\"");
                m31639i(this.f40302t);
                m31639i("\"");
            }
        }
        super.startDocument();
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        m31644n();
        if (m31635e(str, str2, str3, attributes)) {
            return;
        }
        this.f40290h++;
        this.f40292j.pushContext();
        if (this.f40297o && !this.f40298p) {
            startDTD(str2 == null ? str3 : str2, "", "");
        }
        m31638h('<');
        m31643m(str, str2, str3, true);
        m31640j(attributes);
        if (this.f40290h == 1) {
            m31634d();
        }
        if (!this.f40304v || !"html".equalsIgnoreCase(str2)) {
            m31642l();
        }
        m31638h('>');
        if (this.f40296n && (str3.equals(Constants.ELEMNAME_SCRIPT_STRING) || str3.equals("style"))) {
            this.f40303u = true;
        }
        if (this.f40296n && str2.equals("a")) {
            this.f40307y = true;
        }
        super.startElement(str, str2, str3, attributes);
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startEntity(String str) throws SAXException {
    }

    public void forceNSDecl(String str, String str2) {
        setPrefix(str, str2);
        forceNSDecl(str);
    }
}
