package org.apache.commons.math3.optim.linear;

import java.util.ArrayList;
import org.apache.commons.math3.exception.TooManyIterationsException;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class SimplexSolver extends LinearOptimizer {

    /* renamed from: o */
    public static final int f109078o = 10;

    /* renamed from: p */
    public static final double f109079p = 1.0E-10d;

    /* renamed from: q */
    public static final double f109080q = 1.0E-6d;

    /* renamed from: j */
    public final double f109081j;

    /* renamed from: k */
    public final int f109082k;

    /* renamed from: l */
    public final double f109083l;

    /* renamed from: m */
    public PivotSelectionRule f109084m;

    /* renamed from: n */
    public SolutionCallback f109085n;

    public SimplexSolver() {
        this(1.0E-6d, 10, 1.0E-10d);
    }

    /* renamed from: b */
    public final Integer m67904b(SimplexTableau simplexTableau) {
        double d = 0.0d;
        Integer num = null;
        for (int numObjectiveFunctions = simplexTableau.getNumObjectiveFunctions(); numObjectiveFunctions < simplexTableau.getWidth() - 1; numObjectiveFunctions++) {
            double entry = simplexTableau.getEntry(0, numObjectiveFunctions);
            if (entry < d) {
                num = Integer.valueOf(numObjectiveFunctions);
                if (this.f109084m == PivotSelectionRule.BLAND && m67906d(simplexTableau, numObjectiveFunctions)) {
                    break;
                }
                d = entry;
            }
        }
        return num;
    }

    /* renamed from: c */
    public final Integer m67905c(SimplexTableau simplexTableau, int i) {
        ArrayList<Integer> arrayList = new ArrayList();
        double d = Double.MAX_VALUE;
        for (int numObjectiveFunctions = simplexTableau.getNumObjectiveFunctions(); numObjectiveFunctions < simplexTableau.getHeight(); numObjectiveFunctions++) {
            double entry = simplexTableau.getEntry(numObjectiveFunctions, simplexTableau.getWidth() - 1);
            double entry2 = simplexTableau.getEntry(numObjectiveFunctions, i);
            if (Precision.compareTo(entry2, 0.0d, this.f109083l) > 0) {
                double abs = FastMath.abs(entry / entry2);
                int compare = Double.compare(abs, d);
                if (compare == 0) {
                    arrayList.add(Integer.valueOf(numObjectiveFunctions));
                } else if (compare < 0) {
                    arrayList.clear();
                    arrayList.add(Integer.valueOf(numObjectiveFunctions));
                    d = abs;
                }
            }
        }
        Integer num = null;
        if (arrayList.size() == 0) {
            return null;
        }
        if (arrayList.size() <= 1) {
            return (Integer) arrayList.get(0);
        }
        if (simplexTableau.getNumArtificialVariables() > 0) {
            for (Integer num2 : arrayList) {
                for (int i2 = 0; i2 < simplexTableau.getNumArtificialVariables(); i2++) {
                    int artificialVariableOffset = simplexTableau.getArtificialVariableOffset() + i2;
                    if (Precision.equals(simplexTableau.getEntry(num2.intValue(), artificialVariableOffset), 1.0d, this.f109082k) && num2.equals(simplexTableau.getBasicRow(artificialVariableOffset))) {
                        return num2;
                    }
                }
            }
        }
        int width = simplexTableau.getWidth();
        for (Integer num3 : arrayList) {
            int basicVariable = simplexTableau.getBasicVariable(num3.intValue());
            if (basicVariable < width) {
                num = num3;
                width = basicVariable;
            }
        }
        return num;
    }

    /* renamed from: d */
    public final boolean m67906d(SimplexTableau simplexTableau, int i) {
        for (int numObjectiveFunctions = simplexTableau.getNumObjectiveFunctions(); numObjectiveFunctions < simplexTableau.getHeight(); numObjectiveFunctions++) {
            if (Precision.compareTo(simplexTableau.getEntry(numObjectiveFunctions, i), 0.0d, this.f109083l) > 0) {
                return true;
            }
        }
        return false;
    }

    public void doIteration(SimplexTableau simplexTableau) throws TooManyIterationsException, UnboundedSolutionException {
        incrementIterationCount();
        Integer m67904b = m67904b(simplexTableau);
        Integer m67905c = m67905c(simplexTableau, m67904b.intValue());
        if (m67905c == null) {
            throw new UnboundedSolutionException();
        }
        simplexTableau.performRowOperations(m67904b.intValue(), m67905c.intValue());
    }

    @Override // org.apache.commons.math3.optim.linear.LinearOptimizer, org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        this.f109085n = null;
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof SolutionCallback) {
                this.f109085n = (SolutionCallback) optimizationData;
            } else if (optimizationData instanceof PivotSelectionRule) {
                this.f109084m = (PivotSelectionRule) optimizationData;
            }
        }
    }

    public void solvePhase1(SimplexTableau simplexTableau) throws TooManyIterationsException, UnboundedSolutionException, NoFeasibleSolutionException {
        if (simplexTableau.getNumArtificialVariables() == 0) {
            return;
        }
        while (!simplexTableau.isOptimal()) {
            doIteration(simplexTableau);
        }
        if (!Precision.equals(simplexTableau.getEntry(0, simplexTableau.getRhsOffset()), 0.0d, this.f109081j)) {
            throw new NoFeasibleSolutionException();
        }
    }

    public SimplexSolver(double d) {
        this(d, 10, 1.0E-10d);
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair doOptimize() throws TooManyIterationsException, UnboundedSolutionException, NoFeasibleSolutionException {
        SolutionCallback solutionCallback = this.f109085n;
        if (solutionCallback != null) {
            solutionCallback.m67907a(null);
        }
        SimplexTableau simplexTableau = new SimplexTableau(getFunction(), getConstraints(), getGoalType(), isRestrictedToNonNegative(), this.f109081j, this.f109082k);
        solvePhase1(simplexTableau);
        simplexTableau.dropPhase1Objective();
        SolutionCallback solutionCallback2 = this.f109085n;
        if (solutionCallback2 != null) {
            solutionCallback2.m67907a(simplexTableau);
        }
        while (!simplexTableau.isOptimal()) {
            doIteration(simplexTableau);
        }
        PointValuePair solution = simplexTableau.getSolution();
        if (isRestrictedToNonNegative()) {
            for (double d : solution.getPoint()) {
                if (Precision.compareTo(d, 0.0d, this.f109081j) < 0) {
                    throw new NoFeasibleSolutionException();
                }
            }
        }
        return solution;
    }

    @Override // org.apache.commons.math3.optim.linear.LinearOptimizer, org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyIterationsException {
        return super.optimize(optimizationDataArr);
    }

    public SimplexSolver(double d, int i) {
        this(d, i, 1.0E-10d);
    }

    public SimplexSolver(double d, int i, double d2) {
        this.f109081j = d;
        this.f109082k = i;
        this.f109083l = d2;
        this.f109084m = PivotSelectionRule.DANTZIG;
    }
}
