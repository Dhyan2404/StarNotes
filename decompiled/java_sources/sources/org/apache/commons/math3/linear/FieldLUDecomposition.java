package org.apache.commons.math3.linear;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class FieldLUDecomposition<T extends FieldElement<T>> {

    /* renamed from: a */
    public final Field<T> f108492a;

    /* renamed from: b */
    public T[][] f108493b;

    /* renamed from: c */
    public int[] f108494c;

    /* renamed from: d */
    public boolean f108495d;

    /* renamed from: e */
    public boolean f108496e;

    /* renamed from: f */
    public FieldMatrix<T> f108497f;

    /* renamed from: g */
    public FieldMatrix<T> f108498g;

    /* renamed from: h */
    public FieldMatrix<T> f108499h;

    /* renamed from: org.apache.commons.math3.linear.FieldLUDecomposition$b */
    /* loaded from: classes12.dex */
    public static class C19164b<T extends FieldElement<T>> implements FieldDecompositionSolver<T> {

        /* renamed from: a */
        public final Field<T> f108500a;

        /* renamed from: b */
        public final T[][] f108501b;

        /* renamed from: c */
        public final int[] f108502c;

        /* renamed from: d */
        public final boolean f108503d;

        /* renamed from: a */
        public ArrayFieldVector<T> m67815a(ArrayFieldVector<T> arrayFieldVector) {
            int length = this.f108502c.length;
            int dimension = arrayFieldVector.getDimension();
            if (dimension != length) {
                throw new DimensionMismatchException(dimension, length);
            }
            if (this.f108503d) {
                throw new SingularMatrixException();
            }
            FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.f108500a, length);
            for (int i = 0; i < length; i++) {
                fieldElementArr[i] = arrayFieldVector.getEntry(this.f108502c[i]);
            }
            int i2 = 0;
            while (i2 < length) {
                FieldElement fieldElement = fieldElementArr[i2];
                int i3 = i2 + 1;
                for (int i4 = i3; i4 < length; i4++) {
                    fieldElementArr[i4] = (FieldElement) fieldElementArr[i4].subtract(fieldElement.multiply(this.f108501b[i4][i2]));
                }
                i2 = i3;
            }
            for (int i5 = length - 1; i5 >= 0; i5--) {
                FieldElement fieldElement2 = (FieldElement) fieldElementArr[i5].divide(this.f108501b[i5][i5]);
                fieldElementArr[i5] = fieldElement2;
                for (int i6 = 0; i6 < i5; i6++) {
                    fieldElementArr[i6] = (FieldElement) fieldElementArr[i6].subtract(fieldElement2.multiply(this.f108501b[i6][i5]));
                }
            }
            return new ArrayFieldVector<>(fieldElementArr, false);
        }

        @Override // org.apache.commons.math3.linear.FieldDecompositionSolver
        public FieldMatrix<T> getInverse() {
            int length = this.f108502c.length;
            T one = this.f108500a.getOne();
            FieldMatrix<T> array2DRowFieldMatrix = new Array2DRowFieldMatrix<>(this.f108500a, length, length);
            for (int i = 0; i < length; i++) {
                array2DRowFieldMatrix.setEntry(i, i, one);
            }
            return solve(array2DRowFieldMatrix);
        }

        @Override // org.apache.commons.math3.linear.FieldDecompositionSolver
        public boolean isNonSingular() {
            return !this.f108503d;
        }

        @Override // org.apache.commons.math3.linear.FieldDecompositionSolver
        public FieldVector<T> solve(FieldVector<T> fieldVector) {
            try {
                return m67815a((ArrayFieldVector) fieldVector);
            } catch (ClassCastException unused) {
                int length = this.f108502c.length;
                if (fieldVector.getDimension() == length) {
                    if (!this.f108503d) {
                        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.f108500a, length);
                        for (int i = 0; i < length; i++) {
                            fieldElementArr[i] = fieldVector.getEntry(this.f108502c[i]);
                        }
                        int i2 = 0;
                        while (i2 < length) {
                            FieldElement fieldElement = fieldElementArr[i2];
                            int i3 = i2 + 1;
                            for (int i4 = i3; i4 < length; i4++) {
                                fieldElementArr[i4] = (FieldElement) fieldElementArr[i4].subtract(fieldElement.multiply(this.f108501b[i4][i2]));
                            }
                            i2 = i3;
                        }
                        for (int i5 = length - 1; i5 >= 0; i5--) {
                            FieldElement fieldElement2 = (FieldElement) fieldElementArr[i5].divide(this.f108501b[i5][i5]);
                            fieldElementArr[i5] = fieldElement2;
                            for (int i6 = 0; i6 < i5; i6++) {
                                fieldElementArr[i6] = (FieldElement) fieldElementArr[i6].subtract(fieldElement2.multiply(this.f108501b[i6][i5]));
                            }
                        }
                        return new ArrayFieldVector((Field) this.f108500a, fieldElementArr, false);
                    }
                    throw new SingularMatrixException();
                }
                throw new DimensionMismatchException(fieldVector.getDimension(), length);
            }
        }

        public C19164b(Field<T> field, T[][] tArr, int[] iArr, boolean z) {
            this.f108500a = field;
            this.f108501b = tArr;
            this.f108502c = iArr;
            this.f108503d = z;
        }

        @Override // org.apache.commons.math3.linear.FieldDecompositionSolver
        public FieldMatrix<T> solve(FieldMatrix<T> fieldMatrix) {
            int length = this.f108502c.length;
            if (fieldMatrix.getRowDimension() == length) {
                if (!this.f108503d) {
                    int columnDimension = fieldMatrix.getColumnDimension();
                    FieldElement[][] fieldElementArr = (FieldElement[][]) MathArrays.buildArray(this.f108500a, length, columnDimension);
                    for (int i = 0; i < length; i++) {
                        FieldElement[] fieldElementArr2 = fieldElementArr[i];
                        int i2 = this.f108502c[i];
                        for (int i3 = 0; i3 < columnDimension; i3++) {
                            fieldElementArr2[i3] = fieldMatrix.getEntry(i2, i3);
                        }
                    }
                    int i4 = 0;
                    while (i4 < length) {
                        FieldElement[] fieldElementArr3 = fieldElementArr[i4];
                        int i5 = i4 + 1;
                        for (int i6 = i5; i6 < length; i6++) {
                            FieldElement[] fieldElementArr4 = fieldElementArr[i6];
                            T t = this.f108501b[i6][i4];
                            for (int i7 = 0; i7 < columnDimension; i7++) {
                                fieldElementArr4[i7] = (FieldElement) fieldElementArr4[i7].subtract(fieldElementArr3[i7].multiply(t));
                            }
                        }
                        i4 = i5;
                    }
                    for (int i8 = length - 1; i8 >= 0; i8--) {
                        FieldElement[] fieldElementArr5 = fieldElementArr[i8];
                        T t2 = this.f108501b[i8][i8];
                        for (int i9 = 0; i9 < columnDimension; i9++) {
                            fieldElementArr5[i9] = (FieldElement) fieldElementArr5[i9].divide(t2);
                        }
                        for (int i10 = 0; i10 < i8; i10++) {
                            FieldElement[] fieldElementArr6 = fieldElementArr[i10];
                            T t3 = this.f108501b[i10][i8];
                            for (int i11 = 0; i11 < columnDimension; i11++) {
                                fieldElementArr6[i11] = (FieldElement) fieldElementArr6[i11].subtract(fieldElementArr5[i11].multiply(t3));
                            }
                        }
                    }
                    return new Array2DRowFieldMatrix((Field) this.f108500a, fieldElementArr, false);
                }
                throw new SingularMatrixException();
            }
            throw new DimensionMismatchException(fieldMatrix.getRowDimension(), length);
        }
    }

    public FieldLUDecomposition(FieldMatrix<T> fieldMatrix) {
        if (!fieldMatrix.isSquare()) {
            throw new NonSquareMatrixException(fieldMatrix.getRowDimension(), fieldMatrix.getColumnDimension());
        }
        int columnDimension = fieldMatrix.getColumnDimension();
        this.f108492a = fieldMatrix.getField();
        this.f108493b = fieldMatrix.getData();
        this.f108494c = new int[columnDimension];
        this.f108497f = null;
        this.f108498g = null;
        this.f108499h = null;
        for (int i = 0; i < columnDimension; i++) {
            this.f108494c[i] = i;
        }
        this.f108495d = true;
        this.f108496e = false;
        int i2 = 0;
        while (i2 < columnDimension) {
            this.f108492a.getZero();
            for (int i3 = 0; i3 < i2; i3++) {
                FieldElement[] fieldElementArr = this.f108493b[i3];
                FieldElement fieldElement = fieldElementArr[i2];
                for (int i4 = 0; i4 < i3; i4++) {
                    fieldElement = (FieldElement) fieldElement.subtract(fieldElementArr[i4].multiply(this.f108493b[i4][i2]));
                }
                fieldElementArr[i2] = fieldElement;
            }
            int i5 = i2;
            int i6 = i5;
            while (i5 < columnDimension) {
                FieldElement[] fieldElementArr2 = this.f108493b[i5];
                FieldElement fieldElement2 = fieldElementArr2[i2];
                for (int i7 = 0; i7 < i2; i7++) {
                    fieldElement2 = (FieldElement) fieldElement2.subtract(fieldElementArr2[i7].multiply(this.f108493b[i7][i2]));
                }
                fieldElementArr2[i2] = fieldElement2;
                if (this.f108493b[i6][i2].equals(this.f108492a.getZero())) {
                    i6++;
                }
                i5++;
            }
            if (i6 >= columnDimension) {
                this.f108496e = true;
                return;
            }
            if (i6 != i2) {
                this.f108492a.getZero();
                for (int i8 = 0; i8 < columnDimension; i8++) {
                    T[][] tArr = this.f108493b;
                    T[] tArr2 = tArr[i6];
                    T t = tArr2[i8];
                    tArr2[i8] = tArr[i2][i8];
                    tArr[i2][i8] = t;
                }
                int[] iArr = this.f108494c;
                int i9 = iArr[i6];
                iArr[i6] = iArr[i2];
                iArr[i2] = i9;
                this.f108495d = !this.f108495d;
            }
            T t2 = this.f108493b[i2][i2];
            int i10 = i2 + 1;
            for (int i11 = i10; i11 < columnDimension; i11++) {
                FieldElement[] fieldElementArr3 = this.f108493b[i11];
                fieldElementArr3[i2] = (FieldElement) fieldElementArr3[i2].divide(t2);
            }
            i2 = i10;
        }
    }

    public T getDeterminant() {
        if (this.f108496e) {
            return this.f108492a.getZero();
        }
        int length = this.f108494c.length;
        T t = (T) (this.f108495d ? this.f108492a.getOne() : this.f108492a.getZero().subtract(this.f108492a.getOne()));
        for (int i = 0; i < length; i++) {
            t = (T) t.multiply(this.f108493b[i][i]);
        }
        return t;
    }

    public FieldMatrix<T> getL() {
        if (this.f108497f == null && !this.f108496e) {
            int length = this.f108494c.length;
            this.f108497f = new Array2DRowFieldMatrix(this.f108492a, length, length);
            for (int i = 0; i < length; i++) {
                T[] tArr = this.f108493b[i];
                for (int i2 = 0; i2 < i; i2++) {
                    this.f108497f.setEntry(i, i2, tArr[i2]);
                }
                this.f108497f.setEntry(i, i, this.f108492a.getOne());
            }
        }
        return this.f108497f;
    }

    public FieldMatrix<T> getP() {
        if (this.f108499h == null && !this.f108496e) {
            int length = this.f108494c.length;
            this.f108499h = new Array2DRowFieldMatrix(this.f108492a, length, length);
            for (int i = 0; i < length; i++) {
                this.f108499h.setEntry(i, this.f108494c[i], this.f108492a.getOne());
            }
        }
        return this.f108499h;
    }

    public int[] getPivot() {
        return (int[]) this.f108494c.clone();
    }

    public FieldDecompositionSolver<T> getSolver() {
        return new C19164b(this.f108492a, this.f108493b, this.f108494c, this.f108496e);
    }

    public FieldMatrix<T> getU() {
        if (this.f108498g == null && !this.f108496e) {
            int length = this.f108494c.length;
            this.f108498g = new Array2DRowFieldMatrix(this.f108492a, length, length);
            for (int i = 0; i < length; i++) {
                T[] tArr = this.f108493b[i];
                for (int i2 = i; i2 < length; i2++) {
                    this.f108498g.setEntry(i, i2, tArr[i2]);
                }
            }
        }
        return this.f108498g;
    }
}
