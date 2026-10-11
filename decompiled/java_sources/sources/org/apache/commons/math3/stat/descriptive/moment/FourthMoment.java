package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
class FourthMoment extends ThirdMoment implements Serializable {
    private static final long serialVersionUID = 4763990447117157611L;

    /* renamed from: m4 */
    private double f109743m4;

    public FourthMoment() {
        this.f109743m4 = Double.NaN;
    }

    @Override // org.apache.commons.math3.stat.descriptive.moment.ThirdMoment, org.apache.commons.math3.stat.descriptive.moment.SecondMoment, org.apache.commons.math3.stat.descriptive.moment.FirstMoment, org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void clear() {
        super.clear();
        this.f109743m4 = Double.NaN;
    }

    @Override // org.apache.commons.math3.stat.descriptive.moment.ThirdMoment, org.apache.commons.math3.stat.descriptive.moment.SecondMoment, org.apache.commons.math3.stat.descriptive.moment.FirstMoment, org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public double getResult() {
        return this.f109743m4;
    }

    @Override // org.apache.commons.math3.stat.descriptive.moment.ThirdMoment, org.apache.commons.math3.stat.descriptive.moment.SecondMoment, org.apache.commons.math3.stat.descriptive.moment.FirstMoment, org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void increment(double d) {
        if (this.f109742n < 1) {
            this.f109743m4 = 0.0d;
            this.f109745m3 = 0.0d;
            this.f109744m2 = 0.0d;
            this.f109741m1 = 0.0d;
        }
        double d2 = this.f109745m3;
        double d3 = this.f109744m2;
        super.increment(d);
        double d4 = this.f109742n;
        double d5 = this.f109743m4 - ((this.nDev * 4.0d) * d2);
        double d6 = this.nDevSq;
        double d7 = d4 - 1.0d;
        this.f109743m4 = d5 + (6.0d * d6 * d3) + (((d4 * d4) - (3.0d * d7)) * d6 * d6 * d7 * d4);
    }

    public FourthMoment(FourthMoment fourthMoment) throws NullArgumentException {
        copy(fourthMoment, this);
    }

    @Override // org.apache.commons.math3.stat.descriptive.moment.ThirdMoment, org.apache.commons.math3.stat.descriptive.moment.SecondMoment, org.apache.commons.math3.stat.descriptive.moment.FirstMoment, org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public FourthMoment copy() {
        FourthMoment fourthMoment = new FourthMoment();
        copy(this, fourthMoment);
        return fourthMoment;
    }

    public static void copy(FourthMoment fourthMoment, FourthMoment fourthMoment2) throws NullArgumentException {
        MathUtils.checkNotNull(fourthMoment);
        MathUtils.checkNotNull(fourthMoment2);
        ThirdMoment.copy((ThirdMoment) fourthMoment, (ThirdMoment) fourthMoment2);
        fourthMoment2.f109743m4 = fourthMoment.f109743m4;
    }
}
