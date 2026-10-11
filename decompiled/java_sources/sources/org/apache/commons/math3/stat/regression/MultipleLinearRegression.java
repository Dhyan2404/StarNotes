package org.apache.commons.math3.stat.regression;

/* loaded from: classes12.dex */
public interface MultipleLinearRegression {
    double estimateRegressandVariance();

    double[] estimateRegressionParameters();

    double[] estimateRegressionParametersStandardErrors();

    double[][] estimateRegressionParametersVariance();

    double[] estimateResiduals();
}
