package org.apache.commons.math3.optim.nonlinear.scalar;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.function.Logit;
import org.apache.commons.math3.analysis.function.Sigmoid;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class MultivariateFunctionMappingAdapter implements MultivariateFunction {

    /* renamed from: e */
    public final MultivariateFunction f109106e;

    /* renamed from: f */
    public final InterfaceC19224d[] f109107f;

    /* renamed from: org.apache.commons.math3.optim.nonlinear.scalar.MultivariateFunctionMappingAdapter$b */
    /* loaded from: classes12.dex */
    public static class C19222b implements InterfaceC19224d {

        /* renamed from: a */
        public final double f109108a;

        public C19222b(double d) {
            this.f109108a = d;
        }

        @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateFunctionMappingAdapter.InterfaceC19224d
        /* renamed from: a */
        public double mo67912a(double d) {
            return this.f109108a + FastMath.exp(d);
        }

        @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateFunctionMappingAdapter.InterfaceC19224d
        /* renamed from: b */
        public double mo67913b(double d) {
            return FastMath.log(d - this.f109108a);
        }
    }

    /* renamed from: org.apache.commons.math3.optim.nonlinear.scalar.MultivariateFunctionMappingAdapter$c */
    /* loaded from: classes12.dex */
    public static class C19223c implements InterfaceC19224d {

        /* renamed from: a */
        public final UnivariateFunction f109109a;

        /* renamed from: b */
        public final UnivariateFunction f109110b;

        public C19223c(double d, double d2) {
            this.f109109a = new Sigmoid(d, d2);
            this.f109110b = new Logit(d, d2);
        }

        @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateFunctionMappingAdapter.InterfaceC19224d
        /* renamed from: a */
        public double mo67912a(double d) {
            return this.f109109a.value(d);
        }

        @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateFunctionMappingAdapter.InterfaceC19224d
        /* renamed from: b */
        public double mo67913b(double d) {
            return this.f109110b.value(d);
        }
    }

    /* renamed from: org.apache.commons.math3.optim.nonlinear.scalar.MultivariateFunctionMappingAdapter$d */
    /* loaded from: classes12.dex */
    public interface InterfaceC19224d {
        /* renamed from: a */
        double mo67912a(double d);

        /* renamed from: b */
        double mo67913b(double d);
    }

    /* renamed from: org.apache.commons.math3.optim.nonlinear.scalar.MultivariateFunctionMappingAdapter$e */
    /* loaded from: classes12.dex */
    public static class C19225e implements InterfaceC19224d {
        public C19225e() {
        }

        @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateFunctionMappingAdapter.InterfaceC19224d
        /* renamed from: a */
        public double mo67912a(double d) {
            return d;
        }

        @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateFunctionMappingAdapter.InterfaceC19224d
        /* renamed from: b */
        public double mo67913b(double d) {
            return d;
        }
    }

    /* renamed from: org.apache.commons.math3.optim.nonlinear.scalar.MultivariateFunctionMappingAdapter$f */
    /* loaded from: classes12.dex */
    public static class C19226f implements InterfaceC19224d {

        /* renamed from: a */
        public final double f109111a;

        public C19226f(double d) {
            this.f109111a = d;
        }

        @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateFunctionMappingAdapter.InterfaceC19224d
        /* renamed from: a */
        public double mo67912a(double d) {
            return this.f109111a - FastMath.exp(-d);
        }

        @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateFunctionMappingAdapter.InterfaceC19224d
        /* renamed from: b */
        public double mo67913b(double d) {
            return -FastMath.log(this.f109111a - d);
        }
    }

    public MultivariateFunctionMappingAdapter(MultivariateFunction multivariateFunction, double[] dArr, double[] dArr2) {
        MathUtils.checkNotNull(dArr);
        MathUtils.checkNotNull(dArr2);
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        for (int i = 0; i < dArr.length; i++) {
            if (dArr2[i] < dArr[i]) {
                throw new NumberIsTooSmallException(Double.valueOf(dArr2[i]), Double.valueOf(dArr[i]), true);
            }
        }
        this.f109106e = multivariateFunction;
        this.f109107f = new InterfaceC19224d[dArr.length];
        for (int i2 = 0; i2 < this.f109107f.length; i2++) {
            if (Double.isInfinite(dArr[i2])) {
                if (Double.isInfinite(dArr2[i2])) {
                    this.f109107f[i2] = new C19225e();
                } else {
                    this.f109107f[i2] = new C19226f(dArr2[i2]);
                }
            } else if (Double.isInfinite(dArr2[i2])) {
                this.f109107f[i2] = new C19222b(dArr[i2]);
            } else {
                this.f109107f[i2] = new C19223c(dArr[i2], dArr2[i2]);
            }
        }
    }

    public double[] boundedToUnbounded(double[] dArr) {
        double[] dArr2 = new double[this.f109107f.length];
        int i = 0;
        while (true) {
            InterfaceC19224d[] interfaceC19224dArr = this.f109107f;
            if (i >= interfaceC19224dArr.length) {
                return dArr2;
            }
            dArr2[i] = interfaceC19224dArr[i].mo67913b(dArr[i]);
            i++;
        }
    }

    public double[] unboundedToBounded(double[] dArr) {
        double[] dArr2 = new double[this.f109107f.length];
        int i = 0;
        while (true) {
            InterfaceC19224d[] interfaceC19224dArr = this.f109107f;
            if (i >= interfaceC19224dArr.length) {
                return dArr2;
            }
            dArr2[i] = interfaceC19224dArr[i].mo67912a(dArr[i]);
            i++;
        }
    }

    @Override // org.apache.commons.math3.analysis.MultivariateFunction
    public double value(double[] dArr) {
        return this.f109106e.value(unboundedToBounded(dArr));
    }
}
