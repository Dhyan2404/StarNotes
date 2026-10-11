package org.apache.xerces.dom;

import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* renamed from: org.apache.xerces.dom.b */
/* loaded from: classes13.dex */
public class C20000b implements NodeList {

    /* renamed from: e */
    public final /* synthetic */ ParentNode f111922e;

    public C20000b(ParentNode parentNode) {
        this.f111922e = parentNode;
    }

    @Override // org.w3c.dom.NodeList
    public int getLength() {
        int nodeListGetLength;
        nodeListGetLength = this.f111922e.nodeListGetLength();
        return nodeListGetLength;
    }

    @Override // org.w3c.dom.NodeList
    public Node item(int i) {
        Node nodeListItem;
        nodeListItem = this.f111922e.nodeListItem(i);
        return nodeListItem;
    }
}
