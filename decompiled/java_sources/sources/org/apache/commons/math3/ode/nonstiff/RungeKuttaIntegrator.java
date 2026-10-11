package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ode.AbstractIntegrator;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.FirstOrderDifferentialEquations;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public abstract class RungeKuttaIntegrator extends AbstractIntegrator {

    /* renamed from: f */
    public final double[] f109010f;

    /* renamed from: g */
    public final double[][] f109011g;

    /* renamed from: h */
    public final double[] f109012h;

    /* renamed from: i */
    public final RungeKuttaStepInterpolator f109013i;

    /* renamed from: j */
    public final double f109014j;

    public RungeKuttaIntegrator(String str, double[] dArr, double[][] dArr2, double[] dArr3, RungeKuttaStepInterpolator rungeKuttaStepInterpolator, double d) {
        super(str);
        this.f109010f = dArr;
        this.f109011g = dArr2;
        this.f109012h = dArr3;
        this.f109013i = rungeKuttaStepInterpolator;
        this.f109014j = FastMath.abs(d);
    }

    @Override // org.apache.commons.math3.ode.AbstractIntegrator
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        sanityChecks(expandableStatefulODE, d);
        setEquations(expandableStatefulODE);
        int i = 0;
        boolean z = d > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr = (double[]) completeState.clone();
        int length = this.f109010f.length + 1;
        double[][] dArr2 = new double[length];
        for (int i2 = 0; i2 < length; i2++) {
            dArr2[i2] = new double[completeState.length];
        }
        double[] dArr3 = (double[]) completeState.clone();
        double[] dArr4 = new double[completeState.length];
        RungeKuttaStepInterpolator rungeKuttaStepInterpolator = (RungeKuttaStepInterpolator) this.f109013i.copy();
        double[] dArr5 = dArr4;
        double[] dArr6 = dArr3;
        rungeKuttaStepInterpolator.reinitialize(this, dArr3, dArr2, z, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        rungeKuttaStepInterpolator.storeTime(expandableStatefulODE.getTime());
        double time = expandableStatefulODE.getTime();
        this.stepStart = time;
        if (z) {
            double d2 = this.f109014j;
            if (time + d2 >= d) {
                this.stepSize = d - time;
            } else {
                this.stepSize = d2;
            }
        } else {
            double d3 = this.f109014j;
            if (time - d3 <= d) {
                this.stepSize = d - time;
            } else {
                this.stepSize = -d3;
            }
        }
        initIntegration(expandableStatefulODE.getTime(), completeState, d);
        this.isLastStep = false;
        while (true) {
            rungeKuttaStepInterpolator.shift();
            computeDerivatives(this.stepStart, dArr, dArr2[i]);
            int i3 = 1;
            while (i3 < length) {
                int i4 = i;
                while (i4 < completeState.length) {
                    int i5 = i3 - 1;
                    double d4 = this.f109011g[i5][i] * dArr2[i][i4];
                    for (int i6 = 1; i6 < i3; i6++) {
                        d4 += this.f109011g[i5][i6] * dArr2[i6][i4];
                    }
                    dArr6[i4] = dArr[i4] + (this.stepSize * d4);
                    i4++;
                    z = z;
                    i = 0;
                }
                computeDerivatives(this.stepStart + (this.f109010f[i3 - 1] * this.stepSize), dArr6, dArr2[i3]);
                i3++;
                i = 0;
            }
            boolean z2 = z;
            double[] dArr7 = dArr6;
            for (int i7 = 0; i7 < completeState.length; i7++) {
                double d5 = this.f109012h[0] * dArr2[0][i7];
                for (int i8 = 1; i8 < length; i8++) {
                    d5 += this.f109012h[i8] * dArr2[i8][i7];
                }
                dArr7[i7] = dArr[i7] + (this.stepSize * d5);
            }
            rungeKuttaStepInterpolator.storeTime(this.stepStart + this.stepSize);
            System.arraycopy(dArr7, 0, dArr, 0, completeState.length);
            double[] dArr8 = dArr5;
            System.arraycopy(dArr2[length - 1], 0, dArr8, 0, completeState.length);
            double acceptStep = acceptStep(rungeKuttaStepInterpolator, dArr, dArr8, d);
            this.stepStart = acceptStep;
            if (!this.isLastStep) {
                rungeKuttaStepInterpolator.storeTime(acceptStep);
                double d6 = this.stepStart;
                double d7 = this.stepSize + d6;
                if (!z2 ? d7 > d : d7 < d) {
                    this.stepSize = d - d6;
                }
            }
            if (this.isLastStep) {
                expandableStatefulODE.setTime(this.stepStart);
                expandableStatefulODE.setCompleteState(dArr);
                this.stepStart = Double.NaN;
                this.stepSize = Double.NaN;
                return;
            }
            dArr5 = dArr8;
            dArr6 = dArr7;
            i = 0;
            z = z2;
        }
    }

    public double[] singleStep(FirstOrderDifferentialEquations firstOrderDifferentialEquations, double d, double[] dArr, double d2) {
        double[] dArr2 = (double[]) dArr.clone();
        int i = 1;
        int length = this.f109010f.length + 1;
        double[][] dArr3 = new double[length];
        for (int i2 = 0; i2 < length; i2++) {
            dArr3[i2] = new double[dArr.length];
        }
        double[] dArr4 = (double[]) dArr.clone();
        double d3 = d2 - d;
        firstOrderDifferentialEquations.computeDerivatives(d, dArr2, dArr3[0]);
        int i3 = 1;
        while (i3 < length) {
            int i4 = 0;
            while (i4 < dArr.length) {
                int i5 = i3 - 1;
                double d4 = this.f109011g[i5][0] * dArr3[0][i4];
                for (int i6 = i; i6 < i3; i6++) {
                    d4 += this.f109011g[i5][i6] * dArr3[i6][i4];
                }
                dArr4[i4] = dArr2[i4] + (d4 * d3);
                i4++;
                i = 1;
            }
            firstOrderDifferentialEquations.computeDerivatives((this.f109010f[i3 - 1] * d3) + d, dArr4, dArr3[i3]);
            i3++;
            i = 1;
        }
        for (int i7 = 0; i7 < dArr.length; i7++) {
            double d5 = this.f109012h[0] * dArr3[0][i7];
            for (int i8 = 1; i8 < length; i8++) {
                d5 += this.f109012h[i8] * dArr3[i8][i7];
            }
            dArr2[i7] = dArr2[i7] + (d5 * d3);
        }
        return dArr2;
    }
}
