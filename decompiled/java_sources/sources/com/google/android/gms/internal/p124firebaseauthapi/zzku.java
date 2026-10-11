package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes5.dex */
final class zzku implements zzle {
    private final int zza;

    public zzku(int i) throws InvalidAlgorithmParameterException {
        if (i == 16 || i == 32) {
            this.zza = i;
        } else {
            throw new InvalidAlgorithmParameterException("Unsupported key length: " + i);
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzle
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzle
    public final int zzb() {
        return 12;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzle
    public final byte[] zzc() throws GeneralSecurityException {
        int i = this.zza;
        if (i == 16) {
            return zzln.zzi;
        }
        if (i == 32) {
            return zzln.zzj;
        }
        throw new GeneralSecurityException("Could not determine HPKE AEAD ID");
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzle
    public final byte[] zza(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws GeneralSecurityException {
        if (bArr.length == this.zza) {
            return new zzhk(bArr).zza(bArr2, bArr3, bArr4);
        }
        throw new InvalidAlgorithmParameterException("Unexpected key length: " + bArr.length);
    }
}
