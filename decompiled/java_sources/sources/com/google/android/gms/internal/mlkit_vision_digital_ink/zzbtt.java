package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzbtt extends zzbts {
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts
    public final int zza(Map.Entry entry) {
        return 43;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts
    public final zzbtw zzb(Object obj) {
        return ((zzbue) obj).zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts
    public final zzbtw zzc(Object obj) {
        return ((zzbue) obj).zzi();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts
    public final Object zzd(zzbtr zzbtrVar, zzbvu zzbvuVar, int i) {
        return zzbtrVar.zzc(zzbvuVar, i);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts
    public final Object zze(Object obj, zzbwh zzbwhVar, Object obj2, zzbtr zzbtrVar, zzbtw zzbtwVar, Object obj3, zzbxc zzbxcVar) throws IOException {
        Object zzf;
        zzbug zzbugVar = (zzbug) obj2;
        zzbxs zzbxsVar = zzbugVar.zzd.zzb;
        Object obj4 = null;
        if (zzbxsVar == zzbxs.zzn) {
            zzbwhVar.zzg();
            throw null;
        }
        switch (zzbxsVar.ordinal()) {
            case 0:
                obj4 = Double.valueOf(zzbwhVar.zza());
                break;
            case 1:
                obj4 = Float.valueOf(zzbwhVar.zzb());
                break;
            case 2:
                obj4 = Long.valueOf(zzbwhVar.zzl());
                break;
            case 3:
                obj4 = Long.valueOf(zzbwhVar.zzo());
                break;
            case 4:
                obj4 = Integer.valueOf(zzbwhVar.zzg());
                break;
            case 5:
                obj4 = Long.valueOf(zzbwhVar.zzk());
                break;
            case 6:
                obj4 = Integer.valueOf(zzbwhVar.zzf());
                break;
            case 7:
                obj4 = Boolean.valueOf(zzbwhVar.zzQ());
                break;
            case 8:
                obj4 = zzbwhVar.zzt();
                break;
            case 9:
                Object zzf2 = zzbtwVar.zzf(zzbugVar.zzd);
                if (!(zzf2 instanceof zzbui)) {
                    obj4 = zzbwhVar.zzr(zzbugVar.zzc.getClass(), zzbtrVar);
                    break;
                } else {
                    zzbwi zzb = zzbwe.zza().zzb(zzf2.getClass());
                    if (!((zzbui) zzf2).zzag()) {
                        Object zze = zzb.zze();
                        zzb.zzg(zze, zzf2);
                        zzbtwVar.zzj(zzbugVar.zzd, zze);
                        zzf2 = zze;
                    }
                    zzbwhVar.zzv(zzf2, zzb, zzbtrVar);
                    return obj3;
                }
            case 10:
                Object zzf3 = zzbtwVar.zzf(zzbugVar.zzd);
                if (!(zzf3 instanceof zzbui)) {
                    obj4 = zzbwhVar.zzs(zzbugVar.zzc.getClass(), zzbtrVar);
                    break;
                } else {
                    zzbwi zzb2 = zzbwe.zza().zzb(zzf3.getClass());
                    if (!((zzbui) zzf3).zzag()) {
                        Object zze2 = zzb2.zze();
                        zzb2.zzg(zze2, zzf3);
                        zzbtwVar.zzj(zzbugVar.zzd, zze2);
                        zzf3 = zze2;
                    }
                    zzbwhVar.zzw(zzf3, zzb2, zzbtrVar);
                    return obj3;
                }
            case 11:
                obj4 = zzbwhVar.zzp();
                break;
            case 12:
                obj4 = Integer.valueOf(zzbwhVar.zzj());
                break;
            case 13:
                throw new IllegalStateException("Shouldn't reach here.");
            case 14:
                obj4 = Integer.valueOf(zzbwhVar.zzh());
                break;
            case 15:
                obj4 = Long.valueOf(zzbwhVar.zzm());
                break;
            case 16:
                obj4 = Integer.valueOf(zzbwhVar.zzi());
                break;
            case 17:
                obj4 = Long.valueOf(zzbwhVar.zzn());
                break;
        }
        int ordinal = zzbugVar.zzd.zzb.ordinal();
        if ((ordinal == 9 || ordinal == 10) && (zzf = zzbtwVar.zzf(zzbugVar.zzd)) != null) {
            obj4 = zzbur.zzg(zzf, obj4);
        }
        zzbtwVar.zzj(zzbugVar.zzd, obj4);
        return obj3;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts
    public final void zzf(Object obj) {
        ((zzbue) obj).zza.zzh();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts
    public final void zzg(zzbwh zzbwhVar, Object obj, zzbtr zzbtrVar, zzbtw zzbtwVar) throws IOException {
        zzbug zzbugVar = (zzbug) obj;
        zzbtwVar.zzj(zzbugVar.zzd, zzbwhVar.zzs(zzbugVar.zzc.getClass(), zzbtrVar));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts
    public final void zzh(zzbsz zzbszVar, Object obj, zzbtr zzbtrVar, zzbtw zzbtwVar) throws IOException {
        zzbug zzbugVar = (zzbug) obj;
        zzbub zzbubVar = (zzbub) ((zzbui) zzbugVar.zzc).zzb(5, null, null);
        zzbsw zzbswVar = (zzbsw) zzbszVar;
        zzbtf zzH = zzbtf.zzH(zzbswVar.zza, 0, zzbswVar.zzd(), true);
        zzbubVar.zzq(zzH, zzbtrVar);
        zzbtwVar.zzj(zzbugVar.zzd, zzbubVar.zzy());
        zzH.zzz(0);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts
    public final void zzi(zzbxu zzbxuVar, Map.Entry entry) throws IOException {
        zzbuf zzbufVar = (zzbuf) entry.getKey();
        zzbxs zzbxsVar = zzbxs.zza;
        switch (zzbufVar.zzb.ordinal()) {
            case 0:
                zzbxuVar.zzf(43, ((Double) entry.getValue()).doubleValue());
                return;
            case 1:
                zzbxuVar.zzo(43, ((Float) entry.getValue()).floatValue());
                return;
            case 2:
                zzbxuVar.zzt(43, ((Long) entry.getValue()).longValue());
                return;
            case 3:
                zzbxuVar.zzL(43, ((Long) entry.getValue()).longValue());
                return;
            case 4:
                zzbxuVar.zzr(43, ((Integer) entry.getValue()).intValue());
                return;
            case 5:
                zzbxuVar.zzm(43, ((Long) entry.getValue()).longValue());
                return;
            case 6:
                zzbxuVar.zzk(43, ((Integer) entry.getValue()).intValue());
                return;
            case 7:
                zzbxuVar.zzb(43, ((Boolean) entry.getValue()).booleanValue());
                return;
            case 8:
                zzbxuVar.zzH(43, (String) entry.getValue());
                return;
            case 9:
                zzbxuVar.zzq(43, entry.getValue(), zzbwe.zza().zzb(entry.getValue().getClass()));
                return;
            case 10:
                zzbxuVar.zzw(43, entry.getValue(), zzbwe.zza().zzb(entry.getValue().getClass()));
                return;
            case 11:
                zzbxuVar.zzd(43, (zzbsz) entry.getValue());
                return;
            case 12:
                zzbxuVar.zzJ(43, ((Integer) entry.getValue()).intValue());
                return;
            case 13:
                zzbxuVar.zzr(43, ((Integer) entry.getValue()).intValue());
                return;
            case 14:
                zzbxuVar.zzy(43, ((Integer) entry.getValue()).intValue());
                return;
            case 15:
                zzbxuVar.zzA(43, ((Long) entry.getValue()).longValue());
                return;
            case 16:
                zzbxuVar.zzC(43, ((Integer) entry.getValue()).intValue());
                return;
            case 17:
                zzbxuVar.zzE(43, ((Long) entry.getValue()).longValue());
                return;
            default:
                return;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts
    public final boolean zzj(zzbvu zzbvuVar) {
        return zzbvuVar instanceof zzbue;
    }
}
