package org.apache.commons.math3.stat.descriptive;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public abstract class AbstractStorelessUnivariateStatistic extends AbstractUnivariateStatistic implements StorelessUnivariateStatistic {
    @Override // org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public abstract void clear();

    @Override // org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public abstract StorelessUnivariateStatistic copy();

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractStorelessUnivariateStatistic)) {
            return false;
        }
        AbstractStorelessUnivariateStatistic abstractStorelessUnivariateStatistic = (AbstractStorelessUnivariateStatistic) obj;
        return Precision.equalsIncludingNaN(abstractStorelessUnivariateStatistic.getResult(), getResult()) && Precision.equalsIncludingNaN((float) abstractStorelessUnivariateStatistic.getN(), (float) getN());
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.util.MathArrays.Function
    public double evaluate(double[] dArr) throws MathIllegalArgumentException {
        if (dArr != null) {
            return evaluate(dArr, 0, dArr.length);
        }
        throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
    }

    @Override // org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public abstract double getResult();

    public int hashCode() {
        return ((MathUtils.hash(getResult()) + 31) * 31) + MathUtils.hash(getN());
    }

    @Override // org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public abstract void increment(double d);

    @Override // org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void incrementAll(double[] dArr) throws MathIllegalArgumentException {
        if (dArr != null) {
            incrementAll(dArr, 0, dArr.length);
            return;
        }
        throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.util.MathArrays.Function
    public double evaluate(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        if (test(dArr, i, i2)) {
            clear();
            incrementAll(dArr, i, i2);
        }
        return getResult();
    }

    @Override // org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public void incrementAll(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        if (test(dArr, i, i2)) {
            int i3 = i2 + i;
            while (i < i3) {
                increment(dArr[i]);
                i++;
            }
        }
    }
}
