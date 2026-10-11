package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzlk;

/* loaded from: classes5.dex */
public final class pop implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzlk f81061e;

    /* renamed from: f */
    public final /* synthetic */ zzlk f81062f;

    /* renamed from: g */
    public final /* synthetic */ long f81063g;

    /* renamed from: h */
    public final /* synthetic */ boolean f81064h;

    /* renamed from: i */
    public final /* synthetic */ zzlj f81065i;

    public pop(zzlj zzljVar, zzlk zzlkVar, zzlk zzlkVar2, long j, boolean z) {
        this.f81061e = zzlkVar;
        this.f81062f = zzlkVar2;
        this.f81063g = j;
        this.f81064h = z;
        this.f81065i = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f81065i.m22569i(this.f81061e, this.f81062f, this.f81063g, this.f81064h, null);
    }
}
