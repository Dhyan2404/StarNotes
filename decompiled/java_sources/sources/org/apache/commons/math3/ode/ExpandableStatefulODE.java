package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;

/* loaded from: classes12.dex */
public class ExpandableStatefulODE {

    /* renamed from: a */
    public final FirstOrderDifferentialEquations f108744a;

    /* renamed from: b */
    public final EquationsMapper f108745b;

    /* renamed from: c */
    public double f108746c;

    /* renamed from: d */
    public final double[] f108747d;

    /* renamed from: e */
    public final double[] f108748e;

    /* renamed from: f */
    public List<C19190a> f108749f;

    /* renamed from: org.apache.commons.math3.ode.ExpandableStatefulODE$a */
    /* loaded from: classes12.dex */
    public static class C19190a {

        /* renamed from: a */
        public final SecondaryEquations f108750a;

        /* renamed from: b */
        public final EquationsMapper f108751b;

        /* renamed from: c */
        public final double[] f108752c;

        /* renamed from: d */
        public final double[] f108753d;

        public C19190a(SecondaryEquations secondaryEquations, int i) {
            int dimension = secondaryEquations.getDimension();
            this.f108750a = secondaryEquations;
            this.f108751b = new EquationsMapper(i, dimension);
            this.f108752c = new double[dimension];
            this.f108753d = new double[dimension];
        }
    }

    public ExpandableStatefulODE(FirstOrderDifferentialEquations firstOrderDifferentialEquations) {
        int dimension = firstOrderDifferentialEquations.getDimension();
        this.f108744a = firstOrderDifferentialEquations;
        this.f108745b = new EquationsMapper(0, dimension);
        this.f108746c = Double.NaN;
        this.f108747d = new double[dimension];
        this.f108748e = new double[dimension];
        this.f108749f = new ArrayList();
    }

    public int addSecondaryEquations(SecondaryEquations secondaryEquations) {
        int dimension;
        if (this.f108749f.isEmpty()) {
            this.f108749f = new ArrayList();
            dimension = this.f108744a.getDimension();
        } else {
            C19190a c19190a = this.f108749f.get(r0.size() - 1);
            dimension = c19190a.f108751b.getDimension() + c19190a.f108751b.getFirstIndex();
        }
        this.f108749f.add(new C19190a(secondaryEquations, dimension));
        return this.f108749f.size() - 1;
    }

    public void computeDerivatives(double d, double[] dArr, double[] dArr2) throws MaxCountExceededException, DimensionMismatchException {
        this.f108745b.extractEquationData(dArr, this.f108747d);
        this.f108744a.computeDerivatives(d, this.f108747d, this.f108748e);
        for (C19190a c19190a : this.f108749f) {
            c19190a.f108751b.extractEquationData(dArr, c19190a.f108752c);
            c19190a.f108750a.computeDerivatives(d, this.f108747d, this.f108748e, c19190a.f108752c, c19190a.f108753d);
            c19190a.f108751b.insertEquationData(c19190a.f108753d, dArr2);
        }
        this.f108745b.insertEquationData(this.f108748e, dArr2);
    }

    public double[] getCompleteState() throws DimensionMismatchException {
        double[] dArr = new double[getTotalDimension()];
        this.f108745b.insertEquationData(this.f108747d, dArr);
        for (C19190a c19190a : this.f108749f) {
            c19190a.f108751b.insertEquationData(c19190a.f108752c, dArr);
        }
        return dArr;
    }

    public FirstOrderDifferentialEquations getPrimary() {
        return this.f108744a;
    }

    public EquationsMapper getPrimaryMapper() {
        return this.f108745b;
    }

    public double[] getPrimaryState() {
        return (double[]) this.f108747d.clone();
    }

    public double[] getPrimaryStateDot() {
        return (double[]) this.f108748e.clone();
    }

    public EquationsMapper[] getSecondaryMappers() {
        int size = this.f108749f.size();
        EquationsMapper[] equationsMapperArr = new EquationsMapper[size];
        for (int i = 0; i < size; i++) {
            equationsMapperArr[i] = this.f108749f.get(i).f108751b;
        }
        return equationsMapperArr;
    }

    public double[] getSecondaryState(int i) {
        return (double[]) this.f108749f.get(i).f108752c.clone();
    }

    public double[] getSecondaryStateDot(int i) {
        return (double[]) this.f108749f.get(i).f108753d.clone();
    }

    public double getTime() {
        return this.f108746c;
    }

    public int getTotalDimension() {
        if (this.f108749f.isEmpty()) {
            return this.f108745b.getDimension();
        }
        EquationsMapper equationsMapper = this.f108749f.get(r1.size() - 1).f108751b;
        return equationsMapper.getFirstIndex() + equationsMapper.getDimension();
    }

    public void setCompleteState(double[] dArr) throws DimensionMismatchException {
        if (dArr.length != getTotalDimension()) {
            throw new DimensionMismatchException(dArr.length, getTotalDimension());
        }
        this.f108745b.extractEquationData(dArr, this.f108747d);
        for (C19190a c19190a : this.f108749f) {
            c19190a.f108751b.extractEquationData(dArr, c19190a.f108752c);
        }
    }

    public void setPrimaryState(double[] dArr) throws DimensionMismatchException {
        int length = dArr.length;
        double[] dArr2 = this.f108747d;
        if (length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, this.f108747d.length);
        }
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
    }

    public void setSecondaryState(int i, double[] dArr) throws DimensionMismatchException {
        double[] dArr2 = this.f108749f.get(i).f108752c;
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
    }

    public void setTime(double d) {
        this.f108746c = d;
    }
}
