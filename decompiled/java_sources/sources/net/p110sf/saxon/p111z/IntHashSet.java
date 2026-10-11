package net.p110sf.saxon.p111z;

import java.util.Arrays;

/* loaded from: classes11.dex */
public class IntHashSet extends IntSet {

    /* renamed from: i */
    public static final int f103005i = 30;

    /* renamed from: j */
    public static final int f103006j = 1073741824;

    /* renamed from: a */
    public final int f103007a;

    /* renamed from: b */
    public int f103008b;

    /* renamed from: c */
    public int f103009c;

    /* renamed from: d */
    public int f103010d;

    /* renamed from: e */
    public int f103011e;

    /* renamed from: f */
    public int f103012f;

    /* renamed from: g */
    public int f103013g;

    /* renamed from: h */
    public int[] f103014h;

    /* renamed from: net.sf.saxon.z.IntHashSet$a */
    /* loaded from: classes11.dex */
    public static class C18588a implements IntIterator {

        /* renamed from: a */
        public final IntHashSet f103015a;

        /* renamed from: b */
        public int f103016b = 0;

        public C18588a(IntHashSet intHashSet) {
            this.f103015a = intHashSet;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            while (this.f103016b < this.f103015a.f103014h.length) {
                if (this.f103015a.f103014h[this.f103016b] != this.f103015a.f103007a) {
                    return true;
                }
                this.f103016b++;
            }
            return false;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            int[] iArr = this.f103015a.f103014h;
            int i = this.f103016b;
            this.f103016b = i + 1;
            return iArr[i];
        }
    }

    public IntHashSet() {
        this(8, Integer.MIN_VALUE);
    }

    public static boolean containsSome(IntSet intSet, IntSet intSet2) {
        if (intSet2 instanceof IntEmptySet) {
            return false;
        }
        if (intSet2 instanceof IntUniversalSet) {
            return !intSet.isEmpty();
        }
        if (intSet2 instanceof IntComplementSet) {
            return !((IntComplementSet) intSet2).getExclusions().containsAll(intSet);
        }
        IntIterator it2 = intSet2.iterator();
        while (it2.hasNext()) {
            if (intSet.contains(it2.next())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: of */
    public static IntHashSet m64712of(int... iArr) {
        IntHashSet intHashSet = new IntHashSet(iArr.length);
        for (int i : iArr) {
            intHashSet.add(i);
        }
        return intHashSet;
    }

    public static String stringify(IntIterator intIterator) {
        StringBuilder sb = new StringBuilder(100);
        while (intIterator.hasNext()) {
            if (sb.length() == 0) {
                sb.append(intIterator.next());
            } else {
                sb.append(' ');
                sb.append(intIterator.next());
            }
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean add(int i) {
        if (i == this.f103007a) {
            throw new IllegalArgumentException("Can't add the 'no data' value");
        }
        int m64714d = m64714d(i);
        int[] iArr = this.f103014h;
        if (iArr[m64714d] != this.f103007a) {
            return false;
        }
        int i2 = this.f103009c + 1;
        this.f103009c = i2;
        iArr[m64714d] = i;
        if (i2 > 1073741824) {
            throw new RuntimeException("Too many elements (> 1073741824)");
        }
        if (this.f103010d < i2 && i2 <= this.f103011e) {
            m64715e(i2);
        }
        return true;
    }

    /* renamed from: c */
    public final int m64713c(int i) {
        return this.f103013g & ((i * 1327217885) >> this.f103012f);
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public void clear() {
        this.f103009c = 0;
        for (int i = 0; i < this.f103008b; i++) {
            this.f103014h[i] = this.f103007a;
        }
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean contains(int i) {
        return this.f103014h[m64714d(i)] != this.f103007a;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet copy() {
        int i = this.f103009c;
        if (i == 0) {
            return IntEmptySet.getInstance();
        }
        IntHashSet intHashSet = new IntHashSet(i, this.f103007a);
        intHashSet.f103008b = this.f103008b;
        intHashSet.f103009c = this.f103009c;
        intHashSet.f103010d = this.f103010d;
        intHashSet.f103011e = this.f103011e;
        intHashSet.f103012f = this.f103012f;
        intHashSet.f103013g = this.f103013g;
        int[] iArr = new int[this.f103014h.length];
        intHashSet.f103014h = iArr;
        int[] iArr2 = this.f103014h;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        return intHashSet;
    }

    /* renamed from: d */
    public final int m64714d(int i) {
        int m64713c = m64713c(i);
        while (true) {
            int i2 = this.f103014h[m64713c];
            if (i2 == this.f103007a || i2 == i) {
                return m64713c;
            }
            m64713c = (m64713c - 1) & this.f103013g;
        }
    }

    /* renamed from: e */
    public final void m64715e(int i) {
        int i2 = this.f103009c;
        if (i < i2) {
            i = i2;
        }
        int i3 = 2;
        int i4 = 1;
        while (i3 < i * 4 && i3 < 1073741824) {
            i4++;
            i3 *= 2;
        }
        int i5 = this.f103008b;
        if (i3 == i5) {
            return;
        }
        this.f103008b = i3;
        this.f103010d = i3 / 4;
        this.f103011e = 268435456;
        this.f103012f = 31 - i4;
        this.f103013g = i3 - 1;
        this.f103009c = 0;
        int[] iArr = this.f103014h;
        int[] iArr2 = new int[i3];
        this.f103014h = iArr2;
        Arrays.fill(iArr2, this.f103007a);
        if (iArr != null) {
            for (int i6 = 0; i6 < i5; i6++) {
                int i7 = iArr[i6];
                if (i7 != this.f103007a) {
                    this.f103009c++;
                    this.f103014h[m64714d(i7)] = i7;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof IntSet)) {
            return false;
        }
        IntHashSet intHashSet = (IntHashSet) obj;
        return size() == intHashSet.size() && containsAll(intHashSet);
    }

    public int[] getValues() {
        int[] iArr = new int[this.f103009c];
        int i = 0;
        for (int i2 : this.f103014h) {
            if (i2 != this.f103007a) {
                iArr[i] = i2;
                i++;
            }
        }
        return iArr;
    }

    public int hashCode() {
        IntIterator it2 = iterator();
        int i = 936247625;
        while (it2.hasNext()) {
            i += it2.next();
        }
        return i;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean isEmpty() {
        return this.f103009c == 0;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntIterator iterator() {
        return new C18588a(this);
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet mutableCopy() {
        return copy();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean remove(int i) {
        int m64714d = m64714d(i);
        if (this.f103014h[m64714d] == this.f103007a) {
            return false;
        }
        this.f103009c--;
        while (true) {
            this.f103014h[m64714d] = this.f103007a;
            int i2 = m64714d;
            while (true) {
                i2 = (i2 - 1) & this.f103013g;
                int i3 = this.f103014h[i2];
                if (i3 == this.f103007a) {
                    return true;
                }
                int m64713c = m64713c(i3);
                if (i2 > m64713c || m64713c >= m64714d) {
                    if (m64713c >= m64714d || m64714d >= i2) {
                        if (m64714d >= i2 || i2 > m64713c) {
                        }
                    }
                }
            }
            int[] iArr = this.f103014h;
            iArr[m64714d] = iArr[i2];
            m64714d = i2;
        }
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public int size() {
        return this.f103009c;
    }

    public String toString() {
        return stringify(iterator());
    }

    public IntHashSet(int i) {
        this(i, Integer.MIN_VALUE);
    }

    public IntHashSet(int i, int i2) {
        this.f103007a = i2;
        m64715e(i);
    }
}
