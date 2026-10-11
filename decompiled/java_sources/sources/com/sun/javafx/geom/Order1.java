package com.sun.javafx.geom;

import sun.awt.geom.Crossings;

/* loaded from: classes9.dex */
public final class Order1 extends Curve {

    /* renamed from: x0 */
    private double f64042x0;

    /* renamed from: x1 */
    private double f64043x1;
    private double xmax;
    private double xmin;

    /* renamed from: y0 */
    private double f64044y0;

    /* renamed from: y1 */
    private double f64045y1;

    public Order1(double d, double d2, double d3, double d4, int i) {
        super(i);
        this.f64042x0 = d;
        this.f64044y0 = d2;
        this.f64043x1 = d3;
        this.f64045y1 = d4;
        if (d < d3) {
            this.xmin = d;
            this.xmax = d3;
        } else {
            this.xmin = d3;
            this.xmax = d;
        }
    }

    @Override // com.sun.javafx.geom.Curve
    public double TforY(double d) {
        double d2 = this.f64044y0;
        if (d <= d2) {
            return 0.0d;
        }
        double d3 = this.f64045y1;
        if (d >= d3) {
            return 1.0d;
        }
        return (d - d2) / (d3 - d2);
    }

    @Override // com.sun.javafx.geom.Curve
    public double XforT(double d) {
        double d2 = this.f64042x0;
        return d2 + (d * (this.f64043x1 - d2));
    }

    @Override // com.sun.javafx.geom.Curve
    public double XforY(double d) {
        double d2 = this.f64042x0;
        double d3 = this.f64043x1;
        if (d2 == d3) {
            return d2;
        }
        double d4 = this.f64044y0;
        if (d <= d4) {
            return d2;
        }
        double d5 = this.f64045y1;
        return d >= d5 ? d3 : d2 + (((d - d4) * (d3 - d2)) / (d5 - d4));
    }

    @Override // com.sun.javafx.geom.Curve
    public double YforT(double d) {
        double d2 = this.f64044y0;
        return d2 + (d * (this.f64045y1 - d2));
    }

    @Override // com.sun.javafx.geom.Curve
    public boolean accumulateCrossings(Crossings crossings) {
        double d;
        double d2;
        double d3;
        double d4;
        double xLo = crossings.getXLo();
        double yLo = crossings.getYLo();
        double xHi = crossings.getXHi();
        double yHi = crossings.getYHi();
        if (this.xmin >= xHi) {
            return false;
        }
        double d5 = this.f64044y0;
        if (d5 < yLo) {
            if (this.f64045y1 <= yLo) {
                return false;
            }
            d2 = XforY(yLo);
            d = yLo;
        } else {
            if (d5 >= yHi) {
                return false;
            }
            d = d5;
            d2 = this.f64042x0;
        }
        double d6 = this.f64045y1;
        if (d6 > yHi) {
            d4 = XforY(yHi);
            d3 = yHi;
        } else {
            d3 = d6;
            d4 = this.f64043x1;
        }
        if (d2 >= xHi && d4 >= xHi) {
            return false;
        }
        if (d2 > xLo || d4 > xLo) {
            return true;
        }
        crossings.record(d, d3, this.direction);
        return false;
    }

    @Override // com.sun.javafx.geom.Curve
    public int compareTo(Curve curve, double[] dArr) {
        double max;
        if (!(curve instanceof Order1)) {
            return super.compareTo(curve, dArr);
        }
        Order1 order1 = (Order1) curve;
        double d = dArr[1];
        if (d <= dArr[0]) {
            throw new InternalError("yrange already screwed up...");
        }
        double min = Math.min(Math.min(d, this.f64045y1), order1.f64045y1);
        dArr[1] = min;
        double d2 = dArr[0];
        if (min <= d2) {
            throw new InternalError("backstepping from " + dArr[0] + " to " + dArr[1]);
        }
        if (this.xmax <= order1.xmin) {
            return this.xmin == order1.xmax ? 0 : -1;
        }
        if (this.xmin >= order1.xmax) {
            return 1;
        }
        double d3 = this.f64043x1;
        double d4 = this.f64042x0;
        double d5 = d3 - d4;
        double d6 = this.f64045y1;
        double d7 = this.f64044y0;
        double d8 = d6 - d7;
        double d9 = order1.f64043x1;
        double d10 = order1.f64042x0;
        double d11 = d9 - d10;
        double d12 = order1.f64045y1;
        double d13 = order1.f64044y0;
        double d14 = d12 - d13;
        double d15 = (d11 * d8) - (d5 * d14);
        if (d15 != 0.0d) {
            double d16 = (((((d4 - d10) * d8) * d14) - ((d5 * d7) * d14)) + ((d11 * d13) * d8)) / d15;
            if (d16 <= d2) {
                max = Math.min(d6, d12);
            } else {
                if (d16 < min) {
                    dArr[1] = d16;
                }
                max = Math.max(d7, d13);
            }
        } else {
            max = Math.max(d7, d13);
        }
        return Curve.orderof(XforY(max), order1.XforY(max));
    }

    @Override // com.sun.javafx.geom.Curve
    public double dXforT(double d, int i) {
        if (i == 0) {
            double d2 = this.f64042x0;
            return d2 + (d * (this.f64043x1 - d2));
        }
        if (i != 1) {
            return 0.0d;
        }
        return this.f64043x1 - this.f64042x0;
    }

    @Override // com.sun.javafx.geom.Curve
    public double dYforT(double d, int i) {
        if (i == 0) {
            double d2 = this.f64044y0;
            return d2 + (d * (this.f64045y1 - d2));
        }
        if (i != 1) {
            return 0.0d;
        }
        return this.f64045y1 - this.f64044y0;
    }

    @Override // com.sun.javafx.geom.Curve
    public void enlarge(RectBounds rectBounds) {
        rectBounds.add((float) this.f64042x0, (float) this.f64044y0);
        rectBounds.add((float) this.f64043x1, (float) this.f64045y1);
    }

    @Override // com.sun.javafx.geom.Curve
    public int getOrder() {
        return 1;
    }

    @Override // com.sun.javafx.geom.Curve
    public Curve getReversedCurve() {
        return new Order1(this.f64042x0, this.f64044y0, this.f64043x1, this.f64045y1, -this.direction);
    }

    @Override // com.sun.javafx.geom.Curve
    public int getSegment(float[] fArr) {
        if (this.direction == 1) {
            fArr[0] = (float) this.f64043x1;
            fArr[1] = (float) this.f64045y1;
        } else {
            fArr[0] = (float) this.f64042x0;
            fArr[1] = (float) this.f64044y0;
        }
        return 1;
    }

    @Override // com.sun.javafx.geom.Curve
    public Curve getSubCurve(double d, double d2, int i) {
        double d3 = this.f64044y0;
        if (d == d3 && d2 == this.f64045y1) {
            return getWithDirection(i);
        }
        double d4 = this.f64042x0;
        double d5 = this.f64043x1;
        if (d4 == d5) {
            return new Order1(d4, d, d5, d2, i);
        }
        double d6 = d4 - d5;
        double d7 = d3 - this.f64045y1;
        return new Order1((((d - d3) * d6) / d7) + d4, d, d4 + (((d2 - d3) * d6) / d7), d2, i);
    }

    @Override // com.sun.javafx.geom.Curve
    public double getX0() {
        return this.direction == 1 ? this.f64042x0 : this.f64043x1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getX1() {
        return this.direction == -1 ? this.f64042x0 : this.f64043x1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getXBot() {
        return this.f64043x1;
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
        return this.f64042x0;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getY0() {
        return this.direction == 1 ? this.f64044y0 : this.f64045y1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getY1() {
        return this.direction == -1 ? this.f64044y0 : this.f64045y1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getYBot() {
        return this.f64045y1;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getYTop() {
        return this.f64044y0;
    }

    @Override // com.sun.javafx.geom.Curve
    public double nextVertical(double d, double d2) {
        return d2;
    }
}
