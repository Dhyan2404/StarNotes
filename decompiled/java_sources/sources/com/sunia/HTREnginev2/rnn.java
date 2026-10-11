package com.sunia.HTREnginev2;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.tree.linked.NodeImpl;

/* loaded from: classes11.dex */
public abstract class rnn implements AxisIterator, LookaheadIterator {

    /* renamed from: e */
    public NodeImpl f83284e;

    /* renamed from: f */
    public NodeImpl f83285f;

    /* renamed from: g */
    public NodePredicate f83286g;

    /* renamed from: h */
    public NodeImpl f83287h = null;

    /* renamed from: i */
    public int f83288i = 0;

    public rnn(NodeImpl nodeImpl, NodePredicate nodePredicate) {
        this.f83285f = nodeImpl;
        this.f83284e = nodeImpl;
        this.f83286g = nodePredicate;
    }

    /* renamed from: f */
    public final void m56999f() {
        do {
            mo53944w();
        } while (!mo55713j(this.f83285f));
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return this.f83285f != null;
    }

    /* renamed from: j */
    public boolean mo55713j(NodeImpl nodeImpl) {
        NodePredicate nodePredicate;
        return nodeImpl == null || (nodePredicate = this.f83286g) == null || nodePredicate.test(nodeImpl);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    /* renamed from: w */
    public abstract void mo53944w();

    @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
    public final NodeInfo next() {
        NodeImpl nodeImpl = this.f83285f;
        if (nodeImpl == null) {
            this.f83287h = null;
            this.f83288i = -1;
            return null;
        }
        this.f83287h = nodeImpl;
        this.f83288i++;
        m56999f();
        return this.f83287h;
    }
}
