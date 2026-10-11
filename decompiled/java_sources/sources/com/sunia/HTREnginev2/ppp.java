package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzls;
import com.google.android.gms.measurement.internal.zzos;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class ppp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ String f81104e;

    /* renamed from: f */
    public final /* synthetic */ String f81105f;

    /* renamed from: g */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f81106g;

    /* renamed from: h */
    public final /* synthetic */ zzdo f81107h;

    /* renamed from: i */
    public final /* synthetic */ zzls f81108i;

    public ppp(zzls zzlsVar, String str, String str2, com.google.android.gms.measurement.internal.zzo zzoVar, zzdo zzdoVar) {
        this.f81104e = str;
        this.f81105f = str2;
        this.f81106g = zzoVar;
        this.f81107h = zzdoVar;
        this.f81108i = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            zzgbVar = this.f81108i.f29957c;
            if (zzgbVar == null) {
                this.f81108i.zzj().zzg().zza("Failed to get conditional properties; not connected to service", this.f81104e, this.f81105f);
                return;
            }
            Preconditions.checkNotNull(this.f81106g);
            ArrayList<Bundle> zzb = zzos.zzb(zzgbVar.zza(this.f81104e, this.f81105f, this.f81106g));
            this.f81108i.zzar();
            this.f81108i.zzq().zza(this.f81107h, zzb);
        } catch (RemoteException e) {
            this.f81108i.zzj().zzg().zza("Failed to get conditional properties; remote exception", this.f81104e, this.f81105f, e);
        } finally {
            this.f81108i.zzq().zza(this.f81107h, arrayList);
        }
    }
}
