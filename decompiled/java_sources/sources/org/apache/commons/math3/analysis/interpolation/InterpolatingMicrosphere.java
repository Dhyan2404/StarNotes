package org.apache.commons.math3.analysis.interpolation;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.random.UnitSphereRandomVectorGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class InterpolatingMicrosphere {

    /* renamed from: a */
    public final List<C19054a> f107872a;

    /* renamed from: b */
    public final List<C19055b> f107873b;

    /* renamed from: c */
    public final int f107874c;

    /* renamed from: d */
    public final int f107875d;

    /* renamed from: e */
    public final double f107876e;

    /* renamed from: f */
    public final double f107877f;

    /* renamed from: g */
    public final double f107878g;

    /* renamed from: org.apache.commons.math3.analysis.interpolation.InterpolatingMicrosphere$a */
    /* loaded from: classes12.dex */
    public static class C19054a {

        /* renamed from: a */
        public final double[] f107879a;

        public C19054a(double[] dArr) {
            this.f107879a = dArr;
        }

        /* renamed from: a */
        public double[] m67506a() {
            return this.f107879a;
        }
    }

    /* renamed from: org.apache.commons.math3.analysis.interpolation.InterpolatingMicrosphere$b */
    /* loaded from: classes12.dex */
    public static class C19055b {

        /* renamed from: a */
        public final double f107880a;

        /* renamed from: b */
        public final double f107881b;

        public C19055b(double d, double d2) {
            this.f107880a = d;
            this.f107881b = d2;
        }

        /* renamed from: a */
        public double m67507a() {
            return this.f107880a;
        }

        /* renamed from: b */
        public double m67508b() {
            return this.f107881b;
        }
    }

    public InterpolatingMicrosphere(int i, int i2, double d, double d2, double d3) {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        if (i2 <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i2));
        }
        if (d < 0.0d || d > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d), 0, 1);
        }
        if (d2 >= 0.0d) {
            this.f107874c = i;
            this.f107875d = i2;
            this.f107876e = d;
            this.f107877f = d2;
            this.f107878g = d3;
            this.f107872a = new ArrayList(i2);
            this.f107873b = new ArrayList(i2);
            return;
        }
        throw new NotPositiveException(Double.valueOf(d2));
    }

    /* renamed from: a */
    public final void m67503a() {
        for (int i = 0; i < this.f107875d; i++) {
            this.f107873b.set(i, new C19055b(0.0d, 0.0d));
        }
    }

    public void add(double[] dArr, boolean z) {
        if (this.f107872a.size() >= this.f107875d) {
            throw new MaxCountExceededException(Integer.valueOf(this.f107875d));
        }
        if (dArr.length > this.f107874c) {
            throw new DimensionMismatchException(dArr.length, this.f107874c);
        }
        List<C19054a> list = this.f107872a;
        if (z) {
            dArr = (double[]) dArr.clone();
        }
        list.add(new C19054a(dArr));
        this.f107873b.add(new C19055b(0.0d, 0.0d));
    }

    /* renamed from: b */
    public final void m67504b(double[] dArr, double d, double d2) {
        for (int i = 0; i < this.f107875d; i++) {
            double cosAngle = MathArrays.cosAngle(this.f107872a.get(i).m67506a(), dArr);
            if (cosAngle > 0.0d) {
                double d3 = cosAngle * d2;
                if (d3 > this.f107877f && d3 > this.f107873b.get(i).m67507a()) {
                    this.f107873b.set(i, new C19055b(d3, d));
                }
            }
        }
    }

    /* renamed from: c */
    public final double m67505c() {
        int i = 0;
        double d = 0.0d;
        double d2 = 0.0d;
        for (C19055b c19055b : this.f107873b) {
            double m67507a = c19055b.m67507a();
            if (m67507a != 0.0d) {
                d += c19055b.m67508b() * m67507a;
                d2 += m67507a;
            } else {
                i++;
            }
        }
        return ((double) i) / ((double) this.f107875d) <= this.f107876e ? d / d2 : this.f107878g;
    }

    public InterpolatingMicrosphere copy() {
        return new InterpolatingMicrosphere(this);
    }

    public int getDimension() {
        return this.f107874c;
    }

    public int getSize() {
        return this.f107875d;
    }

    public double value(double[] dArr, double[][] dArr2, double[] dArr3, double d, double d2) {
        if (d < 0.0d) {
            throw new NotPositiveException(Double.valueOf(d));
        }
        m67503a();
        int length = dArr2.length;
        for (int i = 0; i < length; i++) {
            double[] ebeSubtract = MathArrays.ebeSubtract(dArr2[i], dArr);
            double safeNorm = MathArrays.safeNorm(ebeSubtract);
            if (FastMath.abs(safeNorm) < d2) {
                return dArr3[i];
            }
            m67504b(ebeSubtract, dArr3[i], FastMath.pow(safeNorm, -d));
        }
        return m67505c();
    }

    public InterpolatingMicrosphere(int i, int i2, double d, double d2, double d3, UnitSphereRandomVectorGenerator unitSphereRandomVectorGenerator) {
        this(i, i2, d, d2, d3);
        for (int i3 = 0; i3 < i2; i3++) {
            add(unitSphereRandomVectorGenerator.nextVector(), false);
        }
    }

    public InterpolatingMicrosphere(InterpolatingMicrosphere interpolatingMicrosphere) {
        this.f107874c = interpolatingMicrosphere.f107874c;
        int i = interpolatingMicrosphere.f107875d;
        this.f107875d = i;
        this.f107876e = interpolatingMicrosphere.f107876e;
        this.f107877f = interpolatingMicrosphere.f107877f;
        this.f107878g = interpolatingMicrosphere.f107878g;
        this.f107872a = interpolatingMicrosphere.f107872a;
        this.f107873b = new ArrayList(i);
        for (C19055b c19055b : interpolatingMicrosphere.f107873b) {
            this.f107873b.add(new C19055b(c19055b.m67507a(), c19055b.m67508b()));
        }
    }
}
