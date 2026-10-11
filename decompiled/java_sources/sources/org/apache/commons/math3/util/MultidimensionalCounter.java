package org.apache.commons.math3.util;

import java.util.NoSuchElementException;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;

/* loaded from: classes12.dex */
public class MultidimensionalCounter implements Iterable<Integer> {

    /* renamed from: e */
    public final int f109914e;

    /* renamed from: f */
    public final int[] f109915f;

    /* renamed from: g */
    public final int[] f109916g;

    /* renamed from: h */
    public final int f109917h;

    /* renamed from: i */
    public final int f109918i;

    /* loaded from: classes12.dex */
    public class Iterator implements java.util.Iterator<Integer> {

        /* renamed from: e */
        public final int[] f109919e;

        /* renamed from: f */
        public int f109920f;

        /* renamed from: g */
        public final int f109921g;

        public Iterator() {
            int[] iArr = new int[MultidimensionalCounter.this.f109914e];
            this.f109919e = iArr;
            this.f109920f = -1;
            this.f109921g = MultidimensionalCounter.this.f109917h - 1;
            iArr[MultidimensionalCounter.this.f109918i] = -1;
        }

        public int getCount() {
            return this.f109920f;
        }

        public int[] getCounts() {
            return MathArrays.copyOf(this.f109919e);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f109920f < this.f109921g;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public int getCount(int i) {
            return this.f109919e[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public Integer next() {
            if (hasNext()) {
                int i = MultidimensionalCounter.this.f109918i;
                while (true) {
                    if (i >= 0) {
                        if (this.f109919e[i] == MultidimensionalCounter.this.f109916g[i] - 1) {
                            this.f109919e[i] = 0;
                            i--;
                        } else {
                            int[] iArr = this.f109919e;
                            iArr[i] = iArr[i] + 1;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                int i2 = this.f109920f + 1;
                this.f109920f = i2;
                return Integer.valueOf(i2);
            }
            throw new NoSuchElementException();
        }
    }

    public MultidimensionalCounter(int... iArr) throws NotStrictlyPositiveException {
        int i;
        int length = iArr.length;
        this.f109914e = length;
        this.f109916g = MathArrays.copyOf(iArr);
        this.f109915f = new int[length];
        int i2 = length - 1;
        this.f109918i = i2;
        int i3 = iArr[i2];
        int i4 = 0;
        while (true) {
            i = this.f109918i;
            if (i4 >= i) {
                break;
            }
            int i5 = i4 + 1;
            int i6 = 1;
            for (int i7 = i5; i7 < this.f109914e; i7++) {
                i6 *= iArr[i7];
            }
            this.f109915f[i4] = i6;
            i3 *= iArr[i4];
            i4 = i5;
        }
        this.f109915f[i] = 0;
        if (i3 <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i3));
        }
        this.f109917h = i3;
    }

    public int getCount(int... iArr) throws OutOfRangeException, DimensionMismatchException {
        if (iArr.length != this.f109914e) {
            throw new DimensionMismatchException(iArr.length, this.f109914e);
        }
        int i = 0;
        for (int i2 = 0; i2 < this.f109914e; i2++) {
            int i3 = iArr[i2];
            if (i3 < 0 || i3 >= this.f109916g[i2]) {
                throw new OutOfRangeException(Integer.valueOf(i3), 0, Integer.valueOf(this.f109916g[i2] - 1));
            }
            i += this.f109915f[i2] * i3;
        }
        return i + iArr[this.f109918i];
    }

    public int[] getCounts(int i) throws OutOfRangeException {
        if (i < 0 || i >= this.f109917h) {
            throw new OutOfRangeException(Integer.valueOf(i), 0, Integer.valueOf(this.f109917h));
        }
        int[] iArr = new int[this.f109914e];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = this.f109918i;
            if (i2 >= i4) {
                iArr[i4] = i - i3;
                return iArr;
            }
            int i5 = this.f109915f[i2];
            int i6 = 0;
            while (i3 <= i) {
                i3 += i5;
                i6++;
            }
            i3 -= i5;
            iArr[i2] = i6 - 1;
            i2++;
        }
    }

    public int getDimension() {
        return this.f109914e;
    }

    public int getSize() {
        return this.f109917h;
    }

    public int[] getSizes() {
        return MathArrays.copyOf(this.f109916g);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.f109914e; i++) {
            sb.append(IteratorUtils.f104923a);
            sb.append(getCount(i));
            sb.append(IteratorUtils.f104924b);
        }
        return sb.toString();
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<Integer> iterator() {
        return new Iterator();
    }
}
