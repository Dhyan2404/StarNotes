package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public abstract class zzajg<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] zzfa = new Object[0];

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(@CheckForNull Object obj);

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(zzfa);
    }

    public int zzb(Object[] objArr, int i) {
        zzalx it2 = iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            objArr[i2] = it2.next();
            i2++;
        }
        return i2;
    }

    int zzc() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzj() {
        throw new UnsupportedOperationException();
    }

    public zzajm zzk() {
        return isEmpty() ? zzajm.zzq() : zzajm.zzg(toArray(zzfa));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: zzl, reason: merged with bridge method [inline-methods] */
    public abstract zzalx iterator();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean zzm();

    @CheckForNull
    public Object[] zzn() {
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int size = size();
        int length = objArr.length;
        if (length < size) {
            Object[] zzn = zzn();
            if (zzn == null) {
                objArr = zzalk.zza(objArr, size);
            } else {
                return Arrays.copyOfRange(zzn, zzj(), zzc(), objArr.getClass());
            }
        } else if (length > size) {
            objArr[size] = null;
        }
        zzb(objArr, 0);
        return objArr;
    }
}
