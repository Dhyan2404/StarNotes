package org.apache.commons.math3.analysis.interpolation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.random.UnitSphereRandomVectorGenerator;
import org.apache.commons.math3.util.FastMath;

@Deprecated
/* loaded from: classes12.dex */
public class MicrosphereInterpolatingFunction implements MultivariateFunction {

    /* renamed from: e */
    public final int f107883e;

    /* renamed from: f */
    public final List<C19056a> f107884f;

    /* renamed from: g */
    public final double f107885g;

    /* renamed from: h */
    public final Map<RealVector, Double> f107886h;

    /* renamed from: org.apache.commons.math3.analysis.interpolation.MicrosphereInterpolatingFunction$a */
    /* loaded from: classes12.dex */
    public static class C19056a {

        /* renamed from: a */
        public final RealVector f107887a;

        /* renamed from: b */
        public double f107888b;

        /* renamed from: c */
        public Map.Entry<RealVector, Double> f107889c;

        public C19056a(double[] dArr) {
            this.f107887a = new ArrayRealVector(dArr);
        }

        /* renamed from: a */
        public double m67510a() {
            return this.f107888b;
        }

        /* renamed from: b */
        public RealVector m67511b() {
            return this.f107887a;
        }

        /* renamed from: c */
        public void m67512c() {
            this.f107888b = 0.0d;
            this.f107889c = null;
        }

        /* renamed from: d */
        public Map.Entry<RealVector, Double> m67513d() {
            return this.f107889c;
        }

        /* renamed from: e */
        public void m67514e(double d, Map.Entry<RealVector, Double> entry) {
            if (d > this.f107888b) {
                this.f107888b = d;
                this.f107889c = entry;
            }
        }
    }

    public MicrosphereInterpolatingFunction(double[][] dArr, double[] dArr2, int i, int i2, UnitSphereRandomVectorGenerator unitSphereRandomVectorGenerator) throws DimensionMismatchException, NoDataException, NullArgumentException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        double[] dArr3 = dArr[0];
        if (dArr3 == null) {
            throw new NullArgumentException();
        }
        this.f107883e = dArr3.length;
        this.f107885g = i;
        this.f107886h = new HashMap(dArr2.length);
        for (int i3 = 0; i3 < dArr.length; i3++) {
            double[] dArr4 = dArr[i3];
            if (dArr4 == null) {
                throw new NullArgumentException();
            }
            if (dArr4.length != this.f107883e) {
                throw new DimensionMismatchException(dArr4.length, this.f107883e);
            }
            this.f107886h.put(new ArrayRealVector(dArr4), Double.valueOf(dArr2[i3]));
        }
        this.f107884f = new ArrayList(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            this.f107884f.add(new C19056a(unitSphereRandomVectorGenerator.nextVector()));
        }
    }

    /* renamed from: a */
    public final double m67509a(RealVector realVector, RealVector realVector2) {
        return realVector.dotProduct(realVector2) / (realVector.getNorm() * realVector2.getNorm());
    }

    @Override // org.apache.commons.math3.analysis.MultivariateFunction
    public double value(double[] dArr) throws DimensionMismatchException {
        ArrayRealVector arrayRealVector = new ArrayRealVector(dArr);
        Iterator<C19056a> it2 = this.f107884f.iterator();
        while (it2.hasNext()) {
            it2.next().m67512c();
        }
        for (Map.Entry<RealVector, Double> entry : this.f107886h.entrySet()) {
            RealVector subtract = entry.getKey().subtract(arrayRealVector);
            double norm = subtract.getNorm();
            if (FastMath.abs(norm) < FastMath.ulp(1.0d)) {
                return entry.getValue().doubleValue();
            }
            for (C19056a c19056a : this.f107884f) {
                c19056a.m67514e(m67509a(subtract, c19056a.m67511b()) * FastMath.pow(norm, -this.f107885g), entry);
            }
        }
        double d = 0.0d;
        double d2 = 0.0d;
        for (C19056a c19056a2 : this.f107884f) {
            double m67510a = c19056a2.m67510a();
            Map.Entry<RealVector, Double> m67513d = c19056a2.m67513d();
            if (m67513d != null) {
                d += m67513d.getValue().doubleValue() * m67510a;
                d2 += m67510a;
            }
        }
        return d / d2;
    }
}
