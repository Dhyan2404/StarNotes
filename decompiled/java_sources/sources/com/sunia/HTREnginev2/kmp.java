package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzic;

/* loaded from: classes5.dex */
public final class kmp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzbf f75604e;

    /* renamed from: f */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f75605f;

    /* renamed from: g */
    public final /* synthetic */ zzic f75606g;

    public kmp(zzic zzicVar, zzbf zzbfVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f75604e = zzbfVar;
        this.f75605f = zzoVar;
        this.f75606g = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f75606g.m22516i(this.f75606g.m22512e(this.f75604e, this.f75605f), this.f75605f);
    }
}
