package com.sunia.HTREnginev2;

import java.util.ArrayList;
import java.util.Collection;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.ode.FirstOrderDifferentialEquations;
import org.apache.commons.math3.ode.ParameterizedODE;
import org.apache.commons.math3.ode.UnknownParameterException;

/* loaded from: classes12.dex */
public class qvk implements ParameterizedODE {

    /* renamed from: a */
    public final FirstOrderDifferentialEquations f82484a;

    public qvk(FirstOrderDifferentialEquations firstOrderDifferentialEquations) {
        this.f82484a = firstOrderDifferentialEquations;
    }

    /* renamed from: a */
    public void m56786a(double d, double[] dArr, double[] dArr2) throws MaxCountExceededException, DimensionMismatchException {
        this.f82484a.computeDerivatives(d, dArr, dArr2);
    }

    /* renamed from: b */
    public int m56787b() {
        return this.f82484a.getDimension();
    }

    @Override // org.apache.commons.math3.ode.ParameterizedODE
    public double getParameter(String str) throws UnknownParameterException {
        if (isSupported(str)) {
            return Double.NaN;
        }
        throw new UnknownParameterException(str);
    }

    @Override // org.apache.commons.math3.ode.Parameterizable
    public Collection<String> getParametersNames() {
        return new ArrayList();
    }

    @Override // org.apache.commons.math3.ode.Parameterizable
    public boolean isSupported(String str) {
        return false;
    }

    @Override // org.apache.commons.math3.ode.ParameterizedODE
    public void setParameter(String str, double d) {
    }
}
