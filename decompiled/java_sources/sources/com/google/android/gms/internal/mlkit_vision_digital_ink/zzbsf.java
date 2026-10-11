package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.InputStream;

/* loaded from: classes5.dex */
public abstract class zzbsf implements zzbwc {
    private static final zzbtr zza = zzbtr.zza;

    private static final zzbvu zzh(zzbvu zzbvuVar) throws zzbut {
        if (zzbvuVar == null || zzbvuVar.zzal()) {
            return zzbvuVar;
        }
        zzbut zza2 = new zzbxb(zzbvuVar).zza();
        zza2.zzh(zzbvuVar);
        throw zza2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu, java.lang.Object] */
    public final zzbvu zza(InputStream inputStream, zzbtr zzbtrVar) throws zzbut {
        zzbtf zzbtdVar;
        int i = zzbtf.zzd;
        if (inputStream == null) {
            byte[] bArr = zzbur.zzd;
            int length = bArr.length;
            zzbtdVar = zzbtf.zzH(bArr, 0, 0, false);
        } else {
            zzbtdVar = new zzbtd(inputStream, 4096, null);
        }
        ?? zzg = zzg(zzbtdVar, zzbtrVar);
        try {
            zzbtdVar.zzz(0);
            return zzg;
        } catch (zzbut e) {
            e.zzh(zzg);
            throw e;
        }
    }

    public zzbvu zzb(byte[] bArr, int i, int i2, zzbtr zzbtrVar) throws zzbut {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwc
    public final /* synthetic */ Object zzc(InputStream inputStream) throws zzbut {
        zzbvu zza2 = zza(inputStream, zza);
        zzh(zza2);
        return zza2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwc
    public final /* synthetic */ Object zzd(InputStream inputStream, zzbtr zzbtrVar) throws zzbut {
        zzbvu zza2 = zza(inputStream, zzbtrVar);
        zzh(zza2);
        return zza2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwc
    public final /* synthetic */ Object zze(byte[] bArr, zzbtr zzbtrVar) throws zzbut {
        zzbvu zzb = zzb(bArr, 0, bArr.length, zzbtrVar);
        zzh(zzb);
        return zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwc
    public final /* synthetic */ Object zzf(byte[] bArr, int i, int i2, zzbtr zzbtrVar) throws zzbut {
        zzbvu zzb = zzb(bArr, i, i2, zzbtrVar);
        zzh(zzb);
        return zzb;
    }
}
