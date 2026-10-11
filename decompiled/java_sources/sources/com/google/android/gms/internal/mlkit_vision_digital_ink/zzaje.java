package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class zzaje extends zzajf {
    Object[] zza;
    int zzb;
    boolean zzc;

    public zzaje(int i) {
        zzaij.zza(i, "initialCapacity");
        this.zza = new Object[i];
        this.zzb = 0;
    }

    private final void zze(int i) {
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (length < i) {
            this.zza = Arrays.copyOf(objArr, zzajf.zzd(length, i));
            this.zzc = false;
        } else if (this.zzc) {
            this.zza = (Object[]) objArr.clone();
            this.zzc = false;
        }
    }

    public final zzaje zza(Object obj) {
        obj.getClass();
        zze(this.zzb + 1);
        Object[] objArr = this.zza;
        int i = this.zzb;
        this.zzb = i + 1;
        objArr[i] = obj;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajf
    public /* bridge */ /* synthetic */ zzajf zzb(Object obj) {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzajf zzc(Iterable iterable) {
        if (iterable instanceof Collection) {
            zze(this.zzb + iterable.size());
            if (iterable instanceof zzajg) {
                this.zzb = ((zzajg) iterable).zzb(this.zza, this.zzb);
                return this;
            }
        }
        zzaly listIterator = ((zzajm) iterable).listIterator(0);
        while (listIterator.hasNext()) {
            zzb(listIterator.next());
        }
        return this;
    }
}
