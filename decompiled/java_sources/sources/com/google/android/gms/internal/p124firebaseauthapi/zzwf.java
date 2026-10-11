package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzig;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes5.dex */
public final class zzwf implements zzbh {
    private static final zzig.zza zza = zzig.zza.zzb;
    private final SecretKey zzb;
    private final byte[] zzc;

    private zzwf(byte[] bArr, zzxv zzxvVar) throws GeneralSecurityException {
        if (!zza.zza()) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        zzxq.zza(bArr.length);
        this.zzb = new SecretKeySpec(bArr, "AES");
        this.zzc = zzxvVar.zzb();
    }

    public static zzbh zza(zzds zzdsVar) throws GeneralSecurityException {
        if (zzdsVar.zzc().zzb() == 12) {
            if (zzdsVar.zzc().zzd() == 16) {
                return new zzwf(zzdsVar.zze().zza(zzbr.zza()), zzdsVar.zzd());
            }
            throw new GeneralSecurityException("Expected tag Size 16, got " + zzdsVar.zzc().zzd());
        }
        throw new GeneralSecurityException("Expected IV Size 12, got " + zzdsVar.zzc().zzb());
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbh
    public final byte[] zzb(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr == null) {
            throw new NullPointerException("plaintext is null");
        }
        byte[] zza2 = zzow.zza(12);
        AlgorithmParameterSpec zza3 = zzhk.zza(zza2);
        Cipher zza4 = zzhk.zza();
        zza4.init(1, this.zzb, zza3);
        if (bArr2 != null && bArr2.length != 0) {
            zza4.updateAAD(bArr2);
        }
        int outputSize = zza4.getOutputSize(bArr.length);
        byte[] bArr3 = this.zzc;
        if (outputSize > (Integer.MAX_VALUE - bArr3.length) - 12) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] copyOf = Arrays.copyOf(bArr3, bArr3.length + 12 + outputSize);
        System.arraycopy(zza2, 0, copyOf, this.zzc.length, 12);
        if (zza4.doFinal(bArr, 0, bArr.length, copyOf, this.zzc.length + 12) == outputSize) {
            return copyOf;
        }
        throw new GeneralSecurityException("not enough data written");
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbh
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr != null) {
            int length = bArr.length;
            byte[] bArr3 = this.zzc;
            if (length >= bArr3.length + 12 + 16) {
                if (zzph.zza(bArr3, bArr)) {
                    byte[] bArr4 = new byte[12];
                    System.arraycopy(bArr, this.zzc.length, bArr4, 0, 12);
                    AlgorithmParameterSpec zza2 = zzhk.zza(bArr4);
                    Cipher zza3 = zzhk.zza();
                    zza3.init(2, this.zzb, zza2);
                    if (bArr2 != null && bArr2.length != 0) {
                        zza3.updateAAD(bArr2);
                    }
                    byte[] bArr5 = this.zzc;
                    return zza3.doFinal(bArr, bArr5.length + 12, (bArr.length - bArr5.length) - 12);
                }
                throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
            }
            throw new GeneralSecurityException("ciphertext too short");
        }
        throw new NullPointerException("ciphertext is null");
    }
}
