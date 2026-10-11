package org.apache.commons.math3.ode;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeIntegrator;
import org.apache.commons.math3.ode.nonstiff.DormandPrince853Integrator;
import org.apache.commons.math3.ode.sampling.StepHandler;
import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public abstract class MultistepIntegrator extends AdaptiveStepsizeIntegrator {

    /* renamed from: i */
    public FirstOrderIntegrator f108793i;

    /* renamed from: j */
    public final int f108794j;

    /* renamed from: k */
    public double f108795k;

    /* renamed from: l */
    public double f108796l;

    /* renamed from: m */
    public double f108797m;

    /* renamed from: n */
    public double f108798n;
    protected Array2DRowRealMatrix nordsieck;
    protected double[] scaled;

    /* loaded from: classes12.dex */
    public static class InitializationCompletedMarkerException extends RuntimeException {
        private static final long serialVersionUID = -1914085471038046418L;

        public InitializationCompletedMarkerException() {
            super((Throwable) null);
        }
    }

    @Deprecated
    /* loaded from: classes12.dex */
    public interface NordsieckTransformer {
        Array2DRowRealMatrix initializeHighOrderDerivatives(double d, double[] dArr, double[][] dArr2, double[][] dArr3);
    }

    /* renamed from: org.apache.commons.math3.ode.MultistepIntegrator$a */
    /* loaded from: classes12.dex */
    public class C19195a implements FirstOrderDifferentialEquations {
        public C19195a() {
        }

        @Override // org.apache.commons.math3.ode.FirstOrderDifferentialEquations
        public void computeDerivatives(double d, double[] dArr, double[] dArr2) {
            MultistepIntegrator.this.getExpandable().computeDerivatives(d, dArr, dArr2);
        }

        @Override // org.apache.commons.math3.ode.FirstOrderDifferentialEquations
        public int getDimension() {
            return MultistepIntegrator.this.getExpandable().getTotalDimension();
        }
    }

    /* renamed from: org.apache.commons.math3.ode.MultistepIntegrator$b */
    /* loaded from: classes12.dex */
    public class C19196b implements StepHandler {

        /* renamed from: e */
        public int f108800e = 0;

        /* renamed from: f */
        public final double[] f108801f;

        /* renamed from: g */
        public final double[][] f108802g;

        /* renamed from: h */
        public final double[][] f108803h;

        public C19196b(int i, int i2) {
            this.f108801f = new double[i];
            this.f108802g = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
            this.f108803h = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        }

        @Override // org.apache.commons.math3.ode.sampling.StepHandler
        public void handleStep(StepInterpolator stepInterpolator, boolean z) throws MaxCountExceededException {
            MultistepIntegrator multistepIntegrator;
            double previousTime = stepInterpolator.getPreviousTime();
            double currentTime = stepInterpolator.getCurrentTime();
            int i = 0;
            if (this.f108800e == 0) {
                stepInterpolator.setInterpolatedTime(previousTime);
                this.f108801f[0] = previousTime;
                ExpandableStatefulODE expandable = MultistepIntegrator.this.getExpandable();
                EquationsMapper primaryMapper = expandable.getPrimaryMapper();
                primaryMapper.insertEquationData(stepInterpolator.getInterpolatedState(), this.f108802g[this.f108800e]);
                primaryMapper.insertEquationData(stepInterpolator.getInterpolatedDerivatives(), this.f108803h[this.f108800e]);
                int i2 = 0;
                for (EquationsMapper equationsMapper : expandable.getSecondaryMappers()) {
                    equationsMapper.insertEquationData(stepInterpolator.getInterpolatedSecondaryState(i2), this.f108802g[this.f108800e]);
                    equationsMapper.insertEquationData(stepInterpolator.getInterpolatedSecondaryDerivatives(i2), this.f108803h[this.f108800e]);
                    i2++;
                }
            }
            this.f108800e++;
            stepInterpolator.setInterpolatedTime(currentTime);
            this.f108801f[this.f108800e] = currentTime;
            ExpandableStatefulODE expandable2 = MultistepIntegrator.this.getExpandable();
            EquationsMapper primaryMapper2 = expandable2.getPrimaryMapper();
            primaryMapper2.insertEquationData(stepInterpolator.getInterpolatedState(), this.f108802g[this.f108800e]);
            primaryMapper2.insertEquationData(stepInterpolator.getInterpolatedDerivatives(), this.f108803h[this.f108800e]);
            int i3 = 0;
            for (EquationsMapper equationsMapper2 : expandable2.getSecondaryMappers()) {
                equationsMapper2.insertEquationData(stepInterpolator.getInterpolatedSecondaryState(i3), this.f108802g[this.f108800e]);
                equationsMapper2.insertEquationData(stepInterpolator.getInterpolatedSecondaryDerivatives(i3), this.f108803h[this.f108800e]);
                i3++;
            }
            int i4 = this.f108800e;
            double[] dArr = this.f108801f;
            if (i4 == dArr.length - 1) {
                MultistepIntegrator multistepIntegrator2 = MultistepIntegrator.this;
                double d = dArr[0];
                multistepIntegrator2.stepStart = d;
                multistepIntegrator2.stepSize = (dArr[dArr.length - 1] - d) / (dArr.length - 1);
                multistepIntegrator2.scaled = (double[]) this.f108803h[0].clone();
                while (true) {
                    multistepIntegrator = MultistepIntegrator.this;
                    double[] dArr2 = multistepIntegrator.scaled;
                    if (i >= dArr2.length) {
                        break;
                    }
                    dArr2[i] = dArr2[i] * multistepIntegrator.stepSize;
                    i++;
                }
                multistepIntegrator.nordsieck = multistepIntegrator.initializeHighOrderDerivatives(multistepIntegrator.stepSize, this.f108801f, this.f108802g, this.f108803h);
                throw new InitializationCompletedMarkerException();
            }
        }

        @Override // org.apache.commons.math3.ode.sampling.StepHandler
        public void init(double d, double[] dArr, double d2) {
        }
    }

    public MultistepIntegrator(String str, int i, int i2, double d, double d2, double d3, double d4) throws NumberIsTooSmallException {
        super(str, d, d2, d3, d4);
        if (i >= 2) {
            this.f108793i = new DormandPrince853Integrator(d, d2, d3, d4);
            this.f108794j = i;
            this.f108795k = (-1.0d) / i2;
            setSafety(0.9d);
            setMinReduction(0.2d);
            setMaxGrowth(FastMath.pow(2.0d, -this.f108795k));
            return;
        }
        throw new NumberIsTooSmallException(LocalizedFormats.INTEGRATION_METHOD_NEEDS_AT_LEAST_TWO_PREVIOUS_POINTS, Integer.valueOf(i), 2, true);
    }

    public double computeStepGrowShrinkFactor(double d) {
        return FastMath.min(this.f108798n, FastMath.max(this.f108797m, this.f108796l * FastMath.pow(d, this.f108795k)));
    }

    public double getMaxGrowth() {
        return this.f108798n;
    }

    public double getMinReduction() {
        return this.f108797m;
    }

    public int getNSteps() {
        return this.f108794j;
    }

    public double getSafety() {
        return this.f108796l;
    }

    public ODEIntegrator getStarterIntegrator() {
        return this.f108793i;
    }

    public abstract Array2DRowRealMatrix initializeHighOrderDerivatives(double d, double[] dArr, double[][] dArr2, double[][] dArr3);

    public void setMaxGrowth(double d) {
        this.f108798n = d;
    }

    public void setMinReduction(double d) {
        this.f108797m = d;
    }

    public void setSafety(double d) {
        this.f108796l = d;
    }

    public void setStarterIntegrator(FirstOrderIntegrator firstOrderIntegrator) {
        this.f108793i = firstOrderIntegrator;
    }

    public void start(double d, double[] dArr, double d2) throws DimensionMismatchException, NumberIsTooSmallException, MaxCountExceededException, NoBracketingException {
        this.f108793i.clearEventHandlers();
        this.f108793i.clearStepHandlers();
        this.f108793i.addStepHandler(new C19196b((this.f108794j + 3) / 2, dArr.length));
        try {
            FirstOrderIntegrator firstOrderIntegrator = this.f108793i;
            if (firstOrderIntegrator instanceof AbstractIntegrator) {
                ((AbstractIntegrator) firstOrderIntegrator).integrate(getExpandable(), d2);
            } else {
                firstOrderIntegrator.integrate(new C19195a(), d, dArr, d2, new double[dArr.length]);
            }
            throw new MathIllegalStateException(LocalizedFormats.MULTISTEP_STARTER_STOPPED_EARLY, new Object[0]);
        } catch (InitializationCompletedMarkerException unused) {
            getCounter().increment(this.f108793i.getEvaluations());
            this.f108793i.clearStepHandlers();
        }
    }

    public MultistepIntegrator(String str, int i, int i2, double d, double d2, double[] dArr, double[] dArr2) {
        super(str, d, d2, dArr, dArr2);
        this.f108793i = new DormandPrince853Integrator(d, d2, dArr, dArr2);
        this.f108794j = i;
        this.f108795k = (-1.0d) / i2;
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(FastMath.pow(2.0d, -this.f108795k));
    }
}
