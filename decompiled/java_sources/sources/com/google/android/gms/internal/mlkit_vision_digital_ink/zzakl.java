package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class zzakl {
    public static int zza(Iterator it2, zzagh zzaghVar) {
        zzagg.zzc(zzaghVar, "predicate");
        int i = 0;
        while (it2.hasNext()) {
            if (zzaghVar.zza(it2.next())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static void zzb(Iterator it2) {
        it2.getClass();
        while (it2.hasNext()) {
            it2.next();
            it2.remove();
        }
    }

    public static boolean zzc(Collection collection, Iterator it2) {
        it2.getClass();
        boolean z = false;
        while (it2.hasNext()) {
            z |= collection.add(it2.next());
        }
        return z;
    }
}
