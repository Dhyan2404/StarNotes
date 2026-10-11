package com.sun.javafx.geom;

import com.google.android.material.motion.MotionUtils;
import java.util.Vector;

/* loaded from: classes9.dex */
public final class Order2 extends Curve {
    private double cx0;
    private double cy0;

    /* renamed from: x0 */
    private double f64046x0;

    /* renamed from: x1 */
    private double f64047x1;
    private double xcoeff0;
    private double xcoeff1;
    private double xcoeff2;
    private double xmax;
    private double xmin;

    /* renamed from: y0 */
    private double f64048y0;

    /* renamed from: y1 */
    private double f64049y1;
    private double ycoeff0;
    private double ycoeff1;
    private double ycoeff2;

    public Order2(double d, double d2, double d3, double d4, double d5, double d6, int i) {
        super(i);
        if (d4 < d2) {
            d4 = d2;
        } else if (d4 > d6) {
            d4 = d6;
        }
        this.f64046x0 = d;
        this.f64048y0 = d2;
        this.cx0 = d3;
        this.cy0 = d4;
        this.f64047x1 = d5;
        this.f64049y1 = d6;
        this.xmin = Math.min(Math.min(d, d5), d3);
        this.xmax = Math.max(Math.max(d, d5), d3);
        this.xcoeff0 = d;
        this.xcoeff1 = ((d3 + d3) - d) - d;
        this.xcoeff2 = ((d - d3) - d3) + d5;
        this.ycoeff0 = d2;
        this.ycoeff1 = ((d4 + d4) - d2) - d2;
        this.ycoeff2 = ((d2 - d4) - d4) + d6;
    }

    public static void addInstance(Vector vector, double d, double d2, double d3, double d4, double d5, double d6, int i) {
        if (d2 > d6) {
            vector.add(new Order2(d5, d6, d3, d4, d, d2, -i));
        } else if (d6 > d2) {
            vector.add(new Order2(d, d2, d3, d4, d5, d6, i));
        }
    }

    public static int getHorizontalParams(double d, double d2, double d3, double[] dArr) {
        if (d <= d2 && d2 <= d3) {
            return 0;
        }
        double d4 = d - d2;
        double d5 = (d3 - d2) + d4;
        if (d5 == 0.0d) {
            return 0;
        }
        double d6 = d4 / d5;
        if (d6 <= 0.0d || d6 >= 1.0d) {
            return 0;
        }
        dArr[0] = d6;
        return 1;
    }

    public static void insert(Vector vector, double[] dArr, double d, double d2, double d3, double d4, double d5, double d6, int i) {
        if (getHorizontalParams(d2, d4, d6, dArr) == 0) {
            addInstance(vector, d, d2, d3, d4, d5, d6, i);
            return;
        }
        double d7 = dArr[0];
        dArr[0] = d;
        dArr[1] = d2;
        dArr[2] = d3;
        dArr[3] = d4;
        dArr[4] = d5;
        dArr[5] = d6;
        split(dArr, 0, d7);
        int i2 = i != 1 ? 4 : 0;
        int i3 = 4 - i2;
        addInstance(vector, dArr[i2], dArr[i2 + 1], dArr[i2 + 2], dArr[i2 + 3], dArr[i2 + 4], dArr[i2 + 5], i);
        addInstance(vector, dArr[i3], dArr[i3 + 1], dArr[i3 + 2], dArr[i3 + 3], dArr[i3 + 4], dArr[i3 + 5], i);
    }

    public static void split(double[] dArr, int i, double d) {
        int i2 = i + 4;
        double d2 = dArr[i2];
        dArr[i + 8] = d2;
        int i3 = i + 5;
        double d3 = dArr[i3];
        dArr[i + 9] = d3;
        int i4 = i + 2;
        double d4 = dArr[i4];
        int i5 = i + 3;
        double d5 = dArr[i5];
        double d6 = ((d2 - d4) * d) + d4;
        double d7 = ((d3 - d5) * d) + d5;
        double d8 = dArr[i + 0];
        double d9 = dArr[i + 1];
        double d10 = d8 + ((d4 - d8) * d);
        double d11 = d9 + ((d5 - d9) * d);
        dArr[i4] = d10;
        dArr[i5] = d11;
        dArr[i2] = ((d6 - d10) * d) + d10;
        dArr[i3] = ((d7 - d11) * d) + d11;
        dArr[i + 6] = d6;
        dArr[i + 7] = d7;
    }

    @Override // com.sun.javafx.geom.Curve
    public double TforY(double d) {
        if (d <= this.f64048y0) {
            return 0.0d;
        }
        if (d >= this.f64049y1) {
            return 1.0d;
        }
        return TforY(d, this.ycoeff0, this.ycoeff1, this.ycoeff2);
    }

    @Override // com.sun.javafx.geom.Curve
    public double XforT(double d) {
        return (((this.xcoeff2 * d) + this.xcoeff1) * d) + this.xcoeff0;
    }

    @Override // com.sun.javafx.geom.Curve
    public double XforY(double d) {
        return d <= this.f64048y0 ? this.f64046x0 : d >= this.f64049y1 ? this.f64047x1 : XforT(TforY(d));
    }

    @Override // com.sun.javafx.geom.Curve
    public double YforT(double d) {
        return (((this.ycoeff2 * d) + this.ycoeff1) * d) + this.ycoeff0;
    }

    @Override // com.sun.javafx.geom.Curve
    public String controlPointString() {
        return MotionUtils.f31761c + Curve.round(this.cx0) + ", " + Curve.round(this.cy0) + "), ";
    }

    @Override // com.sun.javafx.geom.Curve
    public double dXforT(double d, int i) {
        if (i == 0) {
            return (((this.xcoeff2 * d) + this.xcoeff1) * d) + this.xcoeff0;
        }
        if (i == 1) {
            return (this.xcoeff2 * 2.0d * d) + this.xcoeff1;
        }
        if (i != 2) {
            return 0.0d;
        }
        return this.xcoeff2 * 2.0d;
    }

    @Override // com.sun.javafx.geom.Curve
    public double dYforT(double d, int i) {
        if (i == 0) {
            return (((this.ycoeff2 * d) + this.ycoeff1) * d) + this.ycoeff0;
        }
        if (i == 1) {
            return (this.ycoeff2 * 2.0d * d) + this.ycoeff1;
        }
        if (i != 2) {
            return 0.0d;
        }
        return this.ycoeff2 * 2.0d;
    }

    @Override // com.sun.javafx.geom.Curve
    public void enlarge(RectBounds rectBounds) {
        rectBounds.add((float) this.f64046x0, (float) this.f64048y0);
        double d = (-this.xcoeff1) / (this.xcoeff2 * 2.0d);
        if (d > 0.0d && d < 1.0d) {
            rectBounds.add((float) XforT(d), (float) YforT(d));
        }
        rectBounds.add((float) this.f64047x1, (float) this.f64049y1);
    }

    public double getCX0() {
        return this.cx0;
    }

    public double getCY0() {
        return this.cy0;
    }

    @Override // com.sun.javafx.geom.Curve
    public int getOrder() {
        return 2;
    }

    @Override // com.sun.javafx.geom.Curve
    public Curve getReversedCurve() {
        return new Order2(this.f64046x0, this.f64048y0, this.cx0, this.cy0, this.f64047x1, this.f64049y1, -this.direction);
    }

    @Override // com.sun.javafx.geom.Curve
    public int getSegment(float[] fArr) {
        fArr[0] = (float) this.cx0;
        fArr[1] = (float) this.cy0;
        if (this.direction == 1) {
            fArr[2] = (float) this.f64047x1;
            fArr[3] = (float) this.f64049y1;
        } else {
            fArr[2] = (float) this.f64046x0;
            fArr[3] = (float) this.f64048y0;
        }
        return 2;
    }

    @Override // com.sun.javafx.geom.Curve
    public Curve getSubCurve(double d, double d2, int i) {
        double TforY;
        if (d > this.f64048y0) {
            TforY = TforY(d, this.ycoeff0, this.ycoeff1, this.ycoeff2);
        } else {
            if (d2 >= this.f64049y1) {
                return getWithDirection(i);
            }
            TforY = 0.0d;
        }
        double TforY2 = d2 >= this.f64049y1 ? 1.0d : TforY(d2, this.ycoeff0, this.ycoeff1, this.ycoeff2);
        int i2 = 0;
        double[] dArr = {this.f64046x0, this.f64048y0, this.cx0, this.cy0, this.f64047x1, this.f64049y1};
        if (TforY2 < 1.0d) {
            split(dArr, 0, TforY2);
        }
        if (TforY > 0.0d) {
            split(dArr, 0, TforY / TforY2);
            i2 = 4;
        }
        return new Order2(dArr[i2 + 0], d, dArr[i2 + 2], dArr[i2 + 3], dArr[i2 + 4], d2, i);
    }

    @Override // com.sun.javafx.geom.Curve
    public double getX0() {
        return this.direction == 1 ? this.f64046x0 : this.f64047x1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getX1() {
        return this.direction == -1 ? this.f64046x0 : this.f64047x1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getXBot() {
        return this.f64047x1;
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
        return this.f64046x0;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getY0() {
        return this.direction == 1 ? this.f64048y0 : this.f64049y1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getY1() {
        return this.direction == -1 ? this.f64048y0 : this.f64049y1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getYBot() {
        return this.f64049y1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getYTop() {
        return this.f64048y0;
    }

    @Override // com.sun.javafx.geom.Curve
    public double nextVertical(double d, double d2) {
        double d3 = (-this.xcoeff1) / (this.xcoeff2 * 2.0d);
        return (d3 <= d || d3 >= d2) ? d2 : d3;
    }

    public static double TforY(double d, double d2, double d3, double d4) {
        double d5 = d2 - d;
        if (d4 == 0.0d) {
            double d6 = (-d5) / d3;
            if (d6 >= 0.0d && d6 <= 1.0d) {
                return d6;
            }
        } else {
            double d7 = (d3 * d3) - ((4.0d * d4) * d5);
            if (d7 >= 0.0d) {
                double sqrt = Math.sqrt(d7);
                if (d3 < 0.0d) {
                    sqrt = -sqrt;
                }
                double d8 = (sqrt + d3) / (-2.0d);
                double d9 = d8 / d4;
                if (d9 >= 0.0d && d9 <= 1.0d) {
                    return d9;
                }
                if (d8 != 0.0d) {
                    double d10 = d5 / d8;
                    if (d10 >= 0.0d && d10 <= 1.0d) {
                        return d10;
                    }
                }
            }
        }
        return 0.0d < (d5 + ((d3 + d5) + d4)) / 2.0d ? 0.0d : 1.0d;
    }
}
