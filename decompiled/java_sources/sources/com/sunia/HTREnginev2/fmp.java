package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes5.dex */
public final class fmp implements Callable<List<yqp>> {

    /* renamed from: e */
    public final /* synthetic */ String f70168e;

    /* renamed from: f */
    public final /* synthetic */ String f70169f;

    /* renamed from: g */
    public final /* synthetic */ String f70170g;

    /* renamed from: h */
    public final /* synthetic */ zzic f70171h;

    public fmp(zzic zzicVar, String str, String str2, String str3) {
        this.f70168e = str;
        this.f70169f = str2;
        this.f70170g = str3;
        this.f70171h = zzicVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<yqp> call() throws Exception {
        zznv zznvVar;
        zznv zznvVar2;
        zznvVar = this.f70171h.f29882a;
        zznvVar.m22657h0();
        zznvVar2 = this.f70171h.f29882a;
        return zznvVar2.zzf().m54516f0(this.f70168e, this.f70169f, this.f70170g);
    }
}
