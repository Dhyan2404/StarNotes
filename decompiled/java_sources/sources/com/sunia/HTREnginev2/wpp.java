package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzmy;
import com.google.android.gms.measurement.internal.zznv;

/* loaded from: classes5.dex */
public final class wpp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zznv f88876e;

    /* renamed from: f */
    public final /* synthetic */ Runnable f88877f;

    public wpp(zzmy zzmyVar, zznv zznvVar, Runnable runnable) {
        this.f88876e = zznvVar;
        this.f88877f = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f88876e.m22657h0();
        this.f88876e.m22673u(this.f88877f);
        this.f88876e.m22662l0();
    }
}
