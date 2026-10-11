package com.google.android.recaptcha.internal;

import java.io.IOException;
import java.util.Map;

/* loaded from: classes6.dex */
final class zzig extends zzif {
    @Override // com.google.android.recaptcha.internal.zzif
    public final int zza(Map.Entry entry) {
        return ((zziq) entry.getKey()).zza;
    }

    @Override // com.google.android.recaptcha.internal.zzif
    public final zzij zzb(Object obj) {
        return ((zzip) obj).zzb;
    }

    @Override // com.google.android.recaptcha.internal.zzif
    public final zzij zzc(Object obj) {
        return ((zzip) obj).zzi();
    }

    @Override // com.google.android.recaptcha.internal.zzif
    public final Object zzd(zzie zzieVar, zzke zzkeVar, int i) {
        return zzieVar.zza(zzkeVar, i);
    }

    @Override // com.google.android.recaptcha.internal.zzif
    public final Object zze(Object obj, zzkq zzkqVar, Object obj2, zzie zzieVar, zzij zzijVar, Object obj3, zzll zzllVar) throws IOException {
        Object zze;
        zzir zzirVar = (zzir) obj2;
        zzmb zzmbVar = zzirVar.zzb.zzb;
        Object obj4 = null;
        if (zzmbVar == zzmb.zzn) {
            zzkqVar.zzg();
            throw null;
        }
        switch (zzmbVar.ordinal()) {
            case 0:
                obj4 = Double.valueOf(zzkqVar.zza());
                break;
            case 1:
                obj4 = Float.valueOf(zzkqVar.zzb());
                break;
            case 2:
                obj4 = Long.valueOf(zzkqVar.zzl());
                break;
            case 3:
                obj4 = Long.valueOf(zzkqVar.zzo());
                break;
            case 4:
                obj4 = Integer.valueOf(zzkqVar.zzg());
                break;
            case 5:
                obj4 = Long.valueOf(zzkqVar.zzk());
                break;
            case 6:
                obj4 = Integer.valueOf(zzkqVar.zzf());
                break;
            case 7:
                obj4 = Boolean.valueOf(zzkqVar.zzN());
                break;
            case 8:
                obj4 = zzkqVar.zzr();
                break;
            case 9:
                Object zze2 = zzijVar.zze(zzirVar.zzb);
                if (!(zze2 instanceof zzit)) {
                    throw null;
                }
                zzkr zzb = zzkn.zza().zzb(zze2.getClass());
                if (!((zzit) zze2).zzG()) {
                    Object zze3 = zzb.zze();
                    zzb.zzg(zze3, zze2);
                    zzijVar.zzi(zzirVar.zzb, zze3);
                    zze2 = zze3;
                }
                zzkqVar.zzt(zze2, zzb, zzieVar);
                return obj3;
            case 10:
                Object zze4 = zzijVar.zze(zzirVar.zzb);
                if (!(zze4 instanceof zzit)) {
                    throw null;
                }
                zzkr zzb2 = zzkn.zza().zzb(zze4.getClass());
                if (!((zzit) zze4).zzG()) {
                    Object zze5 = zzb2.zze();
                    zzb2.zzg(zze5, zze4);
                    zzijVar.zzi(zzirVar.zzb, zze5);
                    zze4 = zze5;
                }
                zzkqVar.zzu(zze4, zzb2, zzieVar);
                return obj3;
            case 11:
                obj4 = zzkqVar.zzp();
                break;
            case 12:
                obj4 = Integer.valueOf(zzkqVar.zzj());
                break;
            case 13:
                throw new IllegalStateException("Shouldn't reach here.");
            case 14:
                obj4 = Integer.valueOf(zzkqVar.zzh());
                break;
            case 15:
                obj4 = Long.valueOf(zzkqVar.zzm());
                break;
            case 16:
                obj4 = Integer.valueOf(zzkqVar.zzi());
                break;
            case 17:
                obj4 = Long.valueOf(zzkqVar.zzn());
                break;
        }
        int ordinal = zzirVar.zzb.zzb.ordinal();
        if ((ordinal == 9 || ordinal == 10) && (zze = zzijVar.zze(zzirVar.zzb)) != null) {
            byte[] bArr = zzjc.zzd;
            obj4 = ((zzke) zze).zzX().zzc((zzke) obj4).zzk();
        }
        zzijVar.zzi(zzirVar.zzb, obj4);
        return obj3;
    }

    @Override // com.google.android.recaptcha.internal.zzif
    public final void zzf(Object obj) {
        ((zzip) obj).zzb.zzg();
    }

    @Override // com.google.android.recaptcha.internal.zzif
    public final void zzg(zzkq zzkqVar, Object obj, zzie zzieVar, zzij zzijVar) throws IOException {
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzif
    public final void zzh(zzgw zzgwVar, Object obj, zzie zzieVar, zzij zzijVar) throws IOException {
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzif
    public final void zzi(zzmd zzmdVar, Map.Entry entry) throws IOException {
        zziq zziqVar = (zziq) entry.getKey();
        zzmb zzmbVar = zzmb.zza;
        switch (zziqVar.zzb.ordinal()) {
            case 0:
                zzmdVar.zzf(zziqVar.zza, ((Double) entry.getValue()).doubleValue());
                return;
            case 1:
                zzmdVar.zzo(zziqVar.zza, ((Float) entry.getValue()).floatValue());
                return;
            case 2:
                zzmdVar.zzt(zziqVar.zza, ((Long) entry.getValue()).longValue());
                return;
            case 3:
                zzmdVar.zzK(zziqVar.zza, ((Long) entry.getValue()).longValue());
                return;
            case 4:
                zzmdVar.zzr(zziqVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 5:
                zzmdVar.zzm(zziqVar.zza, ((Long) entry.getValue()).longValue());
                return;
            case 6:
                zzmdVar.zzk(zziqVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 7:
                zzmdVar.zzb(zziqVar.zza, ((Boolean) entry.getValue()).booleanValue());
                return;
            case 8:
                zzmdVar.zzG(zziqVar.zza, (String) entry.getValue());
                return;
            case 9:
                zzmdVar.zzq(zziqVar.zza, entry.getValue(), zzkn.zza().zzb(entry.getValue().getClass()));
                return;
            case 10:
                zzmdVar.zzv(zziqVar.zza, entry.getValue(), zzkn.zza().zzb(entry.getValue().getClass()));
                return;
            case 11:
                zzmdVar.zzd(zziqVar.zza, (zzgw) entry.getValue());
                return;
            case 12:
                zzmdVar.zzI(zziqVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 13:
                zzmdVar.zzr(zziqVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 14:
                zzmdVar.zzx(zziqVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 15:
                zzmdVar.zzz(zziqVar.zza, ((Long) entry.getValue()).longValue());
                return;
            case 16:
                zzmdVar.zzB(zziqVar.zza, ((Integer) entry.getValue()).intValue());
                return;
            case 17:
                zzmdVar.zzD(zziqVar.zza, ((Long) entry.getValue()).longValue());
                return;
            default:
                return;
        }
    }

    @Override // com.google.android.recaptcha.internal.zzif
    public final boolean zzj(zzke zzkeVar) {
        return zzkeVar instanceof zzip;
    }
}
