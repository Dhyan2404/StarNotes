package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzajk extends zzajm {
    private final transient zzajm zza;

    public zzajk(zzajm zzajmVar) {
        this.zza = zzajmVar;
    }

    private final int zzu(int i) {
        return (this.zza.size() - 1) - i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm, com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.zza.contains(obj);
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzagg.zza(i, this.zza.size(), FirebaseAnalytics.Param.INDEX);
        return this.zza.get(zzu(i));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm, java.util.List
    public final int indexOf(@CheckForNull Object obj) {
        int lastIndexOf = this.zza.lastIndexOf(obj);
        if (lastIndexOf >= 0) {
            return zzu(lastIndexOf);
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm, java.util.List
    public final int lastIndexOf(@CheckForNull Object obj) {
        int indexOf = this.zza.indexOf(obj);
        if (indexOf >= 0) {
            return zzu(indexOf);
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm
    public final zzajm zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajm
    /* renamed from: zzd */
    public final zzajm subList(int i, int i2) {
        zzagg.zzi(i, i2, this.zza.size());
        zzajm zzajmVar = this.zza;
        return zzajmVar.subList(zzajmVar.size() - i2, this.zza.size() - i).zza();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final boolean zzm() {
        return this.zza.zzm();
    }
}
