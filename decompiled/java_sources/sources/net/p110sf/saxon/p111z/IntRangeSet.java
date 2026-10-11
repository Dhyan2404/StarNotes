package net.p110sf.saxon.p111z;

import com.onyx.android.sdk.replicator.utils.SyncConstant;
import java.util.Arrays;

/* loaded from: classes11.dex */
public class IntRangeSet extends IntSet {

    /* renamed from: a */
    public int[] f103020a;

    /* renamed from: b */
    public int[] f103021b;

    /* renamed from: c */
    public int f103022c;

    /* renamed from: d */
    public int f103023d;

    /* renamed from: e */
    public int f103024e;

    /* renamed from: net.sf.saxon.z.IntRangeSet$a */
    /* loaded from: classes11.dex */
    public static class C18589a implements IntIterator {

        /* renamed from: a */
        public IntRangeSet f103025a;

        /* renamed from: b */
        public int f103026b = -1;

        /* renamed from: c */
        public int f103027c = Integer.MIN_VALUE;

        public C18589a(IntRangeSet intRangeSet) {
            this.f103025a = intRangeSet;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            return this.f103026b < 0 ? this.f103025a.f103024e > 0 : this.f103027c < this.f103025a.f103021b[this.f103025a.f103022c - 1];
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            if (this.f103026b < 0) {
                this.f103026b = 0;
                int i = this.f103025a.f103020a[0];
                this.f103027c = i;
                return i;
            }
            if (this.f103027c != this.f103025a.f103021b[this.f103026b]) {
                int i2 = this.f103027c + 1;
                this.f103027c = i2;
                return i2;
            }
            int[] iArr = this.f103025a.f103020a;
            int i3 = this.f103026b + 1;
            this.f103026b = i3;
            int i4 = iArr[i3];
            this.f103027c = i4;
            return i4;
        }
    }

    public IntRangeSet() {
        this.f103020a = new int[4];
        this.f103021b = new int[4];
        this.f103022c = 0;
        this.f103024e = 0;
        this.f103023d = -1;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean add(int i) {
        this.f103023d = -1;
        int i2 = this.f103022c;
        if (i2 == 0) {
            m64723e(1);
            int[] iArr = this.f103020a;
            int i3 = this.f103022c;
            iArr[i3 - 1] = i;
            this.f103021b[i3 - 1] = i;
            this.f103024e++;
            return true;
        }
        int[] iArr2 = this.f103021b;
        if (i > iArr2[i2 - 1]) {
            if (i == iArr2[i2 - 1] + 1) {
                int i4 = i2 - 1;
                iArr2[i4] = iArr2[i4] + 1;
            } else {
                m64723e(i2 + 1);
                int[] iArr3 = this.f103020a;
                int i5 = this.f103022c;
                iArr3[i5 - 1] = i;
                this.f103021b[i5 - 1] = i;
            }
            this.f103024e++;
            return true;
        }
        int[] iArr4 = this.f103020a;
        int i6 = iArr4[0];
        if (i < i6) {
            if (i == i6 - 1) {
                iArr4[0] = i6 - 1;
            } else {
                m64723e(i2 + 1);
                int[] iArr5 = this.f103020a;
                System.arraycopy(iArr5, 0, iArr5, 1, this.f103022c - 1);
                int[] iArr6 = this.f103021b;
                System.arraycopy(iArr6, 0, iArr6, 1, this.f103022c - 1);
                this.f103020a[0] = i;
                this.f103021b[0] = i;
            }
            this.f103024e++;
            return true;
        }
        int i7 = 0;
        do {
            int i8 = ((i2 - i7) / 2) + i7;
            if (this.f103021b[i8] < i) {
                i7 = Math.max(i8, i7 + 1);
            } else {
                if (this.f103020a[i8] <= i) {
                    return false;
                }
                i2 = Math.min(i8, i2 - 1);
            }
        } while (i7 != i2);
        if (i7 > 0 && this.f103021b[i7 - 1] + 1 == i) {
            i7--;
        } else if (i7 < this.f103022c - 1) {
            int i9 = i7 + 1;
            if (this.f103020a[i9] - 1 == i) {
                i7 = i9;
            }
        }
        int[] iArr7 = this.f103021b;
        int i10 = iArr7[i7];
        if (i10 + 1 == i) {
            int[] iArr8 = this.f103020a;
            int i11 = i7 + 1;
            if (i == iArr8[i11] - 1) {
                iArr7[i7] = iArr7[i11];
                int i12 = i7 + 2;
                System.arraycopy(iArr8, i12, iArr8, i11, (this.f103022c - i7) - 2);
                int[] iArr9 = this.f103021b;
                System.arraycopy(iArr9, i12, iArr9, i11, (this.f103022c - i7) - 2);
                this.f103022c--;
            } else {
                iArr7[i7] = i10 + 1;
            }
            this.f103024e++;
            return true;
        }
        int[] iArr10 = this.f103020a;
        int i13 = iArr10[i7];
        if (i13 - 1 == i) {
            int i14 = i7 - 1;
            if (i == iArr7[i14] + 1) {
                iArr7[i14] = i10;
                int i15 = i7 + 1;
                System.arraycopy(iArr10, i15, iArr10, i7, (this.f103022c - i7) - 1);
                int[] iArr11 = this.f103021b;
                System.arraycopy(iArr11, i15, iArr11, i7, (this.f103022c - i7) - 1);
                this.f103022c--;
            } else {
                iArr10[i7] = i13 - 1;
            }
            this.f103024e++;
            return true;
        }
        if (i > i10) {
            i7++;
        }
        m64723e(this.f103022c + 1);
        try {
            int[] iArr12 = this.f103020a;
            int i16 = i7 + 1;
            System.arraycopy(iArr12, i7, iArr12, i16, (this.f103022c - i7) - 1);
            int[] iArr13 = this.f103021b;
            System.arraycopy(iArr13, i7, iArr13, i16, (this.f103022c - i7) - 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f103020a[i7] = i;
        this.f103021b[i7] = i;
        this.f103024e++;
        return true;
    }

    public void addRange(int i, int i2) {
        if (i == i2) {
            add(i);
            return;
        }
        this.f103023d = -1;
        int i3 = this.f103022c;
        if (i3 == 0) {
            m64723e(1);
            int[] iArr = this.f103020a;
            int i4 = this.f103022c;
            iArr[i4 - 1] = i;
            this.f103021b[i4 - 1] = i2;
            this.f103024e += (i2 - i) + 1;
            return;
        }
        int[] iArr2 = this.f103021b;
        if (i > iArr2[i3 - 1]) {
            if (i == iArr2[i3 - 1] + 1) {
                iArr2[i3 - 1] = i2;
            } else {
                m64723e(i3 + 1);
                int[] iArr3 = this.f103020a;
                int i5 = this.f103022c;
                iArr3[i5 - 1] = i;
                this.f103021b[i5 - 1] = i2;
            }
            this.f103024e += (i2 - i) + 1;
            return;
        }
        if (i2 < this.f103020a[0]) {
            m64723e(i3 + 1);
            int[] iArr4 = this.f103020a;
            System.arraycopy(iArr4, 0, iArr4, 1, this.f103022c - 1);
            int[] iArr5 = this.f103021b;
            System.arraycopy(iArr5, 0, iArr5, 1, this.f103022c - 1);
            this.f103020a[0] = i;
            this.f103021b[0] = i2;
            return;
        }
        int i6 = 1;
        while (true) {
            int i7 = this.f103022c;
            if (i6 >= i7) {
                while (i <= i2) {
                    add(i);
                    i++;
                }
                return;
            } else {
                if (this.f103020a[i6] > i2 && this.f103021b[i6 - 1] < i) {
                    m64723e(i7 + 1);
                    int[] iArr6 = this.f103020a;
                    int i8 = i6 + 1;
                    System.arraycopy(iArr6, i6, iArr6, i8, (this.f103022c - i6) - 1);
                    int[] iArr7 = this.f103021b;
                    System.arraycopy(iArr7, i6, iArr7, i8, (this.f103022c - i6) - 1);
                    this.f103020a[i6] = i;
                    this.f103021b[i6] = i2;
                    return;
                }
                i6++;
            }
        }
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public void clear() {
        this.f103020a = new int[4];
        this.f103021b = new int[4];
        this.f103022c = 0;
        this.f103023d = -1;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean contains(int i) {
        int i2 = this.f103022c;
        if (i2 == 0 || i > this.f103021b[i2 - 1] || i < this.f103020a[0]) {
            return false;
        }
        int i3 = 0;
        do {
            int i4 = ((i2 - i3) / 2) + i3;
            if (this.f103021b[i4] < i) {
                i3 = Math.max(i4, i3 + 1);
            } else {
                if (this.f103020a[i4] <= i) {
                    return true;
                }
                i2 = Math.min(i4, i2 - 1);
            }
        } while (i3 != i2);
        return false;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet copy() {
        IntRangeSet intRangeSet = new IntRangeSet();
        int[] iArr = new int[this.f103020a.length];
        intRangeSet.f103020a = iArr;
        int[] iArr2 = this.f103020a;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        int[] iArr3 = new int[this.f103021b.length];
        intRangeSet.f103021b = iArr3;
        int[] iArr4 = this.f103021b;
        System.arraycopy(iArr4, 0, iArr3, 0, iArr4.length);
        intRangeSet.f103022c = this.f103022c;
        intRangeSet.f103024e = this.f103024e;
        return intRangeSet;
    }

    /* renamed from: e */
    public final void m64723e(int i) {
        int[] iArr = this.f103020a;
        if (iArr.length < i) {
            int[] iArr2 = new int[iArr.length * 2];
            int[] iArr3 = new int[iArr.length * 2];
            System.arraycopy(iArr, 0, iArr2, 0, this.f103022c);
            System.arraycopy(this.f103021b, 0, iArr3, 0, this.f103022c);
            this.f103020a = iArr2;
            this.f103021b = iArr3;
        }
        this.f103022c = i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof IntSet)) {
            return false;
        }
        if (!(obj instanceof IntRangeSet)) {
            return containsAll((IntSet) obj);
        }
        IntRangeSet intRangeSet = (IntRangeSet) obj;
        return this.f103022c == intRangeSet.f103022c && Arrays.equals(this.f103020a, intRangeSet.f103020a) && Arrays.equals(this.f103021b, intRangeSet.f103021b);
    }

    public int[] getEndPoints() {
        return this.f103021b;
    }

    public int getNumberOfRanges() {
        return this.f103022c;
    }

    public int[] getStartPoints() {
        return this.f103020a;
    }

    public int hashCode() {
        if (this.f103023d == -1) {
            int i = 1131055601;
            for (int i2 = 0; i2 < this.f103022c; i2++) {
                i ^= this.f103020a[i2] + (this.f103021b[i2] << 3);
            }
            this.f103023d = i;
        }
        return this.f103023d;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean isEmpty() {
        return this.f103024e == 0;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean isMutable() {
        return false;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntIterator iterator() {
        return new C18589a(this);
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet mutableCopy() {
        return copy();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean remove(int i) {
        throw new UnsupportedOperationException(SyncConstant.SYNC_ACTION_REMOVE);
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public int size() {
        return this.f103024e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.f103022c * 8);
        for (int i = 0; i < this.f103022c; i++) {
            sb.append(this.f103020a[i] + "-" + this.f103021b[i] + ",");
        }
        return sb.toString();
    }

    public IntRangeSet(IntRangeSet intRangeSet) {
        this.f103022c = 0;
        this.f103023d = -1;
        this.f103024e = 0;
        int i = intRangeSet.f103022c;
        int[] iArr = new int[i];
        this.f103020a = iArr;
        this.f103021b = new int[i];
        this.f103022c = i;
        System.arraycopy(intRangeSet.f103020a, 0, iArr, 0, i);
        System.arraycopy(intRangeSet.f103021b, 0, this.f103021b, 0, this.f103022c);
        this.f103023d = intRangeSet.f103023d;
    }

    public IntRangeSet(int[] iArr, int[] iArr2) {
        this.f103022c = 0;
        this.f103023d = -1;
        this.f103024e = 0;
        if (iArr.length == iArr2.length) {
            this.f103020a = iArr;
            this.f103021b = iArr2;
            this.f103022c = iArr.length;
            for (int i = 0; i < this.f103022c; i++) {
                this.f103024e += (iArr2[i] - iArr[i]) + 1;
            }
            return;
        }
        throw new IllegalArgumentException("Array lengths differ");
    }
}
