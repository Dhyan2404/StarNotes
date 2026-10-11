package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Serializable;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public abstract class zzagb implements Serializable {
    public static zzagb zzd() {
        return zzafb.zza;
    }

    public static zzagb zze(@CheckForNull Object obj) {
        return obj == null ? zzafb.zza : new zzagi(obj);
    }

    public static zzagb zzf(Object obj) {
        obj.getClass();
        return new zzagi(obj);
    }

    public abstract boolean equals(@CheckForNull Object obj);

    public abstract int hashCode();

    public abstract Object zza();

    @CheckForNull
    public abstract Object zzb();

    public abstract boolean zzc();
}
