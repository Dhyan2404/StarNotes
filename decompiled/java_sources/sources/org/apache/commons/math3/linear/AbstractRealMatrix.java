package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public abstract class AbstractRealMatrix extends RealLinearOperator implements RealMatrix {
    private static final RealMatrixFormat DEFAULT_FORMAT;

    /* renamed from: org.apache.commons.math3.linear.AbstractRealMatrix$a */
    /* loaded from: classes12.dex */
    public class C19154a implements RealMatrixPreservingVisitor {

        /* renamed from: a */
        public double f108451a;

        /* renamed from: b */
        public double f108452b;

        /* renamed from: c */
        public double f108453c;

        public C19154a() {
        }

        @Override // org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public double end() {
            return this.f108453c;
        }

        @Override // org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public void start(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f108451a = i4;
            this.f108452b = 0.0d;
            this.f108453c = 0.0d;
        }

        @Override // org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public void visit(int i, int i2, double d) {
            double abs = this.f108452b + FastMath.abs(d);
            this.f108452b = abs;
            if (i == this.f108451a) {
                this.f108453c = FastMath.max(this.f108453c, abs);
                this.f108452b = 0.0d;
            }
        }
    }

    /* renamed from: org.apache.commons.math3.linear.AbstractRealMatrix$b */
    /* loaded from: classes12.dex */
    public class C19155b implements RealMatrixPreservingVisitor {

        /* renamed from: a */
        public double f108455a;

        public C19155b() {
        }

        @Override // org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public double end() {
            return FastMath.sqrt(this.f108455a);
        }

        @Override // org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public void start(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f108455a = 0.0d;
        }

        @Override // org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public void visit(int i, int i2, double d) {
            this.f108455a += d * d;
        }
    }

    /* renamed from: org.apache.commons.math3.linear.AbstractRealMatrix$c */
    /* loaded from: classes12.dex */
    public class C19156c extends DefaultRealMatrixChangingVisitor {

        /* renamed from: a */
        public final /* synthetic */ int[] f108457a;

        /* renamed from: b */
        public final /* synthetic */ int[] f108458b;

        public C19156c(int[] iArr, int[] iArr2) {
            this.f108457a = iArr;
            this.f108458b = iArr2;
        }

        @Override // org.apache.commons.math3.linear.DefaultRealMatrixChangingVisitor, org.apache.commons.math3.linear.RealMatrixChangingVisitor
        public double visit(int i, int i2, double d) {
            return AbstractRealMatrix.this.getEntry(this.f108457a[i], this.f108458b[i2]);
        }
    }

    /* renamed from: org.apache.commons.math3.linear.AbstractRealMatrix$d */
    /* loaded from: classes12.dex */
    public class C19157d extends DefaultRealMatrixPreservingVisitor {

        /* renamed from: a */
        public int f108460a;

        /* renamed from: b */
        public int f108461b;

        /* renamed from: c */
        public final /* synthetic */ double[][] f108462c;

        public C19157d(double[][] dArr) {
            this.f108462c = dArr;
        }

        @Override // org.apache.commons.math3.linear.DefaultRealMatrixPreservingVisitor, org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public void start(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f108460a = i3;
            this.f108461b = i5;
        }

        @Override // org.apache.commons.math3.linear.DefaultRealMatrixPreservingVisitor, org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public void visit(int i, int i2, double d) {
            this.f108462c[i - this.f108460a][i2 - this.f108461b] = d;
        }
    }

    /* renamed from: org.apache.commons.math3.linear.AbstractRealMatrix$e */
    /* loaded from: classes12.dex */
    public class C19158e extends DefaultRealMatrixPreservingVisitor {

        /* renamed from: a */
        public final /* synthetic */ RealMatrix f108464a;

        public C19158e(RealMatrix realMatrix) {
            this.f108464a = realMatrix;
        }

        @Override // org.apache.commons.math3.linear.DefaultRealMatrixPreservingVisitor, org.apache.commons.math3.linear.RealMatrixPreservingVisitor
        public void visit(int i, int i2, double d) {
            this.f108464a.setEntry(i2, i, d);
        }
    }

    static {
        RealMatrixFormat realMatrixFormat = RealMatrixFormat.getInstance(Locale.US);
        DEFAULT_FORMAT = realMatrixFormat;
        realMatrixFormat.getFormat().setMinimumFractionDigits(1);
    }

    public AbstractRealMatrix() {
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealMatrix add(RealMatrix realMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkAdditionCompatible(this, realMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        RealMatrix createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i = 0; i < rowDimension; i++) {
            for (int i2 = 0; i2 < columnDimension; i2++) {
                createMatrix.setEntry(i, i2, getEntry(i, i2) + realMatrix.getEntry(i, i2));
            }
        }
        return createMatrix;
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public void addToEntry(int i, int i2, double d) throws OutOfRangeException {
        MatrixUtils.checkMatrixIndex(this, i, i2);
        setEntry(i, i2, getEntry(i, i2) + d);
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public abstract RealMatrix copy();

    @Override // org.apache.commons.math3.linear.RealMatrix
    public void copySubMatrix(int i, int i2, int i3, int i4, double[][] dArr) throws OutOfRangeException, NumberIsTooSmallException, MatrixDimensionMismatchException {
        MatrixUtils.checkSubMatrixIndex(this, i, i2, i3, i4);
        int i5 = (i2 + 1) - i;
        int i6 = (i4 + 1) - i3;
        if (dArr.length >= i5 && dArr[0].length >= i6) {
            for (int i7 = 1; i7 < i5; i7++) {
                if (dArr[i7].length < i6) {
                    throw new MatrixDimensionMismatchException(dArr.length, dArr[i7].length, i5, i6);
                }
            }
            walkInOptimizedOrder(new C19157d(dArr), i, i2, i3, i4);
            return;
        }
        throw new MatrixDimensionMismatchException(dArr.length, dArr[0].length, i5, i6);
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public abstract RealMatrix createMatrix(int i, int i2) throws NotStrictlyPositiveException;

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RealMatrix)) {
            return false;
        }
        RealMatrix realMatrix = (RealMatrix) obj;
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (realMatrix.getColumnDimension() != columnDimension || realMatrix.getRowDimension() != rowDimension) {
            return false;
        }
        for (int i = 0; i < rowDimension; i++) {
            for (int i2 = 0; i2 < columnDimension; i2++) {
                if (getEntry(i, i2) != realMatrix.getEntry(i, i2)) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double[] getColumn(int i) throws OutOfRangeException {
        MatrixUtils.checkColumnIndex(this, i);
        int rowDimension = getRowDimension();
        double[] dArr = new double[rowDimension];
        for (int i2 = 0; i2 < rowDimension; i2++) {
            dArr[i2] = getEntry(i2, i);
        }
        return dArr;
    }

    @Override // org.apache.commons.math3.linear.RealLinearOperator, org.apache.commons.math3.linear.AnyMatrix
    public abstract int getColumnDimension();

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealMatrix getColumnMatrix(int i) throws OutOfRangeException {
        MatrixUtils.checkColumnIndex(this, i);
        int rowDimension = getRowDimension();
        RealMatrix createMatrix = createMatrix(rowDimension, 1);
        for (int i2 = 0; i2 < rowDimension; i2++) {
            createMatrix.setEntry(i2, 0, getEntry(i2, i));
        }
        return createMatrix;
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealVector getColumnVector(int i) throws OutOfRangeException {
        return new ArrayRealVector(getColumn(i), false);
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double[][] getData() {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, getRowDimension(), getColumnDimension());
        for (int i = 0; i < dArr.length; i++) {
            double[] dArr2 = dArr[i];
            for (int i2 = 0; i2 < dArr2.length; i2++) {
                dArr2[i2] = getEntry(i, i2);
            }
        }
        return dArr;
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public abstract double getEntry(int i, int i2) throws OutOfRangeException;

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double getFrobeniusNorm() {
        return walkInOptimizedOrder(new C19155b());
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double getNorm() {
        return walkInColumnOrder(new C19154a());
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double[] getRow(int i) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i);
        int columnDimension = getColumnDimension();
        double[] dArr = new double[columnDimension];
        for (int i2 = 0; i2 < columnDimension; i2++) {
            dArr[i2] = getEntry(i, i2);
        }
        return dArr;
    }

    @Override // org.apache.commons.math3.linear.RealLinearOperator, org.apache.commons.math3.linear.AnyMatrix
    public abstract int getRowDimension();

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealMatrix getRowMatrix(int i) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i);
        int columnDimension = getColumnDimension();
        RealMatrix createMatrix = createMatrix(1, columnDimension);
        for (int i2 = 0; i2 < columnDimension; i2++) {
            createMatrix.setEntry(0, i2, getEntry(i, i2));
        }
        return createMatrix;
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealVector getRowVector(int i) throws OutOfRangeException {
        return new ArrayRealVector(getRow(i), false);
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealMatrix getSubMatrix(int i, int i2, int i3, int i4) throws OutOfRangeException, NumberIsTooSmallException {
        MatrixUtils.checkSubMatrixIndex(this, i, i2, i3, i4);
        RealMatrix createMatrix = createMatrix((i2 - i) + 1, (i4 - i3) + 1);
        for (int i5 = i; i5 <= i2; i5++) {
            for (int i6 = i3; i6 <= i4; i6++) {
                createMatrix.setEntry(i5 - i, i6 - i3, getEntry(i5, i6));
            }
        }
        return createMatrix;
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double getTrace() throws NonSquareMatrixException {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (rowDimension != columnDimension) {
            throw new NonSquareMatrixException(rowDimension, columnDimension);
        }
        double d = 0.0d;
        for (int i = 0; i < rowDimension; i++) {
            d += getEntry(i, i);
        }
        return d;
    }

    public int hashCode() {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        int i = ((217 + rowDimension) * 31) + columnDimension;
        for (int i2 = 0; i2 < rowDimension; i2++) {
            int i3 = 0;
            while (i3 < columnDimension) {
                int i4 = i3 + 1;
                i = (i * 31) + ((((i2 + 1) * 11) + (i4 * 17)) * MathUtils.hash(getEntry(i2, i3)));
                i3 = i4;
            }
        }
        return i;
    }

    @Override // org.apache.commons.math3.linear.AnyMatrix
    public boolean isSquare() {
        return getColumnDimension() == getRowDimension();
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealMatrix multiply(RealMatrix realMatrix) throws DimensionMismatchException {
        MatrixUtils.checkMultiplicationCompatible(this, realMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        int columnDimension2 = getColumnDimension();
        RealMatrix createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i = 0; i < rowDimension; i++) {
            for (int i2 = 0; i2 < columnDimension; i2++) {
                double d = 0.0d;
                for (int i3 = 0; i3 < columnDimension2; i3++) {
                    d += getEntry(i, i3) * realMatrix.getEntry(i3, i2);
                }
                createMatrix.setEntry(i, i2, d);
            }
        }
        return createMatrix;
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public void multiplyEntry(int i, int i2, double d) throws OutOfRangeException {
        MatrixUtils.checkMatrixIndex(this, i, i2);
        setEntry(i, i2, getEntry(i, i2) * d);
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double[] operate(double[] dArr) throws DimensionMismatchException {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (dArr.length == columnDimension) {
            double[] dArr2 = new double[rowDimension];
            for (int i = 0; i < rowDimension; i++) {
                double d = 0.0d;
                for (int i2 = 0; i2 < columnDimension; i2++) {
                    d += getEntry(i, i2) * dArr[i2];
                }
                dArr2[i] = d;
            }
            return dArr2;
        }
        throw new DimensionMismatchException(dArr.length, columnDimension);
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealMatrix power(int i) throws NotPositiveException, NonSquareMatrixException {
        if (i < 0) {
            throw new NotPositiveException(LocalizedFormats.NOT_POSITIVE_EXPONENT, Integer.valueOf(i));
        }
        if (!isSquare()) {
            throw new NonSquareMatrixException(getRowDimension(), getColumnDimension());
        }
        if (i == 0) {
            return MatrixUtils.createRealIdentityMatrix(getRowDimension());
        }
        if (i == 1) {
            return copy();
        }
        char[] charArray = Integer.toBinaryString(i - 1).toCharArray();
        ArrayList arrayList = new ArrayList();
        int i2 = -1;
        for (int i3 = 0; i3 < charArray.length; i3++) {
            if (charArray[i3] == '1') {
                int length = (charArray.length - i3) - 1;
                arrayList.add(Integer.valueOf(length));
                if (i2 == -1) {
                    i2 = length;
                }
            }
        }
        RealMatrix[] realMatrixArr = new RealMatrix[i2 + 1];
        realMatrixArr[0] = copy();
        for (int i4 = 1; i4 <= i2; i4++) {
            RealMatrix realMatrix = realMatrixArr[i4 - 1];
            realMatrixArr[i4] = realMatrix.multiply(realMatrix);
        }
        RealMatrix copy = copy();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            copy = copy.multiply(realMatrixArr[((Integer) it2.next()).intValue()]);
        }
        return copy;
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealMatrix preMultiply(RealMatrix realMatrix) throws DimensionMismatchException {
        return realMatrix.multiply(this);
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealMatrix scalarAdd(double d) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        RealMatrix createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i = 0; i < rowDimension; i++) {
            for (int i2 = 0; i2 < columnDimension; i2++) {
                createMatrix.setEntry(i, i2, getEntry(i, i2) + d);
            }
        }
        return createMatrix;
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealMatrix scalarMultiply(double d) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        RealMatrix createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i = 0; i < rowDimension; i++) {
            for (int i2 = 0; i2 < columnDimension; i2++) {
                createMatrix.setEntry(i, i2, getEntry(i, i2) * d);
            }
        }
        return createMatrix;
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public void setColumn(int i, double[] dArr) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkColumnIndex(this, i);
        int rowDimension = getRowDimension();
        if (dArr.length != rowDimension) {
            throw new MatrixDimensionMismatchException(dArr.length, 1, rowDimension, 1);
        }
        for (int i2 = 0; i2 < rowDimension; i2++) {
            setEntry(i2, i, dArr[i2]);
        }
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public void setColumnMatrix(int i, RealMatrix realMatrix) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkColumnIndex(this, i);
        int rowDimension = getRowDimension();
        if (realMatrix.getRowDimension() != rowDimension || realMatrix.getColumnDimension() != 1) {
            throw new MatrixDimensionMismatchException(realMatrix.getRowDimension(), realMatrix.getColumnDimension(), rowDimension, 1);
        }
        for (int i2 = 0; i2 < rowDimension; i2++) {
            setEntry(i2, i, realMatrix.getEntry(i2, 0));
        }
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public void setColumnVector(int i, RealVector realVector) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkColumnIndex(this, i);
        int rowDimension = getRowDimension();
        if (realVector.getDimension() != rowDimension) {
            throw new MatrixDimensionMismatchException(realVector.getDimension(), 1, rowDimension, 1);
        }
        for (int i2 = 0; i2 < rowDimension; i2++) {
            setEntry(i2, i, realVector.getEntry(i2));
        }
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public abstract void setEntry(int i, int i2, double d) throws OutOfRangeException;

    @Override // org.apache.commons.math3.linear.RealMatrix
    public void setRow(int i, double[] dArr) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkRowIndex(this, i);
        int columnDimension = getColumnDimension();
        if (dArr.length != columnDimension) {
            throw new MatrixDimensionMismatchException(1, dArr.length, 1, columnDimension);
        }
        for (int i2 = 0; i2 < columnDimension; i2++) {
            setEntry(i, i2, dArr[i2]);
        }
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public void setRowMatrix(int i, RealMatrix realMatrix) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkRowIndex(this, i);
        int columnDimension = getColumnDimension();
        if (realMatrix.getRowDimension() != 1 || realMatrix.getColumnDimension() != columnDimension) {
            throw new MatrixDimensionMismatchException(realMatrix.getRowDimension(), realMatrix.getColumnDimension(), 1, columnDimension);
        }
        for (int i2 = 0; i2 < columnDimension; i2++) {
            setEntry(i, i2, realMatrix.getEntry(0, i2));
        }
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public void setRowVector(int i, RealVector realVector) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkRowIndex(this, i);
        int columnDimension = getColumnDimension();
        if (realVector.getDimension() != columnDimension) {
            throw new MatrixDimensionMismatchException(1, realVector.getDimension(), 1, columnDimension);
        }
        for (int i2 = 0; i2 < columnDimension; i2++) {
            setEntry(i, i2, realVector.getEntry(i2));
        }
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public void setSubMatrix(double[][] dArr, int i, int i2) throws NoDataException, OutOfRangeException, DimensionMismatchException, NullArgumentException {
        MathUtils.checkNotNull(dArr);
        int length = dArr.length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
        }
        int length2 = dArr[0].length;
        if (length2 == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
        }
        for (int i3 = 1; i3 < length; i3++) {
            if (dArr[i3].length != length2) {
                throw new DimensionMismatchException(length2, dArr[i3].length);
            }
        }
        MatrixUtils.checkRowIndex(this, i);
        MatrixUtils.checkColumnIndex(this, i2);
        MatrixUtils.checkRowIndex(this, (length + i) - 1);
        MatrixUtils.checkColumnIndex(this, (length2 + i2) - 1);
        for (int i4 = 0; i4 < length; i4++) {
            for (int i5 = 0; i5 < length2; i5++) {
                setEntry(i + i4, i2 + i5, dArr[i4][i5]);
            }
        }
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealMatrix subtract(RealMatrix realMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkSubtractionCompatible(this, realMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        RealMatrix createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i = 0; i < rowDimension; i++) {
            for (int i2 = 0; i2 < columnDimension; i2++) {
                createMatrix.setEntry(i, i2, getEntry(i, i2) - realMatrix.getEntry(i, i2));
            }
        }
        return createMatrix;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String name = getClass().getName();
        sb.append(name.substring(name.lastIndexOf(46) + 1));
        sb.append(DEFAULT_FORMAT.format(this));
        return sb.toString();
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealMatrix transpose() {
        RealMatrix createMatrix = createMatrix(getColumnDimension(), getRowDimension());
        walkInOptimizedOrder(new C19158e(createMatrix));
        return createMatrix;
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double walkInColumnOrder(RealMatrixChangingVisitor realMatrixChangingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        realMatrixChangingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i = 0; i < columnDimension; i++) {
            for (int i2 = 0; i2 < rowDimension; i2++) {
                setEntry(i2, i, realMatrixChangingVisitor.visit(i2, i, getEntry(i2, i)));
            }
        }
        return realMatrixChangingVisitor.end();
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double walkInOptimizedOrder(RealMatrixChangingVisitor realMatrixChangingVisitor) {
        return walkInRowOrder(realMatrixChangingVisitor);
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double walkInRowOrder(RealMatrixChangingVisitor realMatrixChangingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        realMatrixChangingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i = 0; i < rowDimension; i++) {
            for (int i2 = 0; i2 < columnDimension; i2++) {
                setEntry(i, i2, realMatrixChangingVisitor.visit(i, i2, getEntry(i, i2)));
            }
        }
        return realMatrixChangingVisitor.end();
    }

    public AbstractRealMatrix(int i, int i2) throws NotStrictlyPositiveException {
        if (i < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        if (i2 < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i2));
        }
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double[] preMultiply(double[] dArr) throws DimensionMismatchException {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (dArr.length == rowDimension) {
            double[] dArr2 = new double[columnDimension];
            for (int i = 0; i < columnDimension; i++) {
                double d = 0.0d;
                for (int i2 = 0; i2 < rowDimension; i2++) {
                    d += getEntry(i2, i) * dArr[i2];
                }
                dArr2[i] = d;
            }
            return dArr2;
        }
        throw new DimensionMismatchException(dArr.length, rowDimension);
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double walkInOptimizedOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor) {
        return walkInRowOrder(realMatrixPreservingVisitor);
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double walkInOptimizedOrder(RealMatrixChangingVisitor realMatrixChangingVisitor, int i, int i2, int i3, int i4) throws OutOfRangeException, NumberIsTooSmallException {
        return walkInRowOrder(realMatrixChangingVisitor, i, i2, i3, i4);
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealMatrix getSubMatrix(int[] iArr, int[] iArr2) throws NullArgumentException, NoDataException, OutOfRangeException {
        MatrixUtils.checkSubMatrixIndex(this, iArr, iArr2);
        RealMatrix createMatrix = createMatrix(iArr.length, iArr2.length);
        createMatrix.walkInOptimizedOrder(new C19156c(iArr, iArr2));
        return createMatrix;
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double walkInOptimizedOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor, int i, int i2, int i3, int i4) throws OutOfRangeException, NumberIsTooSmallException {
        return walkInRowOrder(realMatrixPreservingVisitor, i, i2, i3, i4);
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public void copySubMatrix(int[] iArr, int[] iArr2, double[][] dArr) throws OutOfRangeException, NullArgumentException, NoDataException, MatrixDimensionMismatchException {
        MatrixUtils.checkSubMatrixIndex(this, iArr, iArr2);
        int length = iArr2.length;
        if (dArr.length >= iArr.length && dArr[0].length >= length) {
            for (int i = 0; i < iArr.length; i++) {
                double[] dArr2 = dArr[i];
                if (dArr2.length >= length) {
                    for (int i2 = 0; i2 < iArr2.length; i2++) {
                        dArr2[i2] = getEntry(iArr[i], iArr2[i2]);
                    }
                } else {
                    throw new MatrixDimensionMismatchException(dArr.length, dArr2.length, iArr.length, iArr2.length);
                }
            }
            return;
        }
        throw new MatrixDimensionMismatchException(dArr.length, dArr[0].length, iArr.length, iArr2.length);
    }

    @Override // org.apache.commons.math3.linear.RealLinearOperator, org.apache.commons.math3.linear.RealMatrix
    public RealVector operate(RealVector realVector) throws DimensionMismatchException {
        try {
            return new ArrayRealVector(operate(((ArrayRealVector) realVector).getDataRef()), false);
        } catch (ClassCastException unused) {
            int rowDimension = getRowDimension();
            int columnDimension = getColumnDimension();
            if (realVector.getDimension() == columnDimension) {
                double[] dArr = new double[rowDimension];
                for (int i = 0; i < rowDimension; i++) {
                    double d = 0.0d;
                    for (int i2 = 0; i2 < columnDimension; i2++) {
                        d += getEntry(i, i2) * realVector.getEntry(i2);
                    }
                    dArr[i] = d;
                }
                return new ArrayRealVector(dArr, false);
            }
            throw new DimensionMismatchException(realVector.getDimension(), columnDimension);
        }
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double walkInColumnOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        realMatrixPreservingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i = 0; i < columnDimension; i++) {
            for (int i2 = 0; i2 < rowDimension; i2++) {
                realMatrixPreservingVisitor.visit(i2, i, getEntry(i2, i));
            }
        }
        return realMatrixPreservingVisitor.end();
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double walkInRowOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        realMatrixPreservingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i = 0; i < rowDimension; i++) {
            for (int i2 = 0; i2 < columnDimension; i2++) {
                realMatrixPreservingVisitor.visit(i, i2, getEntry(i, i2));
            }
        }
        return realMatrixPreservingVisitor.end();
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public RealVector preMultiply(RealVector realVector) throws DimensionMismatchException {
        try {
            return new ArrayRealVector(preMultiply(((ArrayRealVector) realVector).getDataRef()), false);
        } catch (ClassCastException unused) {
            int rowDimension = getRowDimension();
            int columnDimension = getColumnDimension();
            if (realVector.getDimension() == rowDimension) {
                double[] dArr = new double[columnDimension];
                for (int i = 0; i < columnDimension; i++) {
                    double d = 0.0d;
                    for (int i2 = 0; i2 < rowDimension; i2++) {
                        d += getEntry(i2, i) * realVector.getEntry(i2);
                    }
                    dArr[i] = d;
                }
                return new ArrayRealVector(dArr, false);
            }
            throw new DimensionMismatchException(realVector.getDimension(), rowDimension);
        }
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double walkInColumnOrder(RealMatrixChangingVisitor realMatrixChangingVisitor, int i, int i2, int i3, int i4) throws OutOfRangeException, NumberIsTooSmallException {
        MatrixUtils.checkSubMatrixIndex(this, i, i2, i3, i4);
        realMatrixChangingVisitor.start(getRowDimension(), getColumnDimension(), i, i2, i3, i4);
        while (i3 <= i4) {
            for (int i5 = i; i5 <= i2; i5++) {
                setEntry(i5, i3, realMatrixChangingVisitor.visit(i5, i3, getEntry(i5, i3)));
            }
            i3++;
        }
        return realMatrixChangingVisitor.end();
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double walkInRowOrder(RealMatrixChangingVisitor realMatrixChangingVisitor, int i, int i2, int i3, int i4) throws OutOfRangeException, NumberIsTooSmallException {
        MatrixUtils.checkSubMatrixIndex(this, i, i2, i3, i4);
        realMatrixChangingVisitor.start(getRowDimension(), getColumnDimension(), i, i2, i3, i4);
        while (i <= i2) {
            for (int i5 = i3; i5 <= i4; i5++) {
                setEntry(i, i5, realMatrixChangingVisitor.visit(i, i5, getEntry(i, i5)));
            }
            i++;
        }
        return realMatrixChangingVisitor.end();
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double walkInColumnOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor, int i, int i2, int i3, int i4) throws OutOfRangeException, NumberIsTooSmallException {
        MatrixUtils.checkSubMatrixIndex(this, i, i2, i3, i4);
        realMatrixPreservingVisitor.start(getRowDimension(), getColumnDimension(), i, i2, i3, i4);
        while (i3 <= i4) {
            for (int i5 = i; i5 <= i2; i5++) {
                realMatrixPreservingVisitor.visit(i5, i3, getEntry(i5, i3));
            }
            i3++;
        }
        return realMatrixPreservingVisitor.end();
    }

    @Override // org.apache.commons.math3.linear.RealMatrix
    public double walkInRowOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor, int i, int i2, int i3, int i4) throws OutOfRangeException, NumberIsTooSmallException {
        MatrixUtils.checkSubMatrixIndex(this, i, i2, i3, i4);
        realMatrixPreservingVisitor.start(getRowDimension(), getColumnDimension(), i, i2, i3, i4);
        while (i <= i2) {
            for (int i5 = i3; i5 <= i4; i5++) {
                realMatrixPreservingVisitor.visit(i, i5, getEntry(i, i5));
            }
            i++;
        }
        return realMatrixPreservingVisitor.end();
    }
}
