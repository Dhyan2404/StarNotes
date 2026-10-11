package androidx.collection;

/* loaded from: classes3.dex */
public final class CircularIntArray {

    /* renamed from: a */
    public int[] f2504a;

    /* renamed from: b */
    public int f2505b;

    /* renamed from: c */
    public int f2506c;

    /* renamed from: d */
    public int f2507d;

    public CircularIntArray() {
        this(8);
    }

    /* renamed from: a */
    public final void m1319a() {
        int[] iArr = this.f2504a;
        int length = iArr.length;
        int i = this.f2505b;
        int i2 = length - i;
        int i3 = length << 1;
        if (i3 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        int[] iArr2 = new int[i3];
        System.arraycopy(iArr, i, iArr2, 0, i2);
        System.arraycopy(this.f2504a, 0, iArr2, i2, this.f2505b);
        this.f2504a = iArr2;
        this.f2505b = 0;
        this.f2506c = length;
        this.f2507d = i3 - 1;
    }

    public void addFirst(int i) {
        int i2 = (this.f2505b - 1) & this.f2507d;
        this.f2505b = i2;
        this.f2504a[i2] = i;
        if (i2 == this.f2506c) {
            m1319a();
        }
    }

    public void addLast(int i) {
        int[] iArr = this.f2504a;
        int i2 = this.f2506c;
        iArr[i2] = i;
        int i3 = this.f2507d & (i2 + 1);
        this.f2506c = i3;
        if (i3 == this.f2505b) {
            m1319a();
        }
    }

    public void clear() {
        this.f2506c = this.f2505b;
    }

    public int get(int i) {
        if (i < 0 || i >= size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f2504a[this.f2507d & (this.f2505b + i)];
    }

    public int getFirst() {
        int i = this.f2505b;
        if (i != this.f2506c) {
            return this.f2504a[i];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getLast() {
        int i = this.f2505b;
        int i2 = this.f2506c;
        if (i == i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f2504a[this.f2507d & (i2 - 1)];
    }

    public boolean isEmpty() {
        return this.f2505b == this.f2506c;
    }

    public int popFirst() {
        int i = this.f2505b;
        if (i == this.f2506c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i2 = this.f2504a[i];
        this.f2505b = (i + 1) & this.f2507d;
        return i2;
    }

    public int popLast() {
        int i = this.f2505b;
        int i2 = this.f2506c;
        if (i == i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = this.f2507d & (i2 - 1);
        int i4 = this.f2504a[i3];
        this.f2506c = i3;
        return i4;
    }

    public void removeFromEnd(int i) {
        if (i <= 0) {
            return;
        }
        if (i > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        this.f2506c = this.f2507d & (this.f2506c - i);
    }

    public void removeFromStart(int i) {
        if (i <= 0) {
            return;
        }
        if (i > size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        this.f2505b = this.f2507d & (this.f2505b + i);
    }

    public int size() {
        return this.f2507d & (this.f2506c - this.f2505b);
    }

    public CircularIntArray(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i <= 1073741824) {
            i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
            this.f2507d = i - 1;
            this.f2504a = new int[i];
            return;
        }
        throw new IllegalArgumentException("capacity must be <= 2^30");
    }
}
