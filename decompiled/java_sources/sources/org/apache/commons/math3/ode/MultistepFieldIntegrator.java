package org.apache.commons.math3.ode;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeFieldIntegrator;
import org.apache.commons.math3.ode.nonstiff.DormandPrince853FieldIntegrator;
import org.apache.commons.math3.ode.sampling.FieldStepHandler;
import org.apache.commons.math3.ode.sampling.FieldStepInterpolator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public abstract class MultistepFieldIntegrator<T extends RealFieldElement<T>> extends AdaptiveStepsizeFieldIntegrator<T> {
    protected Array2DRowFieldMatrix<T> nordsieck;

    /* renamed from: q */
    public FirstOrderFieldIntegrator<T> f108780q;

    /* renamed from: r */
    public final int f108781r;

    /* renamed from: s */
    public double f108782s;
    protected T[] scaled;

    /* renamed from: t */
    public double f108783t;

    /* renamed from: u */
    public double f108784u;

    /* renamed from: v */
    public double f108785v;

    /* loaded from: classes12.dex */
    public static class InitializationCompletedMarkerException extends RuntimeException {
        private static final long serialVersionUID = -1914085471038046418L;

        public InitializationCompletedMarkerException() {
            super((Throwable) null);
        }
    }

    /* renamed from: org.apache.commons.math3.ode.MultistepFieldIntegrator$a */
    /* loaded from: classes12.dex */
    public class C19194a implements FieldStepHandler<T> {

        /* renamed from: a */
        public final FieldEquationsMapper<T> f108786a;

        /* renamed from: b */
        public int f108787b = 0;

        /* renamed from: c */
        public FieldODEStateAndDerivative<T> f108788c;

        /* renamed from: d */
        public final T[] f108789d;

        /* renamed from: e */
        public final T[][] f108790e;

        /* renamed from: f */
        public final T[][] f108791f;

        public C19194a(FieldEquationsMapper<T> fieldEquationsMapper, int i) {
            this.f108786a = fieldEquationsMapper;
            this.f108789d = (T[]) ((RealFieldElement[]) MathArrays.buildArray(MultistepFieldIntegrator.this.getField(), i));
            this.f108790e = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(MultistepFieldIntegrator.this.getField(), i, -1));
            this.f108791f = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(MultistepFieldIntegrator.this.getField(), i, -1));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.apache.commons.math3.ode.sampling.FieldStepHandler
        public void handleStep(FieldStepInterpolator<T> fieldStepInterpolator, boolean z) throws MaxCountExceededException {
            MultistepFieldIntegrator multistepFieldIntegrator;
            if (this.f108787b == 0) {
                FieldODEStateAndDerivative<T> previousState = fieldStepInterpolator.getPreviousState();
                this.f108788c = previousState;
                this.f108789d[this.f108787b] = previousState.getTime();
                this.f108790e[this.f108787b] = this.f108786a.mapState(previousState);
                this.f108791f[this.f108787b] = this.f108786a.mapDerivative(previousState);
            }
            this.f108787b++;
            FieldODEStateAndDerivative<T> currentState = fieldStepInterpolator.getCurrentState();
            this.f108789d[this.f108787b] = currentState.getTime();
            this.f108790e[this.f108787b] = this.f108786a.mapState(currentState);
            this.f108791f[this.f108787b] = this.f108786a.mapDerivative(currentState);
            int i = this.f108787b;
            T[] tArr = this.f108789d;
            if (i == tArr.length - 1) {
                MultistepFieldIntegrator.this.setStepSize((RealFieldElement) ((RealFieldElement) tArr[tArr.length - 1].subtract(tArr[0])).divide(this.f108789d.length - 1));
                MultistepFieldIntegrator multistepFieldIntegrator2 = MultistepFieldIntegrator.this;
                multistepFieldIntegrator2.scaled = (T[]) ((RealFieldElement[]) MathArrays.buildArray(multistepFieldIntegrator2.getField(), this.f108791f[0].length));
                int i2 = 0;
                while (true) {
                    multistepFieldIntegrator = MultistepFieldIntegrator.this;
                    RealFieldElement[] realFieldElementArr = (T[]) multistepFieldIntegrator.scaled;
                    if (i2 >= realFieldElementArr.length) {
                        break;
                    }
                    realFieldElementArr[i2] = (RealFieldElement) this.f108791f[0][i2].multiply(multistepFieldIntegrator.getStepSize());
                    i2++;
                }
                multistepFieldIntegrator.nordsieck = multistepFieldIntegrator.initializeHighOrderDerivatives(multistepFieldIntegrator.getStepSize(), this.f108789d, this.f108790e, this.f108791f);
                MultistepFieldIntegrator.this.setStepStart(this.f108788c);
                throw new InitializationCompletedMarkerException();
            }
        }

        @Override // org.apache.commons.math3.ode.sampling.FieldStepHandler
        public void init(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, T t) {
        }
    }

    public MultistepFieldIntegrator(Field<T> field, String str, int i, int i2, double d, double d2, double d3, double d4) throws NumberIsTooSmallException {
        super(field, str, d, d2, d3, d4);
        if (i >= 2) {
            this.f108780q = new DormandPrince853FieldIntegrator(field, d, d2, d3, d4);
            this.f108781r = i;
            this.f108782s = (-1.0d) / i2;
            setSafety(0.9d);
            setMinReduction(0.2d);
            setMaxGrowth(FastMath.pow(2.0d, -this.f108782s));
            return;
        }
        throw new NumberIsTooSmallException(LocalizedFormats.INTEGRATION_METHOD_NEEDS_AT_LEAST_TWO_PREVIOUS_POINTS, Integer.valueOf(i), 2, true);
    }

    public T computeStepGrowShrinkFactor(T t) {
        return (T) MathUtils.min((RealFieldElement) ((RealFieldElement) t.getField().getZero()).add(this.f108785v), MathUtils.max((RealFieldElement) ((RealFieldElement) t.getField().getZero()).add(this.f108784u), (RealFieldElement) ((RealFieldElement) t.pow(this.f108782s)).multiply(this.f108783t)));
    }

    public double getMaxGrowth() {
        return this.f108785v;
    }

    public double getMinReduction() {
        return this.f108784u;
    }

    public int getNSteps() {
        return this.f108781r;
    }

    public double getSafety() {
        return this.f108783t;
    }

    public FirstOrderFieldIntegrator<T> getStarterIntegrator() {
        return this.f108780q;
    }

    public abstract Array2DRowFieldMatrix<T> initializeHighOrderDerivatives(T t, T[] tArr, T[][] tArr2, T[][] tArr3);

    public void rescale(T t) {
        RealFieldElement realFieldElement = (RealFieldElement) t.divide(getStepSize());
        int i = 0;
        while (true) {
            FieldElement[] fieldElementArr = this.scaled;
            if (i >= fieldElementArr.length) {
                break;
            }
            fieldElementArr[i] = (RealFieldElement) fieldElementArr[i].multiply(realFieldElement);
            i++;
        }
        RealFieldElement realFieldElement2 = realFieldElement;
        for (FieldElement[] fieldElementArr2 : this.nordsieck.getDataRef()) {
            realFieldElement2 = (RealFieldElement) realFieldElement2.multiply(realFieldElement);
            for (int i2 = 0; i2 < fieldElementArr2.length; i2++) {
                fieldElementArr2[i2] = (RealFieldElement) fieldElementArr2[i2].multiply(realFieldElement2);
            }
        }
        setStepSize(t);
    }

    public void setMaxGrowth(double d) {
        this.f108785v = d;
    }

    public void setMinReduction(double d) {
        this.f108784u = d;
    }

    public void setSafety(double d) {
        this.f108783t = d;
    }

    public void setStarterIntegrator(FirstOrderFieldIntegrator<T> firstOrderFieldIntegrator) {
        this.f108780q = firstOrderFieldIntegrator;
    }

    public void start(FieldExpandableODE<T> fieldExpandableODE, FieldODEState<T> fieldODEState, T t) throws DimensionMismatchException, NumberIsTooSmallException, MaxCountExceededException, NoBracketingException {
        this.f108780q.clearEventHandlers();
        this.f108780q.clearStepHandlers();
        this.f108780q.addStepHandler(new C19194a(fieldExpandableODE.getMapper(), (this.f108781r + 3) / 2));
        try {
            this.f108780q.integrate(fieldExpandableODE, fieldODEState, t);
            throw new MathIllegalStateException(LocalizedFormats.MULTISTEP_STARTER_STOPPED_EARLY, new Object[0]);
        } catch (InitializationCompletedMarkerException unused) {
            getEvaluationsCounter().increment(this.f108780q.getEvaluations());
            this.f108780q.clearStepHandlers();
        }
    }

    public MultistepFieldIntegrator(Field<T> field, String str, int i, int i2, double d, double d2, double[] dArr, double[] dArr2) {
        super(field, str, d, d2, dArr, dArr2);
        this.f108780q = new DormandPrince853FieldIntegrator(field, d, d2, dArr, dArr2);
        this.f108781r = i;
        this.f108782s = (-1.0d) / i2;
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(FastMath.pow(2.0d, -this.f108782s));
    }
}
