package com.sunia.HTREnginev2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zznv;

/* loaded from: classes5.dex */
public class ykp extends BroadcastReceiver {

    /* renamed from: a */
    public final zznv f90843a;

    /* renamed from: b */
    public boolean f90844b;

    /* renamed from: c */
    public boolean f90845c;

    public ykp(zznv zznvVar) {
        Preconditions.checkNotNull(zznvVar);
        this.f90843a = zznvVar;
    }

    @WorkerThread
    /* renamed from: b */
    public final void m58453b() {
        this.f90843a.m22659i0();
        this.f90843a.zzl().zzt();
        if (this.f90844b) {
            return;
        }
        this.f90843a.zza().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.f90845c = this.f90843a.zzh().zzu();
        this.f90843a.zzj().zzp().zza("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f90845c));
        this.f90844b = true;
    }

    @WorkerThread
    /* renamed from: c */
    public final void m58454c() {
        this.f90843a.m22659i0();
        this.f90843a.zzl().zzt();
        this.f90843a.zzl().zzt();
        if (this.f90844b) {
            this.f90843a.zzj().zzp().zza("Unregistering connectivity change receiver");
            this.f90844b = false;
            this.f90845c = false;
            try {
                this.f90843a.zza().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f90843a.zzj().zzg().zza("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public void onReceive(Context context, Intent intent) {
        this.f90843a.m22659i0();
        String action = intent.getAction();
        this.f90843a.zzj().zzp().zza("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            this.f90843a.zzj().zzu().zza("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean zzu = this.f90843a.zzh().zzu();
        if (this.f90845c != zzu) {
            this.f90845c = zzu;
            this.f90843a.zzl().zzb(new xkp(this, zzu));
        }
    }
}
