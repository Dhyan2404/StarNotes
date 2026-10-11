package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public final class zzbra {
    private static final long zza;
    private static final long zzb;
    private static final long zzc;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        zza = timeUnit.toMillis(60L);
        zzb = timeUnit.toMillis(60L);
        zzc = timeUnit.toMillis(60L);
    }

    public static zzaha zzd(Context context, Executor executor, zzyg zzygVar, zzagb zzagbVar, zzagb zzagbVar2, zzagb zzagbVar3) {
        return new zzbqz(zzagbVar2, executor, context, zzagbVar3, zzygVar, zzagbVar);
    }
}
