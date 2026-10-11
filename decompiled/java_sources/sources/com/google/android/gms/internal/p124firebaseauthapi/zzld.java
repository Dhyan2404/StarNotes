package com.google.android.gms.internal.p124firebaseauthapi;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes5.dex */
public final class zzld {
    private static final byte[] zza = new byte[0];
    private final zzle zzb;
    private final BigInteger zzc;
    private final byte[] zzd;
    private final byte[] zze;
    private final byte[] zzf;

    @GuardedBy("this")
    private BigInteger zzg = BigInteger.ZERO;

    private zzld(byte[] bArr, byte[] bArr2, byte[] bArr3, BigInteger bigInteger, zzle zzleVar) {
        this.zzf = bArr;
        this.zzd = bArr2;
        this.zze = bArr3;
        this.zzc = bigInteger;
        this.zzb = zzleVar;
    }

    public static zzld zza(byte[] bArr, zzlk zzlkVar, zzlh zzlhVar, zzli zzliVar, zzle zzleVar, byte[] bArr2) throws GeneralSecurityException {
        byte[] zza2 = zzlhVar.zza(bArr, zzlkVar);
        byte[] bArr3 = zzln.zza;
        byte[] zza3 = zzln.zza(zzlhVar.zza(), zzliVar.zzb(), zzleVar.zzc());
        byte[] bArr4 = zzln.zzl;
        byte[] bArr5 = zza;
        byte[] zza4 = zzwh.zza(bArr3, zzliVar.zza(bArr4, bArr5, "psk_id_hash", zza3), zzliVar.zza(bArr4, bArr2, "info_hash", zza3));
        byte[] zza5 = zzliVar.zza(zza2, bArr5, "secret", zza3);
        byte[] zza6 = zzliVar.zza(zza5, zza4, "key", zza3, zzleVar.zza());
        byte[] zza7 = zzliVar.zza(zza5, zza4, "base_nonce", zza3, zzleVar.zzb());
        zzleVar.zzb();
        BigInteger bigInteger = BigInteger.ONE;
        return new zzld(bArr, zza6, zza7, bigInteger.shiftLeft(96).subtract(bigInteger), zzleVar);
    }

    private final synchronized byte[] zza() throws GeneralSecurityException {
        byte[] zza2;
        zza2 = zzwh.zza(this.zze, zzmd.zza(this.zzg, this.zzb.zzb()));
        if (this.zzg.compareTo(this.zzc) < 0) {
            this.zzg = this.zzg.add(BigInteger.ONE);
        } else {
            throw new GeneralSecurityException("message limit reached");
        }
        return zza2;
    }

    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return this.zzb.zza(this.zzd, zza(), bArr, bArr2);
    }
}
