package org.apache.commons.math3.stat.descriptive.moment;

import java.io.Serializable;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes12.dex */
public class FirstMoment extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = 6112755307178490473L;
    protected double dev;

    /* renamed from: m1 */
    protected double f109741m1;

    /* renamed from: n */
    protected long f109742n;
    protected double nDev;

    public FirstMoment() {
        this.f109742n = 0L;
        this.f109741m1 = Double.NaN;
        this.dev = Double.NaN;
        this.nDev = Double.NaN;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void clear() {
        this.f109741m1 = Double.NaN;
        this.f109742n = 0L;
        this.dev = Double.NaN;
        this.nDev = Double.NaN;
    }

    @Override // org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public long getN() {
        return this.f109742n;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public double getResult() {
        return this.f109741m1;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void increment(double d) {
        long j = this.f109742n;
        if (j == 0) {
            this.f109741m1 = 0.0d;
        }
        long j2 = j + 1;
        this.f109742n = j2;
        double d2 = this.f109741m1;
        double d3 = d - d2;
        this.dev = d3;
        double d4 = d3 / j2;
        this.nDev = d4;
        this.f109741m1 = d2 + d4;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public FirstMoment copy() {
        FirstMoment firstMoment = new FirstMoment();
        copy(this, firstMoment);
        return firstMoment;
    }

    public static void copy(FirstMoment firstMoment, FirstMoment firstMoment2) throws NullArgumentException {
        MathUtils.checkNotNull(firstMoment);
        MathUtils.checkNotNull(firstMoment2);
        firstMoment2.setData(firstMoment.getDataRef());
        firstMoment2.f109742n = firstMoment.f109742n;
        firstMoment2.f109741m1 = firstMoment.f109741m1;
        firstMoment2.dev = firstMoment.dev;
        firstMoment2.nDev = firstMoment.nDev;
    }

    public FirstMoment(FirstMoment firstMoment) throws NullArgumentException {
        copy(firstMoment, this);
    }
}
