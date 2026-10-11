package com.sunia.HTREnginev2;

import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.tree.linked.NodeImpl;

/* loaded from: classes11.dex */
public final class itd extends rnn {
    public itd(NodeImpl nodeImpl, NodeTest nodeTest) {
        super(nodeImpl, nodeTest);
        this.f83285f = nodeImpl.getFirstChild();
        while (!mo55713j(this.f83285f)) {
            mo53944w();
        }
    }

    @Override // com.sunia.HTREnginev2.rnn
    /* renamed from: w */
    public void mo53944w() {
        this.f83285f = this.f83285f.getNextSibling();
    }
}
