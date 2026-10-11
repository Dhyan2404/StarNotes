package org.apache.commons.math3.ode.nonstiff;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public abstract class EmbeddedRungeKuttaIntegrator extends AdaptiveStepsizeIntegrator {

    /* renamed from: i */
    public final boolean f108956i;

    /* renamed from: j */
    public final double[] f108957j;

    /* renamed from: k */
    public final double[][] f108958k;

    /* renamed from: l */
    public final double[] f108959l;

    /* renamed from: m */
    public final RungeKuttaStepInterpolator f108960m;

    /* renamed from: n */
    public final double f108961n;

    /* renamed from: o */
    public double f108962o;

    /* renamed from: p */
    public double f108963p;

    /* renamed from: q */
    public double f108964q;

    public EmbeddedRungeKuttaIntegrator(String str, boolean z, double[] dArr, double[][] dArr2, double[] dArr3, RungeKuttaStepInterpolator rungeKuttaStepInterpolator, double d, double d2, double d3, double d4) {
        super(str, d, d2, d3, d4);
        this.f108956i = z;
        this.f108957j = dArr;
        this.f108958k = dArr2;
        this.f108959l = dArr3;
        this.f108960m = rungeKuttaStepInterpolator;
        this.f108961n = (-1.0d) / getOrder();
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(10.0d);
    }

    public abstract double estimateError(double[][] dArr, double[] dArr2, double[] dArr3, double d);

    public double getMaxGrowth() {
        return this.f108964q;
    }

    public double getMinReduction() {
        return this.f108963p;
    }

    public abstract int getOrder();

    public double getSafety() {
        return this.f108962o;
    }

    @Override // org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeIntegrator, org.apache.commons.math3.ode.AbstractIntegrator
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        boolean z;
        double[] dArr;
        EmbeddedRungeKuttaIntegrator embeddedRungeKuttaIntegrator;
        boolean z2;
        double[] dArr2;
        int i;
        boolean z3;
        double[] dArr3;
        double d2;
        EmbeddedRungeKuttaIntegrator embeddedRungeKuttaIntegrator2 = this;
        sanityChecks(expandableStatefulODE, d);
        setEquations(expandableStatefulODE);
        int i2 = 0;
        boolean z4 = d > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr4 = (double[]) completeState.clone();
        int length = embeddedRungeKuttaIntegrator2.f108957j.length + 1;
        double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, dArr4.length);
        double[] dArr6 = (double[]) completeState.clone();
        double[] dArr7 = new double[dArr4.length];
        RungeKuttaStepInterpolator rungeKuttaStepInterpolator = (RungeKuttaStepInterpolator) embeddedRungeKuttaIntegrator2.f108960m.copy();
        double[] dArr8 = dArr7;
        rungeKuttaStepInterpolator.reinitialize(this, dArr6, dArr5, z4, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        rungeKuttaStepInterpolator.storeTime(expandableStatefulODE.getTime());
        embeddedRungeKuttaIntegrator2.stepStart = expandableStatefulODE.getTime();
        initIntegration(expandableStatefulODE.getTime(), completeState, d);
        embeddedRungeKuttaIntegrator2.isLastStep = false;
        double d3 = 0.0d;
        boolean z5 = true;
        while (true) {
            rungeKuttaStepInterpolator.shift();
            double d4 = d3;
            boolean z6 = z5;
            double d5 = 10.0d;
            while (d5 >= 1.0d) {
                if (z6 || !embeddedRungeKuttaIntegrator2.f108956i) {
                    embeddedRungeKuttaIntegrator2.computeDerivatives(embeddedRungeKuttaIntegrator2.stepStart, dArr4, dArr5[i2]);
                }
                if (z6) {
                    int i3 = embeddedRungeKuttaIntegrator2.mainSetDimension;
                    double[] dArr9 = new double[i3];
                    if (embeddedRungeKuttaIntegrator2.vecAbsoluteTolerance == null) {
                        int i4 = i2;
                        while (i4 < i3) {
                            dArr9[i4] = embeddedRungeKuttaIntegrator2.scalAbsoluteTolerance + (embeddedRungeKuttaIntegrator2.scalRelativeTolerance * FastMath.abs(dArr4[i4]));
                            i4++;
                            z4 = z4;
                        }
                        z3 = z4;
                    } else {
                        z3 = z4;
                        for (int i5 = 0; i5 < i3; i5++) {
                            dArr9[i5] = embeddedRungeKuttaIntegrator2.vecAbsoluteTolerance[i5] + (embeddedRungeKuttaIntegrator2.vecRelativeTolerance[i5] * FastMath.abs(dArr4[i5]));
                        }
                    }
                    dArr2 = dArr6;
                    i = length;
                    dArr3 = dArr4;
                    d2 = initializeStep(z3, getOrder(), dArr9, embeddedRungeKuttaIntegrator2.stepStart, dArr4, dArr5[0], dArr2, dArr5[1]);
                    z6 = false;
                } else {
                    dArr2 = dArr6;
                    i = length;
                    z3 = z4;
                    dArr3 = dArr4;
                    d2 = d4;
                }
                embeddedRungeKuttaIntegrator2.stepSize = d2;
                if (z3) {
                    double d6 = embeddedRungeKuttaIntegrator2.stepStart;
                    if (d6 + d2 >= d) {
                        embeddedRungeKuttaIntegrator2.stepSize = d - d6;
                    }
                } else {
                    double d7 = embeddedRungeKuttaIntegrator2.stepStart;
                    if (d7 + d2 <= d) {
                        embeddedRungeKuttaIntegrator2.stepSize = d - d7;
                    }
                }
                int i6 = 1;
                while (i6 < i) {
                    for (int i7 = 0; i7 < completeState.length; i7++) {
                        int i8 = i6 - 1;
                        double d8 = embeddedRungeKuttaIntegrator2.f108958k[i8][0] * dArr5[0][i7];
                        for (int i9 = 1; i9 < i6; i9++) {
                            d8 += embeddedRungeKuttaIntegrator2.f108958k[i8][i9] * dArr5[i9][i7];
                        }
                        dArr2[i7] = dArr3[i7] + (embeddedRungeKuttaIntegrator2.stepSize * d8);
                    }
                    embeddedRungeKuttaIntegrator2.computeDerivatives(embeddedRungeKuttaIntegrator2.stepStart + (embeddedRungeKuttaIntegrator2.f108957j[i6 - 1] * embeddedRungeKuttaIntegrator2.stepSize), dArr2, dArr5[i6]);
                    i6++;
                    z6 = z6;
                }
                boolean z7 = z6;
                double[] dArr10 = dArr2;
                for (int i10 = 0; i10 < completeState.length; i10++) {
                    double d9 = embeddedRungeKuttaIntegrator2.f108959l[0] * dArr5[0][i10];
                    for (int i11 = 1; i11 < i; i11++) {
                        d9 += embeddedRungeKuttaIntegrator2.f108959l[i11] * dArr5[i11][i10];
                    }
                    dArr10[i10] = dArr3[i10] + (embeddedRungeKuttaIntegrator2.stepSize * d9);
                }
                d5 = estimateError(dArr5, dArr3, dArr10, embeddedRungeKuttaIntegrator2.stepSize);
                if (d5 >= 1.0d) {
                    boolean z8 = z3;
                    length = i;
                    z6 = z7;
                    dArr6 = dArr10;
                    d4 = embeddedRungeKuttaIntegrator2.filterStep(embeddedRungeKuttaIntegrator2.stepSize * FastMath.min(embeddedRungeKuttaIntegrator2.f108964q, FastMath.max(embeddedRungeKuttaIntegrator2.f108963p, embeddedRungeKuttaIntegrator2.f108962o * FastMath.pow(d5, embeddedRungeKuttaIntegrator2.f108961n))), z8, false);
                    i2 = 0;
                    dArr4 = dArr3;
                    z4 = z8;
                } else {
                    z6 = z7;
                    d4 = d2;
                    dArr6 = dArr10;
                    length = i;
                    dArr4 = dArr3;
                    z4 = z3;
                    i2 = 0;
                }
            }
            double[] dArr11 = dArr6;
            boolean z9 = z4;
            double[] dArr12 = dArr4;
            int i12 = i2;
            int i13 = length;
            rungeKuttaStepInterpolator.storeTime(embeddedRungeKuttaIntegrator2.stepStart + embeddedRungeKuttaIntegrator2.stepSize);
            System.arraycopy(dArr11, i12, dArr12, i12, completeState.length);
            double[] dArr13 = dArr8;
            System.arraycopy(dArr5[i13 - 1], i12, dArr13, i12, completeState.length);
            double d10 = d5;
            embeddedRungeKuttaIntegrator2.stepStart = acceptStep(rungeKuttaStepInterpolator, dArr12, dArr13, d);
            System.arraycopy(dArr12, i12, dArr11, i12, dArr12.length);
            if (embeddedRungeKuttaIntegrator2.isLastStep) {
                z = z6;
                dArr = dArr11;
                embeddedRungeKuttaIntegrator = embeddedRungeKuttaIntegrator2;
                z2 = z9;
                d3 = d4;
            } else {
                rungeKuttaStepInterpolator.storeTime(embeddedRungeKuttaIntegrator2.stepStart);
                if (embeddedRungeKuttaIntegrator2.f108956i) {
                    System.arraycopy(dArr13, i12, dArr5[i12], i12, completeState.length);
                }
                z = z6;
                dArr = dArr11;
                embeddedRungeKuttaIntegrator = this;
                double min = embeddedRungeKuttaIntegrator.stepSize * FastMath.min(embeddedRungeKuttaIntegrator2.f108964q, FastMath.max(embeddedRungeKuttaIntegrator2.f108963p, embeddedRungeKuttaIntegrator2.f108962o * FastMath.pow(d10, embeddedRungeKuttaIntegrator2.f108961n)));
                double d11 = embeddedRungeKuttaIntegrator.stepStart + min;
                z2 = z9;
                d3 = embeddedRungeKuttaIntegrator.filterStep(min, z2, !z2 ? d11 > d : d11 < d);
                double d12 = embeddedRungeKuttaIntegrator.stepStart;
                double d13 = d12 + d3;
                if (!z2 ? d13 > d : d13 < d) {
                    d3 = d - d12;
                }
            }
            if (embeddedRungeKuttaIntegrator.isLastStep) {
                expandableStatefulODE.setTime(embeddedRungeKuttaIntegrator.stepStart);
                expandableStatefulODE.setCompleteState(dArr12);
                resetInternalState();
                return;
            }
            embeddedRungeKuttaIntegrator2 = embeddedRungeKuttaIntegrator;
            dArr4 = dArr12;
            z5 = z;
            dArr6 = dArr;
            z4 = z2;
            dArr8 = dArr13;
            length = i13;
            i2 = 0;
        }
    }

    public void setMaxGrowth(double d) {
        this.f108964q = d;
    }

    public void setMinReduction(double d) {
        this.f108963p = d;
    }

    public void setSafety(double d) {
        this.f108962o = d;
    }

    public EmbeddedRungeKuttaIntegrator(String str, boolean z, double[] dArr, double[][] dArr2, double[] dArr3, RungeKuttaStepInterpolator rungeKuttaStepInterpolator, double d, double d2, double[] dArr4, double[] dArr5) {
        super(str, d, d2, dArr4, dArr5);
        this.f108956i = z;
        this.f108957j = dArr;
        this.f108958k = dArr2;
        this.f108959l = dArr3;
        this.f108960m = rungeKuttaStepInterpolator;
        this.f108961n = (-1.0d) / getOrder();
        setSafety(0.9d);
        setMinReduction(0.2d);
        setMaxGrowth(10.0d);
    }
}
