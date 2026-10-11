package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* renamed from: net.sf.saxon.tree.tiny.b */
/* loaded from: classes11.dex */
public final class C18542b implements AxisIterator {

    /* renamed from: e */
    public final TinyTree f102621e;

    /* renamed from: f */
    public int f102622f;

    /* renamed from: g */
    public final int f102623g;

    /* renamed from: h */
    public final IntPredicateProxy f102624h;

    public C18542b(TinyTree tinyTree, TinyNodeImpl tinyNodeImpl, NodeTest nodeTest) {
        this.f102621e = tinyTree;
        int i = tinyNodeImpl.nodeNr;
        this.f102622f = i;
        this.f102623g = tinyTree.f102594m[i];
        this.f102624h = nodeTest.getMatcher(tinyTree);
    }

    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        int i;
        do {
            i = this.f102622f + 1;
            this.f102622f = i;
            try {
                if (this.f102621e.f102594m[i] <= this.f102623g) {
                    this.f102622f = -1;
                    return null;
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                this.f102622f = -1;
                return null;
            }
        } while (!this.f102624h.test(i));
        return this.f102621e.getNode(this.f102622f);
    }
}
