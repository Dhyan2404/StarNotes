package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes5.dex */
final class zzany extends AbstractMap {
    private static final Comparator zza = new zzanv();
    private final Object[] zzb;
    private final int[] zzc;
    private final Set zzd = new zzanx(this, -1);
    private Integer zze = null;
    private String zzf = null;

    public zzany(List list) {
        Iterator it2 = list.iterator();
        if (it2.hasNext()) {
            zzanu.zza((zzanu) it2.next());
            throw null;
        }
        int size = list.size();
        Object[] objArr = new Object[size];
        int[] iArr = new int[1];
        Iterator it3 = list.iterator();
        if (it3.hasNext()) {
            zzanu.zza((zzanu) it3.next());
            throw null;
        }
        iArr[0] = 0;
        if (size > 16 && size * 9 > 0) {
            objArr = Arrays.copyOf(objArr, 0);
        }
        this.zzb = objArr;
        this.zzc = iArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return this.zzd;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        if (this.zze == null) {
            this.zze = Integer.valueOf(super.hashCode());
        }
        return this.zze.intValue();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        if (this.zzf == null) {
            this.zzf = super.toString();
        }
        return this.zzf;
    }
}
