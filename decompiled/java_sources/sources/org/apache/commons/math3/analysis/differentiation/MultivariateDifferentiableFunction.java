package org.apache.commons.math3.analysis.differentiation;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.MathIllegalArgumentException;

/* loaded from: classes12.dex */
public interface MultivariateDifferentiableFunction extends MultivariateFunction {
    DerivativeStructure value(DerivativeStructure[] derivativeStructureArr) throws MathIllegalArgumentException;
}
