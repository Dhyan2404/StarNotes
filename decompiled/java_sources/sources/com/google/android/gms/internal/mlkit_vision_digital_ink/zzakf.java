package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* loaded from: classes5.dex */
public final class zzakf {
    /* JADX WARN: Multi-variable type inference failed */
    public static Object zza(Iterable iterable) {
        if (iterable.isEmpty()) {
            throw new NoSuchElementException();
        }
        return iterable.get(iterable.size() - 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean zzb(Iterable iterable, zzagh zzaghVar) {
        if ((iterable instanceof RandomAccess) && (iterable instanceof List)) {
            zzaghVar.getClass();
            return zzd(iterable, zzaghVar);
        }
        Iterator it2 = iterable.iterator();
        zzaghVar.getClass();
        boolean z = false;
        while (it2.hasNext()) {
            if (zzaghVar.zza(it2.next())) {
                it2.remove();
                z = true;
            }
        }
        return z;
    }

    private static void zzc(List list, zzagh zzaghVar, int i, int i2) {
        int size = list.size();
        while (true) {
            size--;
            if (size <= i2) {
                break;
            } else if (zzaghVar.zza(list.get(size))) {
                list.remove(size);
            }
        }
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            } else {
                list.remove(i2);
            }
        }
    }

    private static boolean zzd(List list, zzagh zzaghVar) {
        int i = 0;
        int i2 = 0;
        while (i < list.size()) {
            Object obj = list.get(i);
            if (!zzaghVar.zza(obj)) {
                if (i > i2) {
                    try {
                        list.set(i2, obj);
                    } catch (IllegalArgumentException unused) {
                        zzc(list, zzaghVar, i2, i);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        zzc(list, zzaghVar, i2, i);
                        return true;
                    }
                }
                i2++;
            }
            i++;
        }
        list.subList(i2, list.size()).clear();
        return i != i2;
    }
}
