package com.google.android.gms.internal.p124firebaseauthapi;

import java.util.Arrays;

/* loaded from: classes5.dex */
class zzao<E> extends zzan<E> {
    Object[] zza;
    int zzb;
    boolean zzc;

    public zzao(int i) {
        zzaj.zza(4, "initialCapacity");
        this.zza = new Object[4];
        this.zzb = 0;
    }

    public zzao<E> zza(E e) {
        zzz.zza(e);
        int i = this.zzb + 1;
        Object[] objArr = this.zza;
        if (objArr.length < i) {
            this.zza = Arrays.copyOf(objArr, zzan.zza(objArr.length, i));
            this.zzc = false;
        } else if (this.zzc) {
            this.zza = (Object[]) objArr.clone();
            this.zzc = false;
        }
        Object[] objArr2 = this.zza;
        int i2 = this.zzb;
        this.zzb = i2 + 1;
        objArr2[i2] = e;
        return this;
    }
}
