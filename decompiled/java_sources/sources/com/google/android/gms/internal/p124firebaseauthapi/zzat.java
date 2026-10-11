package com.google.android.gms.internal.p124firebaseauthapi;

import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzat<K, V> {
    zzaw zza;
    private Object[] zzb;
    private int zzc;
    private boolean zzd;

    public zzat() {
        this(4);
    }

    public final zzat<K, V> zza(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        if (iterable instanceof Collection) {
            zza(this.zzc + ((Collection) iterable).size());
        }
        for (Map.Entry<? extends K, ? extends V> entry : iterable) {
            K key = entry.getKey();
            V value = entry.getValue();
            zza(this.zzc + 1);
            zzaj.zza(key, value);
            Object[] objArr = this.zzb;
            int i = this.zzc;
            objArr[i * 2] = key;
            objArr[(i * 2) + 1] = value;
            this.zzc = i + 1;
        }
        return this;
    }

    public zzat(int i) {
        this.zzb = new Object[i * 2];
        this.zzc = 0;
        this.zzd = false;
    }

    public final zzau<K, V> zza() {
        zzaw zzawVar = this.zza;
        if (zzawVar == null) {
            int i = this.zzc;
            Object[] objArr = this.zzb;
            this.zzd = true;
            zzax zza = zzax.zza(i, objArr, this);
            zzaw zzawVar2 = this.zza;
            if (zzawVar2 == null) {
                return zza;
            }
            throw zzawVar2.zza();
        }
        throw zzawVar.zza();
    }

    private final void zza(int i) {
        int i2 = i << 1;
        Object[] objArr = this.zzb;
        if (i2 > objArr.length) {
            this.zzb = Arrays.copyOf(objArr, zzan.zza(objArr.length, i2));
            this.zzd = false;
        }
    }
}
