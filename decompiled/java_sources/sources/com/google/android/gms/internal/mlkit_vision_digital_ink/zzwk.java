package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
final class zzwk implements zzwi {

    @VisibleForTesting
    final zzvs zza;

    @VisibleForTesting
    final zzvs zzb;
    private final Context zzc;
    private final zzagb zzd;
    private final Executor zze;
    private final zzagb zzf;
    private final zzaha zzg;

    public zzwk(Context context, zzagb zzagbVar, Executor executor, zzagb zzagbVar2, zzaha zzahaVar) {
        this.zzc = context;
        this.zze = executor;
        this.zzd = zzagbVar;
        this.zzf = zzagbVar2;
        this.zzg = zzahaVar;
        this.zza = zzvs.zza(executor);
        this.zzb = zzvs.zzb(executor, new zzwj(zzagbVar, context));
    }
}
