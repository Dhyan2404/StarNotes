package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class FieldExpandableODE<T extends RealFieldElement<T>> {

    /* renamed from: a */
    public final FirstOrderFieldDifferentialEquations<T> f108754a;

    /* renamed from: b */
    public List<FieldSecondaryEquations<T>> f108755b = new ArrayList();

    /* renamed from: c */
    public FieldEquationsMapper<T> f108756c;

    public FieldExpandableODE(FirstOrderFieldDifferentialEquations<T> firstOrderFieldDifferentialEquations) {
        this.f108754a = firstOrderFieldDifferentialEquations;
        this.f108756c = new FieldEquationsMapper<>(null, firstOrderFieldDifferentialEquations.getDimension());
    }

    public int addSecondaryEquations(FieldSecondaryEquations<T> fieldSecondaryEquations) {
        this.f108755b.add(fieldSecondaryEquations);
        this.f108756c = new FieldEquationsMapper<>(this.f108756c, fieldSecondaryEquations.getDimension());
        return this.f108755b.size();
    }

    public T[] computeDerivatives(T t, T[] tArr) throws MaxCountExceededException, DimensionMismatchException {
        T[] tArr2 = (T[]) ((RealFieldElement[]) MathArrays.buildArray(t.getField(), this.f108756c.getTotalDimension()));
        int i = 0;
        T[] extractEquationData = this.f108756c.extractEquationData(0, tArr);
        T[] computeDerivatives = this.f108754a.computeDerivatives(t, extractEquationData);
        this.f108756c.insertEquationData(0, computeDerivatives, tArr2);
        while (true) {
            i++;
            if (i >= this.f108756c.getNumberOfEquations()) {
                return tArr2;
            }
            this.f108756c.insertEquationData(i, this.f108755b.get(i - 1).computeDerivatives(t, extractEquationData, computeDerivatives, this.f108756c.extractEquationData(i, tArr)), tArr2);
        }
    }

    public FieldEquationsMapper<T> getMapper() {
        return this.f108756c;
    }

    public void init(T t, T[] tArr, T t2) {
        int i = 0;
        T[] extractEquationData = this.f108756c.extractEquationData(0, tArr);
        this.f108754a.init(t, extractEquationData, t2);
        while (true) {
            i++;
            if (i >= this.f108756c.getNumberOfEquations()) {
                return;
            }
            this.f108755b.get(i - 1).init(t, extractEquationData, this.f108756c.extractEquationData(i, tArr), t2);
        }
    }
}
