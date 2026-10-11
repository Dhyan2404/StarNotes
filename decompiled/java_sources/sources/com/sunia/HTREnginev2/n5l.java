package com.sunia.HTREnginev2;

import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.tree.linked.NodeImpl;

/* loaded from: classes11.dex */
public final class n5l extends rnn {

    /* renamed from: j */
    public NodeImpl f78331j;

    public n5l(NodeImpl nodeImpl, NodeTest nodeTest) {
        super(nodeImpl, nodeTest);
        this.f78331j = nodeImpl.getParent();
        m56999f();
    }

    @Override // com.sunia.HTREnginev2.rnn
    /* renamed from: j */
    public boolean mo55713j(NodeImpl nodeImpl) {
        if (nodeImpl == null || !nodeImpl.equals(this.f78331j)) {
            return super.mo55713j(nodeImpl);
        }
        this.f78331j = this.f78331j.getParent();
        return false;
    }

    @Override // com.sunia.HTREnginev2.rnn
    /* renamed from: w */
    public void mo53944w() {
        this.f83285f = this.f83285f.getPreviousInDocument();
    }
}
