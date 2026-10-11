package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.internal.zabq;

/* loaded from: classes5.dex */
public final class dap implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ int f67683e;

    /* renamed from: f */
    public final /* synthetic */ zabq f67684f;

    public dap(zabq zabqVar, int i) {
        this.f67684f = zabqVar;
        this.f67683e = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f67684f.m22098g(this.f67683e);
    }
}
