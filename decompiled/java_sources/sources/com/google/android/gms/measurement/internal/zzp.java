package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import com.google.android.gms.internal.measurement.zzpn;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class zzp extends BroadcastReceiver {

    /* renamed from: a */
    public final zzhy f30041a;

    public zzp(zzhy zzhyVar) {
        this.f30041a = zzhyVar;
    }

    @Override // android.content.BroadcastReceiver
    @MainThread
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            this.f30041a.zzj().zzu().zza("App receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            this.f30041a.zzj().zzu().zza("App receiver called with null action");
            return;
        }
        if (!action.equals("com.google.android.gms.measurement.TRIGGERS_AVAILABLE")) {
            this.f30041a.zzj().zzu().zza("App receiver called with unknown action");
            return;
        }
        final zzhy zzhyVar = this.f30041a;
        if (zzpn.zza() && zzhyVar.zzf().zzf(null, zzbh.zzci)) {
            zzhyVar.zzj().zzp().zza("App receiver notified triggers are available");
            zzhyVar.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzr
                @Override // java.lang.Runnable
                public final void run() {
                    zzhy zzhyVar2 = zzhy.this;
                    if (!zzhyVar2.zzt().zzw()) {
                        zzhyVar2.zzj().zzu().zza("registerTrigger called but app not eligible");
                        return;
                    }
                    final zzjq zzp = zzhyVar2.zzp();
                    Objects.requireNonNull(zzp);
                    new Thread(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzs
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzjq.this.m22556w();
                        }
                    }).start();
                }
            });
        }
    }
}
