package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sunia.HTREnginev2.gon;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.convert.htmlgen.Constants;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.Token;
import org.jsoup.select.Elements;

/* loaded from: classes13.dex */
public class HtmlTreeBuilder extends AbstractC20358z {
    public static final boolean DEBUG = false;
    public static final int MaxScopeSearchDepth = 100;

    /* renamed from: s */
    public static final String[] f114135s = {"applet", "caption", "html", "marquee", "object", "table", "td", "th"};

    /* renamed from: t */
    public static final String[] f114136t = {"ol", "ul"};

    /* renamed from: u */
    public static final String[] f114137u = {"button"};

    /* renamed from: v */
    public static final String[] f114138v = {"html", "table"};

    /* renamed from: w */
    public static final String[] f114139w = {"optgroup", "option"};

    /* renamed from: x */
    public static final String[] f114140x = {"dd", "dt", "li", "optgroup", "option", "p", "rp", WebvttCueParser.f27242v};

    /* renamed from: y */
    public static final String[] f114141y = {"address", "applet", "area", "article", "aside", gon.f71271X, "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "command", "dd", "details", CouchFieldKey.KEY_DIR, gon.f71293q, "dl", "dt", "embed", "fieldset", "figcaption", "figure", Constants.NAME_FOOTER, "form", TypedValues.AttributesType.S_FRAME, "frameset", "h1", "h2", "h3", "h4", "h5", "h6", gon.f71289o, Constants.NAME_HEADER, "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", "p", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_PARAMVARIABLE_STRING, "plaintext", "pre", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_SCRIPT_STRING, "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", "title", "tr", "ul", "wbr", "xmp"};

    /* renamed from: z */
    public static final /* synthetic */ boolean f114142z = false;

    /* renamed from: f */
    public EnumC20262a f114143f;

    /* renamed from: g */
    public EnumC20262a f114144g;

    /* renamed from: h */
    public boolean f114145h;

    /* renamed from: i */
    public Element f114146i;

    /* renamed from: j */
    public FormElement f114147j;

    /* renamed from: k */
    public Element f114148k;

    /* renamed from: l */
    public ArrayList<Element> f114149l;

    /* renamed from: m */
    public List<Token.C20258b> f114150m;

    /* renamed from: n */
    public Token.EndTag f114151n;

    /* renamed from: o */
    public boolean f114152o;

    /* renamed from: p */
    public boolean f114153p;

    /* renamed from: q */
    public boolean f114154q;

    /* renamed from: r */
    public String[] f114155r = {null};

    /* renamed from: A */
    public Element m71199A(String str) {
        for (int size = this.f114149l.size() - 1; size >= 0; size--) {
            Element element = this.f114149l.get(size);
            if (element == null) {
                return null;
            }
            if (element.normalName().equals(str)) {
                return element;
            }
        }
        return null;
    }

    /* renamed from: A0 */
    public void m71200A0(boolean z) {
        this.f114153p = z;
    }

    /* renamed from: B */
    public String m71201B() {
        return this.baseUri;
    }

    /* renamed from: B0 */
    public void m71202B0(Element element) {
        this.f114146i = element;
    }

    /* renamed from: C */
    public Document m71203C() {
        return this.doc;
    }

    /* renamed from: C0 */
    public EnumC20262a m71204C0() {
        return this.f114143f;
    }

    /* renamed from: D */
    public FormElement m71205D() {
        return this.f114147j;
    }

    /* renamed from: D0 */
    public void m71206D0(EnumC20262a enumC20262a) {
        this.f114143f = enumC20262a;
    }

    /* renamed from: E */
    public Element m71207E(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            if (element.normalName().equals(str)) {
                return element;
            }
        }
        return null;
    }

    /* renamed from: F */
    public Element m71208F() {
        return this.f114146i;
    }

    /* renamed from: G */
    public List<Token.C20258b> m71209G() {
        return this.f114150m;
    }

    /* renamed from: H */
    public ArrayList<Element> m71210H() {
        return this.stack;
    }

    /* renamed from: I */
    public boolean m71211I(String str) {
        return m71214L(str, f114137u);
    }

    /* renamed from: J */
    public boolean m71212J(String str) {
        return m71214L(str, f114136t);
    }

    /* renamed from: K */
    public boolean m71213K(String str) {
        return m71214L(str, null);
    }

    /* renamed from: L */
    public boolean m71214L(String str, String[] strArr) {
        return m71245k(str, f114135s, strArr);
    }

    /* renamed from: M */
    public boolean m71215M(String[] strArr) {
        return m71251n(strArr, f114135s, null);
    }

    /* renamed from: N */
    public boolean m71216N(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            String normalName = this.stack.get(size).normalName();
            if (normalName.equals(str)) {
                return true;
            }
            if (!StringUtil.inSorted(normalName, f114139w)) {
                return false;
            }
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    /* renamed from: O */
    public boolean m71217O(String str) {
        return m71245k(str, f114138v, null);
    }

    /* renamed from: P */
    public Element m71218P(Token.StartTag startTag) {
        Attributes attributes = startTag.f114195j;
        if (attributes != null && !attributes.isEmpty() && startTag.f114195j.deduplicate(this.settings) > 0) {
            error("Duplicate attribute");
        }
        if (!startTag.m71301n()) {
            Element element = new Element(Tag.valueOf(startTag.name(), this.settings), null, this.settings.m71277a(startTag.f114195j));
            m71219Q(element);
            return element;
        }
        Element m71222T = m71222T(startTag);
        this.stack.add(m71222T);
        this.f114372b.m71367f(EnumC20264ab.f114299a);
        this.f114372b.m71366e(this.f114151n.mo71287a().name(m71222T.tagName()));
        return m71222T;
    }

    /* renamed from: Q */
    public void m71219Q(Element element) {
        m71243j(element);
        this.stack.add(element);
    }

    /* renamed from: R */
    public void m71220R(Token.C20258b c20258b) {
        Element currentElement = currentElement();
        if (currentElement == null) {
            currentElement = this.doc;
        }
        String normalName = currentElement.normalName();
        String m71304d = c20258b.m71304d();
        Node cDataNode = c20258b.isCData() ? new CDataNode(m71304d) : (normalName.equals(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_SCRIPT_STRING) || normalName.equals("style")) ? new DataNode(m71304d) : new TextNode(m71304d);
        currentElement.appendChild(cDataNode);
        int i = c20258b.f114188c;
        Token token = c20258b;
        if (i == 0) {
            token = this.currentToken;
        }
        setNodePos(cDataNode, token);
    }

    /* renamed from: S */
    public void m71221S(Token.C20259c c20259c) {
        m71243j(new Comment(c20259c.m71306d()));
    }

    /* renamed from: T */
    public Element m71222T(Token.StartTag startTag) {
        Tag valueOf = Tag.valueOf(startTag.name(), this.settings);
        Element element = new Element(valueOf, null, this.settings.m71277a(startTag.f114195j));
        m71243j(element);
        if (startTag.m71301n()) {
            if (!valueOf.isKnownTag()) {
                valueOf.m71285b();
            } else if (!valueOf.isEmpty()) {
                this.f114372b.m71373l("Tag cannot be self closing; not a void tag");
            }
        }
        return element;
    }

    /* renamed from: U */
    public FormElement m71223U(Token.StartTag startTag, boolean z) {
        FormElement formElement = new FormElement(Tag.valueOf(startTag.name(), this.settings), null, this.settings.m71277a(startTag.f114195j));
        m71276z0(formElement);
        m71243j(formElement);
        if (z) {
            this.stack.add(formElement);
        }
        return formElement;
    }

    /* renamed from: V */
    public void m71224V(Node node) {
        Element element;
        Element m71207E = m71207E("table");
        boolean z = false;
        if (m71207E == null) {
            element = this.stack.get(0);
        } else if (m71207E.parent() != null) {
            element = m71207E.parent();
            z = true;
        } else {
            element = m71253o(m71207E);
        }
        if (!z) {
            element.appendChild(node);
        } else {
            Validate.notNull(m71207E);
            m71207E.before(node);
        }
    }

    /* renamed from: W */
    public void m71225W() {
        if (this.settings.formatElement()) {
            this.f114149l.add(null);
        }
    }

    /* renamed from: X */
    public void m71226X(Element element, Element element2) {
        int lastIndexOf = this.stack.lastIndexOf(element);
        Validate.isTrue(lastIndexOf != -1);
        this.stack.add(lastIndexOf + 1, element2);
    }

    /* renamed from: Y */
    public Element m71227Y(String str) {
        Element element = new Element(Tag.valueOf(str, this.settings), null);
        m71219Q(element);
        return element;
    }

    /* renamed from: Z */
    public boolean m71228Z() {
        return this.f114153p;
    }

    /* renamed from: a0 */
    public boolean m71229a0() {
        return this.f114154q;
    }

    @Override // org.jsoup.parser.AbstractC20358z
    public /* bridge */ /* synthetic */ void abort() {
        super.abort();
    }

    /* renamed from: b0 */
    public boolean m71230b0(Element element) {
        return m71247l(this.f114149l, element);
    }

    /* renamed from: c0 */
    public boolean m71231c0(Element element) {
        return StringUtil.inSorted(element.normalName(), f114141y);
    }

    @Override // org.jsoup.parser.AbstractC20358z
    /* renamed from: d */
    public ParseSettings mo71232d() {
        return ParseSettings.htmlDefault;
    }

    /* renamed from: d0 */
    public Element m71233d0() {
        if (this.f114149l.size() <= 0) {
            return null;
        }
        return this.f114149l.get(r1.size() - 1);
    }

    /* renamed from: e0 */
    public void m71234e0() {
        this.f114144g = this.f114143f;
    }

    @Override // org.jsoup.parser.AbstractC20358z
    /* renamed from: f */
    public List<Node> mo71235f(String str, Element element, String str2, Parser parser) {
        Element element2;
        C20350r c20350r;
        EnumC20264ab enumC20264ab;
        this.f114143f = EnumC20262a.f114209a;
        initialiseParse(new StringReader(str), str2, parser);
        this.f114148k = element;
        this.f114154q = true;
        if (element != null) {
            if (element.ownerDocument() != null) {
                this.doc.quirksMode(element.ownerDocument().quirksMode());
            }
            String normalName = element.normalName();
            if (StringUtil.m71096in(normalName, "title", "textarea")) {
                c20350r = this.f114372b;
                enumC20264ab = EnumC20264ab.f114325c;
            } else if (StringUtil.m71096in(normalName, "iframe", "noembed", "noframes", "style", "xmp")) {
                c20350r = this.f114372b;
                enumC20264ab = EnumC20264ab.f114327e;
            } else if (normalName.equals(com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_SCRIPT_STRING)) {
                c20350r = this.f114372b;
                enumC20264ab = EnumC20264ab.f114328f;
            } else {
                if (!normalName.equals("noscript")) {
                    normalName.equals("plaintext");
                }
                c20350r = this.f114372b;
                enumC20264ab = EnumC20264ab.f114299a;
            }
            c20350r.m71367f(enumC20264ab);
            element2 = new Element(Tag.valueOf("html", this.settings), str2);
            this.doc.appendChild(element2);
            this.stack.add(element2);
            m71272x0();
            Elements parents = element.parents();
            parents.add(0, element);
            Iterator<Element> it2 = parents.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Element next = it2.next();
                if (next instanceof FormElement) {
                    this.f114147j = (FormElement) next;
                    break;
                }
            }
        } else {
            element2 = null;
        }
        runParser();
        return element != null ? element2.childNodes() : this.doc.childNodes();
    }

    /* renamed from: f0 */
    public void m71236f0(Element element) {
        if (this.f114145h) {
            return;
        }
        String absUrl = element.absUrl("href");
        if (absUrl.length() != 0) {
            this.baseUri = absUrl;
            this.f114145h = true;
            this.doc.setBaseUri(absUrl);
        }
    }

    /* renamed from: g */
    public final void m71237g() {
        Element body;
        if (this.currentToken.isEOF() && !this.f114154q) {
            m71241i(this.doc.body(), this.currentToken);
            m71241i(this.doc.htmlElement(), this.currentToken);
            return;
        }
        if (this.currentToken.isEndTag()) {
            String normalizeTag = this.settings.normalizeTag(this.currentToken.asEndTag().tagName);
            if (normalizeTag.equals("html")) {
                body = this.doc.htmlElement();
            } else {
                if (!normalizeTag.equals("body")) {
                    Element currentElement = currentElement();
                    if (currentElement == null || !currentElement.tagName().equals(normalizeTag)) {
                        return;
                    }
                    m71241i(currentElement, this.currentToken);
                    return;
                }
                body = this.doc.body();
            }
            m71241i(body, this.currentToken);
        }
    }

    /* renamed from: g0 */
    public void m71238g0() {
        this.f114150m = new ArrayList();
    }

    /* renamed from: h */
    public final void m71239h(ArrayList<Element> arrayList, Element element, Element element2) {
        int lastIndexOf = arrayList.lastIndexOf(element);
        Validate.isTrue(lastIndexOf != -1);
        arrayList.set(lastIndexOf, element2);
    }

    /* renamed from: h0 */
    public boolean m71240h0(Element element) {
        return m71247l(this.stack, element);
    }

    /* renamed from: i */
    public final void m71241i(Element element, Token token) {
        if (element != null) {
            element.setTagEndPos(token.f114188c);
        }
    }

    /* renamed from: i0 */
    public void m71242i0() {
        this.parser.m71279b();
    }

    @Override // org.jsoup.parser.AbstractC20358z
    public void initialiseParse(Reader reader, String str, Parser parser) {
        super.initialiseParse(reader, str, parser);
        this.f114143f = EnumC20262a.f114209a;
        this.f114144g = null;
        this.f114145h = false;
        this.f114146i = null;
        this.f114147j = null;
        this.f114148k = null;
        this.f114149l = new ArrayList<>();
        this.f114150m = new ArrayList();
        this.f114151n = new Token.EndTag();
        this.f114152o = true;
        this.f114153p = false;
        this.f114154q = false;
    }

    @Override // org.jsoup.parser.AbstractC20358z
    public /* bridge */ /* synthetic */ boolean isAbort() {
        return super.isAbort();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m71243j(org.jsoup.nodes.Node r3) {
        /*
            r2 = this;
            java.util.ArrayList<org.jsoup.nodes.Element> r0 = r2.stack
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Le
            org.jsoup.nodes.Document r0 = r2.doc
        La:
            r0.appendChild(r3)
            goto L1d
        Le:
            boolean r0 = r2.m71228Z()
            if (r0 == 0) goto L18
            r2.m71224V(r3)
            goto L1d
        L18:
            org.jsoup.nodes.Element r0 = r2.currentElement()
            goto La
        L1d:
            boolean r0 = r3 instanceof org.jsoup.nodes.Element
            if (r0 == 0) goto L35
            r0 = r3
            org.jsoup.nodes.Element r0 = (org.jsoup.nodes.Element) r0
            org.jsoup.parser.Tag r1 = r0.tag()
            boolean r1 = r1.isFormListed()
            if (r1 == 0) goto L35
            org.jsoup.nodes.FormElement r1 = r2.f114147j
            if (r1 == 0) goto L35
            r1.addElement(r0)
        L35:
            r2.setNodePos(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilder.m71243j(org.jsoup.nodes.Node):void");
    }

    /* renamed from: j0 */
    public EnumC20262a m71244j0() {
        return this.f114144g;
    }

    /* renamed from: k */
    public final boolean m71245k(String str, String[] strArr, String[] strArr2) {
        String[] strArr3 = this.f114155r;
        strArr3[0] = str;
        return m71251n(strArr3, strArr, strArr2);
    }

    /* renamed from: k0 */
    public Element m71246k0() {
        return this.stack.remove(this.stack.size() - 1);
    }

    /* renamed from: l */
    public final boolean m71247l(ArrayList<Element> arrayList, Element element) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == element) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: l0 */
    public void m71248l0(String str) {
        for (int size = this.stack.size() - 1; size >= 0 && !this.stack.get(size).normalName().equals(str); size--) {
            this.stack.remove(size);
        }
    }

    /* renamed from: m */
    public final boolean m71249m(Element element, Element element2) {
        return element.normalName().equals(element2.normalName()) && element.attributes().equals(element2.attributes());
    }

    /* renamed from: m0 */
    public Element m71250m0(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            this.stack.remove(size);
            if (element.normalName().equals(str)) {
                return element;
            }
        }
        return null;
    }

    /* renamed from: n */
    public final boolean m71251n(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.stack.size() - 1;
        int i = size > 100 ? size - 100 : 0;
        while (size >= i) {
            String normalName = this.stack.get(size).normalName();
            if (StringUtil.inSorted(normalName, strArr)) {
                return true;
            }
            if (StringUtil.inSorted(normalName, strArr2)) {
                return false;
            }
            if (strArr3 != null && StringUtil.inSorted(normalName, strArr3)) {
                return false;
            }
            size--;
        }
        return false;
    }

    /* renamed from: n0 */
    public void m71252n0(String... strArr) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            this.stack.remove(size);
            if (StringUtil.inSorted(element.normalName(), strArr)) {
                return;
            }
        }
    }

    /* renamed from: o */
    public Element m71253o(Element element) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            if (this.stack.get(size) == element) {
                return this.stack.get(size - 1);
            }
        }
        return null;
    }

    /* renamed from: o0 */
    public boolean m71254o0(Token token, EnumC20262a enumC20262a) {
        this.currentToken = token;
        return enumC20262a.mo71335a(token, this);
    }

    /* renamed from: p */
    public final void m71255p(Node node) {
    }

    /* renamed from: p0 */
    public void m71256p0(Element element) {
        this.stack.add(element);
    }

    @Override // org.jsoup.parser.AbstractC20358z
    public void parseCompleted() {
        super.parseCompleted();
        this.parser.m71278a();
    }

    @Override // org.jsoup.parser.AbstractC20358z
    public boolean process(Token token) {
        this.currentToken = token;
        m71237g();
        return this.f114143f.mo71335a(token, this);
    }

    @Override // org.jsoup.parser.AbstractC20358z
    public /* bridge */ /* synthetic */ boolean processStartTag(String str, Attributes attributes) {
        return super.processStartTag(str, attributes);
    }

    /* renamed from: q */
    public void m71257q() {
        while (!this.f114149l.isEmpty() && m71266u0() != null) {
        }
    }

    /* renamed from: q0 */
    public void m71258q0(Element element) {
        if (this.settings.formatElement()) {
            int size = this.f114149l.size() - 1;
            int i = 0;
            while (true) {
                if (size >= 0) {
                    Element element2 = this.f114149l.get(size);
                    if (element2 == null) {
                        break;
                    }
                    if (m71249m(element, element2)) {
                        i++;
                    }
                    if (i == 3) {
                        this.f114149l.remove(size);
                        break;
                    }
                    size--;
                } else {
                    break;
                }
            }
            this.f114149l.add(element);
        }
    }

    /* renamed from: r */
    public void m71259r(String... strArr) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            if (StringUtil.m71096in(element.normalName(), strArr) || element.normalName().equals("html")) {
                return;
            }
            this.stack.remove(size);
        }
    }

    /* renamed from: r0 */
    public void m71260r0() {
        Element m71233d0 = m71233d0();
        if (m71233d0 == null || m71240h0(m71233d0)) {
            return;
        }
        boolean z = true;
        int size = this.f114149l.size() - 1;
        int i = size;
        while (i != 0) {
            i--;
            m71233d0 = this.f114149l.get(i);
            if (m71233d0 == null || m71240h0(m71233d0)) {
                z = false;
                break;
            }
        }
        while (true) {
            if (!z) {
                i++;
                m71233d0 = this.f114149l.get(i);
            }
            Validate.notNull(m71233d0);
            Element m71227Y = m71227Y(m71233d0.normalName());
            m71227Y.attributes().addAll(m71233d0.attributes());
            this.f114149l.set(i, m71227Y);
            if (i == size) {
                return;
            } else {
                z = false;
            }
        }
    }

    /* renamed from: s */
    public void m71261s() {
        m71259r("tbody", "tfoot", "thead", "template");
    }

    /* renamed from: s0 */
    public void m71262s0(Element element) {
        for (int size = this.f114149l.size() - 1; size >= 0; size--) {
            if (this.f114149l.get(size) == element) {
                this.f114149l.remove(size);
                return;
            }
        }
    }

    public void setNodePos(Node node) {
        setNodePos(node, this.currentToken);
    }

    /* renamed from: t */
    public void m71263t() {
        m71259r("table");
    }

    /* renamed from: t0 */
    public boolean m71264t0(Element element) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            if (this.stack.get(size) == element) {
                this.stack.remove(size);
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "TreeBuilder{currentToken=" + this.currentToken + ", state=" + this.f114143f + ", currentElement=" + currentElement() + '}';
    }

    /* renamed from: u */
    public void m71265u() {
        m71259r("tr", "template");
    }

    /* renamed from: u0 */
    public Element m71266u0() {
        int size = this.f114149l.size();
        if (size > 0) {
            return this.f114149l.remove(size - 1);
        }
        return null;
    }

    /* renamed from: v */
    public void m71267v(EnumC20262a enumC20262a) {
        if (this.parser.getErrors().canAddError()) {
            this.parser.getErrors().add(new ParseError(this.f114371a.pos(), "Unexpected token [%s] when in state [%s]", this.currentToken.m71288c(), enumC20262a));
        }
    }

    /* renamed from: v0 */
    public void m71268v0(Element element, Element element2) {
        if (this.settings.formatElement()) {
            m71239h(this.f114149l, element, element2);
        }
    }

    /* renamed from: w */
    public void m71269w(boolean z) {
        this.f114152o = z;
    }

    /* renamed from: w0 */
    public void m71270w0(Element element, Element element2) {
        m71239h(this.stack, element, element2);
    }

    /* renamed from: x */
    public boolean m71271x() {
        return this.f114152o;
    }

    /* renamed from: x0 */
    public void m71272x0() {
        EnumC20262a enumC20262a;
        boolean z = false;
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            if (size == 0) {
                element = this.f114148k;
                z = true;
            }
            String normalName = element.normalName();
            if ("select".equals(normalName)) {
                enumC20262a = EnumC20262a.f114224p;
            } else if ("td".equals(normalName) || ("th".equals(normalName) && !z)) {
                enumC20262a = EnumC20262a.f114223o;
            } else if ("tr".equals(normalName)) {
                enumC20262a = EnumC20262a.f114222n;
            } else if ("tbody".equals(normalName) || "thead".equals(normalName) || "tfoot".equals(normalName)) {
                enumC20262a = EnumC20262a.f114221m;
            } else if ("caption".equals(normalName)) {
                enumC20262a = EnumC20262a.f114219k;
            } else if ("colgroup".equals(normalName)) {
                enumC20262a = EnumC20262a.f114220l;
            } else if ("table".equals(normalName)) {
                enumC20262a = EnumC20262a.f114217i;
            } else {
                if (!gon.f71289o.equals(normalName) && !"body".equals(normalName)) {
                    if ("frameset".equals(normalName)) {
                        enumC20262a = EnumC20262a.f114227s;
                    } else if ("html".equals(normalName)) {
                        enumC20262a = EnumC20262a.f114211c;
                    } else if (!z) {
                    }
                }
                enumC20262a = EnumC20262a.f114215g;
            }
            m71206D0(enumC20262a);
            return;
        }
    }

    /* renamed from: y */
    public void m71273y() {
        m71275z(null);
    }

    /* renamed from: y0 */
    public void m71274y0(Node node) {
        if (this.parser.m71283f(node)) {
            return;
        }
        abort();
    }

    /* renamed from: z */
    public void m71275z(String str) {
        while (str != null && !currentElement().normalName().equals(str) && StringUtil.inSorted(currentElement().normalName(), f114140x)) {
            m71246k0();
        }
    }

    /* renamed from: z0 */
    public void m71276z0(FormElement formElement) {
        this.f114147j = formElement;
    }

    public void setNodePos(Node node, Token token) {
        node.setByteStartPos(token.byteStartPos());
        node.setByteEndPos(token.byteEndPos());
        if (!(node instanceof Element)) {
            node.setTagEndPos(token.byteEndPos());
        }
        m71274y0(node);
        m71255p(node);
    }
}
