package org.apache.commons.math3.analysis.integration.gauss;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.Pair;

/* loaded from: classes12.dex */
public class GaussIntegrator {

    /* renamed from: a */
    public final double[] f107838a;

    /* renamed from: b */
    public final double[] f107839b;

    public GaussIntegrator(double[] dArr, double[] dArr2) throws NonMonotonicSequenceException, DimensionMismatchException {
        if (dArr.length == dArr2.length) {
            MathArrays.checkOrder(dArr, MathArrays.OrderDirection.INCREASING, true, true);
            this.f107838a = (double[]) dArr.clone();
            this.f107839b = (double[]) dArr2.clone();
            return;
        }
        throw new DimensionMismatchException(dArr.length, dArr2.length);
    }

    public int getNumberOfPoints() {
        return this.f107838a.length;
    }

    public double getPoint(int i) {
        return this.f107838a[i];
    }

    public double getWeight(int i) {
        return this.f107839b[i];
    }

    public double integrate(UnivariateFunction univariateFunction) {
        double d = 0.0d;
        int i = 0;
        double d2 = 0.0d;
        while (true) {
            double[] dArr = this.f107838a;
            if (i >= dArr.length) {
                return d;
            }
            double value = (this.f107839b[i] * univariateFunction.value(dArr[i])) - d2;
            double d3 = d + value;
            double d4 = (d3 - d) - value;
            i++;
            d = d3;
            d2 = d4;
        }
    }

    public GaussIntegrator(Pair<double[], double[]> pair) throws NonMonotonicSequenceException {
        this(pair.getFirst(), pair.getSecond());
    }
}
