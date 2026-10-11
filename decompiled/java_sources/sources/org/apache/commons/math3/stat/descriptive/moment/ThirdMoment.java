package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
class ThirdMoment extends SecondMoment implements Serializable {
    private static final long serialVersionUID = -7818711964045118679L;

    /* renamed from: m3 */
    protected double f109745m3;
    protected double nDevSq;

    public ThirdMoment() {
        this.f109745m3 = Double.NaN;
        this.nDevSq = Double.NaN;
    }

    @Override // org.apache.commons.math3.stat.descriptive.moment.SecondMoment, org.apache.commons.math3.stat.descriptive.moment.FirstMoment, org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void clear() {
        super.clear();
        this.f109745m3 = Double.NaN;
        this.nDevSq = Double.NaN;
    }

    @Override // org.apache.commons.math3.stat.descriptive.moment.SecondMoment, org.apache.commons.math3.stat.descriptive.moment.FirstMoment, org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public double getResult() {
        return this.f109745m3;
    }

    @Override // org.apache.commons.math3.stat.descriptive.moment.SecondMoment, org.apache.commons.math3.stat.descriptive.moment.FirstMoment, org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void increment(double d) {
        if (this.f109742n < 1) {
            this.f109741m1 = 0.0d;
            this.f109744m2 = 0.0d;
            this.f109745m3 = 0.0d;
        }
        double d2 = this.f109744m2;
        super.increment(d);
        double d3 = this.nDev;
        double d4 = d3 * d3;
        this.nDevSq = d4;
        double d5 = this.f109742n;
        this.f109745m3 = (this.f109745m3 - ((d3 * 3.0d) * d2)) + ((d5 - 1.0d) * (d5 - 2.0d) * d4 * this.dev);
    }

    public ThirdMoment(ThirdMoment thirdMoment) throws NullArgumentException {
        copy(thirdMoment, this);
    }

    @Override // org.apache.commons.math3.stat.descriptive.moment.SecondMoment, org.apache.commons.math3.stat.descriptive.moment.FirstMoment, org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public ThirdMoment copy() {
        ThirdMoment thirdMoment = new ThirdMoment();
        copy(this, thirdMoment);
        return thirdMoment;
    }

    public static void copy(ThirdMoment thirdMoment, ThirdMoment thirdMoment2) throws NullArgumentException {
        MathUtils.checkNotNull(thirdMoment);
        MathUtils.checkNotNull(thirdMoment2);
        SecondMoment.copy((SecondMoment) thirdMoment, (SecondMoment) thirdMoment2);
        thirdMoment2.f109745m3 = thirdMoment.f109745m3;
        thirdMoment2.nDevSq = thirdMoment.nDevSq;
    }
}
