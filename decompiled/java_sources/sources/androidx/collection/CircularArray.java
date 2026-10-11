package androidx.collection;

/* loaded from: classes3.dex */
public final class CircularArray<E> {

    /* renamed from: a */
    public E[] f2500a;

    /* renamed from: b */
    public int f2501b;

    /* renamed from: c */
    public int f2502c;

    /* renamed from: d */
    public int f2503d;

    public CircularArray() {
        this(8);
    }

    /* renamed from: a */
    public final void m1318a() {
        E[] eArr = this.f2500a;
        int length = eArr.length;
        int i = this.f2501b;
        int i2 = length - i;
        int i3 = length << 1;
        if (i3 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        E[] eArr2 = (E[]) new Object[i3];
        System.arraycopy(eArr, i, eArr2, 0, i2);
        System.arraycopy(this.f2500a, 0, eArr2, i2, this.f2501b);
        this.f2500a = eArr2;
        this.f2501b = 0;
        this.f2502c = length;
        this.f2503d = i3 - 1;
    }

    public void addFirst(E e) {
        int i = (this.f2501b - 1) & this.f2503d;
        this.f2501b = i;
        this.f2500a[i] = e;
        if (i == this.f2502c) {
            m1318a();
        }
    }

    public void addLast(E e) {
        E[] eArr = this.f2500a;
        int i = this.f2502c;
        eArr[i] = e;
        int i2 = this.f2503d & (i + 1);
        this.f2502c = i2;
        if (i2 == this.f2501b) {
            m1318a();
        }
    }

    public void clear() {
        removeFromStart(size());
    }

    public E get(int i) {
        if (i < 0 || i >= size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f2500a[this.f2503d & (this.f2501b + i)];
    }

    public E getFirst() {
        int i = this.f2501b;
        if (i != this.f2502c) {
            return this.f2500a[i];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E getLast() {
        int i = this.f2501b;
        int i2 = this.f2502c;
        if (i == i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f2500a[this.f2503d & (i2 - 1)];
    }

    public boolean isEmpty() {
        return this.f2501b == this.f2502c;
    }

    public E popFirst() {
        int i = this.f2501b;
        if (i == this.f2502c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        E[] eArr = this.f2500a;
        E e = eArr[i];
        eArr[i] = null;
        this.f2501b = (i + 1) & this.f2503d;
        return e;
    }

    public E popLast() {
        int i = this.f2501b;
        int i2 = this.f2502c;
        if (i == i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = this.f2503d & (i2 - 1);
        E[] eArr = this.f2500a;
        E e = eArr[i3];
        eArr[i3] = null;
        this.f2502c = i3;
        return e;
    }

    public void removeFromEnd(int i) {
        int i2;
        if (i <= 0) {
            return;
        }
        if (i > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = this.f2502c;
        int i4 = i < i3 ? i3 - i : 0;
        int i5 = i4;
        while (true) {
            i2 = this.f2502c;
            if (i5 >= i2) {
                break;
            }
            this.f2500a[i5] = null;
            i5++;
        }
        int i6 = i2 - i4;
        int i7 = i - i6;
        this.f2502c = i2 - i6;
        if (i7 > 0) {
            int length = this.f2500a.length;
            this.f2502c = length;
            int i8 = length - i7;
            for (int i9 = i8; i9 < this.f2502c; i9++) {
                this.f2500a[i9] = null;
            }
            this.f2502c = i8;
        }
    }

    public void removeFromStart(int i) {
        if (i <= 0) {
            return;
        }
        if (i > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int length = this.f2500a.length;
        int i2 = this.f2501b;
        if (i < length - i2) {
            length = i2 + i;
        }
        while (i2 < length) {
            this.f2500a[i2] = null;
            i2++;
        }
        int i3 = this.f2501b;
        int i4 = length - i3;
        int i5 = i - i4;
        this.f2501b = this.f2503d & (i3 + i4);
        if (i5 > 0) {
            for (int i6 = 0; i6 < i5; i6++) {
                this.f2500a[i6] = null;
            }
            this.f2501b = i5;
        }
    }

    public int size() {
        return this.f2503d & (this.f2502c - this.f2501b);
    }

    public CircularArray(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i <= 1073741824) {
            i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
            this.f2503d = i - 1;
            this.f2500a = (E[]) new Object[i];
            return;
        }
        throw new IllegalArgumentException("capacity must be <= 2^30");
    }
}
