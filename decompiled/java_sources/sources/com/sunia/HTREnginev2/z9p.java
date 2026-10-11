package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.internal.zabe;
import com.google.android.gms.common.api.internal.zabw;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class z9p extends zabw {

    /* renamed from: a */
    public final WeakReference f91549a;

    public z9p(zabe zabeVar) {
        this.f91549a = new WeakReference(zabeVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabw
    public final void zaa() {
        zabe zabeVar = (zabe) this.f91549a.get();
        if (zabeVar == null) {
            return;
        }
        zabe.m22069f(zabeVar);
    }
}
