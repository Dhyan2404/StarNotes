package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzjv;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;

/* loaded from: classes5.dex */
public final class zzln {
    private static final byte[] zzn;
    private static final byte[] zzo;
    private static final byte[] zzp;
    public static final byte[] zza = zza(1, 0);
    private static final byte[] zzm = zza(1, 2);
    public static final byte[] zzb = zza(2, 32);
    public static final byte[] zzc = zza(2, 16);
    public static final byte[] zzd = zza(2, 17);
    public static final byte[] zze = zza(2, 18);
    public static final byte[] zzf = zza(2, 1);
    public static final byte[] zzg = zza(2, 2);
    public static final byte[] zzh = zza(2, 3);
    public static final byte[] zzi = zza(2, 1);
    public static final byte[] zzj = zza(2, 2);
    public static final byte[] zzk = zza(2, 3);
    public static final byte[] zzl = new byte[0];

    static {
        Charset charset = zzph.zza;
        zzn = "KEM".getBytes(charset);
        zzo = "HPKE".getBytes(charset);
        zzp = "HPKE-v1".getBytes(charset);
    }

    public static int zza(zzjv.zzd zzdVar) throws GeneralSecurityException {
        if (zzdVar == zzjv.zzd.zzd || zzdVar == zzjv.zzd.zza) {
            return 32;
        }
        if (zzdVar == zzjv.zzd.zzb) {
            return 48;
        }
        if (zzdVar == zzjv.zzd.zzc) {
            return 66;
        }
        throw new GeneralSecurityException("Unrecognized HPKE KEM identifier");
    }

    public static int zzb(zzjv.zzd zzdVar) throws GeneralSecurityException {
        if (zzdVar == zzjv.zzd.zzd) {
            return 32;
        }
        if (zzdVar == zzjv.zzd.zza) {
            return 65;
        }
        if (zzdVar == zzjv.zzd.zzb) {
            return 97;
        }
        if (zzdVar == zzjv.zzd.zzc) {
            return 133;
        }
        throw new GeneralSecurityException("Unrecognized HPKE KEM identifier");
    }

    public static zzwq zzc(zzjv.zzd zzdVar) throws GeneralSecurityException {
        if (zzdVar == zzjv.zzd.zza) {
            return zzwq.NIST_P256;
        }
        if (zzdVar == zzjv.zzd.zzb) {
            return zzwq.NIST_P384;
        }
        if (zzdVar == zzjv.zzd.zzc) {
            return zzwq.NIST_P521;
        }
        throw new GeneralSecurityException("Unrecognized NIST HPKE KEM identifier");
    }

    public static byte[] zza(byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        return zzwh.zza(zzo, bArr, bArr2, bArr3);
    }

    private static byte[] zza(int i, int i2) {
        if (i > 4 || i < 0) {
            throw new IllegalArgumentException("capacity must be between 0 and 4");
        }
        if (i2 >= 0 && (i >= 4 || i2 < (1 << (i << 3)))) {
            byte[] bArr = new byte[i];
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = (byte) (i2 >> (((i - i3) - 1) * 8));
            }
            return bArr;
        }
        throw new IllegalArgumentException("value too large");
    }

    public static byte[] zza(byte[] bArr) throws GeneralSecurityException {
        return zzwh.zza(zzn, bArr);
    }

    public static byte[] zza(String str, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return zzwh.zza(zzp, bArr2, str.getBytes(zzph.zza), bArr);
    }

    public static byte[] zza(String str, byte[] bArr, byte[] bArr2, int i) throws GeneralSecurityException {
        return zzwh.zza(zza(2, i), zzp, bArr2, str.getBytes(zzph.zza), bArr);
    }
}
