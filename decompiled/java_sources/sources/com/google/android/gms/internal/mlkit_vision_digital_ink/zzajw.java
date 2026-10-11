package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzajw extends zzake {
    final /* synthetic */ zzajx zza;

    public /* synthetic */ zzajw(zzajx zzajxVar, zzajv zzajvVar) {
        this.zza = zzajxVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        if (obj instanceof zzald) {
            zzald zzaldVar = (zzald) obj;
            if (zzaldVar.zza() > 0 && this.zza.zza(zzaldVar.zzb()) == zzaldVar.zza()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaka, java.util.Collection, java.util.Set
    public final int hashCode() {
        return zzalu.zza(this.zza.zzh());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.zzo().size();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzake
    public final /* synthetic */ Object zza(int i) {
        return this.zza.zzp(i);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final boolean zzm() {
        return true;
    }
}
