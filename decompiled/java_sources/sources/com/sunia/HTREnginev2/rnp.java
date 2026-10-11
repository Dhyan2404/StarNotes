package com.sunia.HTREnginev2;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzjq;

/* loaded from: classes5.dex */
public final class rnp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ String f83289e;

    /* renamed from: f */
    public final /* synthetic */ String f83290f;

    /* renamed from: g */
    public final /* synthetic */ long f83291g;

    /* renamed from: h */
    public final /* synthetic */ Bundle f83292h;

    /* renamed from: i */
    public final /* synthetic */ boolean f83293i;

    /* renamed from: j */
    public final /* synthetic */ boolean f83294j;

    /* renamed from: k */
    public final /* synthetic */ boolean f83295k;

    /* renamed from: l */
    public final /* synthetic */ String f83296l;

    /* renamed from: m */
    public final /* synthetic */ zzjq f83297m;

    public rnp(zzjq zzjqVar, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.f83289e = str;
        this.f83290f = str2;
        this.f83291g = j;
        this.f83292h = bundle;
        this.f83293i = z;
        this.f83294j = z2;
        this.f83295k = z3;
        this.f83296l = str3;
        this.f83297m = zzjqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f83297m.zza(this.f83289e, this.f83290f, this.f83291g, this.f83292h, this.f83293i, this.f83294j, this.f83295k, this.f83296l);
    }
}
