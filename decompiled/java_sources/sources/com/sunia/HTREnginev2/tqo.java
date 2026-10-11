package com.sunia.HTREnginev2;

import java.util.function.Predicate;
import net.p110sf.saxon.om.NodeInfo;

/* loaded from: classes11.dex */
public final /* synthetic */ class tqo implements Predicate {

    /* renamed from: e */
    public final /* synthetic */ Class f85661e;

    public /* synthetic */ tqo(Class cls) {
        this.f85661e = cls;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return this.f85661e.isInstance((NodeInfo) obj);
    }
}
