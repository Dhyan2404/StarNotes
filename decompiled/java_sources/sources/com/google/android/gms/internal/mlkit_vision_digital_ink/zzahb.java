package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzahb implements Serializable, zzaha {
    final zzaha zza;
    volatile transient boolean zzb;

    @CheckForNull
    transient Object zzc;

    public zzahb(zzaha zzahaVar) {
        zzahaVar.getClass();
        this.zza = zzahaVar;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder();
        sb.append("Suppliers.memoize(");
        if (this.zzb) {
            obj = "<supplier that returned " + this.zzc + ">";
        } else {
            obj = this.zza;
        }
        sb.append(obj);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaha
    public final Object zza() {
        if (!this.zzb) {
            synchronized (this) {
                if (!this.zzb) {
                    Object zza = this.zza.zza();
                    this.zzc = zza;
                    this.zzb = true;
                    return zza;
                }
            }
        }
        return this.zzc;
    }
}
