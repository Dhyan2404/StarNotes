package org.apache.commons.math3.util;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.OutOfRangeException;

/* loaded from: classes12.dex */
public class Combinations implements Iterable<int[]> {

    /* renamed from: e */
    public final int f109814e;

    /* renamed from: f */
    public final int f109815f;

    /* renamed from: g */
    public final IterationOrder f109816g;

    /* loaded from: classes12.dex */
    public enum IterationOrder {
        LEXICOGRAPHIC
    }

    /* loaded from: classes12.dex */
    public static class LexicographicComparator implements Comparator<int[]>, Serializable {
        private static final long serialVersionUID = 20130906;

        /* renamed from: k */
        private final int f109817k;

        /* renamed from: n */
        private final int f109818n;

        public LexicographicComparator(int i, int i2) {
            this.f109818n = i;
            this.f109817k = i2;
        }

        private long lexNorm(int[] iArr) {
            int i;
            long j = 0;
            for (int i2 = 0; i2 < iArr.length; i2++) {
                int i3 = iArr[i2];
                if (i3 < 0 || i3 >= (i = this.f109818n)) {
                    throw new OutOfRangeException(Integer.valueOf(i3), 0, Integer.valueOf(this.f109818n - 1));
                }
                j += i3 * ArithmeticUtils.pow(i, i2);
            }
            return j;
        }

        @Override // java.util.Comparator
        public int compare(int[] iArr, int[] iArr2) {
            int length = iArr.length;
            int i = this.f109817k;
            if (length == i) {
                if (iArr2.length == i) {
                    int[] copyOf = MathArrays.copyOf(iArr);
                    Arrays.sort(copyOf);
                    int[] copyOf2 = MathArrays.copyOf(iArr2);
                    Arrays.sort(copyOf2);
                    long lexNorm = lexNorm(copyOf);
                    long lexNorm2 = lexNorm(copyOf2);
                    if (lexNorm < lexNorm2) {
                        return -1;
                    }
                    return lexNorm > lexNorm2 ? 1 : 0;
                }
                throw new DimensionMismatchException(iArr2.length, this.f109817k);
            }
            throw new DimensionMismatchException(iArr.length, this.f109817k);
        }
    }

    /* renamed from: org.apache.commons.math3.util.Combinations$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19285a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f109819a;

        static {
            int[] iArr = new int[IterationOrder.values().length];
            f109819a = iArr;
            try {
                iArr[IterationOrder.LEXICOGRAPHIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: org.apache.commons.math3.util.Combinations$b */
    /* loaded from: classes12.dex */
    public static class C19286b implements Iterator<int[]> {

        /* renamed from: e */
        public final int f109820e;

        /* renamed from: f */
        public final int[] f109821f;

        /* renamed from: g */
        public boolean f109822g;

        /* renamed from: h */
        public int f109823h;

        public C19286b(int i, int i2) {
            this.f109822g = true;
            this.f109820e = i2;
            this.f109821f = new int[i2 + 3];
            if (i2 == 0 || i2 >= i) {
                this.f109822g = false;
                return;
            }
            for (int i3 = 1; i3 <= i2; i3++) {
                this.f109821f[i3] = i3 - 1;
            }
            int[] iArr = this.f109821f;
            iArr[i2 + 1] = i;
            iArr[i2 + 2] = 0;
            this.f109823h = i2;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int[] next() {
            if (!this.f109822g) {
                throw new NoSuchElementException();
            }
            int i = this.f109820e;
            int[] iArr = new int[i];
            System.arraycopy(this.f109821f, 1, iArr, 0, i);
            int i2 = this.f109823h;
            if (i2 > 0) {
                this.f109821f[i2] = i2;
                this.f109823h = i2 - 1;
                return iArr;
            }
            int[] iArr2 = this.f109821f;
            int i3 = iArr2[1];
            if (i3 + 1 < iArr2[2]) {
                iArr2[1] = i3 + 1;
                return iArr;
            }
            this.f109823h = 2;
            boolean z = false;
            int i4 = 0;
            while (!z) {
                int[] iArr3 = this.f109821f;
                int i5 = this.f109823h;
                iArr3[i5 - 1] = i5 - 2;
                int i6 = iArr3[i5] + 1;
                if (i6 == iArr3[i5 + 1]) {
                    this.f109823h = i5 + 1;
                } else {
                    z = true;
                }
                i4 = i6;
            }
            int i7 = this.f109823h;
            if (i7 > this.f109820e) {
                this.f109822g = false;
                return iArr;
            }
            this.f109821f[i7] = i4;
            this.f109823h = i7 - 1;
            return iArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f109822g;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: org.apache.commons.math3.util.Combinations$c */
    /* loaded from: classes12.dex */
    public static class C19287c implements Iterator<int[]> {

        /* renamed from: e */
        public final int[] f109824e;

        /* renamed from: f */
        public boolean f109825f = true;

        public C19287c(int[] iArr) {
            this.f109824e = iArr;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int[] next() {
            if (!this.f109825f) {
                throw new NoSuchElementException();
            }
            this.f109825f = false;
            return this.f109824e;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f109825f;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public Combinations(int i, int i2) {
        this(i, i2, IterationOrder.LEXICOGRAPHIC);
    }

    public Comparator<int[]> comparator() {
        return new LexicographicComparator(this.f109814e, this.f109815f);
    }

    public int getK() {
        return this.f109815f;
    }

    public int getN() {
        return this.f109814e;
    }

    @Override // java.lang.Iterable
    public Iterator<int[]> iterator() {
        int i = this.f109815f;
        if (i == 0 || i == this.f109814e) {
            return new C19287c(MathArrays.natural(i));
        }
        if (C19285a.f109819a[this.f109816g.ordinal()] == 1) {
            return new C19286b(this.f109814e, this.f109815f);
        }
        throw new MathInternalError();
    }

    public Combinations(int i, int i2, IterationOrder iterationOrder) {
        CombinatoricsUtils.checkBinomial(i, i2);
        this.f109814e = i;
        this.f109815f = i2;
        this.f109816g = iterationOrder;
    }
}
