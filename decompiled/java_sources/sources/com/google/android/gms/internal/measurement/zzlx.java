package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzlx implements Iterator<Map.Entry<Object, Object>> {
    private int zza;
    private Iterator<Map.Entry<Object, Object>> zzb;
    private final /* synthetic */ zzlv zzc;

    private final Iterator<Map.Entry<Object, Object>> zza() {
        Map map;
        if (this.zzb == null) {
            map = this.zzc.zzf;
            this.zzb = map.entrySet().iterator();
        }
        return this.zzb;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i;
        int i2 = this.zza;
        if (i2 > 0) {
            i = this.zzc.zzb;
            if (i2 <= i) {
                return true;
            }
        }
        return zza().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Map.Entry<Object, Object> next() {
        Object[] objArr;
        if (zza().hasNext()) {
            return zza().next();
        }
        objArr = this.zzc.zza;
        int i = this.zza - 1;
        this.zza = i;
        return (zzlz) objArr[i];
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    private zzlx(zzlv zzlvVar) {
        int i;
        this.zzc = zzlvVar;
        i = zzlvVar.zzb;
        this.zza = i;
    }
}
