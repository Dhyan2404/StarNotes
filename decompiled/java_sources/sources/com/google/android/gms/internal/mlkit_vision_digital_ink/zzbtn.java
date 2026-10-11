package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzbtn implements zzbxu {
    private final zzbtm zza;

    private zzbtn(zzbtm zzbtmVar) {
        zzbur.zzf(zzbtmVar, Constants.ELEMNAME_OUTPUT_STRING);
        this.zza = zzbtmVar;
        zzbtmVar.zze = this;
    }

    public static zzbtn zza(zzbtm zzbtmVar) {
        zzbtn zzbtnVar = zzbtmVar.zze;
        return zzbtnVar != null ? zzbtnVar : new zzbtn(zzbtmVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzA(int i, long j) throws IOException {
        this.zza.zzl(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzB(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzl(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            i3 += 8;
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            this.zza.zzm(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzC(int i, int i2) throws IOException {
        zzbtm zzbtmVar = this.zza;
        zzbtmVar.zzw(i, (i2 >> 31) ^ (i2 + i2));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzD(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                zzbtm zzbtmVar = this.zza;
                int intValue = ((Integer) list.get(i2)).intValue();
                zzbtmVar.zzw(i, (intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = ((Integer) list.get(i4)).intValue();
            i3 += zzbtm.zzM((intValue2 >> 31) ^ (intValue2 + intValue2));
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            zzbtm zzbtmVar2 = this.zza;
            int intValue3 = ((Integer) list.get(i2)).intValue();
            zzbtmVar2.zzx((intValue3 >> 31) ^ (intValue3 + intValue3));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzE(int i, long j) throws IOException {
        zzbtm zzbtmVar = this.zza;
        zzbtmVar.zzy(i, (j >> 63) ^ (j + j));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzF(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                zzbtm zzbtmVar = this.zza;
                long longValue = ((Long) list.get(i2)).longValue();
                zzbtmVar.zzy(i, (longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = ((Long) list.get(i4)).longValue();
            i3 += zzbtm.zzN((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            zzbtm zzbtmVar2 = this.zza;
            long longValue3 = ((Long) list.get(i2)).longValue();
            zzbtmVar2.zzz((longValue3 >> 63) ^ (longValue3 + longValue3));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    @Deprecated
    public final void zzG(int i) throws IOException {
        this.zza.zzv(i, 3);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzH(int i, String str) throws IOException {
        this.zza.zzt(i, str);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzI(int i, List list) throws IOException {
        int i2 = 0;
        if (!(list instanceof zzbvb)) {
            while (i2 < list.size()) {
                this.zza.zzt(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        zzbvb zzbvbVar = (zzbvb) list;
        while (i2 < list.size()) {
            Object zzf = zzbvbVar.zzf(i2);
            if (zzf instanceof String) {
                this.zza.zzt(i, (String) zzf);
            } else {
                this.zza.zzh(i, (zzbsz) zzf);
            }
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzJ(int i, int i2) throws IOException {
        this.zza.zzw(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzK(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzw(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbtm.zzM(((Integer) list.get(i4)).intValue());
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            this.zza.zzx(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzL(int i, long j) throws IOException {
        this.zza.zzy(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzM(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzy(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbtm.zzN(((Long) list.get(i4)).longValue());
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            this.zza.zzz(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzb(int i, boolean z) throws IOException {
        this.zza.zzY(i, z);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzc(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzY(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).booleanValue();
            i3++;
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            this.zza.zzX(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzd(int i, zzbsz zzbszVar) throws IOException {
        this.zza.zzh(i, zzbszVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zze(int i, List list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zzh(i, (zzbsz) list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzf(int i, double d) throws IOException {
        this.zza.zzl(i, Double.doubleToRawLongBits(d));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzg(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzl(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).doubleValue();
            i3 += 8;
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            this.zza.zzm(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    @Deprecated
    public final void zzh(int i) throws IOException {
        this.zza.zzv(i, 4);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzi(int i, int i2) throws IOException {
        this.zza.zzn(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzj(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzn(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbtm.zzF(((Integer) list.get(i4)).intValue());
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            this.zza.zzo(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzk(int i, int i2) throws IOException {
        this.zza.zzj(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzl(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzj(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            i3 += 4;
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            this.zza.zzk(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzm(int i, long j) throws IOException {
        this.zza.zzl(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzn(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzl(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            i3 += 8;
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            this.zza.zzm(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzo(int i, float f) throws IOException {
        this.zza.zzj(i, Float.floatToRawIntBits(f));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzp(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzj(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).floatValue();
            i3 += 4;
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            this.zza.zzk(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzq(int i, Object obj, zzbwi zzbwiVar) throws IOException {
        zzbtm zzbtmVar = this.zza;
        zzbtmVar.zzv(i, 3);
        zzbwiVar.zzj((zzbvu) obj, zzbtmVar.zze);
        zzbtmVar.zzv(i, 4);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzr(int i, int i2) throws IOException {
        this.zza.zzn(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzs(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzn(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbtm.zzF(((Integer) list.get(i4)).intValue());
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            this.zza.zzo(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzt(int i, long j) throws IOException {
        this.zza.zzy(i, j);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzu(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzy(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzbtm.zzN(((Long) list.get(i4)).longValue());
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            this.zza.zzz(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzv(int i, zzbvm zzbvmVar, Map map) throws IOException {
        for (Map.Entry entry : map.entrySet()) {
            this.zza.zzv(i, 2);
            this.zza.zzx(zzbvn.zzb(zzbvmVar, entry.getKey(), entry.getValue()));
            zzbvn.zze(this.zza, zzbvmVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzw(int i, Object obj, zzbwi zzbwiVar) throws IOException {
        this.zza.zzp(i, (zzbvu) obj, zzbwiVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzx(int i, Object obj) throws IOException {
        if (obj instanceof zzbsz) {
            this.zza.zzs(i, (zzbsz) obj);
        } else {
            this.zza.zzr(i, (zzbvu) obj);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzy(int i, int i2) throws IOException {
        this.zza.zzj(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu
    public final void zzz(int i, List list, boolean z) throws IOException {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zza.zzj(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zza.zzv(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            i3 += 4;
        }
        this.zza.zzx(i3);
        while (i2 < list.size()) {
            this.zza.zzk(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }
}
