package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.security.MessageDigest;
import java.util.Arrays;

/* loaded from: classes5.dex */
final class zzaos extends zzaoi {
    private final MessageDigest zza;
    private final int zzb;
    private boolean zzc;

    public /* synthetic */ zzaos(MessageDigest messageDigest, int i, zzaor zzaorVar) {
        this.zza = messageDigest;
        this.zzb = i;
    }

    private final void zzf() {
        zzagg.zzk(!this.zzc, "Cannot re-use a Hasher after calling hash() on it");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoi
    public final void zzc(byte[] bArr, int i, int i2) {
        zzf();
        this.zza.update(bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoo
    public final zzaom zze() {
        zzf();
        this.zzc = true;
        return this.zzb == this.zza.getDigestLength() ? zzaom.zze(this.zza.digest()) : zzaom.zze(Arrays.copyOf(this.zza.digest(), this.zzb));
    }
}
