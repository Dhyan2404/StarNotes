package com.google.protobuf;

import com.google.protobuf.Internal;
import com.sunia.HTREnginev2.g7l;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: com.google.protobuf.i */
/* loaded from: classes6.dex */
public final class C6872i extends AbstractC6853a<Double> implements Internal.DoubleList, RandomAccess, g7l {

    /* renamed from: h */
    public static final C6872i f38129h = new C6872i(new double[0], 0, false);

    /* renamed from: f */
    public double[] f38130f;

    /* renamed from: g */
    public int f38131g;

    public C6872i() {
        this(new double[10], 0, true);
    }

    /* renamed from: d */
    public static C6872i m30252d() {
        return f38129h;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void add(int index, Double element) {
        m30255c(index, element.doubleValue());
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Double> collection) {
        ensureIsMutable();
        Internal.m29343a(collection);
        if (!(collection instanceof C6872i)) {
            return super.addAll(collection);
        }
        C6872i c6872i = (C6872i) collection;
        int i = c6872i.f38131g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f38131g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.f38130f;
        if (i3 > dArr.length) {
            this.f38130f = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(c6872i.f38130f, 0, this.f38130f, this.f38131g, c6872i.f38131g);
        this.f38131g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.Internal.DoubleList
    public void addDouble(double element) {
        ensureIsMutable();
        int i = this.f38131g;
        double[] dArr = this.f38130f;
        if (i == dArr.length) {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f38130f = dArr2;
        }
        double[] dArr3 = this.f38130f;
        int i2 = this.f38131g;
        this.f38131g = i2 + 1;
        dArr3[i2] = element;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean add(Double element) {
        addDouble(element.doubleValue());
        return true;
    }

    /* renamed from: c */
    public final void m30255c(int index, double element) {
        int i;
        ensureIsMutable();
        if (index < 0 || index > (i = this.f38131g)) {
            throw new IndexOutOfBoundsException(m30258h(index));
        }
        double[] dArr = this.f38130f;
        if (i < dArr.length) {
            System.arraycopy(dArr, index, dArr, index + 1, i - index);
        } else {
            double[] dArr2 = new double[((i * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, index);
            System.arraycopy(this.f38130f, index, dArr2, index + 1, this.f38131g - index);
            this.f38130f = dArr2;
        }
        this.f38130f[index] = element;
        this.f38131g++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    /* renamed from: e */
    public final void m30256e(int index) {
        if (index < 0 || index >= this.f38131g) {
            throw new IndexOutOfBoundsException(m30258h(index));
        }
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof C6872i)) {
            return super.equals(o);
        }
        C6872i c6872i = (C6872i) o;
        if (this.f38131g != c6872i.f38131g) {
            return false;
        }
        double[] dArr = c6872i.f38130f;
        for (int i = 0; i < this.f38131g; i++) {
            if (Double.doubleToLongBits(this.f38130f[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public Double get(int index) {
        return Double.valueOf(getDouble(index));
    }

    @Override // com.google.protobuf.Internal.DoubleList
    public double getDouble(int index) {
        m30256e(index);
        return this.f38130f[index];
    }

    /* renamed from: h */
    public final String m30258h(int index) {
        return "Index:" + index + ", Size:" + this.f38131g;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f38131g; i2++) {
            i = (i * 31) + Internal.hashLong(Double.doubleToLongBits(this.f38130f[i2]));
        }
        return i;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Double remove(int index) {
        ensureIsMutable();
        m30256e(index);
        double[] dArr = this.f38130f;
        double d = dArr[index];
        if (index < this.f38131g - 1) {
            System.arraycopy(dArr, index + 1, dArr, index, (r3 - index) - 1);
        }
        this.f38131g--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        if (!(element instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) element).doubleValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f38130f[i] == doubleValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public Double set(int index, Double element) {
        return Double.valueOf(setDouble(index, element.doubleValue()));
    }

    @Override // java.util.AbstractList
    public void removeRange(int fromIndex, int toIndex) {
        ensureIsMutable();
        if (toIndex < fromIndex) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f38130f;
        System.arraycopy(dArr, toIndex, dArr, fromIndex, this.f38131g - toIndex);
        this.f38131g -= toIndex - fromIndex;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Internal.DoubleList
    public double setDouble(int index, double element) {
        ensureIsMutable();
        m30256e(index);
        double[] dArr = this.f38130f;
        double d = dArr[index];
        dArr[index] = element;
        return d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f38131g;
    }

    public C6872i(double[] other, int size, boolean isMutable) {
        super(isMutable);
        this.f38130f = other;
        this.f38131g = size;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: mutableCopyWithCapacity */
    public Internal.ProtobufList<Double> mutableCopyWithCapacity2(int capacity) {
        if (capacity >= this.f38131g) {
            return new C6872i(Arrays.copyOf(this.f38130f, capacity), this.f38131g, true);
        }
        throw new IllegalArgumentException();
    }
}
