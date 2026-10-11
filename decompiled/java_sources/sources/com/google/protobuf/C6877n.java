package com.google.protobuf;

import com.google.protobuf.Internal;
import com.sunia.HTREnginev2.g7l;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: com.google.protobuf.n */
/* loaded from: classes6.dex */
public final class C6877n extends AbstractC6853a<Integer> implements Internal.IntList, RandomAccess, g7l {

    /* renamed from: h */
    public static final C6877n f38138h = new C6877n(new int[0], 0, false);

    /* renamed from: f */
    public int[] f38139f;

    /* renamed from: g */
    public int f38140g;

    public C6877n() {
        this(new int[10], 0, true);
    }

    /* renamed from: d */
    public static C6877n m30282d() {
        return f38138h;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void add(int index, Integer element) {
        m30285c(index, element.intValue());
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Integer> collection) {
        ensureIsMutable();
        Internal.m29343a(collection);
        if (!(collection instanceof C6877n)) {
            return super.addAll(collection);
        }
        C6877n c6877n = (C6877n) collection;
        int i = c6877n.f38140g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f38140g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f38139f;
        if (i3 > iArr.length) {
            this.f38139f = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(c6877n.f38139f, 0, this.f38139f, this.f38140g, c6877n.f38140g);
        this.f38140g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.Internal.IntList
    public void addInt(int element) {
        ensureIsMutable();
        int i = this.f38140g;
        int[] iArr = this.f38139f;
        if (i == iArr.length) {
            int[] iArr2 = new int[((i * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.f38139f = iArr2;
        }
        int[] iArr3 = this.f38139f;
        int i2 = this.f38140g;
        this.f38140g = i2 + 1;
        iArr3[i2] = element;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean add(Integer element) {
        addInt(element.intValue());
        return true;
    }

    /* renamed from: c */
    public final void m30285c(int index, int element) {
        int i;
        ensureIsMutable();
        if (index < 0 || index > (i = this.f38140g)) {
            throw new IndexOutOfBoundsException(m30288h(index));
        }
        int[] iArr = this.f38139f;
        if (i < iArr.length) {
            System.arraycopy(iArr, index, iArr, index + 1, i - index);
        } else {
            int[] iArr2 = new int[((i * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, index);
            System.arraycopy(this.f38139f, index, iArr2, index + 1, this.f38140g - index);
            this.f38139f = iArr2;
        }
        this.f38139f[index] = element;
        this.f38140g++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    /* renamed from: e */
    public final void m30286e(int index) {
        if (index < 0 || index >= this.f38140g) {
            throw new IndexOutOfBoundsException(m30288h(index));
        }
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof C6877n)) {
            return super.equals(o);
        }
        C6877n c6877n = (C6877n) o;
        if (this.f38140g != c6877n.f38140g) {
            return false;
        }
        int[] iArr = c6877n.f38139f;
        for (int i = 0; i < this.f38140g; i++) {
            if (this.f38139f[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public Integer get(int index) {
        return Integer.valueOf(getInt(index));
    }

    @Override // com.google.protobuf.Internal.IntList
    public int getInt(int index) {
        m30286e(index);
        return this.f38139f[index];
    }

    /* renamed from: h */
    public final String m30288h(int index) {
        return "Index:" + index + ", Size:" + this.f38140g;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f38140g; i2++) {
            i = (i * 31) + this.f38139f[i2];
        }
        return i;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Integer remove(int index) {
        ensureIsMutable();
        m30286e(index);
        int[] iArr = this.f38139f;
        int i = iArr[index];
        if (index < this.f38140g - 1) {
            System.arraycopy(iArr, index + 1, iArr, index, (r2 - index) - 1);
        }
        this.f38140g--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        if (!(element instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) element).intValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f38139f[i] == intValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public Integer set(int index, Integer element) {
        return Integer.valueOf(setInt(index, element.intValue()));
    }

    @Override // java.util.AbstractList
    public void removeRange(int fromIndex, int toIndex) {
        ensureIsMutable();
        if (toIndex < fromIndex) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f38139f;
        System.arraycopy(iArr, toIndex, iArr, fromIndex, this.f38140g - toIndex);
        this.f38140g -= toIndex - fromIndex;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Internal.IntList
    public int setInt(int index, int element) {
        ensureIsMutable();
        m30286e(index);
        int[] iArr = this.f38139f;
        int i = iArr[index];
        iArr[index] = element;
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f38140g;
    }

    public C6877n(int[] other, int size, boolean isMutable) {
        super(isMutable);
        this.f38139f = other;
        this.f38140g = size;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: mutableCopyWithCapacity */
    public Internal.ProtobufList<Integer> mutableCopyWithCapacity2(int capacity) {
        if (capacity >= this.f38140g) {
            return new C6877n(Arrays.copyOf(this.f38139f, capacity), this.f38140g, true);
        }
        throw new IllegalArgumentException();
    }
}
