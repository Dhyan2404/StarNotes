package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* loaded from: classes5.dex */
abstract class zzbxc {
    public abstract int zza(Object obj);

    public abstract int zzb(Object obj);

    public abstract Object zzc(Object obj);

    public abstract Object zzd(Object obj);

    public abstract Object zze(Object obj, Object obj2);

    public abstract Object zzf();

    public abstract Object zzg(Object obj);

    public abstract void zzh(Object obj, int i, int i2);

    public abstract void zzi(Object obj, int i, long j);

    public abstract void zzj(Object obj, int i, Object obj2);

    public abstract void zzk(Object obj, int i, zzbsz zzbszVar);

    public abstract void zzl(Object obj, int i, long j);

    public abstract void zzm(Object obj);

    public abstract void zzn(Object obj, Object obj2);

    public abstract void zzo(Object obj, Object obj2);

    public abstract void zzp(Object obj, zzbxu zzbxuVar) throws IOException;

    public abstract void zzq(Object obj, zzbxu zzbxuVar) throws IOException;

    public final boolean zzr(Object obj, zzbwh zzbwhVar) throws IOException {
        int zzd = zzbwhVar.zzd();
        int i = zzd >>> 3;
        int i2 = zzd & 7;
        if (i2 == 0) {
            zzl(obj, i, zzbwhVar.zzl());
            return true;
        }
        if (i2 == 1) {
            zzi(obj, i, zzbwhVar.zzk());
            return true;
        }
        if (i2 == 2) {
            zzk(obj, i, zzbwhVar.zzp());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzbut.zza();
            }
            zzh(obj, i, zzbwhVar.zzf());
            return true;
        }
        Object zzf = zzf();
        int i3 = i << 3;
        while (zzbwhVar.zzc() != Integer.MAX_VALUE && zzr(zzf, zzbwhVar)) {
        }
        if ((4 | i3) != zzbwhVar.zzd()) {
            throw zzbut.zzb();
        }
        zzg(zzf);
        zzj(obj, i, zzf);
        return true;
    }

    public abstract boolean zzs(zzbwh zzbwhVar);
}
