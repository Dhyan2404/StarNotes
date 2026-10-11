package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzbtq {
    private final Object zza;
    private final int zzb;

    public zzbtq(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbtq)) {
            return false;
        }
        zzbtq zzbtqVar = (zzbtq) obj;
        return this.zza == zzbtqVar.zza && this.zzb == zzbtqVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
