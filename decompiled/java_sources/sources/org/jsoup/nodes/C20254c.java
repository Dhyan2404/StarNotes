package org.jsoup.nodes;

import org.jsoup.select.NodeVisitor;

/* renamed from: org.jsoup.nodes.c */
/* loaded from: classes13.dex */
public class C20254c implements NodeVisitor {

    /* renamed from: a */
    public final /* synthetic */ StringBuilder f114115a;

    /* renamed from: b */
    public final /* synthetic */ Element f114116b;

    public C20254c(Element element, StringBuilder sb) {
        this.f114116b = element;
        this.f114115a = sb;
    }

    @Override // org.jsoup.select.NodeVisitor
    public void head(Node node, int i) {
        if (node instanceof TextNode) {
            this.f114115a.append(((TextNode) node).getWholeText());
        }
    }

    @Override // org.jsoup.select.NodeVisitor
    public void tail(Node node, int i) {
    }
}
