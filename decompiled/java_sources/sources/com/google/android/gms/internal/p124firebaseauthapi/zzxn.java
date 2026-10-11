package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes5.dex */
public final class zzxn implements zzru {
    private static final zzig.zza zza = zzig.zza.zza;
    private final SecretKey zzb;
    private byte[] zzc;
    private byte[] zzd;

    public zzxn(byte[] bArr) throws GeneralSecurityException {
        zzxq.zza(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.zzb = secretKeySpec;
        Cipher zza2 = zza();
        zza2.init(1, secretKeySpec);
        byte[] zzb = zzra.zzb(zza2.doFinal(new byte[16]));
        this.zzc = zzb;
        this.zzd = zzra.zzb(zzb);
    }

    private static Cipher zza() throws GeneralSecurityException {
        if (zza.zza()) {
            return zzwv.zza.zza("AES/ECB/NoPadding");
        }
        throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzru
    public final byte[] zza(byte[] bArr, int i) throws GeneralSecurityException {
        byte[] zza2;
        if (i <= 16) {
            Cipher zza3 = zza();
            zza3.init(1, this.zzb);
            int max = Math.max(1, (int) Math.ceil(bArr.length / 16.0d));
            if ((max << 4) == bArr.length) {
                zza2 = zzwh.zza(bArr, (max - 1) << 4, this.zzc, 0, 16);
            } else {
                zza2 = zzwh.zza(zzra.zza(Arrays.copyOfRange(bArr, (max - 1) << 4, bArr.length)), this.zzd);
            }
            byte[] bArr2 = new byte[16];
            for (int i2 = 0; i2 < max - 1; i2++) {
                bArr2 = zza3.doFinal(zzwh.zza(bArr2, 0, bArr, i2 << 4, 16));
            }
            return Arrays.copyOf(zza3.doFinal(zzwh.zza(zza2, bArr2)), i);
        }
        throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
    }
}
