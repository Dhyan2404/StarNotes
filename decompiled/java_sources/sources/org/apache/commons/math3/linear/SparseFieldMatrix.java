package org.apache.commons.math3.linear;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.util.OpenIntToFieldHashMap;

/* loaded from: classes12.dex */
public class SparseFieldMatrix<T extends FieldElement<T>> extends AbstractFieldMatrix<T> {

    /* renamed from: e */
    public final OpenIntToFieldHashMap<T> f108599e;

    /* renamed from: f */
    public final int f108600f;

    /* renamed from: g */
    public final int f108601g;

    public SparseFieldMatrix(Field<T> field) {
        super(field);
        this.f108600f = 0;
        this.f108601g = 0;
        this.f108599e = new OpenIntToFieldHashMap<>(field);
    }

    /* renamed from: a */
    public final int m67825a(int i, int i2) {
        return (i * this.f108601g) + i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.linear.AbstractFieldMatrix, org.apache.commons.math3.linear.FieldMatrix
    public void addToEntry(int i, int i2, T t) {
        checkRowIndex(i);
        checkColumnIndex(i2);
        int m67825a = m67825a(i, i2);
        FieldElement fieldElement = (FieldElement) this.f108599e.get(m67825a).add(t);
        if (getField().getZero().equals(fieldElement)) {
            this.f108599e.remove(m67825a);
        } else {
            this.f108599e.put(m67825a, fieldElement);
        }
    }

    @Override // org.apache.commons.math3.linear.AbstractFieldMatrix, org.apache.commons.math3.linear.FieldMatrix
    public FieldMatrix<T> copy() {
        return new SparseFieldMatrix((SparseFieldMatrix) this);
    }

    @Override // org.apache.commons.math3.linear.AbstractFieldMatrix, org.apache.commons.math3.linear.FieldMatrix
    public FieldMatrix<T> createMatrix(int i, int i2) {
        return new SparseFieldMatrix(getField(), i, i2);
    }

    @Override // org.apache.commons.math3.linear.AbstractFieldMatrix, org.apache.commons.math3.linear.AnyMatrix
    public int getColumnDimension() {
        return this.f108601g;
    }

    @Override // org.apache.commons.math3.linear.AbstractFieldMatrix, org.apache.commons.math3.linear.FieldMatrix
    public T getEntry(int i, int i2) {
        checkRowIndex(i);
        checkColumnIndex(i2);
        return this.f108599e.get(m67825a(i, i2));
    }

    @Override // org.apache.commons.math3.linear.AbstractFieldMatrix, org.apache.commons.math3.linear.AnyMatrix
    public int getRowDimension() {
        return this.f108600f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.math3.linear.AbstractFieldMatrix, org.apache.commons.math3.linear.FieldMatrix
    public void multiplyEntry(int i, int i2, T t) {
        checkRowIndex(i);
        checkColumnIndex(i2);
        int m67825a = m67825a(i, i2);
        FieldElement fieldElement = (FieldElement) this.f108599e.get(m67825a).multiply(t);
        if (getField().getZero().equals(fieldElement)) {
            this.f108599e.remove(m67825a);
        } else {
            this.f108599e.put(m67825a, fieldElement);
        }
    }

    @Override // org.apache.commons.math3.linear.AbstractFieldMatrix, org.apache.commons.math3.linear.FieldMatrix
    public void setEntry(int i, int i2, T t) {
        checkRowIndex(i);
        checkColumnIndex(i2);
        if (getField().getZero().equals(t)) {
            this.f108599e.remove(m67825a(i, i2));
        } else {
            this.f108599e.put(m67825a(i, i2), t);
        }
    }

    public SparseFieldMatrix(Field<T> field, int i, int i2) {
        super(field, i, i2);
        this.f108600f = i;
        this.f108601g = i2;
        this.f108599e = new OpenIntToFieldHashMap<>(field);
    }

    public SparseFieldMatrix(SparseFieldMatrix<T> sparseFieldMatrix) {
        super(sparseFieldMatrix.getField(), sparseFieldMatrix.getRowDimension(), sparseFieldMatrix.getColumnDimension());
        this.f108600f = sparseFieldMatrix.getRowDimension();
        this.f108601g = sparseFieldMatrix.getColumnDimension();
        this.f108599e = new OpenIntToFieldHashMap<>(sparseFieldMatrix.f108599e);
    }

    public SparseFieldMatrix(FieldMatrix<T> fieldMatrix) {
        super(fieldMatrix.getField(), fieldMatrix.getRowDimension(), fieldMatrix.getColumnDimension());
        this.f108600f = fieldMatrix.getRowDimension();
        this.f108601g = fieldMatrix.getColumnDimension();
        this.f108599e = new OpenIntToFieldHashMap<>(getField());
        for (int i = 0; i < this.f108600f; i++) {
            for (int i2 = 0; i2 < this.f108601g; i2++) {
                setEntry(i, i2, fieldMatrix.getEntry(i, i2));
            }
        }
    }
}
