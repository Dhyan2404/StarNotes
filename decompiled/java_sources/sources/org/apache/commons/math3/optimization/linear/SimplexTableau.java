package org.apache.commons.math3.optimization.linear;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

@Deprecated
/* loaded from: classes12.dex */
class SimplexTableau implements Serializable {
    private static final double CUTOFF_THRESHOLD = 1.0E-12d;
    private static final int DEFAULT_ULPS = 10;
    private static final String NEGATIVE_VAR_COLUMN_LABEL = "x-";
    private static final long serialVersionUID = -1369660067587938365L;
    private final List<String> columnLabels;
    private final List<LinearConstraint> constraints;
    private final double epsilon;

    /* renamed from: f */
    private final LinearObjectiveFunction f109539f;
    private final int maxUlps;
    private int numArtificialVariables;
    private final int numDecisionVariables;
    private final int numSlackVariables;
    private final boolean restrictToNonNegative;
    private transient RealMatrix tableau;

    public SimplexTableau(LinearObjectiveFunction linearObjectiveFunction, Collection<LinearConstraint> collection, GoalType goalType, boolean z, double d) {
        this(linearObjectiveFunction, collection, goalType, z, d, 10);
    }

    private void copyArray(double[] dArr, double[] dArr2) {
        System.arraycopy(dArr, 0, dArr2, getNumObjectiveFunctions(), dArr.length);
    }

    private int getConstraintTypeCounts(Relationship relationship) {
        Iterator<LinearConstraint> it2 = this.constraints.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().getRelationship() == relationship) {
                i++;
            }
        }
        return i;
    }

    public static double getInvertedCoefficientSum(RealVector realVector) {
        double d = 0.0d;
        for (double d2 : realVector.toArray()) {
            d -= d2;
        }
        return d;
    }

    private LinearConstraint normalize(LinearConstraint linearConstraint) {
        return linearConstraint.getValue() < 0.0d ? new LinearConstraint(linearConstraint.getCoefficients().mapMultiply(-1.0d), linearConstraint.getRelationship().oppositeRelationship(), linearConstraint.getValue() * (-1.0d)) : new LinearConstraint(linearConstraint.getCoefficients(), linearConstraint.getRelationship(), linearConstraint.getValue());
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        MatrixUtils.deserializeRealMatrix(this, "tableau", objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        MatrixUtils.serializeRealMatrix(this.tableau, objectOutputStream);
    }

    public RealMatrix createTableau(boolean z) {
        int i;
        int i2;
        int i3 = 1;
        int numObjectiveFunctions = this.numDecisionVariables + this.numSlackVariables + this.numArtificialVariables + getNumObjectiveFunctions() + 1;
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(this.constraints.size() + getNumObjectiveFunctions(), numObjectiveFunctions);
        if (getNumObjectiveFunctions() == 2) {
            array2DRowRealMatrix.setEntry(0, 0, -1.0d);
        }
        int i4 = getNumObjectiveFunctions() == 1 ? 0 : 1;
        array2DRowRealMatrix.setEntry(i4, i4, z ? 1.0d : -1.0d);
        RealVector coefficients = this.f109539f.getCoefficients();
        if (z) {
            coefficients = coefficients.mapMultiply(-1.0d);
        }
        copyArray(coefficients.toArray(), array2DRowRealMatrix.getDataRef()[i4]);
        int i5 = numObjectiveFunctions - 1;
        double constantTerm = this.f109539f.getConstantTerm();
        if (!z) {
            constantTerm *= -1.0d;
        }
        array2DRowRealMatrix.setEntry(i4, i5, constantTerm);
        if (!this.restrictToNonNegative) {
            array2DRowRealMatrix.setEntry(i4, getSlackVariableOffset() - 1, getInvertedCoefficientSum(coefficients));
        }
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < this.constraints.size()) {
            LinearConstraint linearConstraint = this.constraints.get(i6);
            int numObjectiveFunctions2 = getNumObjectiveFunctions() + i6;
            copyArray(linearConstraint.getCoefficients().toArray(), array2DRowRealMatrix.getDataRef()[numObjectiveFunctions2]);
            if (this.restrictToNonNegative) {
                i = i6;
            } else {
                i = i6;
                array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getSlackVariableOffset() - i3, getInvertedCoefficientSum(linearConstraint.getCoefficients()));
            }
            array2DRowRealMatrix.setEntry(numObjectiveFunctions2, i5, linearConstraint.getValue());
            if (linearConstraint.getRelationship() == Relationship.LEQ) {
                i2 = i7 + 1;
                array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getSlackVariableOffset() + i7, 1.0d);
            } else {
                if (linearConstraint.getRelationship() == Relationship.GEQ) {
                    i2 = i7 + 1;
                    array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getSlackVariableOffset() + i7, -1.0d);
                }
                if (linearConstraint.getRelationship() != Relationship.EQ || linearConstraint.getRelationship() == Relationship.GEQ) {
                    array2DRowRealMatrix.setEntry(0, getArtificialVariableOffset() + i8, 1.0d);
                    array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getArtificialVariableOffset() + i8, 1.0d);
                    array2DRowRealMatrix.setRowVector(0, array2DRowRealMatrix.getRowVector(0).subtract(array2DRowRealMatrix.getRowVector(numObjectiveFunctions2)));
                    i8++;
                }
                i6 = i + 1;
                i3 = 1;
            }
            i7 = i2;
            if (linearConstraint.getRelationship() != Relationship.EQ) {
            }
            array2DRowRealMatrix.setEntry(0, getArtificialVariableOffset() + i8, 1.0d);
            array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getArtificialVariableOffset() + i8, 1.0d);
            array2DRowRealMatrix.setRowVector(0, array2DRowRealMatrix.getRowVector(0).subtract(array2DRowRealMatrix.getRowVector(numObjectiveFunctions2)));
            i8++;
            i6 = i + 1;
            i3 = 1;
        }
        return array2DRowRealMatrix;
    }

    public void divideRow(int i, double d) {
        for (int i2 = 0; i2 < getWidth(); i2++) {
            RealMatrix realMatrix = this.tableau;
            realMatrix.setEntry(i, i2, realMatrix.getEntry(i, i2) / d);
        }
    }

    public void dropPhase1Objective() {
        if (getNumObjectiveFunctions() == 1) {
            return;
        }
        TreeSet treeSet = new TreeSet();
        treeSet.add(0);
        for (int numObjectiveFunctions = getNumObjectiveFunctions(); numObjectiveFunctions < getArtificialVariableOffset(); numObjectiveFunctions++) {
            if (Precision.compareTo(this.tableau.getEntry(0, numObjectiveFunctions), 0.0d, this.epsilon) > 0) {
                treeSet.add(Integer.valueOf(numObjectiveFunctions));
            }
        }
        for (int i = 0; i < getNumArtificialVariables(); i++) {
            int artificialVariableOffset = getArtificialVariableOffset() + i;
            if (getBasicRow(artificialVariableOffset) == null) {
                treeSet.add(Integer.valueOf(artificialVariableOffset));
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, getHeight() - 1, getWidth() - treeSet.size());
        for (int i2 = 1; i2 < getHeight(); i2++) {
            int i3 = 0;
            for (int i4 = 0; i4 < getWidth(); i4++) {
                if (!treeSet.contains(Integer.valueOf(i4))) {
                    dArr[i2 - 1][i3] = this.tableau.getEntry(i2, i4);
                    i3++;
                }
            }
        }
        Integer[] numArr = (Integer[]) treeSet.toArray(new Integer[treeSet.size()]);
        for (int length = numArr.length - 1; length >= 0; length--) {
            this.columnLabels.remove(numArr[length].intValue());
        }
        this.tableau = new Array2DRowRealMatrix(dArr);
        this.numArtificialVariables = 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SimplexTableau)) {
            return false;
        }
        SimplexTableau simplexTableau = (SimplexTableau) obj;
        return this.restrictToNonNegative == simplexTableau.restrictToNonNegative && this.numDecisionVariables == simplexTableau.numDecisionVariables && this.numSlackVariables == simplexTableau.numSlackVariables && this.numArtificialVariables == simplexTableau.numArtificialVariables && this.epsilon == simplexTableau.epsilon && this.maxUlps == simplexTableau.maxUlps && this.f109539f.equals(simplexTableau.f109539f) && this.constraints.equals(simplexTableau.constraints) && this.tableau.equals(simplexTableau.tableau);
    }

    public final int getArtificialVariableOffset() {
        return getNumObjectiveFunctions() + this.numDecisionVariables + this.numSlackVariables;
    }

    public Integer getBasicRow(int i) {
        Integer num = null;
        for (int i2 = 0; i2 < getHeight(); i2++) {
            double entry = getEntry(i2, i);
            if (Precision.equals(entry, 1.0d, this.maxUlps) && num == null) {
                num = Integer.valueOf(i2);
            } else if (!Precision.equals(entry, 0.0d, this.maxUlps)) {
                return null;
            }
        }
        return num;
    }

    public final double[][] getData() {
        return this.tableau.getData();
    }

    public final double getEntry(int i, int i2) {
        return this.tableau.getEntry(i, i2);
    }

    public final int getHeight() {
        return this.tableau.getRowDimension();
    }

    public final int getNumArtificialVariables() {
        return this.numArtificialVariables;
    }

    public final int getNumDecisionVariables() {
        return this.numDecisionVariables;
    }

    public final int getNumObjectiveFunctions() {
        return this.numArtificialVariables > 0 ? 2 : 1;
    }

    public final int getNumSlackVariables() {
        return this.numSlackVariables;
    }

    public final int getOriginalNumDecisionVariables() {
        return this.f109539f.getCoefficients().getDimension();
    }

    public final int getRhsOffset() {
        return getWidth() - 1;
    }

    public final int getSlackVariableOffset() {
        return getNumObjectiveFunctions() + this.numDecisionVariables;
    }

    public PointValuePair getSolution() {
        int indexOf = this.columnLabels.indexOf(NEGATIVE_VAR_COLUMN_LABEL);
        Integer basicRow = indexOf > 0 ? getBasicRow(indexOf) : null;
        double entry = basicRow == null ? 0.0d : getEntry(basicRow.intValue(), getRhsOffset());
        HashSet hashSet = new HashSet();
        int originalNumDecisionVariables = getOriginalNumDecisionVariables();
        double[] dArr = new double[originalNumDecisionVariables];
        for (int i = 0; i < originalNumDecisionVariables; i++) {
            int indexOf2 = this.columnLabels.indexOf("x" + i);
            if (indexOf2 < 0) {
                dArr[i] = 0.0d;
            } else {
                Integer basicRow2 = getBasicRow(indexOf2);
                if (basicRow2 != null && basicRow2.intValue() == 0) {
                    dArr[i] = 0.0d;
                } else if (hashSet.contains(basicRow2)) {
                    dArr[i] = 0.0d - (this.restrictToNonNegative ? 0.0d : entry);
                } else {
                    hashSet.add(basicRow2);
                    dArr[i] = (basicRow2 == null ? 0.0d : getEntry(basicRow2.intValue(), getRhsOffset())) - (this.restrictToNonNegative ? 0.0d : entry);
                }
            }
        }
        return new PointValuePair(dArr, this.f109539f.getValue(dArr));
    }

    public final int getWidth() {
        return this.tableau.getColumnDimension();
    }

    public int hashCode() {
        return this.tableau.hashCode() ^ (((((((Boolean.valueOf(this.restrictToNonNegative).hashCode() ^ this.numDecisionVariables) ^ this.numSlackVariables) ^ this.numArtificialVariables) ^ Double.valueOf(this.epsilon).hashCode()) ^ this.maxUlps) ^ this.f109539f.hashCode()) ^ this.constraints.hashCode());
    }

    public void initializeColumnLabels() {
        if (getNumObjectiveFunctions() == 2) {
            this.columnLabels.add("W");
        }
        this.columnLabels.add(Constants.HASIDCALL_INDEX_SIG);
        for (int i = 0; i < getOriginalNumDecisionVariables(); i++) {
            this.columnLabels.add("x" + i);
        }
        if (!this.restrictToNonNegative) {
            this.columnLabels.add(NEGATIVE_VAR_COLUMN_LABEL);
        }
        for (int i2 = 0; i2 < getNumSlackVariables(); i2++) {
            this.columnLabels.add("s" + i2);
        }
        for (int i3 = 0; i3 < getNumArtificialVariables(); i3++) {
            this.columnLabels.add("a" + i3);
        }
        this.columnLabels.add("RHS");
    }

    public boolean isOptimal() {
        for (int numObjectiveFunctions = getNumObjectiveFunctions(); numObjectiveFunctions < getWidth() - 1; numObjectiveFunctions++) {
            if (Precision.compareTo(this.tableau.getEntry(0, numObjectiveFunctions), 0.0d, this.epsilon) < 0) {
                return false;
            }
        }
        return true;
    }

    public List<LinearConstraint> normalizeConstraints(Collection<LinearConstraint> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<LinearConstraint> it2 = collection.iterator();
        while (it2.hasNext()) {
            arrayList.add(normalize(it2.next()));
        }
        return arrayList;
    }

    public final void setEntry(int i, int i2, double d) {
        this.tableau.setEntry(i, i2, d);
    }

    public void subtractRow(int i, int i2, double d) {
        for (int i3 = 0; i3 < getWidth(); i3++) {
            double entry = this.tableau.getEntry(i, i3) - (this.tableau.getEntry(i2, i3) * d);
            if (FastMath.abs(entry) < 1.0E-12d) {
                entry = 0.0d;
            }
            this.tableau.setEntry(i, i3, entry);
        }
    }

    public SimplexTableau(LinearObjectiveFunction linearObjectiveFunction, Collection<LinearConstraint> collection, GoalType goalType, boolean z, double d, int i) {
        this.columnLabels = new ArrayList();
        this.f109539f = linearObjectiveFunction;
        this.constraints = normalizeConstraints(collection);
        this.restrictToNonNegative = z;
        this.epsilon = d;
        this.maxUlps = i;
        this.numDecisionVariables = linearObjectiveFunction.getCoefficients().getDimension() + (!z ? 1 : 0);
        int constraintTypeCounts = getConstraintTypeCounts(Relationship.LEQ);
        Relationship relationship = Relationship.GEQ;
        this.numSlackVariables = constraintTypeCounts + getConstraintTypeCounts(relationship);
        this.numArtificialVariables = getConstraintTypeCounts(Relationship.EQ) + getConstraintTypeCounts(relationship);
        this.tableau = createTableau(goalType == GoalType.MAXIMIZE);
        initializeColumnLabels();
    }
}
