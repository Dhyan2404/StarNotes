package sun.awt.geom;

import java.awt.geom.PathIterator;
import java.util.Enumeration;
import java.util.Vector;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes16.dex */
public abstract class Crossings {
    public static final boolean debug = false;
    double xhi;
    double xlo;
    double yhi;
    double ylo;
    int limit = 0;
    double[] yranges = new double[10];
    private Vector tmp = new Vector();

    /* loaded from: classes16.dex */
    public static final class EvenOdd extends Crossings {
        public EvenOdd(double d, double d2, double d3, double d4) {
            super(d, d2, d3, d4);
        }

        @Override // sun.awt.geom.Crossings
        public final boolean covers(double d, double d2) {
            if (this.limit != 2) {
                return false;
            }
            double[] dArr = this.yranges;
            return dArr[0] <= d && dArr[1] >= d2;
        }

        @Override // sun.awt.geom.Crossings
        public void record(double d, double d2, int i) {
            int i2;
            if (d >= d2) {
                return;
            }
            int i3 = 0;
            while (i3 < this.limit && d > this.yranges[i3 + 1]) {
                i3 += 2;
            }
            double d3 = d2;
            int i4 = i3;
            int i5 = i4;
            double d4 = d;
            while (true) {
                i2 = this.limit;
                if (i4 >= i2) {
                    break;
                }
                double[] dArr = this.yranges;
                int i6 = i4 + 1;
                double d5 = dArr[i4];
                i4 = i6 + 1;
                double d6 = dArr[i6];
                if (d3 < d5) {
                    int i7 = i5 + 1;
                    dArr[i5] = d4;
                    i5 = i7 + 1;
                    dArr[i7] = d3;
                    d4 = d5;
                } else {
                    if (d4 < d5) {
                        double d7 = d4;
                        d4 = d5;
                        d5 = d7;
                    }
                    if (d3 >= d6) {
                        double d8 = d3;
                        d3 = d6;
                        d6 = d8;
                    }
                    if (d4 == d3) {
                        d4 = d5;
                    } else {
                        if (d4 > d3) {
                            double d9 = d4;
                            d4 = d3;
                            d3 = d9;
                        }
                        if (d5 != d4) {
                            int i8 = i5 + 1;
                            dArr[i5] = d5;
                            i5 = i8 + 1;
                            dArr[i8] = d4;
                        }
                        d4 = d3;
                    }
                    if (d4 >= d6) {
                        d3 = d6;
                        break;
                    }
                }
                d3 = d6;
            }
            if (i5 < i4 && i4 < i2) {
                double[] dArr2 = this.yranges;
                System.arraycopy(dArr2, i4, dArr2, i5, i2 - i4);
            }
            int i9 = i5 + (this.limit - i4);
            if (d4 < d3) {
                double[] dArr3 = this.yranges;
                if (i9 >= dArr3.length) {
                    double[] dArr4 = new double[i9 + 10];
                    System.arraycopy(dArr3, 0, dArr4, 0, i9);
                    this.yranges = dArr4;
                }
                double[] dArr5 = this.yranges;
                int i10 = i9 + 1;
                dArr5[i9] = d4;
                i9 = i10 + 1;
                dArr5[i10] = d3;
            }
            this.limit = i9;
        }
    }

    /* loaded from: classes16.dex */
    public static final class NonZero extends Crossings {
        private int[] crosscounts;

        public NonZero(double d, double d2, double d3, double d4) {
            super(d, d2, d3, d4);
            this.crosscounts = new int[this.yranges.length / 2];
        }

        @Override // sun.awt.geom.Crossings
        public final boolean covers(double d, double d2) {
            int i = 0;
            while (i < this.limit) {
                double[] dArr = this.yranges;
                int i2 = i + 1;
                double d3 = dArr[i];
                i = i2 + 1;
                double d4 = dArr[i2];
                if (d < d4) {
                    if (d < d3) {
                        return false;
                    }
                    if (d2 <= d4) {
                        return true;
                    }
                    d = d4;
                }
            }
            return d >= d2;
        }

        public void insert(int i, double d, double d2, int i2) {
            int i3 = this.limit;
            int i4 = i3 - i;
            double[] dArr = this.yranges;
            int[] iArr = this.crosscounts;
            if (i3 >= dArr.length) {
                double[] dArr2 = new double[i3 + 10];
                this.yranges = dArr2;
                System.arraycopy(dArr, 0, dArr2, 0, i);
                int[] iArr2 = new int[(this.limit + 10) / 2];
                this.crosscounts = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, i / 2);
            }
            if (i4 > 0) {
                System.arraycopy(dArr, i, this.yranges, i + 2, i4);
                int i5 = i / 2;
                System.arraycopy(iArr, i5, this.crosscounts, i5 + 1, i4 / 2);
            }
            double[] dArr3 = this.yranges;
            dArr3[i + 0] = d;
            dArr3[i + 1] = d2;
            this.crosscounts[i / 2] = i2;
            this.limit += 2;
        }

        @Override // sun.awt.geom.Crossings
        public void record(double d, double d2, int i) {
            int i2;
            double d3;
            int i3;
            int i4;
            double d4;
            double d5;
            double d6;
            int i5;
            double d7;
            if (d >= d2) {
                return;
            }
            int i6 = 0;
            while (true) {
                i2 = this.limit;
                if (i6 >= i2 || d <= this.yranges[i6 + 1]) {
                    break;
                } else {
                    i6 += 2;
                }
            }
            if (i6 < i2) {
                int i7 = i6 / 2;
                int i8 = this.crosscounts[i7];
                double[] dArr = this.yranges;
                int i9 = i6 + 0;
                double d8 = dArr[i9];
                int i10 = i6 + 1;
                double d9 = dArr[i10];
                if (d9 != d || i8 != i) {
                    i4 = i8;
                    d4 = d9;
                    d5 = d;
                    d6 = d8;
                } else {
                    if (i6 + 2 == i2) {
                        dArr[i10] = d2;
                        return;
                    }
                    remove(i6);
                    int i11 = this.crosscounts[i7];
                    double[] dArr2 = this.yranges;
                    double d10 = dArr2[i9];
                    d5 = d8;
                    d4 = dArr2[i10];
                    i4 = i11;
                    d6 = d10;
                }
                if (d2 < d6) {
                    insert(i6, d5, d2, i);
                    return;
                }
                if (d2 == d6 && i4 == i) {
                    this.yranges[i6] = d5;
                    return;
                }
                if (d5 < d6) {
                    i5 = i4;
                    insert(i6, d5, d6, i);
                    i6 += 2;
                    double d11 = d6;
                    d7 = d4;
                    d5 = d11;
                } else {
                    i5 = i4;
                    if (d6 < d5) {
                        double d12 = d6;
                        d7 = d4;
                        insert(i6, d12, d5, i5);
                        i6 += 2;
                    } else {
                        d7 = d4;
                    }
                }
                int i12 = i5 + i;
                double min = Math.min(d2, d7);
                if (i12 == 0) {
                    remove(i6);
                } else {
                    this.crosscounts[i6 / 2] = i12;
                    double[] dArr3 = this.yranges;
                    int i13 = i6 + 1;
                    dArr3[i6] = d5;
                    i6 = i13 + 1;
                    dArr3[i13] = min;
                }
                if (min < d7) {
                    insert(i6, min, d7, i5);
                }
                i3 = i6;
                d3 = min;
            } else {
                d3 = d;
                i3 = i6;
            }
            if (d3 < d2) {
                insert(i3, d3, d2, i);
            }
        }

        public void remove(int i) {
            int i2 = this.limit - 2;
            this.limit = i2;
            int i3 = i2 - i;
            if (i3 > 0) {
                double[] dArr = this.yranges;
                System.arraycopy(dArr, i + 2, dArr, i, i3);
                int[] iArr = this.crosscounts;
                int i4 = i / 2;
                System.arraycopy(iArr, i4 + 1, iArr, i4, i3 / 2);
            }
        }
    }

    public Crossings(double d, double d2, double d3, double d4) {
        this.xlo = d;
        this.ylo = d2;
        this.xhi = d3;
        this.yhi = d4;
    }

    public static Crossings findCrossings(Vector vector, double d, double d2, double d3, double d4) {
        EvenOdd evenOdd = new EvenOdd(d, d2, d3, d4);
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            if (((Curve) elements.nextElement()).accumulateCrossings(evenOdd)) {
                return null;
            }
        }
        return evenOdd;
    }

    public boolean accumulateCubic(double d, double d2, double[] dArr) {
        double d3 = this.ylo;
        if (d2 < d3 && dArr[1] < d3 && dArr[3] < d3 && dArr[5] < d3) {
            return false;
        }
        double d4 = this.yhi;
        if (d2 > d4 && dArr[1] > d4 && dArr[3] > d4 && dArr[5] > d4) {
            return false;
        }
        double d5 = this.xhi;
        if (d > d5 && dArr[0] > d5 && dArr[2] > d5 && dArr[4] > d5) {
            return false;
        }
        double d6 = this.xlo;
        if (d < d6 && dArr[0] < d6 && dArr[2] < d6 && dArr[4] < d6) {
            double d7 = dArr[5];
            if (d2 <= d7) {
                record(Math.max(d2, d3), Math.min(dArr[5], this.yhi), 1);
            } else {
                record(Math.max(d7, d3), Math.min(d2, this.yhi), -1);
            }
            return false;
        }
        Curve.insertCubic(this.tmp, d, d2, dArr);
        Enumeration elements = this.tmp.elements();
        while (elements.hasMoreElements()) {
            if (((Curve) elements.nextElement()).accumulateCrossings(this)) {
                return true;
            }
        }
        this.tmp.clear();
        return false;
    }

    public boolean accumulateLine(double d, double d2, double d3, double d4) {
        if (d2 <= d4) {
            return accumulateLine(d, d2, d3, d4, 1);
        }
        return accumulateLine(d3, d4, d, d2, -1);
    }

    public boolean accumulateQuad(double d, double d2, double[] dArr) {
        double d3 = this.ylo;
        if (d2 < d3 && dArr[1] < d3 && dArr[3] < d3) {
            return false;
        }
        double d4 = this.yhi;
        if (d2 > d4 && dArr[1] > d4 && dArr[3] > d4) {
            return false;
        }
        double d5 = this.xhi;
        if (d > d5 && dArr[0] > d5 && dArr[2] > d5) {
            return false;
        }
        double d6 = this.xlo;
        if (d < d6 && dArr[0] < d6 && dArr[2] < d6) {
            double d7 = dArr[3];
            if (d2 < d7) {
                record(Math.max(d2, d3), Math.min(dArr[3], this.yhi), 1);
            } else if (d2 > d7) {
                record(Math.max(d7, d3), Math.min(d2, this.yhi), -1);
            }
            return false;
        }
        Curve.insertQuad(this.tmp, d, d2, dArr);
        Enumeration elements = this.tmp.elements();
        while (elements.hasMoreElements()) {
            if (((Curve) elements.nextElement()).accumulateCrossings(this)) {
                return true;
            }
        }
        this.tmp.clear();
        return false;
    }

    public abstract boolean covers(double d, double d2);

    public final double getXHi() {
        return this.xhi;
    }

    public final double getXLo() {
        return this.xlo;
    }

    public final double getYHi() {
        return this.yhi;
    }

    public final double getYLo() {
        return this.ylo;
    }

    public final boolean isEmpty() {
        return this.limit == 0;
    }

    public void print() {
        System.out.println("Crossings [");
        System.out.println("  bounds = [" + this.ylo + ", " + this.yhi + IteratorUtils.f104924b);
        for (int i = 0; i < this.limit; i += 2) {
            System.out.println("  [" + this.yranges[i] + ", " + this.yranges[i + 1] + IteratorUtils.f104924b);
        }
        System.out.println(IteratorUtils.f104924b);
    }

    public abstract void record(double d, double d2, int i);

    public boolean accumulateLine(double d, double d2, double d3, double d4, int i) {
        double d5;
        double d6;
        double d7 = this.yhi;
        if (d7 > d2) {
            double d8 = this.ylo;
            if (d8 < d4) {
                double d9 = this.xhi;
                if (d >= d9 && d3 >= d9) {
                    return false;
                }
                if (d2 == d4) {
                    double d10 = this.xlo;
                    return d >= d10 || d3 >= d10;
                }
                double d11 = d3 - d;
                double d12 = d4 - d2;
                if (d2 < d8) {
                    d5 = d + (((d8 - d2) * d11) / d12);
                } else {
                    d5 = d;
                    d8 = d2;
                }
                if (d7 < d4) {
                    d6 = d + (((d7 - d2) * d11) / d12);
                } else {
                    d6 = d3;
                    d7 = d4;
                }
                if (d5 >= d9 && d6 >= d9) {
                    return false;
                }
                double d13 = this.xlo;
                if (d5 > d13 || d6 > d13) {
                    return true;
                }
                record(d8, d7, i);
                return false;
            }
        }
        return false;
    }

    public static Crossings findCrossings(PathIterator pathIterator, double d, double d2, double d3, double d4) {
        Crossings nonZero;
        char c;
        if (pathIterator.getWindingRule() == 0) {
            nonZero = new EvenOdd(d, d2, d3, d4);
        } else {
            nonZero = new NonZero(d, d2, d3, d4);
        }
        double[] dArr = new double[23];
        double d5 = 0.0d;
        double d6 = 0.0d;
        double d7 = 0.0d;
        double d8 = 0.0d;
        while (!pathIterator.isDone()) {
            int currentSegment = pathIterator.currentSegment(dArr);
            if (currentSegment == 0) {
                if (d7 != d5) {
                    double d9 = d6;
                    c = 1;
                    if (nonZero.accumulateLine(d8, d5, d9, d7)) {
                        return null;
                    }
                } else {
                    c = 1;
                }
                d8 = dArr[0];
                d5 = dArr[c];
                d6 = d8;
                d7 = d5;
            } else if (currentSegment == 1) {
                double d10 = dArr[0];
                double d11 = dArr[1];
                if (nonZero.accumulateLine(d8, d5, d10, d11)) {
                    return null;
                }
                d8 = d10;
                d5 = d11;
            } else if (currentSegment == 2) {
                double d12 = dArr[2];
                double d13 = dArr[3];
                if (nonZero.accumulateQuad(d8, d5, dArr)) {
                    return null;
                }
                d8 = d12;
                d5 = d13;
            } else if (currentSegment == 3) {
                double d14 = dArr[4];
                double d15 = dArr[5];
                if (nonZero.accumulateCubic(d8, d5, dArr)) {
                    return null;
                }
                d8 = d14;
                d5 = d15;
            } else if (currentSegment != 4) {
                continue;
            } else {
                if (d7 != d5 && nonZero.accumulateLine(d8, d5, d6, d7)) {
                    return null;
                }
                d8 = d6;
                d5 = d7;
            }
            pathIterator.next();
        }
        if (d7 == d5 || !nonZero.accumulateLine(d8, d5, d6, d7)) {
            return nonZero;
        }
        return null;
    }
}
