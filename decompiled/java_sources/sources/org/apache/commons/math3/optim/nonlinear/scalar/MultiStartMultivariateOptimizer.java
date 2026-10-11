package org.apache.commons.math3.optim.nonlinear.scalar;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.optim.BaseMultiStartMultivariateOptimizer;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.random.RandomVectorGenerator;

/* loaded from: classes12.dex */
public class MultiStartMultivariateOptimizer extends BaseMultiStartMultivariateOptimizer<PointValuePair> {

    /* renamed from: l */
    public final MultivariateOptimizer f109103l;

    /* renamed from: m */
    public final List<PointValuePair> f109104m;

    /* renamed from: org.apache.commons.math3.optim.nonlinear.scalar.MultiStartMultivariateOptimizer$a */
    /* loaded from: classes12.dex */
    public class C19220a implements Comparator<PointValuePair> {
        public C19220a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(PointValuePair pointValuePair, PointValuePair pointValuePair2) {
            if (pointValuePair == null) {
                return pointValuePair2 == null ? 0 : 1;
            }
            if (pointValuePair2 == null) {
                return -1;
            }
            double doubleValue = pointValuePair.getValue().doubleValue();
            double doubleValue2 = pointValuePair2.getValue().doubleValue();
            return MultiStartMultivariateOptimizer.this.f109103l.getGoalType() == GoalType.MINIMIZE ? Double.compare(doubleValue, doubleValue2) : Double.compare(doubleValue2, doubleValue);
        }
    }

    public MultiStartMultivariateOptimizer(MultivariateOptimizer multivariateOptimizer, int i, RandomVectorGenerator randomVectorGenerator) throws NullArgumentException, NotStrictlyPositiveException {
        super(multivariateOptimizer, i, randomVectorGenerator);
        this.f109104m = new ArrayList();
        this.f109103l = multivariateOptimizer;
    }

    /* renamed from: c */
    public final Comparator<PointValuePair> m67910c() {
        return new C19220a();
    }

    @Override // org.apache.commons.math3.optim.BaseMultiStartMultivariateOptimizer
    public void clear() {
        this.f109104m.clear();
    }

    @Override // org.apache.commons.math3.optim.BaseMultiStartMultivariateOptimizer
    public PointValuePair[] getOptima() {
        Collections.sort(this.f109104m, m67910c());
        return (PointValuePair[]) this.f109104m.toArray(new PointValuePair[0]);
    }

    @Override // org.apache.commons.math3.optim.BaseMultiStartMultivariateOptimizer
    public void store(PointValuePair pointValuePair) {
        this.f109104m.add(pointValuePair);
    }
}
