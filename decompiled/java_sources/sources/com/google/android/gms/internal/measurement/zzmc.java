package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzmc implements Iterator<Map.Entry<Object, Object>> {
    private int zza;
    private boolean zzb;
    private Iterator<Map.Entry<Object, Object>> zzc;
    private final /* synthetic */ zzlv zzd;

    private final Iterator<Map.Entry<Object, Object>> zza() {
        Map map;
        if (this.zzc == null) {
            map = this.zzd.zzc;
            this.zzc = map.entrySet().iterator();
        }
        return this.zzc;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i;
        Map map;
        int i2 = this.zza + 1;
        i = this.zzd.zzb;
        if (i2 >= i) {
            map = this.zzd.zzc;
            if (map.isEmpty() || !zza().hasNext()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Map.Entry<Object, Object> next() {
        int i;
        Object[] objArr;
        this.zzb = true;
        int i2 = this.zza + 1;
        this.zza = i2;
        i = this.zzd.zzb;
        if (i2 >= i) {
            return zza().next();
        }
        objArr = this.zzd.zza;
        return (zzlz) objArr[this.zza];
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        if (!this.zzb) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzb = false;
        this.zzd.zzg();
        int i2 = this.zza;
        i = this.zzd.zzb;
        if (i2 >= i) {
            zza().remove();
            return;
        }
        zzlv zzlvVar = this.zzd;
        int i3 = this.zza;
        this.zza = i3 - 1;
        zzlvVar.zzb(i3);
    }

    private zzmc(zzlv zzlvVar) {
        this.zzd = zzlvVar;
        this.zza = -1;
    }
}
