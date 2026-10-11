package com.google.protobuf;

import com.google.protobuf.Internal;
import com.sunia.HTREnginev2.g7l;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: com.google.protobuf.e */
/* loaded from: classes6.dex */
public final class C6867e extends AbstractC6853a<Boolean> implements Internal.BooleanList, RandomAccess, g7l {

    /* renamed from: h */
    public static final C6867e f38096h = new C6867e(new boolean[0], 0, false);

    /* renamed from: f */
    public boolean[] f38097f;

    /* renamed from: g */
    public int f38098g;

    public C6867e() {
        this(new boolean[10], 0, true);
    }

    /* renamed from: d */
    public static C6867e m30178d() {
        return f38096h;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void add(int index, Boolean element) {
        m30181c(index, element.booleanValue());
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Boolean> collection) {
        ensureIsMutable();
        Internal.m29343a(collection);
        if (!(collection instanceof C6867e)) {
            return super.addAll(collection);
        }
        C6867e c6867e = (C6867e) collection;
        int i = c6867e.f38098g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f38098g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.f38097f;
        if (i3 > zArr.length) {
            this.f38097f = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(c6867e.f38097f, 0, this.f38097f, this.f38098g, c6867e.f38098g);
        this.f38098g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.Internal.BooleanList
    public void addBoolean(boolean element) {
        ensureIsMutable();
        int i = this.f38098g;
        boolean[] zArr = this.f38097f;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.f38097f = zArr2;
        }
        boolean[] zArr3 = this.f38097f;
        int i2 = this.f38098g;
        this.f38098g = i2 + 1;
        zArr3[i2] = element;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean add(Boolean element) {
        addBoolean(element.booleanValue());
        return true;
    }

    /* renamed from: c */
    public final void m30181c(int index, boolean element) {
        int i;
        ensureIsMutable();
        if (index < 0 || index > (i = this.f38098g)) {
            throw new IndexOutOfBoundsException(m30184h(index));
        }
        boolean[] zArr = this.f38097f;
        if (i < zArr.length) {
            System.arraycopy(zArr, index, zArr, index + 1, i - index);
        } else {
            boolean[] zArr2 = new boolean[((i * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, index);
            System.arraycopy(this.f38097f, index, zArr2, index + 1, this.f38098g - index);
            this.f38097f = zArr2;
        }
        this.f38097f[index] = element;
        this.f38098g++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    /* renamed from: e */
    public final void m30182e(int index) {
        if (index < 0 || index >= this.f38098g) {
            throw new IndexOutOfBoundsException(m30184h(index));
        }
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof C6867e)) {
            return super.equals(o);
        }
        C6867e c6867e = (C6867e) o;
        if (this.f38098g != c6867e.f38098g) {
            return false;
        }
        boolean[] zArr = c6867e.f38097f;
        for (int i = 0; i < this.f38098g; i++) {
            if (this.f38097f[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public Boolean get(int index) {
        return Boolean.valueOf(getBoolean(index));
    }

    @Override // com.google.protobuf.Internal.BooleanList
    public boolean getBoolean(int index) {
        m30182e(index);
        return this.f38097f[index];
    }

    /* renamed from: h */
    public final String m30184h(int index) {
        return "Index:" + index + ", Size:" + this.f38098g;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f38098g; i2++) {
            i = (i * 31) + Internal.hashBoolean(this.f38097f[i2]);
        }
        return i;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Boolean remove(int index) {
        ensureIsMutable();
        m30182e(index);
        boolean[] zArr = this.f38097f;
        boolean z = zArr[index];
        if (index < this.f38098g - 1) {
            System.arraycopy(zArr, index + 1, zArr, index, (r2 - index) - 1);
        }
        this.f38098g--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        if (!(element instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) element).booleanValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f38097f[i] == booleanValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public Boolean set(int index, Boolean element) {
        return Boolean.valueOf(setBoolean(index, element.booleanValue()));
    }

    @Override // java.util.AbstractList
    public void removeRange(int fromIndex, int toIndex) {
        ensureIsMutable();
        if (toIndex < fromIndex) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.f38097f;
        System.arraycopy(zArr, toIndex, zArr, fromIndex, this.f38098g - toIndex);
        this.f38098g -= toIndex - fromIndex;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Internal.BooleanList
    public boolean setBoolean(int index, boolean element) {
        ensureIsMutable();
        m30182e(index);
        boolean[] zArr = this.f38097f;
        boolean z = zArr[index];
        zArr[index] = element;
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f38098g;
    }

    public C6867e(boolean[] other, int size, boolean isMutable) {
        super(isMutable);
        this.f38097f = other;
        this.f38098g = size;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: mutableCopyWithCapacity */
    public Internal.ProtobufList<Boolean> mutableCopyWithCapacity2(int capacity) {
        if (capacity >= this.f38098g) {
            return new C6867e(Arrays.copyOf(this.f38097f, capacity), this.f38098g, true);
        }
        throw new IllegalArgumentException();
    }
}
