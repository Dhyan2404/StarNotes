package org.apache.commons.math3.optimization.direct;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.function.Logit;
import org.apache.commons.math3.analysis.function.Sigmoid;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

@Deprecated
/* loaded from: classes12.dex */
public class MultivariateFunctionMappingAdapter implements MultivariateFunction {

    /* renamed from: e */
    public final MultivariateFunction f109444e;

    /* renamed from: f */
    public final InterfaceC19241c[] f109445f;

    /* renamed from: org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter$a */
    /* loaded from: classes12.dex */
    public static class C19239a implements InterfaceC19241c {

        /* renamed from: a */
        public final double f109446a;

        public C19239a(double d) {
            this.f109446a = d;
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.InterfaceC19241c
        /* renamed from: a */
        public double mo68053a(double d) {
            return this.f109446a + FastMath.exp(d);
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.InterfaceC19241c
        /* renamed from: b */
        public double mo68054b(double d) {
            return FastMath.log(d - this.f109446a);
        }
    }

    /* renamed from: org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter$b */
    /* loaded from: classes12.dex */
    public static class C19240b implements InterfaceC19241c {

        /* renamed from: a */
        public final UnivariateFunction f109447a;

        /* renamed from: b */
        public final UnivariateFunction f109448b;

        public C19240b(double d, double d2) {
            this.f109447a = new Sigmoid(d, d2);
            this.f109448b = new Logit(d, d2);
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.InterfaceC19241c
        /* renamed from: a */
        public double mo68053a(double d) {
            return this.f109447a.value(d);
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.InterfaceC19241c
        /* renamed from: b */
        public double mo68054b(double d) {
            return this.f109448b.value(d);
        }
    }

    /* renamed from: org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter$c */
    /* loaded from: classes12.dex */
    public interface InterfaceC19241c {
        /* renamed from: a */
        double mo68053a(double d);

        /* renamed from: b */
        double mo68054b(double d);
    }

    /* renamed from: org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter$d */
    /* loaded from: classes12.dex */
    public static class C19242d implements InterfaceC19241c {
        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.InterfaceC19241c
        /* renamed from: a */
        public double mo68053a(double d) {
            return d;
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.InterfaceC19241c
        /* renamed from: b */
        public double mo68054b(double d) {
            return d;
        }
    }

    /* renamed from: org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter$e */
    /* loaded from: classes12.dex */
    public static class C19243e implements InterfaceC19241c {

        /* renamed from: a */
        public final double f109449a;

        public C19243e(double d) {
            this.f109449a = d;
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.InterfaceC19241c
        /* renamed from: a */
        public double mo68053a(double d) {
            return this.f109449a - FastMath.exp(-d);
        }

        @Override // org.apache.commons.math3.optimization.direct.MultivariateFunctionMappingAdapter.InterfaceC19241c
        /* renamed from: b */
        public double mo68054b(double d) {
            return -FastMath.log(this.f109449a - d);
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
        this.f109444e = multivariateFunction;
        this.f109445f = new InterfaceC19241c[dArr.length];
        for (int i2 = 0; i2 < this.f109445f.length; i2++) {
            if (Double.isInfinite(dArr[i2])) {
                if (Double.isInfinite(dArr2[i2])) {
                    this.f109445f[i2] = new C19242d();
                } else {
                    this.f109445f[i2] = new C19243e(dArr2[i2]);
                }
            } else if (Double.isInfinite(dArr2[i2])) {
                this.f109445f[i2] = new C19239a(dArr[i2]);
            } else {
                this.f109445f[i2] = new C19240b(dArr[i2], dArr2[i2]);
            }
        }
    }

    public double[] boundedToUnbounded(double[] dArr) {
        double[] dArr2 = new double[this.f109445f.length];
        int i = 0;
        while (true) {
            InterfaceC19241c[] interfaceC19241cArr = this.f109445f;
            if (i >= interfaceC19241cArr.length) {
                return dArr2;
            }
            dArr2[i] = interfaceC19241cArr[i].mo68054b(dArr[i]);
            i++;
        }
    }

    public double[] unboundedToBounded(double[] dArr) {
        double[] dArr2 = new double[this.f109445f.length];
        int i = 0;
        while (true) {
            InterfaceC19241c[] interfaceC19241cArr = this.f109445f;
            if (i >= interfaceC19241cArr.length) {
                return dArr2;
            }
            dArr2[i] = interfaceC19241cArr[i].mo68053a(dArr[i]);
            i++;
        }
    }

    @Override // org.apache.commons.math3.analysis.MultivariateFunction
    public double value(double[] dArr) {
        return this.f109444e.value(unboundedToBounded(dArr));
    }
}
