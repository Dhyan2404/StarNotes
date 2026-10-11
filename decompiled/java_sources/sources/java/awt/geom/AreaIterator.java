package java.awt.geom;

import java.util.NoSuchElementException;
import java.util.Vector;
import sun.awt.geom.Curve;

/* loaded from: classes5.dex */
class AreaIterator implements PathIterator {
    private Vector curves;
    private int index;
    private Curve prevcurve;
    private Curve thiscurve;
    private AffineTransform transform;

    public AreaIterator(Vector vector, AffineTransform affineTransform) {
        this.curves = vector;
        this.transform = affineTransform;
        if (vector.size() >= 1) {
            this.thiscurve = (Curve) vector.get(0);
        }
    }

    @Override // java.awt.geom.PathIterator
    public int currentSegment(float[] fArr) {
        int i;
        double[] dArr = new double[6];
        int currentSegment = currentSegment(dArr);
        if (currentSegment == 4) {
            i = 0;
        } else if (currentSegment == 2) {
            i = 2;
        } else {
            i = 3;
            if (currentSegment != 3) {
                i = 1;
            }
        }
        for (int i2 = 0; i2 < i * 2; i2++) {
            fArr[i2] = (float) dArr[i2];
        }
        return currentSegment;
    }

    @Override // java.awt.geom.PathIterator
    public int getWindingRule() {
        return 1;
    }

    @Override // java.awt.geom.PathIterator
    public boolean isDone() {
        return this.prevcurve == null && this.thiscurve == null;
    }

    @Override // java.awt.geom.PathIterator
    public void next() {
        if (this.prevcurve != null) {
            this.prevcurve = null;
            return;
        }
        this.prevcurve = this.thiscurve;
        int i = this.index + 1;
        this.index = i;
        if (i >= this.curves.size()) {
            this.thiscurve = null;
            return;
        }
        Curve curve = (Curve) this.curves.get(this.index);
        this.thiscurve = curve;
        if (curve.getOrder() != 0 && this.prevcurve.getX1() == this.thiscurve.getX0() && this.prevcurve.getY1() == this.thiscurve.getY0()) {
            this.prevcurve = null;
        }
    }

    @Override // java.awt.geom.PathIterator
    public int currentSegment(double[] dArr) {
        int i;
        int i2 = 1;
        if (this.prevcurve != null) {
            Curve curve = this.thiscurve;
            if (curve == null || curve.getOrder() == 0) {
                return 4;
            }
            dArr[0] = this.thiscurve.getX0();
            dArr[1] = this.thiscurve.getY0();
            i = 1;
        } else {
            Curve curve2 = this.thiscurve;
            if (curve2 != null) {
                int segment = curve2.getSegment(dArr);
                int order = this.thiscurve.getOrder();
                if (order == 0) {
                    i = 1;
                    i2 = segment;
                } else {
                    i2 = segment;
                    i = order;
                }
            } else {
                throw new NoSuchElementException("area iterator out of bounds");
            }
        }
        AffineTransform affineTransform = this.transform;
        if (affineTransform != null) {
            affineTransform.transform(dArr, 0, dArr, 0, i);
        }
        return i2;
    }
}
