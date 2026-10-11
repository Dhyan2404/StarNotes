package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznv;
import com.google.android.gms.measurement.internal.zzon;

/* loaded from: classes5.dex */
public final class pmp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zzon f80980e;

    /* renamed from: f */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f80981f;

    /* renamed from: g */
    public final /* synthetic */ zzic f80982g;

    public pmp(zzic zzicVar, zzon zzonVar, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f80980e = zzonVar;
        this.f80981f = zzoVar;
        this.f80982g = zzicVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznv zznvVar;
        zznv zznvVar2;
        zznv zznvVar3;
        zznvVar = this.f80982g.f29882a;
        zznvVar.m22657h0();
        if (this.f80980e.zza() == null) {
            zznvVar3 = this.f80982g.f29882a;
            zznvVar3.m22620A(this.f80980e.zza, this.f80981f);
        } else {
            zznvVar2 = this.f80982g.f29882a;
            zznvVar2.m22671s(this.f80980e, this.f80981f);
        }
    }
}
