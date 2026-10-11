package sun.awt.geom;

import com.google.android.material.motion.MotionUtils;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.awt.geom.IllegalPathStateException;
import java.awt.geom.PathIterator;
import java.awt.geom.Rectangle2D;
import java.io.PrintStream;
import java.util.Vector;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes16.dex */
public abstract class Curve {
    public static final int DECREASING = -1;
    public static final int INCREASING = 1;
    public static final int RECT_INTERSECTS = Integer.MIN_VALUE;
    public static final double TMIN = 0.001d;
    protected int direction;

    public Curve(int i) {
        this.direction = i;
    }

    public static long diffbits(double d, double d2) {
        return Math.abs(Double.doubleToLongBits(d) - Double.doubleToLongBits(d2));
    }

    public static void insertCubic(Vector vector, double d, double d2, double[] dArr) {
        double d3 = dArr[5];
        if (d2 > d3) {
            Order3.insert(vector, dArr, dArr[4], d3, dArr[2], dArr[3], dArr[0], dArr[1], d, d2, -1);
        } else {
            if (d2 == d3 && d2 == dArr[1] && d2 == dArr[3]) {
                return;
            }
            Order3.insert(vector, dArr, d, d2, dArr[0], dArr[1], dArr[2], dArr[3], dArr[4], d3, 1);
        }
    }

    public static void insertLine(Vector vector, double d, double d2, double d3, double d4) {
        if (d2 < d4) {
            vector.add(new Order1(d, d2, d3, d4, 1));
        } else if (d2 > d4) {
            vector.add(new Order1(d3, d4, d, d2, -1));
        }
    }

    public static void insertMove(Vector vector, double d, double d2) {
        vector.add(new Order0(d, d2));
    }

    public static void insertQuad(Vector vector, double d, double d2, double[] dArr) {
        double d3 = dArr[3];
        if (d2 > d3) {
            Order2.insert(vector, dArr, dArr[2], d3, dArr[0], dArr[1], d, d2, -1);
        } else {
            if (d2 == d3 && d2 == dArr[1]) {
                return;
            }
            Order2.insert(vector, dArr, d, d2, dArr[0], dArr[1], dArr[2], d3, 1);
        }
    }

    public static double next(double d) {
        return Double.longBitsToDouble(Double.doubleToLongBits(d) + 1);
    }

    public static int orderof(double d, double d2) {
        if (d < d2) {
            return -1;
        }
        return d > d2 ? 1 : 0;
    }

    public static int pointCrossingsForCubic(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, int i) {
        if (d2 < d4 && d2 < d6 && d2 < d8 && d2 < d10) {
            return 0;
        }
        if (d2 >= d4 && d2 >= d6 && d2 >= d8 && d2 >= d10) {
            return 0;
        }
        if (d >= d3 && d >= d5 && d >= d7 && d >= d9) {
            return 0;
        }
        if (d < d3 && d < d5 && d < d7 && d < d9) {
            if (d2 >= d4) {
                if (d2 < d10) {
                    return 1;
                }
            } else if (d2 >= d10) {
                return -1;
            }
            return 0;
        }
        if (i > 52) {
            return pointCrossingsForLine(d, d2, d3, d4, d9, d10);
        }
        double d11 = (d5 + d7) / 2.0d;
        double d12 = (d6 + d8) / 2.0d;
        double d13 = (d3 + d5) / 2.0d;
        double d14 = (d4 + d6) / 2.0d;
        double d15 = (d7 + d9) / 2.0d;
        double d16 = (d8 + d10) / 2.0d;
        double d17 = (d13 + d11) / 2.0d;
        double d18 = (d14 + d12) / 2.0d;
        double d19 = (d11 + d15) / 2.0d;
        double d20 = (d12 + d16) / 2.0d;
        double d21 = (d17 + d19) / 2.0d;
        double d22 = (d18 + d20) / 2.0d;
        if (Double.isNaN(d21) || Double.isNaN(d22)) {
            return 0;
        }
        int i2 = i + 1;
        return pointCrossingsForCubic(d, d2, d3, d4, d13, d14, d17, d18, d21, d22, i2) + pointCrossingsForCubic(d, d2, d21, d22, d19, d20, d15, d16, d9, d10, i2);
    }

    public static int pointCrossingsForLine(double d, double d2, double d3, double d4, double d5, double d6) {
        if (d2 < d4 && d2 < d6) {
            return 0;
        }
        if (d2 >= d4 && d2 >= d6) {
            return 0;
        }
        if (d >= d3 && d >= d5) {
            return 0;
        }
        if (d < d3 && d < d5) {
            return d4 < d6 ? 1 : -1;
        }
        if (d >= d3 + (((d2 - d4) * (d5 - d3)) / (d6 - d4))) {
            return 0;
        }
        return d4 < d6 ? 1 : -1;
    }

    public static int pointCrossingsForPath(PathIterator pathIterator, double d, double d2) {
        if (pathIterator.isDone()) {
            return 0;
        }
        double[] dArr = new double[6];
        if (pathIterator.currentSegment(dArr) != 0) {
            throw new IllegalPathStateException("missing initial moveto in path definition");
        }
        pathIterator.next();
        double d3 = dArr[0];
        double d4 = dArr[1];
        int i = 0;
        double d5 = d3;
        double d6 = d4;
        while (!pathIterator.isDone()) {
            int currentSegment = pathIterator.currentSegment(dArr);
            if (currentSegment != 0) {
                if (currentSegment == 1) {
                    double d7 = dArr[0];
                    double d8 = dArr[1];
                    i += pointCrossingsForLine(d, d2, d5, d6, d7, d8);
                    d5 = d7;
                    d6 = d8;
                } else if (currentSegment == 2) {
                    double d9 = dArr[2];
                    double d10 = dArr[3];
                    i += pointCrossingsForQuad(d, d2, d5, d6, dArr[0], dArr[1], d9, d10, 0);
                    d5 = d9;
                    d6 = d10;
                } else if (currentSegment == 3) {
                    double d11 = dArr[4];
                    double d12 = dArr[5];
                    i += pointCrossingsForCubic(d, d2, d5, d6, dArr[0], dArr[1], dArr[2], dArr[3], d11, d12, 0);
                    d5 = d11;
                    d6 = d12;
                } else if (currentSegment == 4) {
                    if (d6 != d4) {
                        i += pointCrossingsForLine(d, d2, d5, d6, d3, d4);
                    }
                }
                pathIterator.next();
            } else {
                if (d6 != d4) {
                    i += pointCrossingsForLine(d, d2, d5, d6, d3, d4);
                }
                d3 = dArr[0];
                d4 = dArr[1];
            }
            d5 = d3;
            d6 = d4;
            pathIterator.next();
        }
        return d6 != d4 ? i + pointCrossingsForLine(d, d2, d5, d6, d3, d4) : i;
    }

    public static int pointCrossingsForQuad(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, int i) {
        if (d2 < d4 && d2 < d6 && d2 < d8) {
            return 0;
        }
        if (d2 >= d4 && d2 >= d6 && d2 >= d8) {
            return 0;
        }
        if (d >= d3 && d >= d5 && d >= d7) {
            return 0;
        }
        if (d < d3 && d < d5 && d < d7) {
            if (d2 >= d4) {
                if (d2 < d8) {
                    return 1;
                }
            } else if (d2 >= d8) {
                return -1;
            }
            return 0;
        }
        if (i > 52) {
            return pointCrossingsForLine(d, d2, d3, d4, d7, d8);
        }
        double d9 = (d3 + d5) / 2.0d;
        double d10 = (d4 + d6) / 2.0d;
        double d11 = (d5 + d7) / 2.0d;
        double d12 = (d6 + d8) / 2.0d;
        double d13 = (d9 + d11) / 2.0d;
        double d14 = (d10 + d12) / 2.0d;
        if (Double.isNaN(d13) || Double.isNaN(d14)) {
            return 0;
        }
        int i2 = i + 1;
        return pointCrossingsForQuad(d, d2, d3, d4, d9, d10, d13, d14, i2) + pointCrossingsForQuad(d, d2, d13, d14, d11, d12, d7, d8, i2);
    }

    public static double prev(double d) {
        return Double.longBitsToDouble(Double.doubleToLongBits(d) - 1);
    }

    public static int rectCrossingsForCubic(int i, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12, int i2) {
        if (d6 >= d4 && d8 >= d4 && d10 >= d4 && d12 >= d4) {
            return i;
        }
        if (d6 <= d2 && d8 <= d2 && d10 <= d2 && d12 <= d2) {
            return i;
        }
        if (d5 <= d && d7 <= d && d9 <= d && d11 <= d) {
            return i;
        }
        if (d5 >= d3 && d7 >= d3 && d9 >= d3 && d11 >= d3) {
            if (d6 < d12) {
                int i3 = (d6 > d2 || d12 <= d2) ? i : i + 1;
                return (d6 >= d4 || d12 < d4) ? i3 : i3 + 1;
            }
            if (d12 >= d6) {
                return i;
            }
            int i4 = (d12 > d2 || d6 <= d2) ? i : i - 1;
            return (d12 >= d4 || d6 < d4) ? i4 : i4 - 1;
        }
        if ((d5 > d && d5 < d3 && d6 > d2 && d6 < d4) || (d11 > d && d11 < d3 && d12 > d2 && d12 < d4)) {
            return Integer.MIN_VALUE;
        }
        if (i2 > 52) {
            return rectCrossingsForLine(i, d, d2, d3, d4, d5, d6, d11, d12);
        }
        double d13 = (d7 + d9) / 2.0d;
        double d14 = (d8 + d10) / 2.0d;
        double d15 = (d5 + d7) / 2.0d;
        double d16 = (d6 + d8) / 2.0d;
        double d17 = (d9 + d11) / 2.0d;
        double d18 = (d10 + d12) / 2.0d;
        double d19 = (d15 + d13) / 2.0d;
        double d20 = (d16 + d14) / 2.0d;
        double d21 = (d13 + d17) / 2.0d;
        double d22 = (d14 + d18) / 2.0d;
        double d23 = (d19 + d21) / 2.0d;
        double d24 = (d20 + d22) / 2.0d;
        if (Double.isNaN(d23) || Double.isNaN(d24)) {
            return 0;
        }
        int i5 = i2 + 1;
        int rectCrossingsForCubic = rectCrossingsForCubic(i, d, d2, d3, d4, d5, d6, d15, d16, d19, d20, d23, d24, i5);
        return rectCrossingsForCubic != Integer.MIN_VALUE ? rectCrossingsForCubic(rectCrossingsForCubic, d, d2, d3, d4, d23, d24, d21, d22, d17, d18, d11, d12, i5) : rectCrossingsForCubic;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int rectCrossingsForLine(int r10, double r11, double r13, double r15, double r17, double r19, double r21, double r23, double r25) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.awt.geom.Curve.rectCrossingsForLine(int, double, double, double, double, double, double, double, double):int");
    }

    public static int rectCrossingsForPath(PathIterator pathIterator, double d, double d2, double d3, double d4) {
        double[] dArr;
        int i;
        if (d3 <= d || d4 <= d2 || pathIterator.isDone()) {
            return 0;
        }
        double[] dArr2 = new double[6];
        if (pathIterator.currentSegment(dArr2) != 0) {
            throw new IllegalPathStateException("missing initial moveto in path definition");
        }
        pathIterator.next();
        int i2 = 1;
        double d5 = dArr2[0];
        double d6 = d5;
        double d7 = dArr2[1];
        double d8 = d7;
        int i3 = 0;
        while (i3 != Integer.MIN_VALUE && !pathIterator.isDone()) {
            int currentSegment = pathIterator.currentSegment(dArr2);
            if (currentSegment == 0) {
                dArr = dArr2;
                i = i2;
                if (d5 != d6 || d7 != d8) {
                    i3 = rectCrossingsForLine(i3, d, d2, d3, d4, d5, d7, d6, d8);
                }
                d5 = dArr[0];
                d7 = dArr[i];
                d6 = d5;
                d8 = d7;
            } else if (currentSegment == i2) {
                dArr = dArr2;
                i = i2;
                double d9 = dArr[0];
                double d10 = dArr[i];
                i3 = rectCrossingsForLine(i3, d, d2, d3, d4, d5, d7, d9, d10);
                d5 = d9;
                d7 = d10;
            } else if (currentSegment == 2) {
                dArr = dArr2;
                i = i2;
                double d11 = dArr[2];
                double d12 = dArr[3];
                i3 = rectCrossingsForQuad(i3, d, d2, d3, d4, d5, d7, dArr[0], dArr[i], d11, d12, 0);
                d5 = d11;
                d7 = d12;
            } else if (currentSegment == 3) {
                dArr = dArr2;
                i = i2;
                double d13 = dArr[4];
                double d14 = dArr[5];
                i3 = rectCrossingsForCubic(i3, d, d2, d3, d4, d5, d7, dArr[0], dArr[i], dArr[2], dArr[3], d13, d14, 0);
                d5 = d13;
                d7 = d14;
            } else if (currentSegment != 4) {
                dArr = dArr2;
                i = i2;
            } else {
                if (d5 == d6 && d7 == d8) {
                    dArr = dArr2;
                    i = i2;
                } else {
                    dArr = dArr2;
                    i = i2;
                    i3 = rectCrossingsForLine(i3, d, d2, d3, d4, d5, d7, d6, d8);
                }
                d5 = d6;
                d7 = d8;
            }
            pathIterator.next();
            dArr2 = dArr;
            i2 = i;
        }
        return i3 != Integer.MIN_VALUE ? (d5 == d6 && d7 == d8) ? i3 : rectCrossingsForLine(i3, d, d2, d3, d4, d5, d7, d6, d8) : i3;
    }

    public static int rectCrossingsForQuad(int i, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, int i2) {
        if (d6 >= d4 && d8 >= d4 && d10 >= d4) {
            return i;
        }
        if (d6 <= d2 && d8 <= d2 && d10 <= d2) {
            return i;
        }
        if (d5 <= d && d7 <= d && d9 <= d) {
            return i;
        }
        if (d5 >= d3 && d7 >= d3 && d9 >= d3) {
            if (d6 < d10) {
                int i3 = (d6 > d2 || d10 <= d2) ? i : i + 1;
                return (d6 >= d4 || d10 < d4) ? i3 : i3 + 1;
            }
            if (d10 >= d6) {
                return i;
            }
            int i4 = (d10 > d2 || d6 <= d2) ? i : i - 1;
            return (d10 >= d4 || d6 < d4) ? i4 : i4 - 1;
        }
        if ((d5 < d3 && d5 > d && d6 < d4 && d6 > d2) || (d9 < d3 && d9 > d && d10 < d4 && d10 > d2)) {
            return Integer.MIN_VALUE;
        }
        if (i2 > 52) {
            return rectCrossingsForLine(i, d, d2, d3, d4, d5, d6, d9, d10);
        }
        double d11 = (d5 + d7) / 2.0d;
        double d12 = (d6 + d8) / 2.0d;
        double d13 = (d7 + d9) / 2.0d;
        double d14 = (d8 + d10) / 2.0d;
        double d15 = (d11 + d13) / 2.0d;
        double d16 = (d12 + d14) / 2.0d;
        if (Double.isNaN(d15) || Double.isNaN(d16)) {
            return 0;
        }
        int i5 = i2 + 1;
        int rectCrossingsForQuad = rectCrossingsForQuad(i, d, d2, d3, d4, d5, d6, d11, d12, d15, d16, i5);
        return rectCrossingsForQuad != Integer.MIN_VALUE ? rectCrossingsForQuad(rectCrossingsForQuad, d, d2, d3, d4, d15, d16, d13, d14, d9, d10, i5) : rectCrossingsForQuad;
    }

    public static double round(double d) {
        return d;
    }

    public static long signeddiffbits(double d, double d2) {
        return Double.doubleToLongBits(d) - Double.doubleToLongBits(d2);
    }

    public abstract double TforY(double d);

    public abstract double XforT(double d);

    public abstract double XforY(double d);

    public abstract double YforT(double d);

    public boolean accumulateCrossings(Crossings crossings) {
        double d;
        double d2;
        double d3;
        double d4;
        double xHi = crossings.getXHi();
        if (getXMin() >= xHi) {
            return false;
        }
        double xLo = crossings.getXLo();
        double yLo = crossings.getYLo();
        double yHi = crossings.getYHi();
        double yTop = getYTop();
        double yBot = getYBot();
        if (yTop < yLo) {
            if (yBot <= yLo) {
                return false;
            }
            d2 = TforY(yLo);
            d = yLo;
        } else {
            if (yTop >= yHi) {
                return false;
            }
            d = yTop;
            d2 = 0.0d;
        }
        if (yBot > yHi) {
            d3 = TforY(yHi);
            d4 = yHi;
        } else {
            d3 = 1.0d;
            d4 = yBot;
        }
        boolean z = false;
        boolean z2 = false;
        while (true) {
            double XforT = XforT(d2);
            if (XforT < xHi) {
                if (z2 || XforT > xLo) {
                    break;
                }
                z = true;
            } else {
                if (z) {
                    return true;
                }
                z2 = true;
            }
            if (d2 >= d3) {
                if (z) {
                    crossings.record(d, d4, this.direction);
                }
                return false;
            }
            d2 = nextVertical(d2, d3);
        }
        return true;
    }

    public int compareTo(Curve curve, double[] dArr) {
        double d;
        double d2;
        double d3;
        double d4;
        double d5;
        double d6;
        Curve curve2 = curve;
        double d7 = dArr[0];
        double min = Math.min(Math.min(dArr[1], getYBot()), curve.getYBot());
        String str = "=>";
        if (min <= dArr[0]) {
            System.err.println("this == " + this);
            System.err.println("that == " + curve2);
            System.out.println("target range = " + dArr[0] + "=>" + dArr[1]);
            throw new InternalError("backstepping from " + dArr[0] + " to " + min);
        }
        dArr[1] = min;
        if (getXMax() <= curve.getXMin()) {
            return getXMin() == curve.getXMax() ? 0 : -1;
        }
        if (getXMin() >= curve.getXMax()) {
            return 1;
        }
        double TforY = TforY(d7);
        double YforT = YforT(TforY);
        if (YforT < d7) {
            TforY = refineTforY(TforY, YforT, d7);
            YforT = YforT(TforY);
        }
        double d8 = TforY;
        double d9 = YforT;
        double TforY2 = TforY(min);
        if (YforT(TforY2) < d7) {
            TforY2 = refineTforY(TforY2, YforT(TforY2), d7);
        }
        double d10 = TforY2;
        double TforY3 = curve2.TforY(d7);
        double YforT2 = curve2.YforT(TforY3);
        if (YforT2 < d7) {
            d = d10;
            TforY3 = curve.refineTforY(TforY3, YforT2, d7);
            YforT2 = curve2.YforT(TforY3);
        } else {
            d = d10;
        }
        double d11 = TforY3;
        double d12 = YforT2;
        double TforY4 = curve2.TforY(min);
        if (curve2.YforT(TforY4) < d7) {
            d2 = min;
            d3 = d11;
            TforY4 = curve.refineTforY(TforY4, curve2.YforT(TforY4), d7);
        } else {
            d2 = min;
            d3 = d11;
        }
        double d13 = TforY4;
        double XforT = XforT(d8);
        double XforT2 = curve2.XforT(d3);
        double d14 = d3;
        double max = Math.max(Math.max(Math.abs(d7), Math.abs(d2)) * 1.0E-14d, 1.0E-300d);
        if (fairlyClose(XforT, XforT2)) {
            d4 = XforT;
            double min2 = Math.min(1.0E13d * max, (d2 - d7) * 0.1d);
            double d15 = d7 + max;
            double d16 = max;
            while (true) {
                if (d15 > d2) {
                    d5 = d13;
                    d6 = XforT2;
                    break;
                }
                d6 = XforT2;
                d5 = d13;
                if (fairlyClose(XforY(d15), curve2.XforY(d15))) {
                    d16 *= 2.0d;
                    if (d16 > min2) {
                        d16 = min2;
                    }
                    d15 += d16;
                    XforT2 = d6;
                    d13 = d5;
                } else {
                    d15 -= d16;
                    while (true) {
                        d16 /= 2.0d;
                        double d17 = d15 + d16;
                        if (d17 <= d15) {
                            break;
                        }
                        if (fairlyClose(XforY(d17), curve2.XforY(d17))) {
                            d15 = d17;
                        }
                    }
                }
            }
            if (d15 > d7) {
                if (d15 < d2) {
                    dArr[1] = d15;
                }
                return 0;
            }
        } else {
            d4 = XforT;
            d5 = d13;
            d6 = XforT2;
        }
        if (max <= 0.0d) {
            System.out.println("ymin = " + max);
        }
        double d18 = d9;
        double d19 = d12;
        double d20 = d14;
        double d21 = d8;
        double d22 = d6;
        double d23 = d;
        double d24 = d4;
        while (true) {
            if (d21 >= d23 || d20 >= d5) {
                break;
            }
            double d25 = d18;
            double nextVertical = nextVertical(d21, d23);
            double XforT3 = XforT(nextVertical);
            double d26 = d23;
            double d27 = d21;
            double YforT3 = YforT(nextVertical);
            double d28 = d5;
            double nextVertical2 = curve2.nextVertical(d20, d28);
            double XforT4 = curve2.XforT(nextVertical2);
            double YforT4 = curve2.YforT(nextVertical2);
            double d29 = d19;
            double d30 = d20;
            double d31 = max;
            String str2 = str;
            try {
                if (findIntersect(curve, dArr, max, 0, 0, d27, d24, d25, nextVertical, XforT3, YforT3, d30, d22, d29, nextVertical2, XforT4, YforT4)) {
                    break;
                }
                if (YforT3 < YforT4) {
                    if (YforT3 <= dArr[0]) {
                        d18 = YforT3;
                        d24 = XforT3;
                        d19 = d29;
                        d21 = nextVertical;
                        d20 = d30;
                        curve2 = curve;
                        d23 = d26;
                        d5 = d28;
                        max = d31;
                        str = str2;
                    } else if (YforT3 < dArr[1]) {
                        dArr[1] = YforT3;
                    }
                } else if (YforT4 <= dArr[0]) {
                    d19 = YforT4;
                    d22 = XforT4;
                    d20 = nextVertical2;
                    d18 = d25;
                    d21 = d27;
                    curve2 = curve;
                    d23 = d26;
                    d5 = d28;
                    max = d31;
                    str = str2;
                } else if (YforT4 < dArr[1]) {
                    dArr[1] = YforT4;
                }
            } catch (Throwable th) {
                System.err.println("Error: " + th);
                System.err.println("y range was " + dArr[0] + str2 + dArr[1]);
                System.err.println("s y range is " + d25 + str2 + YforT3);
                System.err.println("t y range is " + d29 + str2 + YforT4);
                PrintStream printStream = System.err;
                StringBuilder sb = new StringBuilder();
                sb.append("ymin is ");
                sb.append(d31);
                printStream.println(sb.toString());
                return 0;
            }
        }
        double d32 = (dArr[0] + dArr[1]) / 2.0d;
        return orderof(XforY(d32), curve.XforY(d32));
    }

    public String controlPointString() {
        return "";
    }

    public int crossingsFor(double d, double d2) {
        if (d2 < getYTop() || d2 >= getYBot() || d >= getXMax()) {
            return 0;
        }
        return (d < getXMin() || d < XforY(d2)) ? 1 : 0;
    }

    public abstract double dXforT(double d, int i);

    public abstract double dYforT(double d, int i);

    public abstract void enlarge(Rectangle2D rectangle2D);

    public boolean fairlyClose(double d, double d2) {
        return Math.abs(d - d2) < Math.max(Math.abs(d), Math.abs(d2)) * 1.0E-10d;
    }

    public boolean findIntersect(Curve curve, double[] dArr, double d, int i, int i2, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12, double d13) {
        double d14;
        double d15;
        double d16;
        if (d4 <= d13 && d10 <= d7 && Math.min(d3, d6) <= Math.max(d9, d12) && Math.max(d3, d6) >= Math.min(d9, d12)) {
            double d17 = d5 - d2;
            if (d17 > 0.001d) {
                double d18 = (d2 + d5) / 2.0d;
                double XforT = XforT(d18);
                double YforT = YforT(d18);
                if (d18 == d2 || d18 == d5) {
                    System.out.println("s0 = " + d2);
                    System.out.println("s1 = " + d5);
                    throw new InternalError("no s progress!");
                }
                if (d11 - d8 > 0.001d) {
                    double d19 = (d8 + d11) / 2.0d;
                    double XforT2 = curve.XforT(d19);
                    double YforT2 = curve.YforT(d19);
                    if (d19 == d8 || d19 == d11) {
                        System.out.println("t0 = " + d8);
                        System.out.println("t1 = " + d11);
                        throw new InternalError("no t progress!");
                    }
                    if (YforT < d10 || YforT2 < d4) {
                        d15 = d18;
                        d16 = d19;
                    } else {
                        d15 = d18;
                        d16 = d19;
                        if (findIntersect(curve, dArr, d, i + 1, i2 + 1, d2, d3, d4, d15, XforT, YforT, d8, d9, d10, d16, XforT2, YforT2)) {
                            return true;
                        }
                    }
                    if (YforT >= YforT2 && findIntersect(curve, dArr, d, i + 1, i2 + 1, d2, d3, d4, d15, XforT, YforT, d16, XforT2, YforT2, d11, d12, d13)) {
                        return true;
                    }
                    if (YforT2 >= YforT && findIntersect(curve, dArr, d, i + 1, i2 + 1, d15, XforT, YforT, d5, d6, d7, d8, d9, d10, d16, XforT2, YforT2)) {
                        return true;
                    }
                    if (d7 >= YforT2 && d13 >= YforT && findIntersect(curve, dArr, d, i + 1, i2 + 1, d15, XforT, YforT, d5, d6, d7, d16, XforT2, YforT2, d11, d12, d13)) {
                        return true;
                    }
                } else {
                    if (YforT >= d10 && findIntersect(curve, dArr, d, i + 1, i2, d2, d3, d4, d18, XforT, YforT, d8, d9, d10, d11, d12, d13)) {
                        return true;
                    }
                    if (d13 >= YforT && findIntersect(curve, dArr, d, i + 1, i2, d18, XforT, YforT, d5, d6, d7, d8, d9, d10, d11, d12, d13)) {
                        return true;
                    }
                }
            } else {
                double d20 = d11 - d8;
                if (d20 > 0.001d) {
                    double d21 = (d8 + d11) / 2.0d;
                    double XforT3 = curve.XforT(d21);
                    double YforT3 = curve.YforT(d21);
                    if (d21 == d8 || d21 == d11) {
                        System.out.println("t0 = " + d8);
                        System.out.println("t1 = " + d11);
                        throw new InternalError("no t progress!");
                    }
                    if (YforT3 >= d4) {
                        d14 = d21;
                        if (findIntersect(curve, dArr, d, i, i2 + 1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d14, XforT3, YforT3)) {
                            return true;
                        }
                    } else {
                        d14 = d21;
                    }
                    if (d7 >= YforT3 && findIntersect(curve, dArr, d, i, i2 + 1, d2, d3, d4, d5, d6, d7, d14, XforT3, YforT3, d11, d12, d13)) {
                        return true;
                    }
                } else {
                    double d22 = d6 - d3;
                    double d23 = d7 - d4;
                    double d24 = d12 - d9;
                    double d25 = d13 - d10;
                    double d26 = d9 - d3;
                    double d27 = d10 - d4;
                    double d28 = (d24 * d23) - (d25 * d22);
                    if (d28 != 0.0d) {
                        double d29 = 1.0d / d28;
                        double d30 = ((d24 * d27) - (d25 * d26)) * d29;
                        double d31 = ((d22 * d27) - (d23 * d26)) * d29;
                        if (d30 >= 0.0d && d30 <= 1.0d && d31 >= 0.0d && d31 <= 1.0d) {
                            double d32 = d2 + (d30 * d17);
                            double d33 = (d31 * d20) + d8;
                            if (d32 < 0.0d || d32 > 1.0d || d33 < 0.0d || d33 > 1.0d) {
                                System.out.println("Uh oh!");
                            }
                            double YforT4 = (YforT(d32) + curve.YforT(d33)) / 2.0d;
                            if (YforT4 <= dArr[1] && YforT4 > dArr[0]) {
                                dArr[1] = YforT4;
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int getDirection() {
        return this.direction;
    }

    public abstract int getOrder();

    public abstract Curve getReversedCurve();

    public abstract int getSegment(double[] dArr);

    public Curve getSubCurve(double d, double d2) {
        return getSubCurve(d, d2, this.direction);
    }

    public abstract Curve getSubCurve(double d, double d2, int i);

    public final Curve getWithDirection(int i) {
        return this.direction == i ? this : getReversedCurve();
    }

    public abstract double getX0();

    public abstract double getX1();

    public abstract double getXBot();

    public abstract double getXMax();

    public abstract double getXMin();

    public abstract double getXTop();

    public abstract double getY0();

    public abstract double getY1();

    public abstract double getYBot();

    public abstract double getYTop();

    public abstract double nextVertical(double d, double d2);

    public double refineTforY(double d, double d2, double d3) {
        double d4 = 1.0d;
        while (true) {
            double d5 = (d + d4) / 2.0d;
            if (d5 != d && d5 != d4) {
                double YforT = YforT(d5);
                if (YforT >= d3) {
                    if (YforT <= d3) {
                        break;
                    }
                    d4 = d5;
                } else {
                    d = d5;
                }
            } else {
                break;
            }
        }
        return d4;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Curve[");
        sb.append(getOrder());
        sb.append(", ");
        sb.append(MotionUtils.f31761c);
        sb.append(round(getX0()));
        sb.append(", ");
        sb.append(round(getY0()));
        sb.append("), ");
        sb.append(controlPointString());
        sb.append(MotionUtils.f31761c);
        sb.append(round(getX1()));
        sb.append(", ");
        sb.append(round(getY1()));
        sb.append("), ");
        sb.append(this.direction == 1 ? SardineUtil.DEFAULT_NAMESPACE_PREFIX : "U");
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }
}
