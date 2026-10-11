package net.p110sf.saxon.dom;

import java.util.List;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes11.dex */
public final class DOMNodeList implements NodeList {

    /* renamed from: e */
    public final List<Node> f98876e;

    public DOMNodeList(List<Node> list) {
        this.f98876e = list;
    }

    @Override // org.w3c.dom.NodeList
    public int getLength() {
        return this.f98876e.size();
    }

    @Override // org.w3c.dom.NodeList
    public Node item(int i) {
        if (i < 0 || i >= this.f98876e.size()) {
            return null;
        }
        return this.f98876e.get(i);
    }
}
