package com.sun.javafx.geom;

import com.google.android.material.motion.MotionUtils;
import java.util.Vector;

/* loaded from: classes9.dex */
public final class Order3 extends Curve {
    private double TforY1;
    private double TforY2;
    private double TforY3;
    private double YforT1;
    private double YforT2;
    private double YforT3;
    private double cx0;
    private double cx1;
    private double cy0;
    private double cy1;

    /* renamed from: x0 */
    private double f64050x0;

    /* renamed from: x1 */
    private double f64051x1;
    private double xcoeff0;
    private double xcoeff1;
    private double xcoeff2;
    private double xcoeff3;
    private double xmax;
    private double xmin;

    /* renamed from: y0 */
    private double f64052y0;

    /* renamed from: y1 */
    private double f64053y1;
    private double ycoeff0;
    private double ycoeff1;
    private double ycoeff2;
    private double ycoeff3;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Order3(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, int i) {
        super(i);
        double d9 = d8;
        double d10 = d4 < d2 ? d2 : d4;
        d9 = d6 <= d9 ? d6 : d9;
        this.f64050x0 = d;
        this.f64052y0 = d2;
        this.cx0 = d3;
        this.cy0 = d10;
        this.cx1 = d5;
        this.cy1 = d9;
        this.f64051x1 = d7;
        this.f64053y1 = d8;
        double d11 = d10;
        this.xmin = Math.min(Math.min(d, d7), Math.min(d3, d5));
        this.xmax = Math.max(Math.max(d, d7), Math.max(d3, d5));
        this.xcoeff0 = d;
        this.xcoeff1 = (d3 - d) * 3.0d;
        double d12 = d5 - d3;
        this.xcoeff2 = ((d12 - d3) + d) * 3.0d;
        this.xcoeff3 = (d7 - (d12 * 3.0d)) - d;
        this.ycoeff0 = d2;
        this.ycoeff1 = (d11 - d2) * 3.0d;
        double d13 = d9 - d11;
        this.ycoeff2 = ((d13 - d11) + d2) * 3.0d;
        this.ycoeff3 = (d8 - (d13 * 3.0d)) - d2;
        this.YforT3 = d2;
        this.YforT2 = d2;
        this.YforT1 = d2;
    }

    public static void addInstance(Vector vector, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, int i) {
        if (d2 > d8) {
            vector.add(new Order3(d7, d8, d5, d6, d3, d4, d, d2, -i));
        } else if (d8 > d2) {
            vector.add(new Order3(d, d2, d3, d4, d5, d6, d7, d8, i));
        }
    }

    public static int getHorizontalParams(double d, double d2, double d3, double d4, double[] dArr) {
        if (d <= d2 && d2 <= d3 && d3 <= d4) {
            return 0;
        }
        double d5 = d4 - d3;
        double d6 = d3 - d2;
        double d7 = d2 - d;
        dArr[0] = d7;
        dArr[1] = (d6 - d7) * 2.0d;
        dArr[2] = ((d5 - d6) - d6) + d7;
        int solveQuadratic = solveQuadratic(dArr, dArr);
        int i = 0;
        for (int i2 = 0; i2 < solveQuadratic; i2++) {
            double d8 = dArr[i2];
            if (d8 > 0.0d && d8 < 1.0d) {
                if (i < i2) {
                    dArr[i] = d8;
                }
                i++;
            }
        }
        return i;
    }

    public static void insert(Vector vector, double[] dArr, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, int i) {
        int horizontalParams = getHorizontalParams(d2, d4, d6, d8, dArr);
        if (horizontalParams == 0) {
            addInstance(vector, d, d2, d3, d4, d5, d6, d7, d8, i);
            return;
        }
        dArr[3] = d;
        dArr[4] = d2;
        dArr[5] = d3;
        dArr[6] = d4;
        dArr[7] = d5;
        dArr[8] = d6;
        dArr[9] = d7;
        dArr[10] = d8;
        double d9 = dArr[0];
        if (horizontalParams > 1) {
            double d10 = dArr[1];
            if (d9 > d10) {
                dArr[0] = d10;
                dArr[1] = d9;
                d9 = d10;
            }
        }
        split(dArr, 3, d9);
        if (horizontalParams > 1) {
            split(dArr, 9, (dArr[1] - d9) / (1.0d - d9));
        }
        int i2 = i == -1 ? 3 + (horizontalParams * 6) : 3;
        while (horizontalParams >= 0) {
            int i3 = i2 + 6;
            addInstance(vector, dArr[i2 + 0], dArr[i2 + 1], dArr[i2 + 2], dArr[i2 + 3], dArr[i2 + 4], dArr[i2 + 5], dArr[i3], dArr[i2 + 7], i);
            horizontalParams--;
            i2 = i == 1 ? i3 : i2 - 6;
        }
    }

    public static int solveQuadratic(double[] dArr, double[] dArr2) {
        double d = dArr[2];
        double d2 = dArr[1];
        double d3 = dArr[0];
        if (d != 0.0d) {
            double d4 = (d2 * d2) - ((4.0d * d) * d3);
            if (d4 < 0.0d) {
                return 0;
            }
            double sqrt = Math.sqrt(d4);
            if (d2 < 0.0d) {
                sqrt = -sqrt;
            }
            double d5 = (d2 + sqrt) / (-2.0d);
            dArr2[0] = d5 / d;
            if (d5 != 0.0d) {
                dArr2[1] = d3 / d5;
                return 2;
            }
        } else {
            if (d2 == 0.0d) {
                return -1;
            }
            dArr2[0] = (-d3) / d2;
        }
        return 1;
    }

    public static void split(double[] dArr, int i, double d) {
        int i2 = i + 6;
        double d2 = dArr[i2];
        dArr[i + 12] = d2;
        int i3 = i + 7;
        double d3 = dArr[i3];
        dArr[i + 13] = d3;
        int i4 = i + 4;
        double d4 = dArr[i4];
        int i5 = i + 5;
        double d5 = dArr[i5];
        double d6 = ((d2 - d4) * d) + d4;
        double d7 = ((d3 - d5) * d) + d5;
        double d8 = dArr[i + 0];
        double d9 = dArr[i + 1];
        int i6 = i + 2;
        double d10 = dArr[i6];
        int i7 = i + 3;
        double d11 = dArr[i7];
        double d12 = d8 + ((d10 - d8) * d);
        double d13 = d9 + ((d11 - d9) * d);
        double d14 = d10 + ((d4 - d10) * d);
        double d15 = d11 + ((d5 - d11) * d);
        double d16 = d14 + ((d6 - d14) * d);
        double d17 = d15 + ((d7 - d15) * d);
        double d18 = d12 + ((d14 - d12) * d);
        double d19 = d13 + ((d15 - d13) * d);
        dArr[i6] = d12;
        dArr[i7] = d13;
        dArr[i4] = d18;
        dArr[i5] = d19;
        dArr[i2] = d18 + ((d16 - d18) * d);
        dArr[i3] = d19 + ((d17 - d19) * d);
        dArr[i + 8] = d16;
        dArr[i + 9] = d17;
        dArr[i + 10] = d6;
        dArr[i + 11] = d7;
    }

    @Override // com.sun.javafx.geom.Curve
    public double TforY(double d) {
        double refine;
        double d2;
        if (d <= this.f64052y0) {
            return 0.0d;
        }
        double d3 = 1.0d;
        if (d >= this.f64053y1) {
            return 1.0d;
        }
        if (d == this.YforT1) {
            return this.TforY1;
        }
        if (d == this.YforT2) {
            return this.TforY2;
        }
        if (d == this.YforT3) {
            return this.TforY3;
        }
        double d4 = this.ycoeff3;
        if (d4 == 0.0d) {
            return Order2.TforY(d, this.ycoeff0, this.ycoeff1, this.ycoeff2);
        }
        double d5 = this.ycoeff2 / d4;
        double d6 = this.ycoeff1 / d4;
        double d7 = (this.ycoeff0 - d) / d4;
        double d8 = ((d5 * d5) - (d6 * 3.0d)) / 9.0d;
        double d9 = (((((d5 * 2.0d) * d5) * d5) - ((9.0d * d5) * d6)) + (27.0d * d7)) / 54.0d;
        double d10 = d9 * d9;
        double d11 = d8 * d8 * d8;
        double d12 = d5 / 3.0d;
        if (d10 < d11) {
            double acos = Math.acos(d9 / Math.sqrt(d11));
            double sqrt = Math.sqrt(d8) * (-2.0d);
            refine = refine(d5, d6, d7, d, (Math.cos(acos / 3.0d) * sqrt) - d12);
            if (refine < 0.0d) {
                refine = refine(d5, d6, d7, d, (Math.cos((acos + 6.283185307179586d) / 3.0d) * sqrt) - d12);
            }
            if (refine < 0.0d) {
                refine = refine(d5, d6, d7, d, (sqrt * Math.cos((acos - 6.283185307179586d) / 3.0d)) - d12);
            }
        } else {
            boolean z = d9 < 0.0d;
            double sqrt2 = Math.sqrt(d10 - d11);
            if (z) {
                d9 = -d9;
            }
            double pow = Math.pow(d9 + sqrt2, 0.3333333333333333d);
            if (!z) {
                pow = -pow;
            }
            refine = refine(d5, d6, d7, d, (pow + (pow == 0.0d ? 0.0d : d8 / pow)) - d12);
        }
        if (refine < 0.0d) {
            double d13 = 0.0d;
            while (true) {
                d2 = (d13 + d3) / 2.0d;
                if (d2 != d13 && d2 != d3) {
                    double YforT = YforT(d2);
                    if (YforT >= d) {
                        if (YforT <= d) {
                            break;
                        }
                        d3 = d2;
                    } else {
                        d13 = d2;
                    }
                } else {
                    break;
                }
            }
            refine = d2;
        }
        if (refine >= 0.0d) {
            this.TforY3 = this.TforY2;
            this.YforT3 = this.YforT2;
            this.TforY2 = this.TforY1;
            this.YforT2 = this.YforT1;
            this.TforY1 = refine;
            this.YforT1 = d;
        }
        return refine;
    }

    @Override // com.sun.javafx.geom.Curve
    public double XforT(double d) {
        return (((((this.xcoeff3 * d) + this.xcoeff2) * d) + this.xcoeff1) * d) + this.xcoeff0;
    }

    @Override // com.sun.javafx.geom.Curve
    public double XforY(double d) {
        return d <= this.f64052y0 ? this.f64050x0 : d >= this.f64053y1 ? this.f64051x1 : XforT(TforY(d));
    }

    @Override // com.sun.javafx.geom.Curve
    public double YforT(double d) {
        return (((((this.ycoeff3 * d) + this.ycoeff2) * d) + this.ycoeff1) * d) + this.ycoeff0;
    }

    @Override // com.sun.javafx.geom.Curve
    public String controlPointString() {
        return MotionUtils.f31761c + Curve.round(getCX0()) + ", " + Curve.round(getCY0()) + "), " + MotionUtils.f31761c + Curve.round(getCX1()) + ", " + Curve.round(getCY1()) + "), ";
    }

    @Override // com.sun.javafx.geom.Curve
    public double dXforT(double d, int i) {
        double d2;
        double d3;
        if (i == 0) {
            return (((((this.xcoeff3 * d) + this.xcoeff2) * d) + this.xcoeff1) * d) + this.xcoeff0;
        }
        if (i == 1) {
            d2 = ((this.xcoeff3 * 3.0d * d) + (this.xcoeff2 * 2.0d)) * d;
            d3 = this.xcoeff1;
        } else {
            if (i != 2) {
                if (i != 3) {
                    return 0.0d;
                }
                return this.xcoeff3 * 6.0d;
            }
            d2 = this.xcoeff3 * 6.0d * d;
            d3 = this.xcoeff2 * 2.0d;
        }
        return d2 + d3;
    }

    @Override // com.sun.javafx.geom.Curve
    public double dYforT(double d, int i) {
        double d2;
        double d3;
        if (i == 0) {
            return (((((this.ycoeff3 * d) + this.ycoeff2) * d) + this.ycoeff1) * d) + this.ycoeff0;
        }
        if (i == 1) {
            d2 = ((this.ycoeff3 * 3.0d * d) + (this.ycoeff2 * 2.0d)) * d;
            d3 = this.ycoeff1;
        } else {
            if (i != 2) {
                if (i != 3) {
                    return 0.0d;
                }
                return this.ycoeff3 * 6.0d;
            }
            d2 = this.ycoeff3 * 6.0d * d;
            d3 = this.ycoeff2 * 2.0d;
        }
        return d2 + d3;
    }

    @Override // com.sun.javafx.geom.Curve
    public void enlarge(RectBounds rectBounds) {
        rectBounds.add((float) this.f64050x0, (float) this.f64052y0);
        double[] dArr = {this.xcoeff1, this.xcoeff2 * 2.0d, this.xcoeff3 * 3.0d};
        int solveQuadratic = solveQuadratic(dArr, dArr);
        for (int i = 0; i < solveQuadratic; i++) {
            double d = dArr[i];
            if (d > 0.0d && d < 1.0d) {
                rectBounds.add((float) XforT(d), (float) YforT(d));
            }
        }
        rectBounds.add((float) this.f64051x1, (float) this.f64053y1);
    }

    public double getCX0() {
        return this.direction == 1 ? this.cx0 : this.cx1;
    }

    public double getCX1() {
        return this.direction == -1 ? this.cx0 : this.cx1;
    }

    public double getCY0() {
        return this.direction == 1 ? this.cy0 : this.cy1;
    }

    public double getCY1() {
        return this.direction == -1 ? this.cy0 : this.cy1;
    }

    @Override // com.sun.javafx.geom.Curve
    public int getOrder() {
        return 3;
    }

    @Override // com.sun.javafx.geom.Curve
    public Curve getReversedCurve() {
        return new Order3(this.f64050x0, this.f64052y0, this.cx0, this.cy0, this.cx1, this.cy1, this.f64051x1, this.f64053y1, -this.direction);
    }

    @Override // com.sun.javafx.geom.Curve
    public int getSegment(float[] fArr) {
        if (this.direction == 1) {
            fArr[0] = (float) this.cx0;
            fArr[1] = (float) this.cy0;
            fArr[2] = (float) this.cx1;
            fArr[3] = (float) this.cy1;
            fArr[4] = (float) this.f64051x1;
            fArr[5] = (float) this.f64053y1;
        } else {
            fArr[0] = (float) this.cx1;
            fArr[1] = (float) this.cy1;
            fArr[2] = (float) this.cx0;
            fArr[3] = (float) this.cy0;
            fArr[4] = (float) this.f64050x0;
            fArr[5] = (float) this.f64052y0;
        }
        return 3;
    }

    @Override // com.sun.javafx.geom.Curve
    public Curve getSubCurve(double d, double d2, int i) {
        int i2;
        if (d <= this.f64052y0 && d2 >= this.f64053y1) {
            return getWithDirection(i);
        }
        double TforY = TforY(d);
        double TforY2 = TforY(d2);
        double[] dArr = {this.f64050x0, this.f64052y0, this.cx0, this.cy0, this.cx1, this.cy1, this.f64051x1, this.f64053y1};
        if (TforY <= TforY2) {
            TforY = TforY2;
            TforY2 = TforY;
        }
        if (TforY < 1.0d) {
            split(dArr, 0, TforY);
        }
        if (TforY2 <= 0.0d) {
            i2 = 0;
        } else {
            split(dArr, 0, TforY2 / TforY);
            i2 = 6;
        }
        return new Order3(dArr[i2 + 0], d, dArr[i2 + 2], dArr[i2 + 3], dArr[i2 + 4], dArr[i2 + 5], dArr[i2 + 6], d2, i);
    }

    @Override // com.sun.javafx.geom.Curve
    public double getX0() {
        return this.direction == 1 ? this.f64050x0 : this.f64051x1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getX1() {
        return this.direction == -1 ? this.f64050x0 : this.f64051x1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getXBot() {
        return this.f64051x1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getXMax() {
        return this.xmax;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getXMin() {
        return this.xmin;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getXTop() {
        return this.f64050x0;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getY0() {
        return this.direction == 1 ? this.f64052y0 : this.f64053y1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getY1() {
        return this.direction == -1 ? this.f64052y0 : this.f64053y1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getYBot() {
        return this.f64053y1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getYTop() {
        return this.f64052y0;
    }

    @Override // com.sun.javafx.geom.Curve
    public double nextVertical(double d, double d2) {
        double[] dArr = {this.xcoeff1, this.xcoeff2 * 2.0d, this.xcoeff3 * 3.0d};
        int solveQuadratic = solveQuadratic(dArr, dArr);
        for (int i = 0; i < solveQuadratic; i++) {
            double d3 = dArr[i];
            if (d3 > d && d3 < d2) {
                d2 = d3;
            }
        }
        return d2;
    }

    public double refine(double d, double d2, double d3, double d4, double d5) {
        double d6;
        double d7;
        double d8 = d5;
        if (d8 < -0.1d || d8 > 1.1d) {
            return -1.0d;
        }
        double YforT = YforT(d8);
        if (YforT < d4) {
            d7 = d8;
            d6 = 1.0d;
        } else {
            d6 = d8;
            d7 = 0.0d;
        }
        boolean z = true;
        while (YforT != d4) {
            if (!z) {
                double d9 = (d7 + d6) / 2.0d;
                if (d9 == d7 || d9 == d6) {
                    break;
                }
                d8 = d9;
            } else {
                double dYforT = dYforT(d8, 1);
                if (dYforT != 0.0d) {
                    double d10 = d8 + ((d4 - YforT) / dYforT);
                    if (d10 != d8 && d10 > d7 && d10 < d6) {
                        d8 = d10;
                    }
                }
                z = false;
            }
            YforT = YforT(d8);
            if (YforT >= d4) {
                if (YforT <= d4) {
                    break;
                }
                d6 = d8;
            } else {
                d7 = d8;
            }
        }
        if (d8 > 1.0d) {
            return -1.0d;
        }
        return d8;
    }
}
