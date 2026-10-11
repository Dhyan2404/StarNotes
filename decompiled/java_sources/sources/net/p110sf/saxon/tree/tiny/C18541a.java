package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* renamed from: net.sf.saxon.tree.tiny.a */
/* loaded from: classes11.dex */
public final class C18541a implements AxisIterator {

    /* renamed from: e */
    public final TinyTree f102616e;

    /* renamed from: f */
    public int f102617f;

    /* renamed from: g */
    public final int f102618g;

    /* renamed from: h */
    public final IntPredicateProxy f102619h;

    /* renamed from: i */
    public NodeInfo f102620i = null;

    public C18541a(TinyTree tinyTree, TinyNodeImpl tinyNodeImpl, NodeTest nodeTest) {
        this.f102616e = tinyTree;
        int i = tinyNodeImpl.nodeNr;
        this.f102617f = i;
        this.f102618g = tinyTree.f102594m[i];
        this.f102619h = nodeTest.getMatcher(tinyTree);
    }

    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        do {
            NodeInfo nodeInfo = this.f102620i;
            if (nodeInfo != null) {
                this.f102620i = null;
                return nodeInfo;
            }
            int i = this.f102617f + 1;
            this.f102617f = i;
            try {
                TinyTree tinyTree = this.f102616e;
                if (tinyTree.f102594m[i] <= this.f102618g) {
                    this.f102617f = -1;
                    return null;
                }
                if (tinyTree.nodeKind[i] == 17) {
                    this.f102620i = ((TinyTextualElement) tinyTree.getNode(i)).getTextNode();
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                this.f102617f = -1;
                return null;
            }
        } while (!this.f102619h.test(this.f102617f));
        return this.f102616e.getNode(this.f102617f);
    }
}
