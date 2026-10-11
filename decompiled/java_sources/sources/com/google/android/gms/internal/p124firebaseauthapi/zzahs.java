package com.google.android.gms.internal.p124firebaseauthapi;

/* loaded from: classes5.dex */
final class zzahs extends zzaib {
    private final int zzc;
    private final int zzd;

    public zzahs(byte[] bArr, int i, int i2) {
        super(bArr);
        zzaho.zza(i, i + i2, bArr.length);
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaib, com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public final byte zza(int i) {
        int zzb = zzb();
        if (((zzb - (i + 1)) | i) >= 0) {
            return this.zzb[this.zzc + i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + zzb);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaib, com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public final byte zzb(int i) {
        return this.zzb[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaib
    public final int zzg() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaib, com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public final int zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaib, com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public final void zza(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzb, zzg(), bArr, 0, i3);
    }
}
