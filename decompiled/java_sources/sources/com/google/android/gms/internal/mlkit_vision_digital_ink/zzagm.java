package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.security.SecureRandom;
import java.util.Random;

/* loaded from: classes5.dex */
public final class zzagm {
    private static final Random zza = new zzagk(null);
    private static final SecureRandom zzb = zzd();
    private static final Random zzc = new zzagl(null);
    private static final ThreadLocal zzd = new zzagj();

    public static /* synthetic */ SecureRandom zzb() {
        return zzd();
    }

    public static SecureRandom zzc() {
        return zzb;
    }

    public static SecureRandom zzd() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }
}
