package com.sunia.HTREnginev2;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;
import com.google.android.gms.measurement.internal.zzon;

/* loaded from: classes5.dex */
public final class vop implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f87774e;

    /* renamed from: f */
    public final /* synthetic */ boolean f87775f;

    /* renamed from: g */
    public final /* synthetic */ zzon f87776g;

    /* renamed from: h */
    public final /* synthetic */ zzls f87777h;

    public vop(zzls zzlsVar, com.google.android.gms.measurement.internal.zzo zzoVar, boolean z, zzon zzonVar) {
        this.f87774e = zzoVar;
        this.f87775f = z;
        this.f87776g = zzonVar;
        this.f87777h = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        zzgbVar = this.f87777h.f29957c;
        if (zzgbVar == null) {
            this.f87777h.zzj().zzg().zza("Discarding data. Failed to set user property");
            return;
        }
        Preconditions.checkNotNull(this.f87774e);
        this.f87777h.m22579c(zzgbVar, this.f87775f ? null : this.f87776g, this.f87774e);
        this.f87777h.zzar();
    }
}
