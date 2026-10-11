package com.google.android.gms.internal.p124firebaseauthapi;

import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
abstract class zzi<T> implements Iterator<T> {
    private int zza = zzh.zzb;

    @CheckForNull
    private T zzb;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.zza;
        int i2 = zzh.zzd;
        if (!(i != i2)) {
            throw new IllegalStateException();
        }
        int i3 = i - 1;
        if (i3 == 0) {
            return true;
        }
        if (i3 != 2) {
            this.zza = i2;
            this.zzb = zza();
            if (this.zza != zzh.zzc) {
                this.zza = zzh.zza;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.zza = zzh.zzb;
        T t = this.zzb;
        this.zzb = null;
        return t;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @CheckForNull
    public abstract T zza();

    @CheckForNull
    public final T zzb() {
        this.zza = zzh.zzc;
        return null;
    }
}
