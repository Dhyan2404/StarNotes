package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* renamed from: net.sf.saxon.tree.tiny.f */
/* loaded from: classes11.dex */
public final class C18546f implements AxisIterator {

    /* renamed from: e */
    public final TinyTree f102647e;

    /* renamed from: f */
    public final TinyNodeImpl f102648f;

    /* renamed from: g */
    public int f102649g;

    /* renamed from: h */
    public final NodeTest f102650h;

    /* renamed from: i */
    public final TinyNodeImpl f102651i;

    /* renamed from: j */
    public final IntPredicateProxy f102652j;

    public C18546f(TinyTree tinyTree, TinyNodeImpl tinyNodeImpl, NodeTest nodeTest) {
        this.f102647e = tinyTree;
        tinyTree.m64561j();
        this.f102650h = nodeTest;
        this.f102648f = tinyNodeImpl;
        this.f102649g = tinyNodeImpl.nodeNr;
        this.f102651i = tinyNodeImpl.parent;
        this.f102652j = nodeTest.getMatcher(tinyTree);
    }

    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    public NodeInfo next() {
        int i;
        if (this.f102649g < 0) {
            return null;
        }
        do {
            i = this.f102647e.f102600r[this.f102649g];
            this.f102649g = i;
            if (i < 0) {
                return null;
            }
        } while (!this.f102652j.test(i));
        TinyNodeImpl node = this.f102647e.getNode(this.f102649g);
        node.setParentNode(this.f102651i);
        return node;
    }
}
