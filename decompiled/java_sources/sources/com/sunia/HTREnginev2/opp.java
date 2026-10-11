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
public final class opp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ AtomicReference f80019e;

    /* renamed from: f */
    public final /* synthetic */ String f80020f;

    /* renamed from: g */
    public final /* synthetic */ String f80021g;

    /* renamed from: h */
    public final /* synthetic */ String f80022h;

    /* renamed from: i */
    public final /* synthetic */ com.google.android.gms.measurement.internal.zzo f80023i;

    /* renamed from: j */
    public final /* synthetic */ boolean f80024j;

    /* renamed from: k */
    public final /* synthetic */ zzls f80025k;

    public opp(zzls zzlsVar, AtomicReference atomicReference, String str, String str2, String str3, com.google.android.gms.measurement.internal.zzo zzoVar, boolean z) {
        this.f80019e = atomicReference;
        this.f80020f = str;
        this.f80021g = str2;
        this.f80022h = str3;
        this.f80023i = zzoVar;
        this.f80024j = z;
        this.f80025k = zzlsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzgb zzgbVar;
        synchronized (this.f80019e) {
            try {
                try {
                    zzgbVar = this.f80025k.f29957c;
                } catch (RemoteException e) {
                    this.f80025k.zzj().zzg().zza("(legacy) Failed to get user properties; remote exception", zzgo.zza(this.f80020f), this.f80021g, e);
                    this.f80019e.set(Collections.emptyList());
                }
                if (zzgbVar == null) {
                    this.f80025k.zzj().zzg().zza("(legacy) Failed to get user properties; not connected to service", zzgo.zza(this.f80020f), this.f80021g, this.f80022h);
                    this.f80019e.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(this.f80020f)) {
                    Preconditions.checkNotNull(this.f80023i);
                    this.f80019e.set(zzgbVar.zza(this.f80021g, this.f80022h, this.f80024j, this.f80023i));
                } else {
                    this.f80019e.set(zzgbVar.zza(this.f80020f, this.f80021g, this.f80022h, this.f80024j));
                }
                this.f80025k.zzar();
                this.f80019e.notify();
            } finally {
                this.f80019e.notify();
            }
        }
    }
}
