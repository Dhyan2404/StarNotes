package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.random.UnitSphereRandomVectorGenerator;

/* loaded from: classes12.dex */
public class MicrosphereProjectionInterpolator implements MultivariateInterpolator {

    /* renamed from: a */
    public final double f107892a;

    /* renamed from: b */
    public final InterpolatingMicrosphere f107893b;

    /* renamed from: c */
    public final boolean f107894c;

    /* renamed from: d */
    public final double f107895d;

    /* renamed from: org.apache.commons.math3.analysis.interpolation.MicrosphereProjectionInterpolator$a */
    /* loaded from: classes12.dex */
    public class C19057a implements MultivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ InterpolatingMicrosphere f107896e;

        /* renamed from: f */
        public final /* synthetic */ double[][] f107897f;

        /* renamed from: g */
        public final /* synthetic */ double[] f107898g;

        public C19057a(InterpolatingMicrosphere interpolatingMicrosphere, double[][] dArr, double[] dArr2) {
            this.f107896e = interpolatingMicrosphere;
            this.f107897f = dArr;
            this.f107898g = dArr2;
        }

        @Override // org.apache.commons.math3.analysis.MultivariateFunction
        public double value(double[] dArr) {
            return this.f107896e.value(dArr, this.f107897f, this.f107898g, MicrosphereProjectionInterpolator.this.f107892a, MicrosphereProjectionInterpolator.this.f107895d);
        }
    }

    public MicrosphereProjectionInterpolator(int i, int i2, double d, double d2, double d3, double d4, boolean z, double d5) {
        this(new InterpolatingMicrosphere(i, i2, d, d2, d3, new UnitSphereRandomVectorGenerator(i)), d4, z, d5);
    }

    @Override // org.apache.commons.math3.analysis.interpolation.MultivariateInterpolator
    public MultivariateFunction interpolate(double[][] dArr, double[] dArr2) throws DimensionMismatchException, NoDataException, NullArgumentException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr[0] == null) {
            throw new NullArgumentException();
        }
        int dimension = this.f107893b.getDimension();
        if (dimension == dArr[0].length) {
            return new C19057a(this.f107894c ? this.f107893b : this.f107893b.copy(), dArr, dArr2);
        }
        throw new DimensionMismatchException(dArr[0].length, dimension);
    }

    public MicrosphereProjectionInterpolator(InterpolatingMicrosphere interpolatingMicrosphere, double d, boolean z, double d2) throws NotPositiveException {
        if (d >= 0.0d) {
            this.f107893b = interpolatingMicrosphere;
            this.f107892a = d;
            this.f107894c = z;
            this.f107895d = d2;
            return;
        }
        throw new NotPositiveException(Double.valueOf(d));
    }
}
