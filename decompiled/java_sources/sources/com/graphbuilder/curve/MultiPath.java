package com.graphbuilder.curve;

import com.graphbuilder.geom.Geom;
import java.lang.reflect.Array;

/* loaded from: classes4.dex */
public class MultiPath {

    /* renamed from: e */
    public double[][] f38834e;

    /* renamed from: f */
    public Object[] f38835f;

    /* renamed from: g */
    public int f38836g;

    /* renamed from: h */
    public double f38837h;

    /* renamed from: i */
    public final int f38838i;
    public static final Object MOVE_TO = new Object();
    public static final Object LINE_TO = new Object();

    public MultiPath(int i) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 2, 0);
        this.f38834e = dArr;
        this.f38835f = new Object[dArr.length];
        this.f38836g = 0;
        this.f38837h = 1.0d;
        if (i <= 0) {
            throw new IllegalArgumentException("dimension > 0 required");
        }
        this.f38838i = i;
    }

    /* renamed from: a */
    public final void m30837a(double[] dArr, Object obj) {
        if (dArr == null) {
            throw new IllegalArgumentException("Point cannot be null.");
        }
        if (dArr.length < this.f38838i) {
            throw new IllegalArgumentException("p.length >= dimension required");
        }
        int i = this.f38836g;
        if (i == 0) {
            obj = MOVE_TO;
        }
        ensureCapacity(i + 1);
        double[][] dArr2 = this.f38834e;
        int i2 = this.f38836g;
        dArr2[i2] = dArr;
        this.f38835f[i2] = obj;
        this.f38836g = i2 + 1;
    }

    public void ensureCapacity(int i) {
        double[][] dArr = this.f38834e;
        if (dArr.length < i) {
            int length = dArr.length * 2;
            if (length >= i) {
                i = length;
            }
            double[][] dArr2 = new double[i];
            for (int i2 = 0; i2 < this.f38836g; i2++) {
                dArr2[i2] = this.f38834e[i2];
            }
            Object[] objArr = new Object[i];
            for (int i3 = 0; i3 < this.f38836g; i3++) {
                objArr[i3] = this.f38835f[i3];
            }
            this.f38834e = dArr2;
            this.f38835f = objArr;
        }
    }

    public double[] get(int i) {
        return this.f38834e[i];
    }

    public int getCapacity() {
        return this.f38834e.length;
    }

    public int getDimension() {
        return this.f38838i;
    }

    public double getDistSq(double[] dArr) {
        if (dArr == null) {
            throw new IllegalArgumentException("Point cannot be null.");
        }
        if (dArr.length < this.f38838i) {
            throw new IllegalArgumentException("p.length >= dimension required");
        }
        int numPoints = getNumPoints();
        double d = Double.MAX_VALUE;
        if (numPoints == 0) {
            return Double.MAX_VALUE;
        }
        double[] dArr2 = get(0);
        double[] dArr3 = new double[this.f38838i + 1];
        for (int i = 1; i < numPoints; i++) {
            double[] dArr4 = get(i);
            if (getType(i) == LINE_TO) {
                double ptSegDistSq = Geom.ptSegDistSq(dArr4, dArr2, dArr, dArr3, this.f38838i);
                if (ptSegDistSq < d) {
                    d = ptSegDistSq;
                }
            }
        }
        return d;
    }

    public double getFlatness() {
        return this.f38837h;
    }

    public int getNumPoints() {
        return this.f38836g;
    }

    public Object getType(int i) {
        Object obj = this.f38835f[i];
        if (obj != null) {
            return obj;
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    public void lineTo(double[] dArr) {
        m30837a(dArr, LINE_TO);
    }

    public void moveTo(double[] dArr) {
        m30837a(dArr, MOVE_TO);
    }

    public void set(int i, double[] dArr) {
        if (dArr == null) {
            throw new IllegalArgumentException("Point cannot be null.");
        }
        if (dArr.length < this.f38838i) {
            throw new IllegalArgumentException("p.length >= dimension required");
        }
        double[][] dArr2 = this.f38834e;
        if (dArr2[i] == null) {
            throw new ArrayIndexOutOfBoundsException(i);
        }
        dArr2[i] = dArr;
    }

    public void setFlatness(double d) {
        if (d <= 0.0d) {
            throw new IllegalArgumentException("flatness > 0 required");
        }
        this.f38837h = d;
    }

    public void setNumPoints(int i) {
        if (i != 0 && this.f38834e[i - 1] == null) {
            throw new ArrayIndexOutOfBoundsException(i);
        }
        this.f38836g = i;
    }

    public void setType(int i, Object obj) {
        Object obj2 = MOVE_TO;
        if (obj != obj2 && obj != LINE_TO) {
            throw new IllegalArgumentException("unknown type");
        }
        Object[] objArr = this.f38835f;
        if (objArr[i] == null) {
            throw new ArrayIndexOutOfBoundsException(i);
        }
        if (i == 0 && obj != obj2) {
            throw new IllegalArgumentException("type[0] must always be MOVE_TO");
        }
        objArr[i] = obj;
    }

    public void trimArray() {
        int i;
        int i2 = this.f38836g;
        if (i2 < this.f38834e.length) {
            double[][] dArr = new double[i2];
            int i3 = 0;
            while (true) {
                i = this.f38836g;
                if (i3 >= i) {
                    break;
                }
                dArr[i3] = this.f38834e[i3];
                i3++;
            }
            Object[] objArr = new Object[i];
            for (int i4 = 0; i4 < this.f38836g; i4++) {
                objArr[i4] = this.f38835f[i4];
            }
            this.f38834e = dArr;
            this.f38835f = objArr;
        }
    }
}
