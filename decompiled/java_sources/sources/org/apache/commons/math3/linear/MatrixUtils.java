package org.apache.commons.math3.linear;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.fraction.Fraction;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class MatrixUtils {
    public static final RealMatrixFormat DEFAULT_FORMAT = RealMatrixFormat.getInstance();
    public static final RealMatrixFormat OCTAVE_FORMAT = new RealMatrixFormat(IteratorUtils.f104923a, IteratorUtils.f104924b, "", "", "; ", ", ");

    /* renamed from: org.apache.commons.math3.linear.MatrixUtils$a */
    /* loaded from: classes12.dex */
    public static class C19168a extends DefaultFieldMatrixPreservingVisitor<BigFraction> {

        /* renamed from: b */
        public double[][] f108519b;

        public C19168a() {
            super(BigFraction.ZERO);
        }

        /* renamed from: a */
        public Array2DRowRealMatrix m67817a() {
            return new Array2DRowRealMatrix(this.f108519b, false);
        }

        @Override // org.apache.commons.math3.linear.DefaultFieldMatrixPreservingVisitor, org.apache.commons.math3.linear.FieldMatrixPreservingVisitor
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void visit(int i, int i2, BigFraction bigFraction) {
            this.f108519b[i][i2] = bigFraction.doubleValue();
        }

        @Override // org.apache.commons.math3.linear.DefaultFieldMatrixPreservingVisitor, org.apache.commons.math3.linear.FieldMatrixPreservingVisitor
        public void start(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f108519b = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        }
    }

    /* renamed from: org.apache.commons.math3.linear.MatrixUtils$b */
    /* loaded from: classes12.dex */
    public static class C19169b extends DefaultFieldMatrixPreservingVisitor<Fraction> {

        /* renamed from: b */
        public double[][] f108520b;

        public C19169b() {
            super(Fraction.ZERO);
        }

        /* renamed from: a */
        public Array2DRowRealMatrix m67819a() {
            return new Array2DRowRealMatrix(this.f108520b, false);
        }

        @Override // org.apache.commons.math3.linear.DefaultFieldMatrixPreservingVisitor, org.apache.commons.math3.linear.FieldMatrixPreservingVisitor
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void visit(int i, int i2, Fraction fraction) {
            this.f108520b[i][i2] = fraction.doubleValue();
        }

        @Override // org.apache.commons.math3.linear.DefaultFieldMatrixPreservingVisitor, org.apache.commons.math3.linear.FieldMatrixPreservingVisitor
        public void start(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f108520b = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, i2);
        }
    }

    /* renamed from: a */
    public static boolean m67816a(RealMatrix realMatrix, double d, boolean z) {
        int rowDimension = realMatrix.getRowDimension();
        if (rowDimension != realMatrix.getColumnDimension()) {
            if (z) {
                throw new NonSquareMatrixException(rowDimension, realMatrix.getColumnDimension());
            }
            return false;
        }
        int i = 0;
        while (i < rowDimension) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < rowDimension; i3++) {
                double entry = realMatrix.getEntry(i, i3);
                double entry2 = realMatrix.getEntry(i3, i);
                if (FastMath.abs(entry - entry2) > FastMath.max(FastMath.abs(entry), FastMath.abs(entry2)) * d) {
                    if (z) {
                        throw new NonSymmetricMatrixException(i, i3, d);
                    }
                    return false;
                }
            }
            i = i2;
        }
        return true;
    }

    public static Array2DRowRealMatrix bigFractionMatrixToRealMatrix(FieldMatrix<BigFraction> fieldMatrix) {
        C19168a c19168a = new C19168a();
        fieldMatrix.walkInOptimizedOrder(c19168a);
        return c19168a.m67817a();
    }

    public static RealMatrix blockInverse(RealMatrix realMatrix, int i) {
        int rowDimension = realMatrix.getRowDimension();
        if (realMatrix.getColumnDimension() != rowDimension) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        int i2 = i + 1;
        RealMatrix subMatrix = realMatrix.getSubMatrix(0, i, 0, i);
        int i3 = rowDimension - 1;
        RealMatrix subMatrix2 = realMatrix.getSubMatrix(0, i, i2, i3);
        RealMatrix subMatrix3 = realMatrix.getSubMatrix(i2, i3, 0, i);
        RealMatrix subMatrix4 = realMatrix.getSubMatrix(i2, i3, i2, i3);
        DecompositionSolver solver = new SingularValueDecomposition(subMatrix).getSolver();
        if (!solver.isNonSingular()) {
            throw new SingularMatrixException();
        }
        RealMatrix inverse = solver.getInverse();
        DecompositionSolver solver2 = new SingularValueDecomposition(subMatrix4).getSolver();
        if (!solver2.isNonSingular()) {
            throw new SingularMatrixException();
        }
        RealMatrix inverse2 = solver2.getInverse();
        DecompositionSolver solver3 = new SingularValueDecomposition(subMatrix.subtract(subMatrix2.multiply(inverse2).multiply(subMatrix3))).getSolver();
        if (!solver3.isNonSingular()) {
            throw new SingularMatrixException();
        }
        RealMatrix inverse3 = solver3.getInverse();
        DecompositionSolver solver4 = new SingularValueDecomposition(subMatrix4.subtract(subMatrix3.multiply(inverse).multiply(subMatrix2))).getSolver();
        if (!solver4.isNonSingular()) {
            throw new SingularMatrixException();
        }
        RealMatrix inverse4 = solver4.getInverse();
        RealMatrix scalarMultiply = inverse.multiply(subMatrix2).multiply(inverse4).scalarMultiply(-1.0d);
        RealMatrix scalarMultiply2 = inverse2.multiply(subMatrix3).multiply(inverse3).scalarMultiply(-1.0d);
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(rowDimension, rowDimension);
        array2DRowRealMatrix.setSubMatrix(inverse3.getData(), 0, 0);
        array2DRowRealMatrix.setSubMatrix(scalarMultiply.getData(), 0, i2);
        array2DRowRealMatrix.setSubMatrix(scalarMultiply2.getData(), i2, 0);
        array2DRowRealMatrix.setSubMatrix(inverse4.getData(), i2, i2);
        return array2DRowRealMatrix;
    }

    public static void checkAdditionCompatible(AnyMatrix anyMatrix, AnyMatrix anyMatrix2) throws MatrixDimensionMismatchException {
        if (anyMatrix.getRowDimension() != anyMatrix2.getRowDimension() || anyMatrix.getColumnDimension() != anyMatrix2.getColumnDimension()) {
            throw new MatrixDimensionMismatchException(anyMatrix.getRowDimension(), anyMatrix.getColumnDimension(), anyMatrix2.getRowDimension(), anyMatrix2.getColumnDimension());
        }
    }

    public static void checkColumnIndex(AnyMatrix anyMatrix, int i) throws OutOfRangeException {
        if (i < 0 || i >= anyMatrix.getColumnDimension()) {
            throw new OutOfRangeException(LocalizedFormats.COLUMN_INDEX, Integer.valueOf(i), 0, Integer.valueOf(anyMatrix.getColumnDimension() - 1));
        }
    }

    public static void checkMatrixIndex(AnyMatrix anyMatrix, int i, int i2) throws OutOfRangeException {
        checkRowIndex(anyMatrix, i);
        checkColumnIndex(anyMatrix, i2);
    }

    public static void checkMultiplicationCompatible(AnyMatrix anyMatrix, AnyMatrix anyMatrix2) throws DimensionMismatchException {
        if (anyMatrix.getColumnDimension() != anyMatrix2.getRowDimension()) {
            throw new DimensionMismatchException(anyMatrix.getColumnDimension(), anyMatrix2.getRowDimension());
        }
    }

    public static void checkRowIndex(AnyMatrix anyMatrix, int i) throws OutOfRangeException {
        if (i < 0 || i >= anyMatrix.getRowDimension()) {
            throw new OutOfRangeException(LocalizedFormats.ROW_INDEX, Integer.valueOf(i), 0, Integer.valueOf(anyMatrix.getRowDimension() - 1));
        }
    }

    public static void checkSubMatrixIndex(AnyMatrix anyMatrix, int i, int i2, int i3, int i4) throws NumberIsTooSmallException, OutOfRangeException {
        checkRowIndex(anyMatrix, i);
        checkRowIndex(anyMatrix, i2);
        if (i2 >= i) {
            checkColumnIndex(anyMatrix, i3);
            checkColumnIndex(anyMatrix, i4);
            if (i4 < i3) {
                throw new NumberIsTooSmallException(LocalizedFormats.INITIAL_COLUMN_AFTER_FINAL_COLUMN, Integer.valueOf(i4), Integer.valueOf(i3), false);
            }
            return;
        }
        throw new NumberIsTooSmallException(LocalizedFormats.INITIAL_ROW_AFTER_FINAL_ROW, Integer.valueOf(i2), Integer.valueOf(i), false);
    }

    public static void checkSubtractionCompatible(AnyMatrix anyMatrix, AnyMatrix anyMatrix2) throws MatrixDimensionMismatchException {
        if (anyMatrix.getRowDimension() != anyMatrix2.getRowDimension() || anyMatrix.getColumnDimension() != anyMatrix2.getColumnDimension()) {
            throw new MatrixDimensionMismatchException(anyMatrix.getRowDimension(), anyMatrix.getColumnDimension(), anyMatrix2.getRowDimension(), anyMatrix2.getColumnDimension());
        }
    }

    public static void checkSymmetric(RealMatrix realMatrix, double d) {
        m67816a(realMatrix, d, true);
    }

    public static <T extends FieldElement<T>> FieldMatrix<T> createColumnFieldMatrix(T[] tArr) throws NoDataException, NullArgumentException {
        if (tArr == null) {
            throw new NullArgumentException();
        }
        int length = tArr.length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
        }
        FieldMatrix<T> createFieldMatrix = createFieldMatrix(tArr[0].getField(), length, 1);
        for (int i = 0; i < length; i++) {
            createFieldMatrix.setEntry(i, 0, tArr[i]);
        }
        return createFieldMatrix;
    }

    public static RealMatrix createColumnRealMatrix(double[] dArr) throws NoDataException, NullArgumentException {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        int length = dArr.length;
        RealMatrix createRealMatrix = createRealMatrix(length, 1);
        for (int i = 0; i < length; i++) {
            createRealMatrix.setEntry(i, 0, dArr[i]);
        }
        return createRealMatrix;
    }

    public static <T extends FieldElement<T>> FieldMatrix<T> createFieldDiagonalMatrix(T[] tArr) {
        FieldMatrix<T> createFieldMatrix = createFieldMatrix(tArr[0].getField(), tArr.length, tArr.length);
        for (int i = 0; i < tArr.length; i++) {
            createFieldMatrix.setEntry(i, i, tArr[i]);
        }
        return createFieldMatrix;
    }

    public static <T extends FieldElement<T>> FieldMatrix<T> createFieldIdentityMatrix(Field<T> field, int i) {
        T zero = field.getZero();
        T one = field.getOne();
        FieldElement[][] fieldElementArr = (FieldElement[][]) MathArrays.buildArray(field, i, i);
        for (int i2 = 0; i2 < i; i2++) {
            FieldElement[] fieldElementArr2 = fieldElementArr[i2];
            Arrays.fill(fieldElementArr2, zero);
            fieldElementArr2[i2] = one;
        }
        return new Array2DRowFieldMatrix((Field) field, fieldElementArr, false);
    }

    public static <T extends FieldElement<T>> FieldMatrix<T> createFieldMatrix(Field<T> field, int i, int i2) {
        return i * i2 <= 4096 ? new Array2DRowFieldMatrix(field, i, i2) : new BlockFieldMatrix(field, i, i2);
    }

    public static <T extends FieldElement<T>> FieldVector<T> createFieldVector(T[] tArr) throws NoDataException, NullArgumentException, ZeroException {
        if (tArr == null) {
            throw new NullArgumentException();
        }
        if (tArr.length != 0) {
            return new ArrayFieldVector(tArr[0].getField(), (FieldElement[]) tArr, true);
        }
        throw new ZeroException(LocalizedFormats.VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT, new Object[0]);
    }

    public static RealMatrix createRealDiagonalMatrix(double[] dArr) {
        RealMatrix createRealMatrix = createRealMatrix(dArr.length, dArr.length);
        for (int i = 0; i < dArr.length; i++) {
            createRealMatrix.setEntry(i, i, dArr[i]);
        }
        return createRealMatrix;
    }

    public static RealMatrix createRealIdentityMatrix(int i) {
        RealMatrix createRealMatrix = createRealMatrix(i, i);
        for (int i2 = 0; i2 < i; i2++) {
            createRealMatrix.setEntry(i2, i2, 1.0d);
        }
        return createRealMatrix;
    }

    public static RealMatrix createRealMatrix(int i, int i2) {
        return i * i2 <= 4096 ? new Array2DRowRealMatrix(i, i2) : new BlockRealMatrix(i, i2);
    }

    public static RealVector createRealVector(double[] dArr) throws NoDataException, NullArgumentException {
        if (dArr != null) {
            return new ArrayRealVector(dArr, true);
        }
        throw new NullArgumentException();
    }

    public static <T extends FieldElement<T>> FieldMatrix<T> createRowFieldMatrix(T[] tArr) throws NoDataException, NullArgumentException {
        if (tArr == null) {
            throw new NullArgumentException();
        }
        int length = tArr.length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
        }
        FieldMatrix<T> createFieldMatrix = createFieldMatrix(tArr[0].getField(), 1, length);
        for (int i = 0; i < length; i++) {
            createFieldMatrix.setEntry(0, i, tArr[i]);
        }
        return createFieldMatrix;
    }

    public static RealMatrix createRowRealMatrix(double[] dArr) throws NoDataException, NullArgumentException {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        int length = dArr.length;
        RealMatrix createRealMatrix = createRealMatrix(1, length);
        for (int i = 0; i < length; i++) {
            createRealMatrix.setEntry(0, i, dArr[i]);
        }
        return createRealMatrix;
    }

    public static void deserializeRealMatrix(Object obj, String str, ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        try {
            int readInt = objectInputStream.readInt();
            int readInt2 = objectInputStream.readInt();
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, readInt, readInt2);
            for (int i = 0; i < readInt; i++) {
                double[] dArr2 = dArr[i];
                for (int i2 = 0; i2 < readInt2; i2++) {
                    dArr2[i2] = objectInputStream.readDouble();
                }
            }
            Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(dArr, false);
            java.lang.reflect.Field declaredField = obj.getClass().getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(obj, array2DRowRealMatrix);
        } catch (IllegalAccessException e) {
            IOException iOException = new IOException();
            iOException.initCause(e);
            throw iOException;
        } catch (NoSuchFieldException e2) {
            IOException iOException2 = new IOException();
            iOException2.initCause(e2);
            throw iOException2;
        }
    }

    public static void deserializeRealVector(Object obj, String str, ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        try {
            int readInt = objectInputStream.readInt();
            double[] dArr = new double[readInt];
            for (int i = 0; i < readInt; i++) {
                dArr[i] = objectInputStream.readDouble();
            }
            ArrayRealVector arrayRealVector = new ArrayRealVector(dArr, false);
            java.lang.reflect.Field declaredField = obj.getClass().getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(obj, arrayRealVector);
        } catch (IllegalAccessException e) {
            IOException iOException = new IOException();
            iOException.initCause(e);
            throw iOException;
        } catch (NoSuchFieldException e2) {
            IOException iOException2 = new IOException();
            iOException2.initCause(e2);
            throw iOException2;
        }
    }

    public static Array2DRowRealMatrix fractionMatrixToRealMatrix(FieldMatrix<Fraction> fieldMatrix) {
        C19169b c19169b = new C19169b();
        fieldMatrix.walkInOptimizedOrder(c19169b);
        return c19169b.m67819a();
    }

    public static RealMatrix inverse(RealMatrix realMatrix) throws NullArgumentException, SingularMatrixException, NonSquareMatrixException {
        return inverse(realMatrix, 0.0d);
    }

    public static boolean isSymmetric(RealMatrix realMatrix, double d) {
        return m67816a(realMatrix, d, false);
    }

    public static void serializeRealMatrix(RealMatrix realMatrix, ObjectOutputStream objectOutputStream) throws IOException {
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        objectOutputStream.writeInt(rowDimension);
        objectOutputStream.writeInt(columnDimension);
        for (int i = 0; i < rowDimension; i++) {
            for (int i2 = 0; i2 < columnDimension; i2++) {
                objectOutputStream.writeDouble(realMatrix.getEntry(i, i2));
            }
        }
    }

    public static void serializeRealVector(RealVector realVector, ObjectOutputStream objectOutputStream) throws IOException {
        int dimension = realVector.getDimension();
        objectOutputStream.writeInt(dimension);
        for (int i = 0; i < dimension; i++) {
            objectOutputStream.writeDouble(realVector.getEntry(i));
        }
    }

    public static void solveLowerTriangularSystem(RealMatrix realMatrix, RealVector realVector) throws DimensionMismatchException, MathArithmeticException, NonSquareMatrixException {
        if (realMatrix == null || realVector == null || realMatrix.getRowDimension() != realVector.getDimension()) {
            throw new DimensionMismatchException(realMatrix == null ? 0 : realMatrix.getRowDimension(), realVector != null ? realVector.getDimension() : 0);
        }
        if (realMatrix.getColumnDimension() != realMatrix.getRowDimension()) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        int rowDimension = realMatrix.getRowDimension();
        int i = 0;
        while (i < rowDimension) {
            double entry = realMatrix.getEntry(i, i);
            if (FastMath.abs(entry) < Precision.SAFE_MIN) {
                throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
            }
            double entry2 = realVector.getEntry(i) / entry;
            realVector.setEntry(i, entry2);
            int i2 = i + 1;
            for (int i3 = i2; i3 < rowDimension; i3++) {
                realVector.setEntry(i3, realVector.getEntry(i3) - (realMatrix.getEntry(i3, i) * entry2));
            }
            i = i2;
        }
    }

    public static void solveUpperTriangularSystem(RealMatrix realMatrix, RealVector realVector) throws DimensionMismatchException, MathArithmeticException, NonSquareMatrixException {
        if (realMatrix == null || realVector == null || realMatrix.getRowDimension() != realVector.getDimension()) {
            throw new DimensionMismatchException(realMatrix == null ? 0 : realMatrix.getRowDimension(), realVector != null ? realVector.getDimension() : 0);
        }
        if (realMatrix.getColumnDimension() != realMatrix.getRowDimension()) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        int rowDimension = realMatrix.getRowDimension();
        while (true) {
            rowDimension--;
            if (rowDimension <= -1) {
                return;
            }
            double entry = realMatrix.getEntry(rowDimension, rowDimension);
            if (FastMath.abs(entry) < Precision.SAFE_MIN) {
                throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
            }
            double entry2 = realVector.getEntry(rowDimension) / entry;
            realVector.setEntry(rowDimension, entry2);
            for (int i = rowDimension - 1; i > -1; i--) {
                realVector.setEntry(i, realVector.getEntry(i) - (realMatrix.getEntry(i, rowDimension) * entry2));
            }
        }
    }

    public static <T extends FieldElement<T>> FieldMatrix<T> createFieldMatrix(T[][] tArr) throws DimensionMismatchException, NoDataException, NullArgumentException {
        T[] tArr2;
        if (tArr == null || (tArr2 = tArr[0]) == null) {
            throw new NullArgumentException();
        }
        return tArr.length * tArr2.length <= 4096 ? new Array2DRowFieldMatrix(tArr) : new BlockFieldMatrix(tArr);
    }

    public static RealMatrix createRealMatrix(double[][] dArr) throws NullArgumentException, DimensionMismatchException, NoDataException {
        double[] dArr2;
        if (dArr == null || (dArr2 = dArr[0]) == null) {
            throw new NullArgumentException();
        }
        return dArr.length * dArr2.length <= 4096 ? new Array2DRowRealMatrix(dArr) : new BlockRealMatrix(dArr);
    }

    public static RealMatrix inverse(RealMatrix realMatrix, double d) throws NullArgumentException, SingularMatrixException, NonSquareMatrixException {
        MathUtils.checkNotNull(realMatrix);
        if (realMatrix.isSquare()) {
            if (realMatrix instanceof DiagonalMatrix) {
                return ((DiagonalMatrix) realMatrix).inverse(d);
            }
            return new QRDecomposition(realMatrix, d).getSolver().getInverse();
        }
        throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
    }

    public static void checkSubMatrixIndex(AnyMatrix anyMatrix, int[] iArr, int[] iArr2) throws NoDataException, NullArgumentException, OutOfRangeException {
        if (iArr == null) {
            throw new NullArgumentException();
        }
        if (iArr2 != null) {
            if (iArr.length != 0) {
                if (iArr2.length != 0) {
                    for (int i : iArr) {
                        checkRowIndex(anyMatrix, i);
                    }
                    for (int i2 : iArr2) {
                        checkColumnIndex(anyMatrix, i2);
                    }
                    return;
                }
                throw new NoDataException(LocalizedFormats.EMPTY_SELECTED_COLUMN_INDEX_ARRAY);
            }
            throw new NoDataException(LocalizedFormats.EMPTY_SELECTED_ROW_INDEX_ARRAY);
        }
        throw new NullArgumentException();
    }
}
