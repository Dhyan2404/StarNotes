package org.apache.commons.collections4.iterators;

import com.sunia.HTREnginev2.gon;
import java.lang.reflect.Array;
import java.util.NoSuchElementException;
import org.apache.commons.collections4.ResettableIterator;

/* loaded from: classes11.dex */
public class ArrayIterator<E> implements ResettableIterator<E> {

    /* renamed from: e */
    public final Object f105016e;

    /* renamed from: f */
    public final int f105017f;

    /* renamed from: g */
    public final int f105018g;

    /* renamed from: h */
    public int f105019h;

    public ArrayIterator(Object obj) {
        this(obj, 0);
    }

    public void checkBound(int i, int i2, String str) {
        if (i > i2) {
            throw new ArrayIndexOutOfBoundsException("Attempt to make an ArrayIterator that " + str + "s beyond the end of the array. ");
        }
        if (i >= 0) {
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Attempt to make an ArrayIterator that " + str + "s before the start of the array. ");
    }

    public Object getArray() {
        return this.f105016e;
    }

    public int getEndIndex() {
        return this.f105018g;
    }

    public int getStartIndex() {
        return this.f105017f;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f105019h < this.f105018g;
    }

    @Override // java.util.Iterator
    public E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object obj = this.f105016e;
        int i = this.f105019h;
        this.f105019h = i + 1;
        return (E) Array.get(obj, i);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove() method is not supported");
    }

    @Override // org.apache.commons.collections4.ResettableIterator
    public void reset() {
        this.f105019h = this.f105017f;
    }

    public ArrayIterator(Object obj, int i) {
        this(obj, i, Array.getLength(obj));
    }

    public ArrayIterator(Object obj, int i, int i2) {
        this.f105016e = obj;
        this.f105017f = i;
        this.f105018g = i2;
        this.f105019h = i;
        int length = Array.getLength(obj);
        checkBound(i, length, gon.f71290o0);
        checkBound(i2, length, "end");
        if (i2 < i) {
            throw new IllegalArgumentException("End index must not be less than start index.");
        }
    }
}
