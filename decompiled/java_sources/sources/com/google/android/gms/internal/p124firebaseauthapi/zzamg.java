package com.google.android.gms.internal.p124firebaseauthapi;

import java.io.IOException;

/* loaded from: classes5.dex */
abstract class zzamg<T, B> {
    public abstract int zza(T t);

    public abstract B zza();

    public abstract T zza(T t, T t2);

    public abstract void zza(B b, int i, int i2);

    public abstract void zza(B b, int i, long j);

    public abstract void zza(B b, int i, zzaho zzahoVar);

    public abstract void zza(B b, int i, T t);

    public abstract void zza(T t, zzanc zzancVar) throws IOException;

    public abstract boolean zza(zzale zzaleVar);

    public final boolean zza(B b, zzale zzaleVar) throws IOException {
        int zzd = zzaleVar.zzd();
        int i = zzd >>> 3;
        int i2 = zzd & 7;
        if (i2 == 0) {
            zzb(b, i, zzaleVar.zzl());
            return true;
        }
        if (i2 == 1) {
            zza((zzamg<T, B>) b, i, zzaleVar.zzk());
            return true;
        }
        if (i2 == 2) {
            zza((zzamg<T, B>) b, i, zzaleVar.zzp());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 == 5) {
                zza((zzamg<T, B>) b, i, zzaleVar.zzf());
                return true;
            }
            throw zzajk.zza();
        }
        B zza = zza();
        int i3 = 4 | (i << 3);
        while (zzaleVar.zzc() != Integer.MAX_VALUE && zza((zzamg<T, B>) zza, zzaleVar)) {
        }
        if (i3 == zzaleVar.zzd()) {
            zza((zzamg<T, B>) b, i, (int) zze(zza));
            return true;
        }
        throw zzajk.zzb();
    }

    public abstract int zzb(T t);

    public abstract void zzb(B b, int i, long j);

    public abstract void zzb(T t, zzanc zzancVar) throws IOException;

    public abstract void zzb(Object obj, B b);

    public abstract B zzc(Object obj);

    public abstract void zzc(Object obj, T t);

    public abstract T zzd(Object obj);

    public abstract T zze(B b);

    public abstract void zzf(Object obj);
}
