package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.sampling.NordsieckStepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class AdamsBashforthIntegrator extends AdamsIntegrator {

    /* renamed from: p */
    public static final String f108851p = "Adams-Bashforth";

    public AdamsBashforthIntegrator(int i, double d, double d2, double d3, double d4) throws NumberIsTooSmallException {
        super("Adams-Bashforth", i, i, d, d2, d3, d4);
    }

    /* renamed from: a */
    public final double m67887a(double[] dArr, double[] dArr2, double[] dArr3, RealMatrix realMatrix) {
        double d;
        double d2;
        int i = 0;
        double d3 = 0.0d;
        while (true) {
            int i2 = this.mainSetDimension;
            if (i >= i2) {
                return FastMath.sqrt(d3 / i2);
            }
            double abs = FastMath.abs(dArr2[i]);
            double[] dArr4 = this.vecAbsoluteTolerance;
            if (dArr4 == null) {
                d = this.scalAbsoluteTolerance;
                d2 = this.scalRelativeTolerance;
            } else {
                d = dArr4[i];
                d2 = this.vecRelativeTolerance[i];
            }
            double d4 = d + (d2 * abs);
            int i3 = realMatrix.getRowDimension() % 2 == 0 ? -1 : 1;
            double d5 = 0.0d;
            for (int rowDimension = realMatrix.getRowDimension() - 1; rowDimension >= 0; rowDimension--) {
                d5 += i3 * realMatrix.getEntry(rowDimension, i);
                i3 = -i3;
            }
            double d6 = ((dArr2[i] - dArr[i]) + (d5 - dArr3[i])) / d4;
            d3 += d6 * d6;
            i++;
        }
    }

    @Override // org.apache.commons.math3.ode.nonstiff.AdamsIntegrator, org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeIntegrator, org.apache.commons.math3.ode.AbstractIntegrator
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        sanityChecks(expandableStatefulODE, d);
        setEquations(expandableStatefulODE);
        boolean z = d > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr = new double[completeState.length];
        NordsieckStepInterpolator nordsieckStepInterpolator = new NordsieckStepInterpolator();
        nordsieckStepInterpolator.reinitialize(completeState, z, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        initIntegration(expandableStatefulODE.getTime(), completeState, d);
        start(expandableStatefulODE.getTime(), completeState, d);
        nordsieckStepInterpolator.reinitialize(this.stepStart, this.stepSize, this.scaled, this.nordsieck);
        nordsieckStepInterpolator.storeTime(this.stepStart);
        double d2 = this.stepSize;
        nordsieckStepInterpolator.rescale(d2);
        this.isLastStep = false;
        while (true) {
            nordsieckStepInterpolator.shift();
            double[] dArr2 = new double[completeState.length];
            int length = completeState.length;
            double[] dArr3 = new double[length];
            Array2DRowRealMatrix array2DRowRealMatrix = null;
            double d3 = 10.0d;
            while (d3 >= 1.0d) {
                double d4 = this.stepStart + d2;
                nordsieckStepInterpolator.storeTime(d4);
                ExpandableStatefulODE expandable = getExpandable();
                expandable.getPrimaryMapper().insertEquationData(nordsieckStepInterpolator.getInterpolatedState(), dArr2);
                EquationsMapper[] secondaryMappers = expandable.getSecondaryMappers();
                int length2 = secondaryMappers.length;
                int i = 0;
                int i2 = 0;
                while (i2 < length2) {
                    secondaryMappers[i2].insertEquationData(nordsieckStepInterpolator.getInterpolatedSecondaryState(i), dArr2);
                    i++;
                    i2++;
                    length2 = length2;
                    secondaryMappers = secondaryMappers;
                }
                computeDerivatives(d4, dArr2, dArr);
                for (int i3 = 0; i3 < length; i3++) {
                    dArr3[i3] = dArr[i3] * d2;
                }
                array2DRowRealMatrix = updateHighOrderDerivativesPhase1(this.nordsieck);
                updateHighOrderDerivativesPhase2(this.scaled, dArr3, array2DRowRealMatrix);
                d3 = m67887a(completeState, dArr2, dArr3, array2DRowRealMatrix);
                if (d3 >= 1.0d) {
                    d2 = filterStep(d2 * computeStepGrowShrinkFactor(d3), z, false);
                    nordsieckStepInterpolator.rescale(d2);
                }
            }
            this.stepSize = d2;
            boolean z2 = z;
            double d5 = this.stepStart + d2;
            double d6 = d3;
            nordsieckStepInterpolator.reinitialize(d5, d2, dArr3, array2DRowRealMatrix);
            nordsieckStepInterpolator.storeTime(d5);
            System.arraycopy(dArr2, 0, completeState, 0, completeState.length);
            double d7 = d2;
            Array2DRowRealMatrix array2DRowRealMatrix2 = array2DRowRealMatrix;
            this.stepStart = acceptStep(nordsieckStepInterpolator, completeState, dArr, d);
            this.scaled = dArr3;
            this.nordsieck = array2DRowRealMatrix2;
            nordsieckStepInterpolator.reinitialize(d5, this.stepSize, dArr3, array2DRowRealMatrix2);
            if (this.isLastStep) {
                d2 = d7;
            } else {
                nordsieckStepInterpolator.storeTime(this.stepStart);
                if (this.resetOccurred) {
                    start(this.stepStart, completeState, d);
                    nordsieckStepInterpolator.reinitialize(this.stepStart, this.stepSize, this.scaled, this.nordsieck);
                }
                double computeStepGrowShrinkFactor = this.stepSize * computeStepGrowShrinkFactor(d6);
                double d8 = this.stepStart + computeStepGrowShrinkFactor;
                d2 = filterStep(computeStepGrowShrinkFactor, z2, !z2 ? d8 > d : d8 < d);
                double d9 = this.stepStart;
                double d10 = d9 + d2;
                if (!z2 ? d10 > d : d10 < d) {
                    d2 = d - d9;
                }
                nordsieckStepInterpolator.rescale(d2);
            }
            if (this.isLastStep) {
                expandableStatefulODE.setTime(this.stepStart);
                expandableStatefulODE.setCompleteState(completeState);
                resetInternalState();
                return;
            }
            z = z2;
        }
    }

    public AdamsBashforthIntegrator(int i, double d, double d2, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super("Adams-Bashforth", i, i, d, d2, dArr, dArr2);
    }
}
