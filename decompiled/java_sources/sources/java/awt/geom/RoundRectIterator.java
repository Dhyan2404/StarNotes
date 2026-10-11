package java.awt.geom;

import java.util.NoSuchElementException;

/* loaded from: classes5.dex */
class RoundRectIterator implements PathIterator {

    /* renamed from: a */
    private static final double f97795a;
    private static final double acv;
    private static final double angle = 0.7853981633974483d;

    /* renamed from: b */
    private static final double f97796b;

    /* renamed from: c */
    private static final double f97797c;
    private static double[][] ctrlpts;

    /* renamed from: cv */
    private static final double f97798cv;
    private static int[] types;
    AffineTransform affine;

    /* renamed from: ah */
    double f97799ah;

    /* renamed from: aw */
    double f97800aw;

    /* renamed from: h */
    double f97801h;
    int index;

    /* renamed from: w */
    double f97802w;

    /* renamed from: x */
    double f97803x;

    /* renamed from: y */
    double f97804y;

    static {
        double cos = 1.0d - Math.cos(angle);
        f97795a = cos;
        double tan = Math.tan(angle);
        f97796b = tan;
        double sqrt = (Math.sqrt((tan * tan) + 1.0d) - 1.0d) + cos;
        f97797c = sqrt;
        double d = ((cos * 1.3333333333333333d) * tan) / sqrt;
        f97798cv = d;
        double d2 = (1.0d - d) / 2.0d;
        acv = d2;
        ctrlpts = new double[][]{new double[]{0.0d, 0.0d, 0.0d, 0.5d}, new double[]{0.0d, 0.0d, 1.0d, -0.5d}, new double[]{0.0d, 0.0d, 1.0d, -d2, 0.0d, d2, 1.0d, 0.0d, 0.0d, 0.5d, 1.0d, 0.0d}, new double[]{1.0d, -0.5d, 1.0d, 0.0d}, new double[]{1.0d, -d2, 1.0d, 0.0d, 1.0d, 0.0d, 1.0d, -d2, 1.0d, 0.0d, 1.0d, -0.5d}, new double[]{1.0d, 0.0d, 0.0d, 0.5d}, new double[]{1.0d, 0.0d, 0.0d, d2, 1.0d, -d2, 0.0d, 0.0d, 1.0d, -0.5d, 0.0d, 0.0d}, new double[]{0.0d, 0.5d, 0.0d, 0.0d}, new double[]{0.0d, d2, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, d2, 0.0d, 0.0d, 0.0d, 0.5d}, new double[0]};
        types = new int[]{0, 1, 3, 1, 3, 1, 3, 1, 3, 4};
    }

    public RoundRectIterator(RoundRectangle2D roundRectangle2D, AffineTransform affineTransform) {
        this.f97803x = roundRectangle2D.getX();
        this.f97804y = roundRectangle2D.getY();
        this.f97802w = roundRectangle2D.getWidth();
        this.f97801h = roundRectangle2D.getHeight();
        this.f97800aw = Math.min(this.f97802w, Math.abs(roundRectangle2D.getArcWidth()));
        double min = Math.min(this.f97801h, Math.abs(roundRectangle2D.getArcHeight()));
        this.f97799ah = min;
        this.affine = affineTransform;
        if (this.f97800aw < 0.0d || min < 0.0d) {
            this.index = ctrlpts.length;
        }
    }

    @Override // java.awt.geom.PathIterator
    public int currentSegment(float[] fArr) {
        if (!isDone()) {
            double[] dArr = ctrlpts[this.index];
            int i = 0;
            for (int i2 = 0; i2 < dArr.length; i2 += 4) {
                int i3 = i + 1;
                fArr[i] = (float) (this.f97803x + (dArr[i2 + 0] * this.f97802w) + (dArr[i2 + 1] * this.f97800aw));
                i = i3 + 1;
                fArr[i3] = (float) (this.f97804y + (dArr[i2 + 2] * this.f97801h) + (dArr[i2 + 3] * this.f97799ah));
            }
            AffineTransform affineTransform = this.affine;
            if (affineTransform != null) {
                affineTransform.transform(fArr, 0, fArr, 0, i / 2);
            }
            return types[this.index];
        }
        throw new NoSuchElementException("roundrect iterator out of bounds");
    }

    @Override // java.awt.geom.PathIterator
    public int getWindingRule() {
        return 1;
    }

    @Override // java.awt.geom.PathIterator
    public boolean isDone() {
        return this.index >= ctrlpts.length;
    }

    @Override // java.awt.geom.PathIterator
    public void next() {
        this.index++;
    }

    @Override // java.awt.geom.PathIterator
    public int currentSegment(double[] dArr) {
        if (!isDone()) {
            double[] dArr2 = ctrlpts[this.index];
            int i = 0;
            for (int i2 = 0; i2 < dArr2.length; i2 += 4) {
                int i3 = i + 1;
                dArr[i] = this.f97803x + (dArr2[i2 + 0] * this.f97802w) + (dArr2[i2 + 1] * this.f97800aw);
                i = i3 + 1;
                dArr[i3] = this.f97804y + (dArr2[i2 + 2] * this.f97801h) + (dArr2[i2 + 3] * this.f97799ah);
            }
            AffineTransform affineTransform = this.affine;
            if (affineTransform != null) {
                affineTransform.transform(dArr, 0, dArr, 0, i / 2);
            }
            return types[this.index];
        }
        throw new NoSuchElementException("roundrect iterator out of bounds");
    }
}
