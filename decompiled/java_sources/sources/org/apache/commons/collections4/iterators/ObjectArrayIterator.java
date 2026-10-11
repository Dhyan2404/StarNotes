package org.apache.commons.collections4.iterators;

import java.util.NoSuchElementException;
import org.apache.commons.collections4.ResettableIterator;

/* loaded from: classes11.dex */
public class ObjectArrayIterator<E> implements ResettableIterator<E> {

    /* renamed from: e */
    public final E[] f105073e;

    /* renamed from: f */
    public final int f105074f;

    /* renamed from: g */
    public final int f105075g;

    /* renamed from: h */
    public int f105076h;

    public ObjectArrayIterator(E... eArr) {
        this(eArr, 0, eArr.length);
    }

    public E[] getArray() {
        return this.f105073e;
    }

    public int getEndIndex() {
        return this.f105075g;
    }

    public int getStartIndex() {
        return this.f105074f;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f105076h < this.f105075g;
    }

    @Override // java.util.Iterator
    public E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        E[] eArr = this.f105073e;
        int i = this.f105076h;
        this.f105076h = i + 1;
        return eArr[i];
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove() method is not supported for an ObjectArrayIterator");
    }

    @Override // org.apache.commons.collections4.ResettableIterator
    public void reset() {
        this.f105076h = this.f105074f;
    }

    public ObjectArrayIterator(E[] eArr, int i) {
        this(eArr, i, eArr.length);
    }

    public ObjectArrayIterator(E[] eArr, int i, int i2) {
        this.f105076h = 0;
        if (i >= 0) {
            if (i2 <= eArr.length) {
                if (i > eArr.length) {
                    throw new ArrayIndexOutOfBoundsException("Start index must not be greater than the array length");
                }
                if (i2 >= i) {
                    this.f105073e = eArr;
                    this.f105074f = i;
                    this.f105075g = i2;
                    this.f105076h = i;
                    return;
                }
                throw new IllegalArgumentException("End index must not be less than start index");
            }
            throw new ArrayIndexOutOfBoundsException("End index must not be greater than the array length");
        }
        throw new ArrayIndexOutOfBoundsException("Start index must not be less than zero");
    }
}
