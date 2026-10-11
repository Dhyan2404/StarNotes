package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public abstract class zzajm extends zzajg implements List, RandomAccess {
    private static final zzaly zza = new zzajj(zzall.zza, 0);

    public static zzaji zze() {
        return new zzaji(4);
    }

    public static zzaji zzf(int i) {
        zzaij.zza(i, "expectedSize");
        return new zzaji(i);
    }

    public static zzajm zzg(Object[] objArr) {
        return zzh(objArr, objArr.length);
    }

    public static zzajm zzh(Object[] objArr, int i) {
        return i == 0 ? zzall.zza : new zzall(objArr, i);
    }

    public static zzajm zzi(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return zzo((Collection) iterable);
        }
        Iterator it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return zzall.zza;
        }
        Object next = it2.next();
        if (!it2.hasNext()) {
            return zzr(next);
        }
        zzaji zzajiVar = new zzaji(4);
        zzajiVar.zze(next);
        zzajiVar.zzg(it2);
        return zzajiVar.zzh();
    }

    public static zzajm zzo(Collection collection) {
        if (!(collection instanceof zzajg)) {
            Object[] array = collection.toArray();
            int length = array.length;
            zzalj.zzb(array, length);
            return zzh(array, length);
        }
        zzajm zzk = ((zzajg) collection).zzk();
        if (!zzk.zzm()) {
            return zzk;
        }
        Object[] array2 = zzk.toArray();
        return zzh(array2, array2.length);
    }

    public static zzajm zzp(Object[] objArr) {
        Object[] objArr2 = (Object[]) objArr.clone();
        int length = objArr2.length;
        zzalj.zzb(objArr2, length);
        return zzh(objArr2, length);
    }

    public static zzajm zzq() {
        return zzall.zza;
    }

    public static zzajm zzr(Object obj) {
        Object[] objArr = {obj};
        zzalj.zzb(objArr, 1);
        return zzh(objArr, 1);
    }

    public static zzajm zzs(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        Object[] objArr = {obj, obj2, obj3, obj4, obj5, obj6};
        zzalj.zzb(objArr, 6);
        return zzh(objArr, 6);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@CheckForNull Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i = 0; i < size; i++) {
                        if (zzaga.zza(get(i), list.get(i))) {
                        }
                    }
                    return true;
                }
                Iterator it2 = iterator();
                Iterator it3 = list.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (!it3.hasNext() || !zzaga.zza(it2.next(), it3.next())) {
                            break;
                        }
                    } else if (!it3.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    public int indexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    public int lastIndexOf(@CheckForNull Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    @Deprecated
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    public zzajm zza() {
        return size() <= 1 ? this : new zzajk(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public int zzb(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2] = get(i2);
        }
        return size;
    }

    @Override // java.util.List
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public zzajm subList(int i, int i2) {
        zzagg.zzi(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? zzall.zza : new zzajl(this, i, i3);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    @Deprecated
    public final zzajm zzk() {
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    /* renamed from: zzl */
    public final zzalx iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: zzt, reason: merged with bridge method [inline-methods] */
    public final zzaly listIterator(int i) {
        zzagg.zzb(i, size(), FirebaseAnalytics.Param.INDEX);
        return isEmpty() ? zza : new zzajj(this, i);
    }
}
