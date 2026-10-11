package java.awt.geom;

import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
class ArcIterator implements PathIterator {
    AffineTransform affine;
    double angStRad;
    int arcSegs;

    /* renamed from: cv */
    double f97746cv;

    /* renamed from: h */
    double f97747h;
    double increment;
    int index;
    int lineSegs;

    /* renamed from: w */
    double f97748w;

    /* renamed from: x */
    double f97749x;

    /* renamed from: y */
    double f97750y;

    public ArcIterator(Arc2D arc2D, AffineTransform affineTransform) {
        this.f97748w = arc2D.getWidth() / 2.0d;
        this.f97747h = arc2D.getHeight() / 2.0d;
        this.f97749x = arc2D.getX() + this.f97748w;
        this.f97750y = arc2D.getY() + this.f97747h;
        this.angStRad = -Math.toRadians(arc2D.getAngleStart());
        this.affine = affineTransform;
        double d = -arc2D.getAngleExtent();
        if (d >= 360.0d || d <= -360.0d) {
            this.arcSegs = 4;
            this.increment = 1.5707963267948966d;
            this.f97746cv = 0.5522847498307933d;
            if (d < 0.0d) {
                this.increment = -1.5707963267948966d;
                this.f97746cv = -0.5522847498307933d;
            }
        } else {
            int ceil = (int) Math.ceil(Math.abs(d) / 90.0d);
            this.arcSegs = ceil;
            double radians = Math.toRadians(d / ceil);
            this.increment = radians;
            double btan = btan(radians);
            this.f97746cv = btan;
            if (btan == 0.0d) {
                this.arcSegs = 0;
            }
        }
        int arcType = arc2D.getArcType();
        if (arcType == 0) {
            this.lineSegs = 0;
        } else if (arcType == 1) {
            this.lineSegs = 1;
        } else if (arcType == 2) {
            this.lineSegs = 2;
        }
        if (this.f97748w < 0.0d || this.f97747h < 0.0d) {
            this.lineSegs = -1;
            this.arcSegs = -1;
        }
    }

    private static double btan(double d) {
        double d2 = d / 2.0d;
        return (Math.sin(d2) * 1.3333333333333333d) / (Math.cos(d2) + 1.0d);
    }

    @Override // java.awt.geom.PathIterator
    public int currentSegment(float[] fArr) {
        if (!isDone()) {
            double d = this.angStRad;
            int i = this.index;
            if (i == 0) {
                fArr[0] = (float) (this.f97749x + (Math.cos(d) * this.f97748w));
                fArr[1] = (float) (this.f97750y + (Math.sin(d) * this.f97747h));
                AffineTransform affineTransform = this.affine;
                if (affineTransform != null) {
                    affineTransform.transform(fArr, 0, fArr, 0, 1);
                }
                return 0;
            }
            int i2 = this.arcSegs;
            if (i > i2) {
                if (i == i2 + this.lineSegs) {
                    return 4;
                }
                fArr[0] = (float) this.f97749x;
                fArr[1] = (float) this.f97750y;
                AffineTransform affineTransform2 = this.affine;
                if (affineTransform2 != null) {
                    affineTransform2.transform(fArr, 0, fArr, 0, 1);
                }
                return 1;
            }
            double d2 = d + (this.increment * (i - 1));
            double cos = Math.cos(d2);
            double sin = Math.sin(d2);
            double d3 = this.f97749x;
            double d4 = this.f97746cv;
            fArr[0] = (float) (d3 + ((cos - (d4 * sin)) * this.f97748w));
            fArr[1] = (float) (this.f97750y + ((sin + (d4 * cos)) * this.f97747h));
            double d5 = d2 + this.increment;
            double cos2 = Math.cos(d5);
            double sin2 = Math.sin(d5);
            double d6 = this.f97749x;
            double d7 = this.f97746cv;
            double d8 = this.f97748w;
            fArr[2] = (float) ((((d7 * sin2) + cos2) * d8) + d6);
            double d9 = this.f97750y;
            double d10 = this.f97747h;
            fArr[3] = (float) (((sin2 - (d7 * cos2)) * d10) + d9);
            fArr[4] = (float) (d6 + (cos2 * d8));
            fArr[5] = (float) (d9 + (sin2 * d10));
            AffineTransform affineTransform3 = this.affine;
            if (affineTransform3 != null) {
                affineTransform3.transform(fArr, 0, fArr, 0, 3);
            }
            return 3;
        }
        throw new NoSuchElementException("arc iterator out of bounds");
    }

    @Override // java.awt.geom.PathIterator
    public int getWindingRule() {
        return 1;
    }

    @Override // java.awt.geom.PathIterator
    public boolean isDone() {
        return this.index > this.arcSegs + this.lineSegs;
    }

    @Override // java.awt.geom.PathIterator
    public void next() {
        this.index++;
    }

    @Override // java.awt.geom.PathIterator
    public int currentSegment(double[] dArr) {
        if (!isDone()) {
            double d = this.angStRad;
            int i = this.index;
            if (i == 0) {
                dArr[0] = this.f97749x + (Math.cos(d) * this.f97748w);
                dArr[1] = this.f97750y + (Math.sin(d) * this.f97747h);
                AffineTransform affineTransform = this.affine;
                if (affineTransform != null) {
                    affineTransform.transform(dArr, 0, dArr, 0, 1);
                }
                return 0;
            }
            int i2 = this.arcSegs;
            if (i > i2) {
                if (i == i2 + this.lineSegs) {
                    return 4;
                }
                dArr[0] = this.f97749x;
                dArr[1] = this.f97750y;
                AffineTransform affineTransform2 = this.affine;
                if (affineTransform2 != null) {
                    affineTransform2.transform(dArr, 0, dArr, 0, 1);
                }
                return 1;
            }
            double d2 = d + (this.increment * (i - 1));
            double cos = Math.cos(d2);
            double sin = Math.sin(d2);
            double d3 = this.f97749x;
            double d4 = this.f97746cv;
            dArr[0] = d3 + ((cos - (d4 * sin)) * this.f97748w);
            dArr[1] = this.f97750y + ((sin + (d4 * cos)) * this.f97747h);
            double d5 = d2 + this.increment;
            double cos2 = Math.cos(d5);
            double sin2 = Math.sin(d5);
            double d6 = this.f97749x;
            double d7 = this.f97746cv;
            double d8 = this.f97748w;
            dArr[2] = (((d7 * sin2) + cos2) * d8) + d6;
            double d9 = this.f97750y;
            double d10 = this.f97747h;
            dArr[3] = ((sin2 - (d7 * cos2)) * d10) + d9;
            dArr[4] = d6 + (cos2 * d8);
            dArr[5] = d9 + (sin2 * d10);
            AffineTransform affineTransform3 = this.affine;
            if (affineTransform3 != null) {
                affineTransform3.transform(dArr, 0, dArr, 0, 3);
            }
            return 3;
        }
        throw new NoSuchElementException("arc iterator out of bounds");
    }
}
