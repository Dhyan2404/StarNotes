package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.material.motion.MotionUtils;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzahd implements zzaha {
    private static final zzaha zza = new zzaha() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzahc
        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaha
        public final Object zza() {
            throw new IllegalStateException();
        }
    };
    private volatile zzaha zzb;

    @CheckForNull
    private Object zzc;

    public zzahd(zzaha zzahaVar) {
        zzahaVar.getClass();
        this.zzb = zzahaVar;
    }

    public final String toString() {
        Object obj = this.zzb;
        StringBuilder sb = new StringBuilder();
        sb.append("Suppliers.memoize(");
        if (obj == zza) {
            obj = "<supplier that returned " + this.zzc + ">";
        }
        sb.append(obj);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaha
    public final Object zza() {
        zzaha zzahaVar = this.zzb;
        zzaha zzahaVar2 = zza;
        if (zzahaVar != zzahaVar2) {
            synchronized (this) {
                if (this.zzb != zzahaVar2) {
                    Object zza2 = this.zzb.zza();
                    this.zzc = zza2;
                    this.zzb = zzahaVar2;
                    return zza2;
                }
            }
        }
        return this.zzc;
    }
}
