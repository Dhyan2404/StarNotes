package org.apache.commons.collections4.iterators;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes11.dex */
public class PermutationIterator<E> implements Iterator<List<E>> {

    /* renamed from: e */
    public final int[] f105089e;

    /* renamed from: f */
    public final Map<Integer, E> f105090f;

    /* renamed from: g */
    public final boolean[] f105091g;

    /* renamed from: h */
    public List<E> f105092h;

    public PermutationIterator(Collection<? extends E> collection) {
        if (collection == null) {
            throw new NullPointerException("The collection must not be null");
        }
        this.f105089e = new int[collection.size()];
        boolean[] zArr = new boolean[collection.size()];
        this.f105091g = zArr;
        Arrays.fill(zArr, false);
        this.f105090f = new HashMap();
        Iterator<? extends E> it2 = collection.iterator();
        int i = 1;
        while (it2.hasNext()) {
            this.f105090f.put(Integer.valueOf(i), it2.next());
            this.f105089e[i - 1] = i;
            i++;
        }
        this.f105092h = new ArrayList(collection);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f105092h != null;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove() is not supported");
    }

    @Override // java.util.Iterator
    public List<E> next() {
        int[] iArr;
        int i;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        int i5 = -1;
        while (true) {
            iArr = this.f105089e;
            if (i3 >= iArr.length) {
                break;
            }
            boolean z = this.f105091g[i3];
            if (((z && i3 < iArr.length - 1 && iArr[i3] > iArr[i3 + 1]) || (!z && i3 > 0 && iArr[i3] > iArr[i3 - 1])) && (i = iArr[i3]) > i4) {
                i5 = i3;
                i4 = i;
            }
            i3++;
        }
        if (i4 == -1) {
            List<E> list = this.f105092h;
            this.f105092h = null;
            return list;
        }
        boolean[] zArr = this.f105091g;
        boolean z2 = zArr[i5];
        int i6 = z2 ? 1 : -1;
        int i7 = iArr[i5];
        int i8 = i6 + i5;
        iArr[i5] = iArr[i8];
        iArr[i8] = i7;
        zArr[i5] = zArr[i8];
        zArr[i8] = z2;
        ArrayList arrayList = new ArrayList();
        while (true) {
            int[] iArr2 = this.f105089e;
            if (i2 < iArr2.length) {
                int i9 = iArr2[i2];
                if (i9 > i4) {
                    this.f105091g[i2] = !r4[i2];
                }
                arrayList.add(this.f105090f.get(Integer.valueOf(i9)));
                i2++;
            } else {
                List<E> list2 = this.f105092h;
                this.f105092h = arrayList;
                return list2;
            }
        }
    }
}
