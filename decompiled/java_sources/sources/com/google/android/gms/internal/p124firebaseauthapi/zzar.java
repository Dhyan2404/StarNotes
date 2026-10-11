package com.google.android.gms.internal.p124firebaseauthapi;

import java.util.List;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzar extends zzaq<Object> {
    private final transient int zza;
    private final transient int zzb;
    private final /* synthetic */ zzaq zzc;

    public zzar(zzaq zzaqVar, int i, int i2) {
        this.zzc = zzaqVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzz.zza(i, this.zzb);
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaq, java.util.List
    public final /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzal
    public final int zza() {
        return this.zzc.zzb() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzal
    public final int zzb() {
        return this.zzc.zzb() + this.zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzal
    public final boolean zze() {
        return true;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzal
    @CheckForNull
    public final Object[] zzf() {
        return this.zzc.zzf();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaq
    /* renamed from: zza */
    public final zzaq<Object> subList(int i, int i2) {
        zzz.zza(i, i2, this.zzb);
        zzaq zzaqVar = this.zzc;
        int i3 = this.zza;
        return (zzaq) zzaqVar.subList(i + i3, i2 + i3);
    }
}
