package org.apache.commons.math3.distribution;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.distribution.MultivariateRealDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.Pair;

/* loaded from: classes12.dex */
public class MixtureMultivariateRealDistribution<T extends MultivariateRealDistribution> extends AbstractMultivariateRealDistribution {

    /* renamed from: b */
    public final double[] f108063b;

    /* renamed from: c */
    public final List<T> f108064c;

    public MixtureMultivariateRealDistribution(List<Pair<Double, T>> list) {
        this(new Well19937c(), list);
    }

    @Override // org.apache.commons.math3.distribution.MultivariateRealDistribution
    public double density(double[] dArr) {
        double d = 0.0d;
        int i = 0;
        while (true) {
            double[] dArr2 = this.f108063b;
            if (i >= dArr2.length) {
                return d;
            }
            d += dArr2[i] * this.f108064c.get(i).density(dArr);
            i++;
        }
    }

    public List<Pair<Double, T>> getComponents() {
        ArrayList arrayList = new ArrayList(this.f108063b.length);
        int i = 0;
        while (true) {
            double[] dArr = this.f108063b;
            if (i >= dArr.length) {
                return arrayList;
            }
            arrayList.add(new Pair(Double.valueOf(dArr[i]), this.f108064c.get(i)));
            i++;
        }
    }

    @Override // org.apache.commons.math3.distribution.AbstractMultivariateRealDistribution, org.apache.commons.math3.distribution.MultivariateRealDistribution
    public void reseedRandomGenerator(long j) {
        super.reseedRandomGenerator(j);
        int i = 0;
        while (i < this.f108064c.size()) {
            T t = this.f108064c.get(i);
            i++;
            t.reseedRandomGenerator(i + j);
        }
    }

    @Override // org.apache.commons.math3.distribution.AbstractMultivariateRealDistribution, org.apache.commons.math3.distribution.MultivariateRealDistribution
    public double[] sample() {
        double[] dArr;
        double nextDouble = this.random.nextDouble();
        double d = 0.0d;
        int i = 0;
        while (true) {
            double[] dArr2 = this.f108063b;
            if (i >= dArr2.length) {
                dArr = null;
                break;
            }
            d += dArr2[i];
            if (nextDouble <= d) {
                dArr = this.f108064c.get(i).sample();
                break;
            }
            i++;
        }
        return dArr == null ? this.f108064c.get(this.f108063b.length - 1).sample() : dArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MixtureMultivariateRealDistribution(RandomGenerator randomGenerator, List<Pair<Double, T>> list) {
        super(randomGenerator, list.get(0).getSecond().getDimension());
        int size = list.size();
        int dimension = getDimension();
        double d = 0.0d;
        for (int i = 0; i < size; i++) {
            Pair<Double, T> pair = list.get(i);
            if (pair.getSecond().getDimension() != dimension) {
                throw new DimensionMismatchException(pair.getSecond().getDimension(), dimension);
            }
            if (pair.getFirst().doubleValue() >= 0.0d) {
                d += pair.getFirst().doubleValue();
            } else {
                throw new NotPositiveException(pair.getFirst());
            }
        }
        if (!Double.isInfinite(d)) {
            this.f108064c = new ArrayList();
            this.f108063b = new double[size];
            for (int i2 = 0; i2 < size; i2++) {
                Pair<Double, T> pair2 = list.get(i2);
                this.f108063b[i2] = pair2.getFirst().doubleValue() / d;
                this.f108064c.add(pair2.getSecond());
            }
            return;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
    }
}
