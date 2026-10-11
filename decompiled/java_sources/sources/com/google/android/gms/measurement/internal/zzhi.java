package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.MainThread;
import com.sunia.HTREnginev2.ilp;

/* loaded from: classes5.dex */
public final class zzhi implements ServiceConnection {

    /* renamed from: e */
    public final String f29812e;

    /* renamed from: f */
    public final /* synthetic */ zzhf f29813f;

    public zzhi(zzhf zzhfVar, String str) {
        this.f29813f = zzhfVar;
        this.f29812e = str;
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f29813f.f29811a.zzj().zzu().zza("Install Referrer connection returned with null binder");
            return;
        }
        try {
            com.google.android.gms.internal.measurement.zzbz zza = com.google.android.gms.internal.measurement.zzby.zza(iBinder);
            if (zza == null) {
                this.f29813f.f29811a.zzj().zzu().zza("Install Referrer Service implementation was not found");
            } else {
                this.f29813f.f29811a.zzj().zzp().zza("Install Referrer Service connected");
                this.f29813f.f29811a.zzl().zzb(new ilp(this, zza, this));
            }
        } catch (RuntimeException e) {
            this.f29813f.f29811a.zzj().zzu().zza("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f29813f.f29811a.zzj().zzp().zza("Install Referrer Service disconnected");
    }
}
