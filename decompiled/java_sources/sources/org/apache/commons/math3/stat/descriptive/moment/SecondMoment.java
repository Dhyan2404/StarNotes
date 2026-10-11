package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class SecondMoment extends FirstMoment implements Serializable {
    private static final long serialVersionUID = 3942403127395076445L;

    /* renamed from: m2 */
    protected double f109744m2;

    public SecondMoment() {
        this.f109744m2 = Double.NaN;
    }

    @Override // org.apache.commons.math3.stat.descriptive.moment.FirstMoment, org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void clear() {
        super.clear();
        this.f109744m2 = Double.NaN;
    }

    @Override // org.apache.commons.math3.stat.descriptive.moment.FirstMoment, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public /* bridge */ /* synthetic */ long getN() {
        return super.getN();
    }

    @Override // org.apache.commons.math3.stat.descriptive.moment.FirstMoment, org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public double getResult() {
        return this.f109744m2;
    }

    @Override // org.apache.commons.math3.stat.descriptive.moment.FirstMoment, org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void increment(double d) {
        if (this.f109742n < 1) {
            this.f109744m2 = 0.0d;
            this.f109741m1 = 0.0d;
        }
        super.increment(d);
        this.f109744m2 += (this.f109742n - 1.0d) * this.dev * this.nDev;
    }

    public SecondMoment(SecondMoment secondMoment) throws NullArgumentException {
        super(secondMoment);
        this.f109744m2 = secondMoment.f109744m2;
    }

    @Override // org.apache.commons.math3.stat.descriptive.moment.FirstMoment, org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public SecondMoment copy() {
        SecondMoment secondMoment = new SecondMoment();
        copy(this, secondMoment);
        return secondMoment;
    }

    public static void copy(SecondMoment secondMoment, SecondMoment secondMoment2) throws NullArgumentException {
        MathUtils.checkNotNull(secondMoment);
        MathUtils.checkNotNull(secondMoment2);
        FirstMoment.copy(secondMoment, secondMoment2);
        secondMoment2.f109744m2 = secondMoment.f109744m2;
    }
}
