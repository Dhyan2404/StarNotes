package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* loaded from: classes5.dex */
final class zzbxe extends zzbxc {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* synthetic */ int zza(Object obj) {
        return ((zzbxd) obj).zza();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* synthetic */ int zzb(Object obj) {
        return ((zzbxd) obj).zzb();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* bridge */ /* synthetic */ Object zzc(Object obj) {
        zzbui zzbuiVar = (zzbui) obj;
        zzbxd zzbxdVar = zzbuiVar.zzc;
        if (zzbxdVar != zzbxd.zzc()) {
            return zzbxdVar;
        }
        zzbxd zzf = zzbxd.zzf();
        zzbuiVar.zzc = zzf;
        return zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* synthetic */ Object zzd(Object obj) {
        return ((zzbui) obj).zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* bridge */ /* synthetic */ Object zze(Object obj, Object obj2) {
        if (zzbxd.zzc().equals(obj2)) {
            return obj;
        }
        if (zzbxd.zzc().equals(obj)) {
            return zzbxd.zze((zzbxd) obj, (zzbxd) obj2);
        }
        ((zzbxd) obj).zzd((zzbxd) obj2);
        return obj;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* synthetic */ Object zzf() {
        return zzbxd.zzf();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* synthetic */ Object zzg(Object obj) {
        ((zzbxd) obj).zzh();
        return obj;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* bridge */ /* synthetic */ void zzh(Object obj, int i, int i2) {
        ((zzbxd) obj).zzj((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* bridge */ /* synthetic */ void zzi(Object obj, int i, long j) {
        ((zzbxd) obj).zzj((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* bridge */ /* synthetic */ void zzj(Object obj, int i, Object obj2) {
        ((zzbxd) obj).zzj((i << 3) | 3, obj2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* bridge */ /* synthetic */ void zzk(Object obj, int i, zzbsz zzbszVar) {
        ((zzbxd) obj).zzj((i << 3) | 2, zzbszVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* bridge */ /* synthetic */ void zzl(Object obj, int i, long j) {
        ((zzbxd) obj).zzj(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final void zzm(Object obj) {
        ((zzbui) obj).zzc.zzh();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* synthetic */ void zzn(Object obj, Object obj2) {
        ((zzbui) obj).zzc = (zzbxd) obj2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* synthetic */ void zzo(Object obj, Object obj2) {
        ((zzbui) obj).zzc = (zzbxd) obj2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* synthetic */ void zzp(Object obj, zzbxu zzbxuVar) throws IOException {
        ((zzbxd) obj).zzk(zzbxuVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final /* synthetic */ void zzq(Object obj, zzbxu zzbxuVar) throws IOException {
        ((zzbxd) obj).zzl(zzbxuVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc
    public final boolean zzs(zzbwh zzbwhVar) {
        return false;
    }
}
