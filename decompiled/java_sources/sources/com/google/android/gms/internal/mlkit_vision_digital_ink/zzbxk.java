package com.google.android.gms.internal.mlkit_vision_digital_ink;

import sun.misc.Unsafe;

/* loaded from: classes5.dex */
final class zzbxk extends zzbxl {
    public zzbxk(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxl
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(zzk(obj, j));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxl
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(zzj(obj, j));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxl
    public final void zzc(Object obj, long j, boolean z) {
        if (zzbxm.zzb) {
            zzbxm.zzD(obj, j, r3 ? (byte) 1 : (byte) 0);
        } else {
            zzbxm.zzE(obj, j, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxl
    public final void zzd(Object obj, long j, byte b) {
        if (zzbxm.zzb) {
            zzbxm.zzD(obj, j, b);
        } else {
            zzbxm.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxl
    public final void zze(Object obj, long j, double d) {
        zzo(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxl
    public final void zzf(Object obj, long j, float f) {
        zzn(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxl
    public final boolean zzg(Object obj, long j) {
        return zzbxm.zzb ? zzbxm.zzt(obj, j) : zzbxm.zzu(obj, j);
    }
}
