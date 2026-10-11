package com.google.protobuf;

import com.google.protobuf.Internal;
import com.sunia.HTREnginev2.g7l;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: com.google.protobuf.p */
/* loaded from: classes6.dex */
public final class C6879p extends AbstractC6853a<Long> implements Internal.LongList, RandomAccess, g7l {

    /* renamed from: h */
    public static final C6879p f38144h = new C6879p(new long[0], 0, false);

    /* renamed from: f */
    public long[] f38145f;

    /* renamed from: g */
    public int f38146g;

    public C6879p() {
        this(new long[10], 0, true);
    }

    /* renamed from: d */
    public static C6879p m30299d() {
        return f38144h;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void add(int index, Long element) {
        m30302c(index, element.longValue());
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        ensureIsMutable();
        Internal.m29343a(collection);
        if (!(collection instanceof C6879p)) {
            return super.addAll(collection);
        }
        C6879p c6879p = (C6879p) collection;
        int i = c6879p.f38146g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f38146g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f38145f;
        if (i3 > jArr.length) {
            this.f38145f = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(c6879p.f38145f, 0, this.f38145f, this.f38146g, c6879p.f38146g);
        this.f38146g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.Internal.LongList
    public void addLong(long element) {
        ensureIsMutable();
        int i = this.f38146g;
        long[] jArr = this.f38145f;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f38145f = jArr2;
        }
        long[] jArr3 = this.f38145f;
        int i2 = this.f38146g;
        this.f38146g = i2 + 1;
        jArr3[i2] = element;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean add(Long element) {
        addLong(element.longValue());
        return true;
    }

    /* renamed from: c */
    public final void m30302c(int index, long element) {
        int i;
        ensureIsMutable();
        if (index < 0 || index > (i = this.f38146g)) {
            throw new IndexOutOfBoundsException(m30305h(index));
        }
        long[] jArr = this.f38145f;
        if (i < jArr.length) {
            System.arraycopy(jArr, index, jArr, index + 1, i - index);
        } else {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, index);
            System.arraycopy(this.f38145f, index, jArr2, index + 1, this.f38146g - index);
            this.f38145f = jArr2;
        }
        this.f38145f[index] = element;
        this.f38146g++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    /* renamed from: e */
    public final void m30303e(int index) {
        if (index < 0 || index >= this.f38146g) {
            throw new IndexOutOfBoundsException(m30305h(index));
        }
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof C6879p)) {
            return super.equals(o);
        }
        C6879p c6879p = (C6879p) o;
        if (this.f38146g != c6879p.f38146g) {
            return false;
        }
        long[] jArr = c6879p.f38145f;
        for (int i = 0; i < this.f38146g; i++) {
            if (this.f38145f[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public Long get(int index) {
        return Long.valueOf(getLong(index));
    }

    @Override // com.google.protobuf.Internal.LongList
    public long getLong(int index) {
        m30303e(index);
        return this.f38145f[index];
    }

    /* renamed from: h */
    public final String m30305h(int index) {
        return "Index:" + index + ", Size:" + this.f38146g;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f38146g; i2++) {
            i = (i * 31) + Internal.hashLong(this.f38145f[i2]);
        }
        return i;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Long remove(int index) {
        ensureIsMutable();
        m30303e(index);
        long[] jArr = this.f38145f;
        long j = jArr[index];
        if (index < this.f38146g - 1) {
            System.arraycopy(jArr, index + 1, jArr, index, (r3 - index) - 1);
        }
        this.f38146g--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        if (!(element instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) element).longValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f38145f[i] == longValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public Long set(int index, Long element) {
        return Long.valueOf(setLong(index, element.longValue()));
    }

    @Override // java.util.AbstractList
    public void removeRange(int fromIndex, int toIndex) {
        ensureIsMutable();
        if (toIndex < fromIndex) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f38145f;
        System.arraycopy(jArr, toIndex, jArr, fromIndex, this.f38146g - toIndex);
        this.f38146g -= toIndex - fromIndex;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Internal.LongList
    public long setLong(int index, long element) {
        ensureIsMutable();
        m30303e(index);
        long[] jArr = this.f38145f;
        long j = jArr[index];
        jArr[index] = element;
        return j;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f38146g;
    }

    public C6879p(long[] other, int size, boolean isMutable) {
        super(isMutable);
        this.f38145f = other;
        this.f38146g = size;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: mutableCopyWithCapacity */
    public Internal.ProtobufList<Long> mutableCopyWithCapacity2(int capacity) {
        if (capacity >= this.f38146g) {
            return new C6879p(Arrays.copyOf(this.f38145f, capacity), this.f38146g, true);
        }
        throw new IllegalArgumentException();
    }
}
