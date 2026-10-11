package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public final class zzakb extends zzajr {
    public final zzakb zza(Object obj, Object... objArr) {
        List asList = Arrays.asList(objArr);
        Collection collection = (Collection) this.zza.get(obj);
        if (collection != null) {
            for (Object obj2 : asList) {
                zzaij.zzb(obj, obj2);
                collection.add(obj2);
            }
        } else {
            Iterator it2 = asList.iterator();
            if (it2.hasNext()) {
                zzaix zzaixVar = new zzaix();
                while (it2.hasNext()) {
                    Object next = it2.next();
                    zzaij.zzb(obj, next);
                    zzaixVar.add(next);
                }
                this.zza.put(obj, zzaixVar);
            }
        }
        return this;
    }

    public final zzakc zzb() {
        Set<Map.Entry> entrySet = this.zza.entrySet();
        if (entrySet.isEmpty()) {
            return zzaiz.zza;
        }
        zzajo zzajoVar = new zzajo(entrySet.size());
        int i = 0;
        for (Map.Entry entry : entrySet) {
            Object key = entry.getKey();
            zzaka zzg = zzaka.zzg((Collection) entry.getValue());
            if (!zzg.isEmpty()) {
                zzajoVar.zzb(key, zzg);
                i += zzg.size();
            }
        }
        return new zzakc(zzajoVar.zze(), i, null);
    }
}
