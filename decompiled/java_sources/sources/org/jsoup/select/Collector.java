package org.jsoup.select;

import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.NodeFilter;

/* loaded from: classes13.dex */
public class Collector {

    /* renamed from: org.jsoup.select.Collector$a */
    /* loaded from: classes13.dex */
    public static class C20367a implements NodeVisitor {

        /* renamed from: a */
        public final Element f114411a;

        /* renamed from: b */
        public final Elements f114412b;

        /* renamed from: c */
        public final Evaluator f114413c;

        public C20367a(Element element, Elements elements, Evaluator evaluator) {
            this.f114411a = element;
            this.f114412b = elements;
            this.f114413c = evaluator;
        }

        @Override // org.jsoup.select.NodeVisitor
        public void head(Node node, int i) {
            if (node instanceof Element) {
                Element element = (Element) node;
                if (this.f114413c.matches(this.f114411a, element)) {
                    this.f114412b.add(element);
                }
            }
        }

        @Override // org.jsoup.select.NodeVisitor
        public void tail(Node node, int i) {
        }
    }

    /* renamed from: org.jsoup.select.Collector$b */
    /* loaded from: classes13.dex */
    public static class C20368b implements NodeFilter {

        /* renamed from: a */
        public final Element f114414a;

        /* renamed from: b */
        public Element f114415b = null;

        /* renamed from: c */
        public final Evaluator f114416c;

        public C20368b(Element element, Evaluator evaluator) {
            this.f114414a = element;
            this.f114416c = evaluator;
        }

        @Override // org.jsoup.select.NodeFilter
        public NodeFilter.FilterResult head(Node node, int i) {
            if (node instanceof Element) {
                Element element = (Element) node;
                if (this.f114416c.matches(this.f114414a, element)) {
                    this.f114415b = element;
                    return NodeFilter.FilterResult.STOP;
                }
            }
            return NodeFilter.FilterResult.CONTINUE;
        }

        @Override // org.jsoup.select.NodeFilter
        public NodeFilter.FilterResult tail(Node node, int i) {
            return NodeFilter.FilterResult.CONTINUE;
        }
    }

    public static Elements collect(Evaluator evaluator, Element element) {
        Elements elements = new Elements();
        NodeTraversor.traverse(new C20367a(element, elements, evaluator), element);
        return elements;
    }

    public static Element findFirst(Evaluator evaluator, Element element) {
        C20368b c20368b = new C20368b(element, evaluator);
        NodeTraversor.filter(c20368b, element);
        return c20368b.f114415b;
    }
}
