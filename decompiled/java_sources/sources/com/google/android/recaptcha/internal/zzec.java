package com.google.android.recaptcha.internal;

import java.math.BigInteger;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes6.dex */
public final class zzec {

    @NotNull
    public static final zzeb zza = new zzeb(null);

    @NotNull
    private static final zzea zzb = new zzea(11, 20919936621L ^ ((long) Math.pow(2.0d, 32.0d)), (long) Math.pow(2.0d, 48.0d));

    @NotNull
    private final zzea zzc;
    private long zzd;

    public zzec(long j, long j2, @NotNull zzea zzeaVar) {
        this.zzc = zzeaVar;
        this.zzd = Math.abs(j);
    }

    public final long zza() {
        zzea zzeaVar = this.zzc;
        long longValue = (BigInteger.valueOf(zzeaVar.zzb()).multiply(BigInteger.valueOf(this.zzd)).mod(BigInteger.valueOf(zzeaVar.zza())).longValue() + 11) % this.zzc.zza();
        this.zzd = longValue;
        return longValue % 255;
    }
}
