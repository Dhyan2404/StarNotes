package org.jsoup.nodes;

import com.sunia.HTREnginev2.bzo;
import com.sunia.HTREnginev2.gon;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Entities;
import org.jsoup.parser.ParseSettings;
import org.jsoup.parser.Parser;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;

/* loaded from: classes13.dex */
public class Document extends Element {

    /* renamed from: t */
    public OutputSettings f114057t;

    /* renamed from: u */
    public Parser f114058u;

    /* renamed from: v */
    public QuirksMode f114059v;

    /* renamed from: w */
    public String f114060w;

    /* renamed from: x */
    public boolean f114061x;

    /* loaded from: classes13.dex */
    public static class OutputSettings implements Cloneable {

        /* renamed from: f */
        public Charset f114063f;

        /* renamed from: h */
        public Entities.EnumC20250a f114065h;

        /* renamed from: e */
        public Entities.EscapeMode f114062e = Entities.EscapeMode.base;

        /* renamed from: g */
        public ThreadLocal<CharsetEncoder> f114064g = new ThreadLocal<>();

        /* renamed from: i */
        public boolean f114066i = true;

        /* renamed from: j */
        public boolean f114067j = false;

        /* renamed from: k */
        public int f114068k = 1;

        /* renamed from: l */
        public Syntax f114069l = Syntax.html;

        /* loaded from: classes13.dex */
        public enum Syntax {
            html,
            xml
        }

        public OutputSettings() {
            charset(Charset.forName("UTF8"));
        }

        /* renamed from: a */
        public CharsetEncoder m71121a() {
            CharsetEncoder charsetEncoder = this.f114064g.get();
            return charsetEncoder != null ? charsetEncoder : m71122b();
        }

        /* renamed from: b */
        public CharsetEncoder m71122b() {
            CharsetEncoder newEncoder = this.f114063f.newEncoder();
            this.f114064g.set(newEncoder);
            this.f114065h = Entities.EnumC20250a.m71152b(newEncoder.charset().name());
            return newEncoder;
        }

        public Charset charset() {
            return this.f114063f;
        }

        public OutputSettings escapeMode(Entities.EscapeMode escapeMode) {
            this.f114062e = escapeMode;
            return this;
        }

        public int indentAmount() {
            return this.f114068k;
        }

        public OutputSettings outline(boolean z) {
            this.f114067j = z;
            return this;
        }

        public OutputSettings prettyPrint(boolean z) {
            this.f114066i = z;
            return this;
        }

        public Syntax syntax() {
            return this.f114069l;
        }

        public OutputSettings charset(String str) {
            charset(Charset.forName(str));
            return this;
        }

        public OutputSettings clone() {
            try {
                OutputSettings outputSettings = (OutputSettings) super.clone();
                outputSettings.charset(this.f114063f.name());
                outputSettings.f114062e = Entities.EscapeMode.valueOf(this.f114062e.name());
                return outputSettings;
            } catch (CloneNotSupportedException e) {
                throw new RuntimeException(e);
            }
        }

        public Entities.EscapeMode escapeMode() {
            return this.f114062e;
        }

        public OutputSettings indentAmount(int i) {
            Validate.isTrue(i >= 0);
            this.f114068k = i;
            return this;
        }

        public boolean outline() {
            return this.f114067j;
        }

        public boolean prettyPrint() {
            return this.f114066i;
        }

        public OutputSettings syntax(Syntax syntax) {
            this.f114069l = syntax;
            return this;
        }

        public OutputSettings charset(Charset charset) {
            this.f114063f = charset;
            return this;
        }
    }

    /* loaded from: classes13.dex */
    public enum QuirksMode {
        noQuirks,
        quirks,
        limitedQuirks
    }

    public Document(String str) {
        super(Tag.valueOf("#root", ParseSettings.htmlDefault), str);
        this.f114057t = new OutputSettings();
        this.f114059v = QuirksMode.noQuirks;
        this.f114061x = false;
        this.f114060w = str;
    }

    /* renamed from: b */
    private void m71117b() {
        XmlDeclaration xmlDeclaration;
        if (this.f114061x) {
            OutputSettings.Syntax syntax = outputSettings().syntax();
            if (syntax == OutputSettings.Syntax.html) {
                Element first = select("meta[charset]").first();
                if (first == null) {
                    Element head = head();
                    if (head != null) {
                        first = head.appendElement("meta");
                    }
                    select("meta[name=charset]").remove();
                    return;
                }
                first.attr("charset", charset().displayName());
                select("meta[name=charset]").remove();
                return;
            }
            if (syntax == OutputSettings.Syntax.xml) {
                Node node = childNodes().get(0);
                if (node instanceof XmlDeclaration) {
                    XmlDeclaration xmlDeclaration2 = (XmlDeclaration) node;
                    if (xmlDeclaration2.name().equals("xml")) {
                        xmlDeclaration2.attr("encoding", charset().displayName());
                        if (xmlDeclaration2.attr("version") != null) {
                            xmlDeclaration2.attr("version", "1.0");
                            return;
                        }
                        return;
                    }
                    xmlDeclaration = new XmlDeclaration("xml", false);
                } else {
                    xmlDeclaration = new XmlDeclaration("xml", false);
                }
                xmlDeclaration.attr("version", "1.0");
                xmlDeclaration.attr("encoding", charset().displayName());
                prependChild(xmlDeclaration);
            }
        }
    }

    public static Document createShell(String str) {
        Validate.notNull(str);
        Document document = new Document(str);
        document.f114058u = document.parser();
        Element appendElement = document.appendElement("html");
        appendElement.appendElement(gon.f71289o);
        appendElement.appendElement("body");
        return document;
    }

    public Element body() {
        return m71118v("body", this);
    }

    public Charset charset() {
        return this.f114057t.charset();
    }

    public Element createElement(String str) {
        return new Element(Tag.valueOf(str, ParseSettings.preserveCase), baseUri());
    }

    public DocumentType documentType() {
        for (Node node : this.f114081o) {
            if (node instanceof DocumentType) {
                return (DocumentType) node;
            }
            if (!(node instanceof bzo)) {
                return null;
            }
        }
        return null;
    }

    public Element head() {
        return m71118v(gon.f71289o, this);
    }

    public Element htmlElement() {
        return m71118v("html", this);
    }

    public String location() {
        return this.f114060w;
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    public String nodeName() {
        return "#document";
    }

    public Document normalise() {
        Element m71118v = m71118v("html", this);
        if (m71118v == null) {
            m71118v = appendElement("html");
        }
        if (head() == null) {
            m71118v.prependElement(gon.f71289o);
        }
        if (body() == null) {
            m71118v.appendElement("body");
        }
        m71120x(head());
        m71120x(m71118v);
        m71120x(this);
        m71119w(gon.f71289o, m71118v);
        m71119w("body", m71118v);
        m71117b();
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public String outerHtml() {
        return super.html();
    }

    public OutputSettings outputSettings() {
        return this.f114057t;
    }

    public Document parser(Parser parser) {
        this.f114058u = parser;
        return this;
    }

    public QuirksMode quirksMode() {
        return this.f114059v;
    }

    @Override // org.jsoup.nodes.Element
    public Element text(String str) {
        body().text(str);
        return this;
    }

    public String title() {
        Element first = getElementsByTag("title").first();
        return first != null ? StringUtil.normaliseWhitespace(first.text()).trim() : "";
    }

    public void updateMetaCharsetElement(boolean z) {
        this.f114061x = z;
    }

    /* renamed from: v */
    public final Element m71118v(String str, Node node) {
        if (node.nodeName().equals(str)) {
            return (Element) node;
        }
        int childNodeSize = node.childNodeSize();
        for (int i = 0; i < childNodeSize; i++) {
            Element m71118v = m71118v(str, node.childNode(i));
            if (m71118v != null) {
                return m71118v;
            }
        }
        return null;
    }

    /* renamed from: w */
    public final void m71119w(String str, Element element) {
        Elements elementsByTag = getElementsByTag(str);
        Element first = elementsByTag.first();
        if (elementsByTag.size() > 1) {
            ArrayList arrayList = new ArrayList();
            for (int i = 1; i < elementsByTag.size(); i++) {
                Element element2 = elementsByTag.get(i);
                arrayList.addAll(element2.ensureChildNodes());
                element2.remove();
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                first.appendChild((Node) it2.next());
            }
        }
        if (first.parent().equals(element)) {
            return;
        }
        element.appendChild(first);
    }

    /* renamed from: x */
    public final void m71120x(Element element) {
        ArrayList arrayList = new ArrayList();
        for (Node node : element.f114081o) {
            if (node instanceof TextNode) {
                TextNode textNode = (TextNode) node;
                if (!textNode.isBlank()) {
                    arrayList.add(textNode);
                }
            }
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Node node2 = (Node) arrayList.get(size);
            element.removeChild(node2);
            body().prependChild(new TextNode(" "));
            body().prependChild(node2);
        }
    }

    public void charset(Charset charset) {
        updateMetaCharsetElement(true);
        this.f114057t.charset(charset);
        m71117b();
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    /* renamed from: clone */
    public Document mo74371clone() {
        Document document = (Document) super.mo74371clone();
        document.f114057t = this.f114057t.clone();
        return document;
    }

    public Document outputSettings(OutputSettings outputSettings) {
        Validate.notNull(outputSettings);
        this.f114057t = outputSettings;
        return this;
    }

    public Parser parser() {
        return this.f114058u;
    }

    public Document quirksMode(QuirksMode quirksMode) {
        this.f114059v = quirksMode;
        return this;
    }

    public void title(String str) {
        Validate.notNull(str);
        Element first = getElementsByTag("title").first();
        if (first == null) {
            head().appendElement("title").text(str);
        } else {
            first.text(str);
        }
    }

    public boolean updateMetaCharsetElement() {
        return this.f114061x;
    }
}
