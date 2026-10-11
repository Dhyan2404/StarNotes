package com.google.android.gms.internal.p124firebaseauthapi;

import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzay<E> extends zzaq<E> {
    static final zzaq<Object> zza = new zzay(new Object[0], 0);
    private final transient Object[] zzb;
    private final transient int zzc;

    public zzay(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzz.zza(i, this.zzc);
        E e = (E) this.zzb[i];
        Objects.requireNonNull(e);
        return e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaq, com.google.android.gms.internal.p124firebaseauthapi.zzal
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, i, this.zzc);
        return i + this.zzc;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzal
    public final int zzb() {
        return 0;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzal
    public final boolean zze() {
        return false;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzal
    public final Object[] zzf() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzal
    public final int zza() {
        return this.zzc;
    }
}
