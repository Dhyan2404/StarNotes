package org.apache.commons.math3.optimization;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomVectorGenerator;

@Deprecated
/* loaded from: classes12.dex */
public class BaseMultivariateVectorMultiStartOptimizer<FUNC extends MultivariateVectorFunction> implements BaseMultivariateVectorOptimizer<FUNC> {

    /* renamed from: a */
    public final BaseMultivariateVectorOptimizer<FUNC> f109315a;

    /* renamed from: b */
    public int f109316b;

    /* renamed from: c */
    public int f109317c;

    /* renamed from: d */
    public int f109318d;

    /* renamed from: e */
    public RandomVectorGenerator f109319e;

    /* renamed from: f */
    public PointVectorValuePair[] f109320f;

    /* renamed from: org.apache.commons.math3.optimization.BaseMultivariateVectorMultiStartOptimizer$a */
    /* loaded from: classes12.dex */
    public class C19236a implements Comparator<PointVectorValuePair> {

        /* renamed from: e */
        public final /* synthetic */ double[] f109321e;

        /* renamed from: f */
        public final /* synthetic */ double[] f109322f;

        public C19236a(double[] dArr, double[] dArr2) {
            this.f109321e = dArr;
            this.f109322f = dArr2;
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(PointVectorValuePair pointVectorValuePair, PointVectorValuePair pointVectorValuePair2) {
            if (pointVectorValuePair == null) {
                return pointVectorValuePair2 == null ? 0 : 1;
            }
            if (pointVectorValuePair2 == null) {
                return -1;
            }
            return Double.compare(m67994b(pointVectorValuePair), m67994b(pointVectorValuePair2));
        }

        /* renamed from: b */
        public final double m67994b(PointVectorValuePair pointVectorValuePair) {
            double[] valueRef = pointVectorValuePair.getValueRef();
            double d = 0.0d;
            for (int i = 0; i < valueRef.length; i++) {
                double d2 = valueRef[i] - this.f109321e[i];
                d += this.f109322f[i] * d2 * d2;
            }
            return d;
        }
    }

    public BaseMultivariateVectorMultiStartOptimizer(BaseMultivariateVectorOptimizer<FUNC> baseMultivariateVectorOptimizer, int i, RandomVectorGenerator randomVectorGenerator) {
        if (baseMultivariateVectorOptimizer == null || randomVectorGenerator == null) {
            throw new NullArgumentException();
        }
        if (i < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        this.f109315a = baseMultivariateVectorOptimizer;
        this.f109318d = i;
        this.f109319e = randomVectorGenerator;
    }

    /* renamed from: a */
    public final void m67992a(double[] dArr, double[] dArr2) {
        Arrays.sort(this.f109320f, new C19236a(dArr, dArr2));
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public ConvergenceChecker<PointVectorValuePair> getConvergenceChecker() {
        return this.f109315a.getConvergenceChecker();
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getEvaluations() {
        return this.f109317c;
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getMaxEvaluations() {
        return this.f109316b;
    }

    public PointVectorValuePair[] getOptima() {
        PointVectorValuePair[] pointVectorValuePairArr = this.f109320f;
        if (pointVectorValuePairArr != null) {
            return (PointVectorValuePair[]) pointVectorValuePairArr.clone();
        }
        throw new MathIllegalStateException(LocalizedFormats.NO_OPTIMUM_COMPUTED_YET, new Object[0]);
    }

    @Override // org.apache.commons.math3.optimization.BaseMultivariateVectorOptimizer
    public PointVectorValuePair optimize(int i, FUNC func, double[] dArr, double[] dArr2, double[] dArr3) {
        this.f109316b = i;
        this.f109320f = new PointVectorValuePair[this.f109318d];
        this.f109317c = 0;
        int i2 = 0;
        RuntimeException e = null;
        while (i2 < this.f109318d) {
            try {
                this.f109320f[i2] = this.f109315a.optimize(i - this.f109317c, func, dArr, dArr2, i2 == 0 ? dArr3 : this.f109319e.nextVector());
            } catch (ConvergenceException unused) {
                this.f109320f[i2] = null;
            } catch (RuntimeException e2) {
                e = e2;
                this.f109320f[i2] = null;
            }
            this.f109317c += this.f109315a.getEvaluations();
            i2++;
        }
        m67992a(dArr, dArr2);
        PointVectorValuePair pointVectorValuePair = this.f109320f[0];
        if (pointVectorValuePair != null) {
            return pointVectorValuePair;
        }
        throw e;
    }
}
