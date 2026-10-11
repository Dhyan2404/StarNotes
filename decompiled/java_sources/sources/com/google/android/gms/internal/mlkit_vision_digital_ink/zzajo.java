package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzajo {
    Object[] zza;
    int zzb;
    zzajn zzc;

    public zzajo() {
        this(4);
    }

    private final zzajp zzf(boolean z) {
        zzajn zzajnVar;
        zzajn zzajnVar2;
        if (z && (zzajnVar2 = this.zzc) != null) {
            throw zzajnVar2.zza();
        }
        zzalq zzm = zzalq.zzm(this.zzb, this.zza, this);
        if (!z || (zzajnVar = this.zzc) == null) {
            return zzm;
        }
        throw zzajnVar.zza();
    }

    private final void zzg(int i) {
        Object[] objArr = this.zza;
        int length = objArr.length;
        int i2 = i + i;
        if (i2 > length) {
            this.zza = Arrays.copyOf(objArr, zzajf.zzd(length, i2));
        }
    }

    public final zzajo zza(Map.Entry entry) {
        zzb(entry.getKey(), entry.getValue());
        return this;
    }

    public final zzajo zzb(Object obj, Object obj2) {
        zzg(this.zzb + 1);
        zzaij.zzb(obj, obj2);
        Object[] objArr = this.zza;
        int i = this.zzb;
        int i2 = i + i;
        objArr[i2] = obj;
        objArr[i2 + 1] = obj2;
        this.zzb = i + 1;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzajo zzc(Iterable iterable) {
        if (iterable instanceof Collection) {
            zzg(this.zzb + iterable.size());
        }
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            zza((Map.Entry) it2.next());
        }
        return this;
    }

    public final zzajp zzd() {
        return zzf(false);
    }

    public final zzajp zze() {
        return zzf(true);
    }

    public zzajo(int i) {
        this.zza = new Object[i + i];
        this.zzb = 0;
    }
}
