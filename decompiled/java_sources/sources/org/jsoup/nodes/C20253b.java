package org.jsoup.nodes;

import org.jsoup.parser.Tag;
import org.jsoup.select.NodeVisitor;

/* renamed from: org.jsoup.nodes.b */
/* loaded from: classes13.dex */
public class C20253b implements NodeVisitor {

    /* renamed from: a */
    public final /* synthetic */ StringBuilder f114113a;

    /* renamed from: b */
    public final /* synthetic */ Element f114114b;

    public C20253b(Element element, StringBuilder sb) {
        this.f114114b = element;
        this.f114113a = sb;
    }

    @Override // org.jsoup.select.NodeVisitor
    public void head(Node node, int i) {
        Tag tag;
        if (node instanceof TextNode) {
            Element.m71127m(this.f114113a, (TextNode) node);
            return;
        }
        if (node instanceof Element) {
            Element element = (Element) node;
            if (this.f114113a.length() > 0) {
                if (!element.isBlock()) {
                    tag = element.f114079m;
                    if (!tag.getName().equals("br")) {
                        return;
                    }
                }
                if (TextNode.m71157j(this.f114113a)) {
                    return;
                }
                this.f114113a.append(' ');
            }
        }
    }

    @Override // org.jsoup.select.NodeVisitor
    public void tail(Node node, int i) {
        if ((node instanceof Element) && ((Element) node).isBlock() && (node.nextSibling() instanceof TextNode) && !TextNode.m71157j(this.f114113a)) {
            this.f114113a.append(' ');
        }
    }
}
