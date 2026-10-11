package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzwh {
    private Executor zza;
    private Context zzb;
    private zzaha zzc;
    private final zzagb zzd = zzagb.zzd();
    private final zzagb zze = zzagb.zzd();

    public final zzwh zza(Context context) {
        this.zzb = context.getApplicationContext();
        return this;
    }

    public final zzwh zzb(Executor executor) {
        this.zza = zzasq.zzc(executor);
        return this;
    }

    public final zzwh zzc(zzaha zzahaVar) {
        this.zzc = zzahaVar;
        return this;
    }

    public final zzwi zzd() {
        return new zzwk(this.zzb, this.zze, this.zza, this.zzd, this.zzc);
    }
}
