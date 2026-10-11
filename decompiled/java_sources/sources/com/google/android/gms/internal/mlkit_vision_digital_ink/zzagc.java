package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public final class zzagc implements Serializable {
    public final Object zza;
    public final Object zzb;

    public zzagc(Object obj, Object obj2) {
        this.zza = obj;
        this.zzb = obj2;
    }

    public static zzagc zza(Object obj, Object obj2) {
        return new zzagc(obj, obj2);
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzagc) {
            zzagc zzagcVar = (zzagc) obj;
            if (zzaga.zza(this.zza, zzagcVar.zza) && zzaga.zza(this.zzb, zzagcVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.zza;
        return ((obj == null ? 0 : obj.hashCode()) * 31) + this.zzb.hashCode();
    }

    public final String toString() {
        return MotionUtils.f31761c + this.zza + ", " + this.zzb + MotionUtils.f31762d;
    }
}
