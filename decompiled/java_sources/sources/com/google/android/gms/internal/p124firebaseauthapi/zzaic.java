package com.google.android.gms.internal.p124firebaseauthapi;

import java.io.IOException;

/* loaded from: classes5.dex */
public abstract class zzaic {
    private static volatile int zze = 100;
    int zza;
    int zzb;
    int zzc;
    zzail zzd;
    private boolean zzf;

    public static int zza(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public abstract double zza() throws IOException;

    public abstract float zzb() throws IOException;

    public abstract int zzb(int i) throws zzajk;

    public abstract int zzc();

    public abstract void zzc(int i) throws zzajk;

    public abstract int zzd() throws IOException;

    public abstract void zzd(int i);

    public abstract int zze() throws IOException;

    public abstract boolean zze(int i) throws IOException;

    public abstract int zzf() throws IOException;

    public abstract int zzg() throws IOException;

    public abstract int zzh() throws IOException;

    public abstract int zzi() throws IOException;

    public abstract int zzj() throws IOException;

    public abstract long zzk() throws IOException;

    public abstract long zzl() throws IOException;

    public abstract long zzm() throws IOException;

    public abstract long zzn() throws IOException;

    public abstract long zzo() throws IOException;

    public abstract long zzp() throws IOException;

    public abstract zzaho zzq() throws IOException;

    public abstract String zzr() throws IOException;

    public abstract String zzs() throws IOException;

    public abstract boolean zzt() throws IOException;

    public abstract boolean zzu() throws IOException;

    private zzaic() {
        this.zzb = zze;
        this.zzc = Integer.MAX_VALUE;
        this.zzf = false;
    }

    public static long zza(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static zzaic zza(byte[] bArr, int i, int i2, boolean z) {
        zzaif zzaifVar = new zzaif(bArr, i, i2, z);
        try {
            zzaifVar.zzb(i2);
            return zzaifVar;
        } catch (zzajk e) {
            throw new IllegalArgumentException(e);
        }
    }
}
