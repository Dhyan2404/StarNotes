package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.security.SecureRandom;
import java.util.Random;

/* loaded from: classes5.dex */
final class zzagl extends Random {
    private final boolean zza = true;

    private zzagl() {
    }

    public static final SecureRandom zza() {
        ThreadLocal threadLocal;
        threadLocal = zzagm.zzd;
        return (SecureRandom) threadLocal.get();
    }

    @Override // java.util.Random
    public final int next(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Random
    public final boolean nextBoolean() {
        return zza().nextBoolean();
    }

    @Override // java.util.Random
    public final void nextBytes(byte[] bArr) {
        zza().nextBytes(bArr);
    }

    @Override // java.util.Random
    public final double nextDouble() {
        return zza().nextDouble();
    }

    @Override // java.util.Random
    public final float nextFloat() {
        return zza().nextFloat();
    }

    @Override // java.util.Random
    public final double nextGaussian() {
        return zza().nextGaussian();
    }

    @Override // java.util.Random
    public final int nextInt() {
        return zza().nextInt();
    }

    @Override // java.util.Random
    public final long nextLong() {
        return zza().nextLong();
    }

    @Override // java.util.Random
    public final void setSeed(long j) {
        if (this.zza) {
            throw new UnsupportedOperationException("Setting the seed on a thread-local Random object is not permitted");
        }
        super.setSeed(j);
    }

    public /* synthetic */ zzagl(zzagj zzagjVar) {
    }

    @Override // java.util.Random
    public final int nextInt(int i) {
        return zza().nextInt(i);
    }
}
