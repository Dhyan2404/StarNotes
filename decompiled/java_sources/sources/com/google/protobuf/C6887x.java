package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* renamed from: com.google.protobuf.x */
/* loaded from: classes6.dex */
public final class C6887x<E> extends AbstractC6853a<E> implements RandomAccess {

    /* renamed from: h */
    public static final C6887x<Object> f38190h = new C6887x<>(new Object[0], 0, false);

    /* renamed from: f */
    public E[] f38191f;

    /* renamed from: g */
    public int f38192g;

    public C6887x() {
        this(new Object[10], 0, true);
    }

    /* renamed from: a */
    public static <E> E[] m30412a(int i) {
        return (E[]) new Object[i];
    }

    /* renamed from: b */
    public static <E> C6887x<E> m30413b() {
        return (C6887x<E>) f38190h;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        ensureIsMutable();
        int i = this.f38192g;
        E[] eArr = this.f38191f;
        if (i == eArr.length) {
            this.f38191f = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.f38191f;
        int i2 = this.f38192g;
        this.f38192g = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    /* renamed from: c */
    public final void m30414c(int index) {
        if (index < 0 || index >= this.f38192g) {
            throw new IndexOutOfBoundsException(m30415d(index));
        }
    }

    /* renamed from: d */
    public final String m30415d(int index) {
        return "Index:" + index + ", Size:" + this.f38192g;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public C6887x<E> mutableCopyWithCapacity2(int capacity) {
        if (capacity >= this.f38192g) {
            return new C6887x<>(Arrays.copyOf(this.f38191f, capacity), this.f38192g, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int index) {
        m30414c(index);
        return this.f38191f[index];
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    public E remove(int index) {
        ensureIsMutable();
        m30414c(index);
        E[] eArr = this.f38191f;
        E e = eArr[index];
        if (index < this.f38192g - 1) {
            System.arraycopy(eArr, index + 1, eArr, index, (r2 - index) - 1);
        }
        this.f38192g--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        ensureIsMutable();
        m30414c(index);
        E[] eArr = this.f38191f;
        E e = eArr[index];
        eArr[index] = element;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f38192g;
    }

    public C6887x(E[] array, int size, boolean isMutable) {
        super(isMutable);
        this.f38191f = array;
        this.f38192g = size;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        int i2;
        ensureIsMutable();
        if (i >= 0 && i <= (i2 = this.f38192g)) {
            E[] eArr = this.f38191f;
            if (i2 < eArr.length) {
                System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
            } else {
                E[] eArr2 = (E[]) m30412a(((i2 * 3) / 2) + 1);
                System.arraycopy(this.f38191f, 0, eArr2, 0, i);
                System.arraycopy(this.f38191f, i, eArr2, i + 1, this.f38192g - i);
                this.f38191f = eArr2;
            }
            this.f38191f[i] = e;
            this.f38192g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m30415d(i));
    }
}
