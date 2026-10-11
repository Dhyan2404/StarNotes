package org.apache.commons.math3.optimization;

@Deprecated
/* loaded from: classes12.dex */
public interface BaseOptimizer<PAIR> {
    ConvergenceChecker<PAIR> getConvergenceChecker();

    int getEvaluations();

    int getMaxEvaluations();
}
