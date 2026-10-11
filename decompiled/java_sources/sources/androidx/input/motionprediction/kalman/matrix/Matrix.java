package androidx.input.motionprediction.kalman.matrix;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;
import java.util.Locale;
import org.apache.commons.collections4.IteratorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class Matrix {

    /* renamed from: a */
    public final int f7787a;

    /* renamed from: b */
    public final int f7788b;

    /* renamed from: c */
    public final double[] f7789c;

    public Matrix(int i, int i2) {
        this.f7787a = i;
        this.f7788b = i2;
        this.f7789c = new double[i * i2];
    }

    @NonNull
    public static Matrix identity(int i) {
        Matrix matrix = new Matrix(i, i);
        setIdentity(matrix);
        return matrix;
    }

    public static void setIdentity(@NonNull Matrix matrix) {
        Arrays.fill(matrix.f7789c, 0.0d);
        int i = matrix.f7787a;
        int i2 = matrix.f7788b;
        if (i >= i2) {
            i = i2;
        }
        for (int i3 = 0; i3 < i; i3++) {
            matrix.put(i3, i3, 1.0d);
        }
    }

    /* renamed from: a */
    public final String m4861a() {
        return MotionUtils.f31761c + this.f7787a + "x" + this.f7788b + MotionUtils.f31762d;
    }

    @NonNull
    public Matrix dot(@NonNull Matrix matrix, @NonNull Matrix matrix2) {
        if (this.f7787a != matrix2.f7787a || this.f7788b != matrix.f7787a || matrix.f7788b != matrix2.f7788b) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "The matrices dimensions are not conformant for a dot matrix operation. this:%s that:%s result:%s", m4861a(), matrix.m4861a(), matrix2.m4861a()));
        }
        for (int i = 0; i < this.f7787a; i++) {
            for (int i2 = 0; i2 < matrix.f7788b; i2++) {
                double d = 0.0d;
                for (int i3 = 0; i3 < this.f7788b; i3++) {
                    d += get(i, i3) * matrix.get(i3, i2);
                }
                matrix2.put(i, i2, d);
            }
        }
        return matrix2;
    }

    @NonNull
    public Matrix dotTranspose(@NonNull Matrix matrix, @NonNull Matrix matrix2) {
        if (this.f7787a != matrix2.f7787a || this.f7788b != matrix.f7788b || matrix.f7787a != matrix2.f7788b) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "The matrices dimensions are not conformant for a transpose operation. this:%s that:%s result:%s", m4861a(), matrix.m4861a(), matrix2.m4861a()));
        }
        for (int i = 0; i < this.f7787a; i++) {
            for (int i2 = 0; i2 < matrix.f7787a; i2++) {
                double d = 0.0d;
                for (int i3 = 0; i3 < this.f7788b; i3++) {
                    d += get(i, i3) * matrix.get(i2, i3);
                }
                matrix2.put(i, i2, d);
            }
        }
        return matrix2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Matrix)) {
            return false;
        }
        Matrix matrix = (Matrix) obj;
        if (this.f7787a != matrix.f7787a || this.f7788b != matrix.f7788b) {
            return false;
        }
        int i = 0;
        while (true) {
            double[] dArr = this.f7789c;
            if (i >= dArr.length) {
                return true;
            }
            if (dArr[i] != matrix.f7789c[i]) {
                return false;
            }
            i++;
        }
    }

    public void fill(double d) {
        Arrays.fill(this.f7789c, d);
    }

    public double get(int i, int i2) {
        int i3;
        if (i < 0 || i >= this.f7787a || i2 < 0 || i2 >= (i3 = this.f7788b)) {
            throw new IndexOutOfBoundsException(String.format(Locale.ROOT, "Invalid matrix index value. i:%d j:%d not available in %s", Integer.valueOf(i), Integer.valueOf(i2), m4861a()));
        }
        return this.f7789c[(i * i3) + i2];
    }

    public int getNumCols() {
        return this.f7788b;
    }

    public int getNumRows() {
        return this.f7787a;
    }

    public int hashCode() {
        int i = (this.f7787a * 101) + this.f7788b;
        for (double d : this.f7789c) {
            i = (i * 37) + Double.hashCode(d);
        }
        return i;
    }

    @NonNull
    public Matrix inverse(@NonNull Matrix matrix) {
        int i = this.f7787a;
        int i2 = this.f7788b;
        if (i != i2) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "The matrix is not square. this:%s", m4861a()));
        }
        if (matrix.f7787a != i || matrix.f7788b != i2 * 2) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "The scratch matrix size is not correct. this:%s", matrix.m4861a()));
        }
        int i3 = 0;
        while (i3 < this.f7787a) {
            int i4 = 0;
            while (i4 < this.f7788b) {
                matrix.put(i3, i4, get(i3, i4));
                matrix.put(i3, this.f7788b + i4, i3 == i4 ? 1.0d : 0.0d);
                i4++;
            }
            i3++;
        }
        int i5 = 0;
        while (true) {
            int i6 = this.f7787a;
            if (i5 >= i6) {
                for (int i7 = i6 - 1; i7 >= 0; i7--) {
                    for (int i8 = 0; i8 < i7; i8++) {
                        double d = matrix.get(i8, i7);
                        for (int i9 = 0; i9 < matrix.f7788b; i9++) {
                            matrix.put(i8, i9, matrix.get(i8, i9) - (matrix.get(i7, i9) * d));
                        }
                    }
                }
                for (int i10 = 0; i10 < this.f7787a; i10++) {
                    int i11 = 0;
                    while (true) {
                        int i12 = this.f7788b;
                        if (i11 < i12) {
                            put(i10, i11, matrix.get(i10, i12 + i11));
                            i11++;
                        }
                    }
                }
                return this;
            }
            double abs = Math.abs(matrix.get(i5, i5));
            int i13 = i5 + 1;
            int i14 = i5;
            for (int i15 = i13; i15 < this.f7787a; i15++) {
                double abs2 = Math.abs(matrix.get(i15, i5));
                if (abs2 > abs) {
                    i14 = i15;
                    abs = abs2;
                }
            }
            if (i14 != i5) {
                for (int i16 = 0; i16 < matrix.f7788b; i16++) {
                    double d2 = matrix.get(i5, i16);
                    matrix.put(i5, i16, matrix.get(i14, i16));
                    matrix.put(i14, i16, d2);
                }
            }
            double d3 = matrix.get(i5, i5);
            if (d3 == 0.0d) {
                throw new ArithmeticException("Singular matrix");
            }
            for (int i17 = 0; i17 < matrix.f7788b; i17++) {
                matrix.put(i5, i17, matrix.get(i5, i17) / d3);
            }
            for (int i18 = i13; i18 < this.f7787a; i18++) {
                double d4 = matrix.get(i18, i5);
                for (int i19 = 0; i19 < matrix.f7788b; i19++) {
                    matrix.put(i18, i19, matrix.get(i18, i19) - (matrix.get(i5, i19) * d4));
                }
            }
            i5 = i13;
        }
    }

    @NonNull
    public Matrix minus(@NonNull Matrix matrix) {
        if (this.f7787a != matrix.f7787a || this.f7788b != matrix.f7788b) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "The matrix dimensions are not the same. this:%s that:%s", m4861a(), matrix.m4861a()));
        }
        int i = 0;
        while (true) {
            double[] dArr = this.f7789c;
            if (i >= dArr.length) {
                return this;
            }
            dArr[i] = dArr[i] - matrix.f7789c[i];
            i++;
        }
    }

    @NonNull
    public Matrix plus(@NonNull Matrix matrix) {
        if (this.f7787a != matrix.f7787a || this.f7788b != matrix.f7788b) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "The matrix dimensions are not the same. this:%s that:%s", m4861a(), matrix.m4861a()));
        }
        int i = 0;
        while (true) {
            double[] dArr = this.f7789c;
            if (i >= dArr.length) {
                return this;
            }
            dArr[i] = dArr[i] + matrix.f7789c[i];
            i++;
        }
    }

    public void put(int i, int i2, double d) {
        int i3;
        if (i < 0 || i >= this.f7787a || i2 < 0 || i2 >= (i3 = this.f7788b)) {
            throw new IndexOutOfBoundsException(String.format(Locale.ROOT, "Invalid matrix index value. i:%d j:%d not available in %s", Integer.valueOf(i), Integer.valueOf(i2), m4861a()));
        }
        this.f7789c[(i * i3) + i2] = d;
    }

    public void scale(double d) {
        int i = this.f7787a * this.f7788b;
        for (int i2 = 0; i2 < i; i2++) {
            double[] dArr = this.f7789c;
            dArr[i2] = dArr[i2] * d;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.f7787a * this.f7788b * 8);
        sb.append(this.f7787a);
        sb.append("x");
        sb.append(this.f7788b);
        sb.append(" [");
        for (int i = 0; i < this.f7789c.length; i++) {
            if (i > 0) {
                sb.append(i % this.f7788b == 0 ? "; " : ", ");
            }
            sb.append(this.f7789c[i]);
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    public Matrix(int i, @NonNull double[] dArr) {
        int length = ((dArr.length + i) - 1) / i;
        this.f7787a = length;
        this.f7788b = i;
        this.f7789c = dArr;
        if (dArr.length != length * i) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "Invalid number of elements in 'values' Expected:%d Actual:%d", Integer.valueOf(dArr.length), Integer.valueOf(i & length)));
        }
    }

    public Matrix(@NonNull Matrix matrix) {
        int i = matrix.f7787a;
        this.f7787a = i;
        int i2 = matrix.f7788b;
        this.f7788b = i2;
        double[] dArr = new double[i * i2];
        this.f7789c = dArr;
        System.arraycopy(matrix.f7789c, 0, dArr, 0, dArr.length);
    }
}
