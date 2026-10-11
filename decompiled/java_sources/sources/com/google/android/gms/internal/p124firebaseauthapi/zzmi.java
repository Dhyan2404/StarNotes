package com.google.android.gms.internal.p124firebaseauthapi;

import java.math.BigInteger;

/* loaded from: classes5.dex */
final class zzmi {
    static final zzmi zza;
    BigInteger zzb;
    BigInteger zzc;
    BigInteger zzd;

    static {
        BigInteger bigInteger = BigInteger.ONE;
        zza = new zzmi(bigInteger, bigInteger, BigInteger.ZERO);
    }

    public zzmi(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.zzb = bigInteger;
        this.zzc = bigInteger2;
        this.zzd = bigInteger3;
    }

    public final boolean zza() {
        return this.zzd.equals(BigInteger.ZERO);
    }
}
