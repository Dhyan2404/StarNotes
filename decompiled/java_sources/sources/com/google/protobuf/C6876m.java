package com.google.protobuf;

import com.google.protobuf.Internal;
import com.sunia.HTREnginev2.g7l;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: com.google.protobuf.m */
/* loaded from: classes6.dex */
public final class C6876m extends AbstractC6853a<Float> implements Internal.FloatList, RandomAccess, g7l {

    /* renamed from: h */
    public static final C6876m f38135h = new C6876m(new float[0], 0, false);

    /* renamed from: f */
    public float[] f38136f;

    /* renamed from: g */
    public int f38137g;

    public C6876m() {
        this(new float[10], 0, true);
    }

    /* renamed from: d */
    public static C6876m m30273d() {
        return f38135h;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void add(int index, Float element) {
        m30276c(index, element.floatValue());
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Float> collection) {
        ensureIsMutable();
        Internal.m29343a(collection);
        if (!(collection instanceof C6876m)) {
            return super.addAll(collection);
        }
        C6876m c6876m = (C6876m) collection;
        int i = c6876m.f38137g;
        if (i == 0) {
            return false;
        }
        int i2 = this.f38137g;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        float[] fArr = this.f38136f;
        if (i3 > fArr.length) {
            this.f38136f = Arrays.copyOf(fArr, i3);
        }
        System.arraycopy(c6876m.f38136f, 0, this.f38136f, this.f38137g, c6876m.f38137g);
        this.f38137g = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.Internal.FloatList
    public void addFloat(float element) {
        ensureIsMutable();
        int i = this.f38137g;
        float[] fArr = this.f38136f;
        if (i == fArr.length) {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.f38136f = fArr2;
        }
        float[] fArr3 = this.f38136f;
        int i2 = this.f38137g;
        this.f38137g = i2 + 1;
        fArr3[i2] = element;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean add(Float element) {
        addFloat(element.floatValue());
        return true;
    }

    /* renamed from: c */
    public final void m30276c(int index, float element) {
        int i;
        ensureIsMutable();
        if (index < 0 || index > (i = this.f38137g)) {
            throw new IndexOutOfBoundsException(m30279h(index));
        }
        float[] fArr = this.f38136f;
        if (i < fArr.length) {
            System.arraycopy(fArr, index, fArr, index + 1, i - index);
        } else {
            float[] fArr2 = new float[((i * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, index);
            System.arraycopy(this.f38136f, index, fArr2, index + 1, this.f38137g - index);
            this.f38136f = fArr2;
        }
        this.f38136f[index] = element;
        this.f38137g++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    /* renamed from: e */
    public final void m30277e(int index) {
        if (index < 0 || index >= this.f38137g) {
            throw new IndexOutOfBoundsException(m30279h(index));
        }
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof C6876m)) {
            return super.equals(o);
        }
        C6876m c6876m = (C6876m) o;
        if (this.f38137g != c6876m.f38137g) {
            return false;
        }
        float[] fArr = c6876m.f38136f;
        for (int i = 0; i < this.f38137g; i++) {
            if (Float.floatToIntBits(this.f38136f[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public Float get(int index) {
        return Float.valueOf(getFloat(index));
    }

    @Override // com.google.protobuf.Internal.FloatList
    public float getFloat(int index) {
        m30277e(index);
        return this.f38136f[index];
    }

    /* renamed from: h */
    public final String m30279h(int index) {
        return "Index:" + index + ", Size:" + this.f38137g;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f38137g; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f38136f[i2]);
        }
        return i;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Float remove(int index) {
        ensureIsMutable();
        m30277e(index);
        float[] fArr = this.f38136f;
        float f = fArr[index];
        if (index < this.f38137g - 1) {
            System.arraycopy(fArr, index + 1, fArr, index, (r2 - index) - 1);
        }
        this.f38137g--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        if (!(element instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) element).floatValue();
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f38136f[i] == floatValue) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.AbstractC6853a, java.util.AbstractList, java.util.List
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public Float set(int index, Float element) {
        return Float.valueOf(setFloat(index, element.floatValue()));
    }

    @Override // java.util.AbstractList
    public void removeRange(int fromIndex, int toIndex) {
        ensureIsMutable();
        if (toIndex < fromIndex) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f38136f;
        System.arraycopy(fArr, toIndex, fArr, fromIndex, this.f38137g - toIndex);
        this.f38137g -= toIndex - fromIndex;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Internal.FloatList
    public float setFloat(int index, float element) {
        ensureIsMutable();
        m30277e(index);
        float[] fArr = this.f38136f;
        float f = fArr[index];
        fArr[index] = element;
        return f;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f38137g;
    }

    public C6876m(float[] other, int size, boolean isMutable) {
        super(isMutable);
        this.f38136f = other;
        this.f38137g = size;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* renamed from: mutableCopyWithCapacity */
    public Internal.ProtobufList<Float> mutableCopyWithCapacity2(int capacity) {
        if (capacity >= this.f38137g) {
            return new C6876m(Arrays.copyOf(this.f38136f, capacity), this.f38137g, true);
        }
        throw new IllegalArgumentException();
    }
}
