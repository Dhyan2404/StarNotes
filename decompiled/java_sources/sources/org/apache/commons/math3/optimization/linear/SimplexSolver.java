package org.apache.commons.math3.optimization.linear;

import java.util.ArrayList;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.util.Precision;

@Deprecated
/* loaded from: classes12.dex */
public class SimplexSolver extends AbstractLinearOptimizer {

    /* renamed from: i */
    public static final double f109535i = 1.0E-6d;

    /* renamed from: j */
    public static final int f109536j = 10;

    /* renamed from: g */
    public final double f109537g;

    /* renamed from: h */
    public final int f109538h;

    public SimplexSolver() {
        this(1.0E-6d, 10);
    }

    /* renamed from: a */
    public final Integer m68078a(SimplexTableau simplexTableau) {
        double d = 0.0d;
        Integer num = null;
        for (int numObjectiveFunctions = simplexTableau.getNumObjectiveFunctions(); numObjectiveFunctions < simplexTableau.getWidth() - 1; numObjectiveFunctions++) {
            double entry = simplexTableau.getEntry(0, numObjectiveFunctions);
            if (entry < d) {
                num = Integer.valueOf(numObjectiveFunctions);
                d = entry;
            }
        }
        return num;
    }

    /* renamed from: b */
    public final Integer m68079b(SimplexTableau simplexTableau, int i) {
        ArrayList<Integer> arrayList = new ArrayList();
        double d = Double.MAX_VALUE;
        for (int numObjectiveFunctions = simplexTableau.getNumObjectiveFunctions(); numObjectiveFunctions < simplexTableau.getHeight(); numObjectiveFunctions++) {
            double entry = simplexTableau.getEntry(numObjectiveFunctions, simplexTableau.getWidth() - 1);
            double entry2 = simplexTableau.getEntry(numObjectiveFunctions, i);
            if (Precision.compareTo(entry2, 0.0d, this.f109538h) > 0) {
                double d2 = entry / entry2;
                int compare = Double.compare(d2, d);
                if (compare == 0) {
                    arrayList.add(Integer.valueOf(numObjectiveFunctions));
                } else if (compare < 0) {
                    arrayList = new ArrayList();
                    arrayList.add(Integer.valueOf(numObjectiveFunctions));
                    d = d2;
                }
            }
        }
        Integer num = null;
        if (arrayList.size() == 0) {
            return null;
        }
        if (arrayList.size() > 1) {
            if (simplexTableau.getNumArtificialVariables() > 0) {
                for (Integer num2 : arrayList) {
                    for (int i2 = 0; i2 < simplexTableau.getNumArtificialVariables(); i2++) {
                        int artificialVariableOffset = simplexTableau.getArtificialVariableOffset() + i2;
                        if (Precision.equals(simplexTableau.getEntry(num2.intValue(), artificialVariableOffset), 1.0d, this.f109538h) && num2.equals(simplexTableau.getBasicRow(artificialVariableOffset))) {
                            return num2;
                        }
                    }
                }
            }
            if (getIterations() < getMaxIterations() / 2) {
                int width = simplexTableau.getWidth();
                int numObjectiveFunctions2 = simplexTableau.getNumObjectiveFunctions();
                int width2 = simplexTableau.getWidth() - 1;
                for (Integer num3 : arrayList) {
                    for (int i3 = numObjectiveFunctions2; i3 < width2 && !num3.equals(num); i3++) {
                        Integer basicRow = simplexTableau.getBasicRow(i3);
                        if (basicRow != null && basicRow.equals(num3) && i3 < width) {
                            num = num3;
                            width = i3;
                        }
                    }
                }
                return num;
            }
        }
        return (Integer) arrayList.get(0);
    }

    public void doIteration(SimplexTableau simplexTableau) throws MaxCountExceededException, UnboundedSolutionException {
        incrementIterationsCounter();
        Integer m68078a = m68078a(simplexTableau);
        Integer m68079b = m68079b(simplexTableau, m68078a.intValue());
        if (m68079b == null) {
            throw new UnboundedSolutionException();
        }
        simplexTableau.divideRow(m68079b.intValue(), simplexTableau.getEntry(m68079b.intValue(), m68078a.intValue()));
        for (int i = 0; i < simplexTableau.getHeight(); i++) {
            if (i != m68079b.intValue()) {
                simplexTableau.subtractRow(i, m68079b.intValue(), simplexTableau.getEntry(i, m68078a.intValue()));
            }
        }
    }

    @Override // org.apache.commons.math3.optimization.linear.AbstractLinearOptimizer
    public PointValuePair doOptimize() throws MaxCountExceededException, UnboundedSolutionException, NoFeasibleSolutionException {
        SimplexTableau simplexTableau = new SimplexTableau(getFunction(), getConstraints(), getGoalType(), restrictToNonNegative(), this.f109537g, this.f109538h);
        solvePhase1(simplexTableau);
        simplexTableau.dropPhase1Objective();
        while (!simplexTableau.isOptimal()) {
            doIteration(simplexTableau);
        }
        return simplexTableau.getSolution();
    }

    public void solvePhase1(SimplexTableau simplexTableau) throws MaxCountExceededException, UnboundedSolutionException, NoFeasibleSolutionException {
        if (simplexTableau.getNumArtificialVariables() == 0) {
            return;
        }
        while (!simplexTableau.isOptimal()) {
            doIteration(simplexTableau);
        }
        if (!Precision.equals(simplexTableau.getEntry(0, simplexTableau.getRhsOffset()), 0.0d, this.f109537g)) {
            throw new NoFeasibleSolutionException();
        }
    }

    public SimplexSolver(double d, int i) {
        this.f109537g = d;
        this.f109538h = i;
    }
}
