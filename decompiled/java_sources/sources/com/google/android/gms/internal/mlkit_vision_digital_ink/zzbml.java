package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzbml implements zzbip {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbip
    public final zzbio zza(zzbht zzbhtVar, zzbnw zzbnwVar) {
        Class zzc = zzbnwVar.zzc();
        if (!Enum.class.isAssignableFrom(zzc) || zzc == Enum.class) {
            return null;
        }
        if (!zzc.isEnum()) {
            zzc = zzc.getSuperclass();
        }
        return new zzbna(zzc);
    }
}
