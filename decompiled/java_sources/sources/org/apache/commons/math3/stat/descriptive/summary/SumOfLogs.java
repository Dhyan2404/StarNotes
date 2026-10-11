package org.apache.commons.math3.stat.descriptive.summary;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class SumOfLogs extends AbstractStorelessUnivariateStatistic implements Serializable {
    private static final long serialVersionUID = -370076995648386763L;

    /* renamed from: n */
    private int f109753n;
    private double value;

    public SumOfLogs() {
        this.value = 0.0d;
        this.f109753n = 0;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void clear() {
        this.value = 0.0d;
        this.f109753n = 0;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.util.MathArrays.Function
    public double evaluate(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        if (!test(dArr, i, i2, true)) {
            return Double.NaN;
        }
        double d = 0.0d;
        for (int i3 = i; i3 < i + i2; i3++) {
            d += FastMath.log(dArr[i3]);
        }
        return d;
    }

    @Override // org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public long getN() {
        return this.f109753n;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public double getResult() {
        return this.value;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void increment(double d) {
        this.value += FastMath.log(d);
        this.f109753n++;
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractStorelessUnivariateStatistic, org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public SumOfLogs copy() {
        SumOfLogs sumOfLogs = new SumOfLogs();
        copy(this, sumOfLogs);
        return sumOfLogs;
    }

    public SumOfLogs(SumOfLogs sumOfLogs) throws NullArgumentException {
        copy(sumOfLogs, this);
    }

    public static void copy(SumOfLogs sumOfLogs, SumOfLogs sumOfLogs2) throws NullArgumentException {
        MathUtils.checkNotNull(sumOfLogs);
        MathUtils.checkNotNull(sumOfLogs2);
        sumOfLogs2.setData(sumOfLogs.getDataRef());
        sumOfLogs2.f109753n = sumOfLogs.f109753n;
        sumOfLogs2.value = sumOfLogs.value;
    }
}
