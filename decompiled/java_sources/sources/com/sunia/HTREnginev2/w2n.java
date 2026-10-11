package com.sunia.HTREnginev2;

import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.NodePredicate;

/* loaded from: classes11.dex */
public final /* synthetic */ class w2n implements NodePredicate {

    /* renamed from: e */
    public final /* synthetic */ Class f88177e;

    public /* synthetic */ w2n(Class cls) {
        this.f88177e = cls;
    }

    @Override // net.p110sf.saxon.pattern.NodePredicate
    public final boolean test(NodeInfo nodeInfo) {
        return this.f88177e.isInstance(nodeInfo);
    }
}
