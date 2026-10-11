package org.apache.commons.math3.analysis.differentiation;

import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.exception.MathIllegalArgumentException;

/* loaded from: classes12.dex */
public interface MultivariateDifferentiableVectorFunction extends MultivariateVectorFunction {
    DerivativeStructure[] value(DerivativeStructure[] derivativeStructureArr) throws MathIllegalArgumentException;
}
