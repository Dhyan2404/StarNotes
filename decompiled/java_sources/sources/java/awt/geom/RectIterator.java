package java.awt.geom;

import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
class RectIterator implements PathIterator {
    AffineTransform affine;

    /* renamed from: h */
    double f97787h;
    int index;

    /* renamed from: w */
    double f97788w;

    /* renamed from: x */
    double f97789x;

    /* renamed from: y */
    double f97790y;

    public RectIterator(Rectangle2D rectangle2D, AffineTransform affineTransform) {
        this.f97789x = rectangle2D.getX();
        this.f97790y = rectangle2D.getY();
        this.f97788w = rectangle2D.getWidth();
        double height = rectangle2D.getHeight();
        this.f97787h = height;
        this.affine = affineTransform;
        if (this.f97788w < 0.0d || height < 0.0d) {
            this.index = 6;
        }
    }

    @Override // java.awt.geom.PathIterator
    public int currentSegment(float[] fArr) {
        if (!isDone()) {
            int i = this.index;
            if (i == 5) {
                return 4;
            }
            float f = (float) this.f97789x;
            fArr[0] = f;
            float f2 = (float) this.f97790y;
            fArr[1] = f2;
            if (i == 1 || i == 2) {
                fArr[0] = f + ((float) this.f97788w);
            }
            if (i == 2 || i == 3) {
                fArr[1] = f2 + ((float) this.f97787h);
            }
            AffineTransform affineTransform = this.affine;
            if (affineTransform != null) {
                affineTransform.transform(fArr, 0, fArr, 0, 1);
            }
            return this.index == 0 ? 0 : 1;
        }
        throw new NoSuchElementException("rect iterator out of bounds");
    }

    @Override // java.awt.geom.PathIterator
    public int getWindingRule() {
        return 1;
    }

    @Override // java.awt.geom.PathIterator
    public boolean isDone() {
        return this.index > 5;
    }

    @Override // java.awt.geom.PathIterator
    public void next() {
        this.index++;
    }

    @Override // java.awt.geom.PathIterator
    public int currentSegment(double[] dArr) {
        if (!isDone()) {
            int i = this.index;
            if (i == 5) {
                return 4;
            }
            double d = this.f97789x;
            dArr[0] = d;
            double d2 = this.f97790y;
            dArr[1] = d2;
            if (i == 1 || i == 2) {
                dArr[0] = d + this.f97788w;
            }
            if (i == 2 || i == 3) {
                dArr[1] = d2 + this.f97787h;
            }
            AffineTransform affineTransform = this.affine;
            if (affineTransform != null) {
                affineTransform.transform(dArr, 0, dArr, 0, 1);
            }
            return this.index == 0 ? 0 : 1;
        }
        throw new NoSuchElementException("rect iterator out of bounds");
    }
}
