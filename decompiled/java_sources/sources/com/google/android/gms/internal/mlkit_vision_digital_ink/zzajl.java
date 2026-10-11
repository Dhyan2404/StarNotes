package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzajl extends zzajm {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzajm zzc;

    public zzajl(zzajm zzajmVar, int i, int i2) {
        this.zzc = zzajmVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzagg.zza(i, this.zzb, FirebaseAnalytics.Param.INDEX);
        return this.zzc.get(i + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final int zzc() {
        return this.zzc.zzj() + this.zza + this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm
    /* renamed from: zzd */
    public final zzajm subList(int i, int i2) {
        zzagg.zzi(i, i2, this.zzb);
        zzajm zzajmVar = this.zzc;
        int i3 = this.zza;
        return zzajmVar.subList(i + i3, i2 + i3);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final int zzj() {
        return this.zzc.zzj() + this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final boolean zzm() {
        return true;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    @CheckForNull
    public final Object[] zzn() {
        return this.zzc.zzn();
    }
}
