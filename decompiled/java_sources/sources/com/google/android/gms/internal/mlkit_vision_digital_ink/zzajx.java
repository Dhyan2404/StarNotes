package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Arrays;
import java.util.Set;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public abstract class zzajx extends zzajy implements zzale {

    @CheckForNull
    private transient zzajm zza;

    @CheckForNull
    private transient zzaka zzb;

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@CheckForNull Object obj) {
        return zza(obj) > 0;
    }

    @Override // java.util.Collection
    public final boolean equals(@CheckForNull Object obj) {
        return zzali.zza(this, obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return zzalu.zza(zzh());
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return zzh().toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final int zzb(Object[] objArr, int i) {
        zzalx it2 = zzh().iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            zzald zzaldVar = (zzald) it2.next();
            Arrays.fill(objArr, i2, zzaldVar.zza() + i2, zzaldVar.zzb());
            i2 += zzaldVar.zza();
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    @Deprecated
    public final int zzd(Object obj, int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    @Deprecated
    public final int zze(@CheckForNull Object obj, int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    @Deprecated
    public final int zzf(Object obj, int i) {
        throw null;
    }

    public /* bridge */ /* synthetic */ Set zzg() {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    @Deprecated
    public final boolean zzi(Object obj, int i, int i2) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public final zzajm zzk() {
        zzajm zzajmVar = this.zza;
        if (zzajmVar != null) {
            return zzajmVar;
        }
        zzajm zzk = super.zzk();
        this.zza = zzk;
        return zzk;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: zzl */
    public final zzalx iterator() {
        return new zzajv(this, zzh().iterator());
    }

    public abstract zzaka zzo();

    public abstract zzald zzp(int i);

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzale
    /* renamed from: zzq, reason: merged with bridge method [inline-methods] */
    public final zzaka zzh() {
        zzaka zzakaVar = this.zzb;
        if (zzakaVar == null) {
            zzakaVar = isEmpty() ? zzalr.zza : new zzajw(this, null);
            this.zzb = zzakaVar;
        }
        return zzakaVar;
    }
}
