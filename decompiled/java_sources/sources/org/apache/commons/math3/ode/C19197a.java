package org.apache.commons.math3.ode;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;

/* renamed from: org.apache.commons.math3.ode.a */
/* loaded from: classes12.dex */
public class C19197a implements ParameterJacobianProvider {

    /* renamed from: a */
    public final FirstOrderDifferentialEquations f108806a;

    /* renamed from: b */
    public final ParameterizedODE f108807b;

    /* renamed from: c */
    public final Map<String, Double> f108808c = new HashMap();

    public C19197a(FirstOrderDifferentialEquations firstOrderDifferentialEquations, ParameterizedODE parameterizedODE, ParameterConfiguration[] parameterConfigurationArr) {
        this.f108806a = firstOrderDifferentialEquations;
        this.f108807b = parameterizedODE;
        for (ParameterConfiguration parameterConfiguration : parameterConfigurationArr) {
            String parameterName = parameterConfiguration.getParameterName();
            if (parameterizedODE.isSupported(parameterName)) {
                this.f108808c.put(parameterName, Double.valueOf(parameterConfiguration.getHP()));
            }
        }
    }

    @Override // org.apache.commons.math3.ode.ParameterJacobianProvider
    public void computeParameterJacobian(double d, double[] dArr, double[] dArr2, String str, double[] dArr3) throws DimensionMismatchException, MaxCountExceededException {
        int dimension = this.f108806a.getDimension();
        if (!this.f108807b.isSupported(str)) {
            Arrays.fill(dArr3, 0, dimension, 0.0d);
            return;
        }
        double[] dArr4 = new double[dimension];
        double parameter = this.f108807b.getParameter(str);
        double doubleValue = this.f108808c.get(str).doubleValue();
        this.f108807b.setParameter(str, parameter + doubleValue);
        this.f108806a.computeDerivatives(d, dArr, dArr4);
        for (int i = 0; i < dimension; i++) {
            dArr3[i] = (dArr4[i] - dArr2[i]) / doubleValue;
        }
        this.f108807b.setParameter(str, parameter);
    }

    @Override // org.apache.commons.math3.ode.Parameterizable
    public Collection<String> getParametersNames() {
        return this.f108807b.getParametersNames();
    }

    @Override // org.apache.commons.math3.ode.Parameterizable
    public boolean isSupported(String str) {
        return this.f108807b.isSupported(str);
    }
}
