package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.material.motion.MotionUtils;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzagi extends zzagb {
    private final Object zza;

    public zzagi(Object obj) {
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb
    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzagi) {
            return this.zza.equals(((zzagi) obj).zza);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb
    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.zza + MotionUtils.f31762d;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb
    public final Object zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb
    public final Object zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb
    public final boolean zzc() {
        return true;
    }
}
