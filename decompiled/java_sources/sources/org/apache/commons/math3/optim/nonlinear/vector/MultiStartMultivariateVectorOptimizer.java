package org.apache.commons.math3.optim.nonlinear.vector;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optim.BaseMultiStartMultivariateOptimizer;
import org.apache.commons.math3.optim.PointVectorValuePair;
import org.apache.commons.math3.random.RandomVectorGenerator;

@Deprecated
/* loaded from: classes12.dex */
public class MultiStartMultivariateVectorOptimizer extends BaseMultiStartMultivariateOptimizer<PointVectorValuePair> {

    /* renamed from: l */
    public final MultivariateVectorOptimizer f109239l;

    /* renamed from: m */
    public final List<PointVectorValuePair> f109240m;

    /* renamed from: org.apache.commons.math3.optim.nonlinear.vector.MultiStartMultivariateVectorOptimizer$a */
    /* loaded from: classes12.dex */
    public class C19233a implements Comparator<PointVectorValuePair> {

        /* renamed from: e */
        public final RealVector f109241e;

        /* renamed from: f */
        public final RealMatrix f109242f;

        public C19233a() {
            this.f109241e = new ArrayRealVector(MultiStartMultivariateVectorOptimizer.this.f109239l.getTarget(), false);
            this.f109242f = MultiStartMultivariateVectorOptimizer.this.f109239l.getWeight();
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
            return Double.compare(m67977b(pointVectorValuePair), m67977b(pointVectorValuePair2));
        }

        /* renamed from: b */
        public final double m67977b(PointVectorValuePair pointVectorValuePair) {
            RealVector subtract = this.f109241e.subtract(new ArrayRealVector(pointVectorValuePair.getValueRef(), false));
            return subtract.dotProduct(this.f109242f.operate(subtract));
        }
    }

    public MultiStartMultivariateVectorOptimizer(MultivariateVectorOptimizer multivariateVectorOptimizer, int i, RandomVectorGenerator randomVectorGenerator) throws NullArgumentException, NotStrictlyPositiveException {
        super(multivariateVectorOptimizer, i, randomVectorGenerator);
        this.f109240m = new ArrayList();
        this.f109239l = multivariateVectorOptimizer;
    }

    /* renamed from: c */
    public final Comparator<PointVectorValuePair> m67975c() {
        return new C19233a();
    }

    @Override // org.apache.commons.math3.optim.BaseMultiStartMultivariateOptimizer
    public void clear() {
        this.f109240m.clear();
    }

    @Override // org.apache.commons.math3.optim.BaseMultiStartMultivariateOptimizer
    public PointVectorValuePair[] getOptima() {
        Collections.sort(this.f109240m, m67975c());
        return (PointVectorValuePair[]) this.f109240m.toArray(new PointVectorValuePair[0]);
    }

    @Override // org.apache.commons.math3.optim.BaseMultiStartMultivariateOptimizer
    public void store(PointVectorValuePair pointVectorValuePair) {
        this.f109240m.add(pointVectorValuePair);
    }
}
