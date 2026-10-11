package io.reactivex.rxjava3.internal.util;

/* loaded from: classes10.dex */
public final class OpenHashSet<T> {

    /* renamed from: f */
    public static final int f97424f = -1640531527;

    /* renamed from: a */
    public final float f97425a;

    /* renamed from: b */
    public int f97426b;

    /* renamed from: c */
    public int f97427c;

    /* renamed from: d */
    public int f97428d;

    /* renamed from: e */
    public T[] f97429e;

    public OpenHashSet() {
        this(16, 0.75f);
    }

    /* renamed from: a */
    public static int m61288a(int x) {
        int i = x * (-1640531527);
        return i ^ (i >>> 16);
    }

    public boolean add(T value) {
        T t;
        T[] tArr = this.f97429e;
        int i = this.f97426b;
        int m61288a = m61288a(value.hashCode()) & i;
        T t2 = tArr[m61288a];
        if (t2 != null) {
            if (t2.equals(value)) {
                return false;
            }
            do {
                m61288a = (m61288a + 1) & i;
                t = tArr[m61288a];
                if (t == null) {
                }
            } while (!t.equals(value));
            return false;
        }
        tArr[m61288a] = value;
        int i2 = this.f97427c + 1;
        this.f97427c = i2;
        if (i2 >= this.f97428d) {
            m61289b();
        }
        return true;
    }

    /* renamed from: b */
    public void m61289b() {
        T t;
        T[] tArr = this.f97429e;
        int length = tArr.length;
        int i = length << 1;
        int i2 = i - 1;
        T[] tArr2 = (T[]) new Object[i];
        int i3 = this.f97427c;
        while (true) {
            int i4 = i3 - 1;
            if (i3 == 0) {
                this.f97426b = i2;
                this.f97428d = (int) (i * this.f97425a);
                this.f97429e = tArr2;
                return;
            }
            do {
                length--;
                t = tArr[length];
            } while (t == null);
            int m61288a = m61288a(t.hashCode()) & i2;
            if (tArr2[m61288a] == null) {
                tArr2[m61288a] = tArr[length];
                i3 = i4;
            }
            do {
                m61288a = (m61288a + 1) & i2;
            } while (tArr2[m61288a] != null);
            tArr2[m61288a] = tArr[length];
            i3 = i4;
        }
    }

    /* renamed from: c */
    public boolean m61290c(int pos, T[] a, int m) {
        int i;
        T t;
        this.f97427c--;
        while (true) {
            int i2 = pos + 1;
            while (true) {
                i = i2 & m;
                t = a[i];
                if (t == null) {
                    a[pos] = null;
                    return true;
                }
                int m61288a = m61288a(t.hashCode()) & m;
                if (pos > i) {
                    if (pos >= m61288a && m61288a > i) {
                        break;
                    }
                    i2 = i + 1;
                } else if (pos < m61288a && m61288a <= i) {
                    i2 = i + 1;
                }
            }
            a[pos] = t;
            pos = i;
        }
    }

    public Object[] keys() {
        return this.f97429e;
    }

    public boolean remove(T value) {
        T t;
        T[] tArr = this.f97429e;
        int i = this.f97426b;
        int m61288a = m61288a(value.hashCode()) & i;
        T t2 = tArr[m61288a];
        if (t2 == null) {
            return false;
        }
        if (t2.equals(value)) {
            return m61290c(m61288a, tArr, i);
        }
        do {
            m61288a = (m61288a + 1) & i;
            t = tArr[m61288a];
            if (t == null) {
                return false;
            }
        } while (!t.equals(value));
        return m61290c(m61288a, tArr, i);
    }

    public int size() {
        return this.f97427c;
    }

    public OpenHashSet(int capacity) {
        this(capacity, 0.75f);
    }

    public OpenHashSet(int i, float f) {
        this.f97425a = f;
        int roundToPowerOfTwo = Pow2.roundToPowerOfTwo(i);
        this.f97426b = roundToPowerOfTwo - 1;
        this.f97428d = (int) (f * roundToPowerOfTwo);
        this.f97429e = (T[]) new Object[roundToPowerOfTwo];
    }
}
