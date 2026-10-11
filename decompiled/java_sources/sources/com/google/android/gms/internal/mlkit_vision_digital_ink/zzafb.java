package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzafb extends zzagb {
    static final zzafb zza = new zzafb();

    private zzafb() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb
    public final boolean equals(@CheckForNull Object obj) {
        return obj == this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb
    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb
    public final Object zza() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb
    @CheckForNull
    public final Object zzb() {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb
    public final boolean zzc() {
        return false;
    }
}
