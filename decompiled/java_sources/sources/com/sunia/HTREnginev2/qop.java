package com.sunia.HTREnginev2;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzlk;

/* loaded from: classes5.dex */
public final class qop implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ Bundle f82280e;

    /* renamed from: f */
    public final /* synthetic */ zzlk f82281f;

    /* renamed from: g */
    public final /* synthetic */ zzlk f82282g;

    /* renamed from: h */
    public final /* synthetic */ long f82283h;

    /* renamed from: i */
    public final /* synthetic */ zzlj f82284i;

    public qop(zzlj zzljVar, Bundle bundle, zzlk zzlkVar, zzlk zzlkVar2, long j) {
        this.f82280e = bundle;
        this.f82281f = zzlkVar;
        this.f82282g = zzlkVar2;
        this.f82283h = j;
        this.f82284i = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj.m22563e(this.f82284i, this.f82280e, this.f82281f, this.f82282g, this.f82283h);
    }
}
