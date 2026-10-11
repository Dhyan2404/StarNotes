package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.solvers.UnivariateSolverUtils;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.IntegerSequence;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public abstract class BaseAbstractUnivariateIntegrator implements UnivariateIntegrator {
    public static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-15d;
    public static final int DEFAULT_MAX_ITERATIONS_COUNT = Integer.MAX_VALUE;
    public static final int DEFAULT_MIN_ITERATIONS_COUNT = 3;
    public static final double DEFAULT_RELATIVE_ACCURACY = 1.0E-6d;

    /* renamed from: a */
    public IntegerSequence.Incrementor f107814a;

    /* renamed from: b */
    public final double f107815b;

    /* renamed from: c */
    public final double f107816c;

    /* renamed from: d */
    public final int f107817d;

    /* renamed from: e */
    public IntegerSequence.Incrementor f107818e;

    /* renamed from: f */
    public UnivariateFunction f107819f;

    /* renamed from: g */
    public double f107820g;

    /* renamed from: h */
    public double f107821h;

    @Deprecated
    protected Incrementor iterations;

    public BaseAbstractUnivariateIntegrator(double d, double d2, int i, int i2) throws NotStrictlyPositiveException, NumberIsTooSmallException {
        this.f107816c = d;
        this.f107815b = d2;
        if (i <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        if (i2 > i) {
            this.f107817d = i;
            IntegerSequence.Incrementor withMaximalCount = IntegerSequence.Incrementor.create().withMaximalCount(i2);
            this.f107814a = withMaximalCount;
            this.iterations = Incrementor.wrap(withMaximalCount);
            this.f107818e = IntegerSequence.Incrementor.create();
            return;
        }
        throw new NumberIsTooSmallException(Integer.valueOf(i2), Integer.valueOf(i), false);
    }

    public double computeObjectiveValue(double d) throws TooManyEvaluationsException {
        try {
            this.f107818e.increment();
            return this.f107819f.value(d);
        } catch (MaxCountExceededException e) {
            throw new TooManyEvaluationsException(e.getMax());
        }
    }

    public abstract double doIntegrate() throws TooManyEvaluationsException, MaxCountExceededException;

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public double getAbsoluteAccuracy() {
        return this.f107815b;
    }

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public int getEvaluations() {
        return this.f107818e.getCount();
    }

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public int getIterations() {
        return this.f107814a.getCount();
    }

    public double getMax() {
        return this.f107821h;
    }

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public int getMaximalIterationCount() {
        return this.f107814a.getMaximalCount();
    }

    public double getMin() {
        return this.f107820g;
    }

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public int getMinimalIterationCount() {
        return this.f107817d;
    }

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public double getRelativeAccuracy() {
        return this.f107816c;
    }

    public void incrementCount() throws MaxCountExceededException {
        this.f107814a.increment();
    }

    @Override // org.apache.commons.math3.analysis.integration.UnivariateIntegrator
    public double integrate(int i, UnivariateFunction univariateFunction, double d, double d2) throws TooManyEvaluationsException, MaxCountExceededException, MathIllegalArgumentException, NullArgumentException {
        setup(i, univariateFunction, d, d2);
        return doIntegrate();
    }

    public void setup(int i, UnivariateFunction univariateFunction, double d, double d2) throws NullArgumentException, MathIllegalArgumentException {
        MathUtils.checkNotNull(univariateFunction);
        UnivariateSolverUtils.verifyInterval(d, d2);
        this.f107820g = d;
        this.f107821h = d2;
        this.f107819f = univariateFunction;
        this.f107818e = this.f107818e.withMaximalCount(i).withStart(0);
        this.f107814a = this.f107814a.withStart(0);
    }

    public BaseAbstractUnivariateIntegrator(double d, double d2) {
        this(d, d2, 3, Integer.MAX_VALUE);
    }

    public BaseAbstractUnivariateIntegrator(int i, int i2) throws NotStrictlyPositiveException, NumberIsTooSmallException {
        this(1.0E-6d, 1.0E-15d, i, i2);
    }
}
