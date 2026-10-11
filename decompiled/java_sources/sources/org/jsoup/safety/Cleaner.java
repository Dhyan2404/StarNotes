package org.jsoup.safety;

import java.util.Iterator;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.ParseErrorList;
import org.jsoup.parser.Parser;
import org.jsoup.parser.Tag;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;

/* loaded from: classes13.dex */
public class Cleaner {

    /* renamed from: a */
    public Whitelist f114376a;

    /* renamed from: org.jsoup.safety.Cleaner$a */
    /* loaded from: classes13.dex */
    public final class C20359a implements NodeVisitor {

        /* renamed from: a */
        public int f114377a;

        /* renamed from: b */
        public final Element f114378b;

        /* renamed from: c */
        public Element f114379c;

        public C20359a(Element element, Element element2) {
            this.f114377a = 0;
            this.f114378b = element;
            this.f114379c = element2;
        }

        @Override // org.jsoup.select.NodeVisitor
        public void head(Node node, int i) {
            Node dataNode;
            if (!(node instanceof Element)) {
                if (node instanceof TextNode) {
                    dataNode = new TextNode(((TextNode) node).getWholeText());
                } else if ((node instanceof DataNode) && Cleaner.this.f114376a.isSafeTag(node.parent().nodeName())) {
                    dataNode = new DataNode(((DataNode) node).getWholeData());
                }
                this.f114379c.appendChild(dataNode);
                return;
            }
            Element element = (Element) node;
            if (Cleaner.this.f114376a.isSafeTag(element.normalName())) {
                C20360b m71403b = Cleaner.this.m71403b(element);
                Element element2 = m71403b.f114381a;
                this.f114379c.appendChild(element2);
                this.f114377a += m71403b.f114382b;
                this.f114379c = element2;
                return;
            }
            if (node == this.f114378b) {
                return;
            }
            this.f114377a++;
        }

        @Override // org.jsoup.select.NodeVisitor
        public void tail(Node node, int i) {
            if ((node instanceof Element) && Cleaner.this.f114376a.isSafeTag(node.nodeName())) {
                this.f114379c = this.f114379c.parent();
            }
        }
    }

    /* renamed from: org.jsoup.safety.Cleaner$b */
    /* loaded from: classes13.dex */
    public static class C20360b {

        /* renamed from: a */
        public Element f114381a;

        /* renamed from: b */
        public int f114382b;

        public C20360b(Element element, int i) {
            this.f114381a = element;
            this.f114382b = i;
        }
    }

    public Cleaner(Whitelist whitelist) {
        Validate.notNull(whitelist);
        this.f114376a = whitelist;
    }

    /* renamed from: a */
    public final int m71402a(Element element, Element element2) {
        C20359a c20359a = new C20359a(element, element2);
        NodeTraversor.traverse(c20359a, element);
        return c20359a.f114377a;
    }

    /* renamed from: b */
    public final C20360b m71403b(Element element) {
        String tagName = element.tagName();
        Attributes attributes = new Attributes();
        Element element2 = new Element(Tag.valueOf(tagName), element.baseUri(), attributes);
        Iterator<Attribute> it2 = element.attributes().iterator();
        int i = 0;
        while (it2.hasNext()) {
            Attribute next = it2.next();
            if (this.f114376a.isSafeAttribute(tagName, element, next)) {
                attributes.put(next);
            } else {
                i++;
            }
        }
        attributes.addAll(this.f114376a.m71407c(tagName));
        return new C20360b(element2, i);
    }

    public Document clean(Document document) {
        Validate.notNull(document);
        Document createShell = Document.createShell(document.baseUri());
        if (document.body() != null) {
            m71402a(document.body(), createShell.body());
        }
        return createShell;
    }

    public boolean isValid(Document document) {
        Validate.notNull(document);
        return m71402a(document.body(), Document.createShell(document.baseUri()).body()) == 0 && document.head().childNodes().isEmpty();
    }

    public boolean isValidBodyHtml(String str) {
        Document createShell = Document.createShell("");
        Document createShell2 = Document.createShell("");
        ParseErrorList tracking = ParseErrorList.tracking(1);
        createShell2.body().insertChildren(0, Parser.parseFragment(str, createShell2.body(), "", tracking));
        return m71402a(createShell2.body(), createShell.body()) == 0 && tracking.isEmpty();
    }
}
