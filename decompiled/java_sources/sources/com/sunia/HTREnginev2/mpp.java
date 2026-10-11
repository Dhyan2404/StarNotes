package com.sunia.HTREnginev2;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzgo;
import com.google.android.gms.measurement.internal.zzls;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class mpp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AtomicReference f77867e;

    /* renamed from: f */
    public final /* synthetic */ String f77868f;

    /* renamed from: g */
    public final /* synthetic */ String f77869g;

    /* renamed from: h */
    public final /* synthetic */ String f77870h;

    /* renamed from: i */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f77871i;

    /* renamed from: j */
    public final /* synthetic */ zzls f77872j;

    public mpp(zzls zzlsVar, AtomicReference atomicReference, String str, String str2, String str3, com.google.android.gms.measurement.internal.zzo zzoVar) {
        this.f77867e = atomicReference;
        this.f77868f = str;
        this.f77869g = str2;
        this.f77870h = str3;
        this.f77871i = zzoVar;
        this.f77872j = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        synchronized (this.f77867e) {
            try {
                try {
                    zzgbVar = this.f77872j.f29957c;
                } catch (RemoteException e) {
                    this.f77872j.zzj().zzg().zza("(legacy) Failed to get conditional properties; remote exception", zzgo.zza(this.f77868f), this.f77869g, e);
                    this.f77867e.set(Collections.emptyList());
                }
                if (zzgbVar == null) {
                    this.f77872j.zzj().zzg().zza("(legacy) Failed to get conditional properties; not connected to service", zzgo.zza(this.f77868f), this.f77869g, this.f77870h);
                    this.f77867e.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(this.f77868f)) {
                    Preconditions.checkNotNull(this.f77871i);
                    this.f77867e.set(zzgbVar.zza(this.f77869g, this.f77870h, this.f77871i));
                } else {
                    this.f77867e.set(zzgbVar.zza(this.f77868f, this.f77869g, this.f77870h));
                }
                this.f77872j.zzar();
                this.f77867e.notify();
            } finally {
                this.f77867e.notify();
            }
        }
    }
}
