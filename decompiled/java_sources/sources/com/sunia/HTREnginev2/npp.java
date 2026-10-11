package com.sunia.HTREnginev2;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;

/* loaded from: classes5.dex */
public final class npp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ boolean f78899e = true;

    /* renamed from: f */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f78900f;

    /* renamed from: g */
    public final /* synthetic */ boolean f78901g;

    /* renamed from: h */
    public final /* synthetic */ zzae f78902h;

    /* renamed from: i */
    public final /* synthetic */ zzae f78903i;

    /* renamed from: j */
    public final /* synthetic */ zzls f78904j;

    public npp(zzls zzlsVar, boolean z, com.google.android.gms.measurement.internal.zzo zzoVar, boolean z2, zzae zzaeVar, zzae zzaeVar2) {
        this.f78900f = zzoVar;
        this.f78901g = z2;
        this.f78902h = zzaeVar;
        this.f78903i = zzaeVar2;
        this.f78904j = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        zzgbVar = this.f78904j.f29957c;
        if (zzgbVar == null) {
            this.f78904j.zzj().zzg().zza("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.f78899e) {
            Preconditions.checkNotNull(this.f78900f);
            this.f78904j.m22579c(zzgbVar, this.f78901g ? null : this.f78902h, this.f78900f);
        } else {
            try {
                if (TextUtils.isEmpty(this.f78903i.zza)) {
                    Preconditions.checkNotNull(this.f78900f);
                    zzgbVar.zza(this.f78902h, this.f78900f);
                } else {
                    zzgbVar.zza(this.f78902h);
                }
            } catch (RemoteException e) {
                this.f78904j.zzj().zzg().zza("Failed to send conditional user property to the service", e);
            }
        }
        this.f78904j.zzar();
    }
}
