package org.apache.commons.math3.geometry.euclidean.threed;

import java.io.Serializable;
import java.text.NumberFormat;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class FieldVector3D<T extends RealFieldElement<T>> implements Serializable {
    private static final long serialVersionUID = 20130224;

    /* renamed from: x */
    private final T f108249x;

    /* renamed from: y */
    private final T f108250y;

    /* renamed from: z */
    private final T f108251z;

    public FieldVector3D(T t, T t2, T t3) {
        this.f108249x = t;
        this.f108250y = t2;
        this.f108251z = t3;
    }

    public static <T extends RealFieldElement<T>> T angle(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) throws MathArithmeticException {
        RealFieldElement realFieldElement = (RealFieldElement) fieldVector3D.getNorm().multiply(fieldVector3D2.getNorm());
        if (realFieldElement.getReal() != 0.0d) {
            RealFieldElement dotProduct = dotProduct(fieldVector3D, fieldVector3D2);
            double real = realFieldElement.getReal() * 0.9999d;
            if (dotProduct.getReal() >= (-real) && dotProduct.getReal() <= real) {
                return (T) ((RealFieldElement) dotProduct.divide(realFieldElement)).acos();
            }
            FieldVector3D crossProduct = crossProduct(fieldVector3D, fieldVector3D2);
            if (dotProduct.getReal() >= 0.0d) {
                return (T) ((RealFieldElement) crossProduct.getNorm().divide(realFieldElement)).asin();
            }
            return (T) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) crossProduct.getNorm().divide(realFieldElement)).asin()).subtract(3.141592653589793d)).negate();
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
    }

    public FieldVector3D<T> add(FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.add(fieldVector3D.f108249x), (RealFieldElement) this.f108250y.add(fieldVector3D.f108250y), (RealFieldElement) this.f108251z.add(fieldVector3D.f108251z));
    }

    public FieldVector3D<T> crossProduct(FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.linearCombination(this.f108250y, fieldVector3D.f108251z, this.f108251z.negate(), fieldVector3D.f108250y), (RealFieldElement) this.f108250y.linearCombination(this.f108251z, fieldVector3D.f108249x, this.f108249x.negate(), fieldVector3D.f108251z), (RealFieldElement) this.f108251z.linearCombination(this.f108249x, fieldVector3D.f108250y, this.f108250y.negate(), fieldVector3D.f108249x));
    }

    public T distance(FieldVector3D<T> fieldVector3D) {
        RealFieldElement realFieldElement = (RealFieldElement) fieldVector3D.f108249x.subtract(this.f108249x);
        RealFieldElement realFieldElement2 = (RealFieldElement) fieldVector3D.f108250y.subtract(this.f108250y);
        RealFieldElement realFieldElement3 = (RealFieldElement) fieldVector3D.f108251z.subtract(this.f108251z);
        return (T) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.multiply(realFieldElement)).add((RealFieldElement) realFieldElement2.multiply(realFieldElement2))).add((RealFieldElement) realFieldElement3.multiply(realFieldElement3))).sqrt();
    }

    public T distance1(FieldVector3D<T> fieldVector3D) {
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) fieldVector3D.f108249x.subtract(this.f108249x)).abs();
        RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) fieldVector3D.f108250y.subtract(this.f108250y)).abs();
        return (T) ((RealFieldElement) realFieldElement.add(realFieldElement2)).add((RealFieldElement) ((RealFieldElement) fieldVector3D.f108251z.subtract(this.f108251z)).abs());
    }

    public T distanceInf(FieldVector3D<T> fieldVector3D) {
        T t = (T) ((RealFieldElement) fieldVector3D.f108249x.subtract(this.f108249x)).abs();
        T t2 = (T) ((RealFieldElement) fieldVector3D.f108250y.subtract(this.f108250y)).abs();
        T t3 = (T) ((RealFieldElement) fieldVector3D.f108251z.subtract(this.f108251z)).abs();
        return t.getReal() <= t2.getReal() ? t2.getReal() <= t3.getReal() ? t3 : t2 : t.getReal() <= t3.getReal() ? t3 : t;
    }

    public T distanceSq(FieldVector3D<T> fieldVector3D) {
        RealFieldElement realFieldElement = (RealFieldElement) fieldVector3D.f108249x.subtract(this.f108249x);
        RealFieldElement realFieldElement2 = (RealFieldElement) fieldVector3D.f108250y.subtract(this.f108250y);
        RealFieldElement realFieldElement3 = (RealFieldElement) fieldVector3D.f108251z.subtract(this.f108251z);
        return (T) ((RealFieldElement) ((RealFieldElement) realFieldElement.multiply(realFieldElement)).add((RealFieldElement) realFieldElement2.multiply(realFieldElement2))).add((RealFieldElement) realFieldElement3.multiply(realFieldElement3));
    }

    public T dotProduct(FieldVector3D<T> fieldVector3D) {
        T t = this.f108249x;
        return (T) t.linearCombination(t, fieldVector3D.f108249x, this.f108250y, fieldVector3D.f108250y, this.f108251z, fieldVector3D.f108251z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FieldVector3D)) {
            return false;
        }
        FieldVector3D fieldVector3D = (FieldVector3D) obj;
        return fieldVector3D.isNaN() ? isNaN() : this.f108249x.equals(fieldVector3D.f108249x) && this.f108250y.equals(fieldVector3D.f108250y) && this.f108251z.equals(fieldVector3D.f108251z);
    }

    public T getAlpha() {
        return (T) this.f108250y.atan2(this.f108249x);
    }

    public T getDelta() {
        return (T) ((RealFieldElement) this.f108251z.divide(getNorm())).asin();
    }

    public T getNorm() {
        T t = this.f108249x;
        RealFieldElement realFieldElement = (RealFieldElement) t.multiply(t);
        T t2 = this.f108250y;
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.add((RealFieldElement) t2.multiply(t2));
        T t3 = this.f108251z;
        return (T) ((RealFieldElement) realFieldElement2.add((RealFieldElement) t3.multiply(t3))).sqrt();
    }

    public T getNorm1() {
        return (T) ((RealFieldElement) ((RealFieldElement) this.f108249x.abs()).add((RealFieldElement) this.f108250y.abs())).add((RealFieldElement) this.f108251z.abs());
    }

    public T getNormInf() {
        T t = (T) this.f108249x.abs();
        T t2 = (T) this.f108250y.abs();
        T t3 = (T) this.f108251z.abs();
        return t.getReal() <= t2.getReal() ? t2.getReal() <= t3.getReal() ? t3 : t2 : t.getReal() <= t3.getReal() ? t3 : t;
    }

    public T getNormSq() {
        T t = this.f108249x;
        RealFieldElement realFieldElement = (RealFieldElement) t.multiply(t);
        T t2 = this.f108250y;
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.add((RealFieldElement) t2.multiply(t2));
        T t3 = this.f108251z;
        return (T) realFieldElement2.add((RealFieldElement) t3.multiply(t3));
    }

    public T getX() {
        return this.f108249x;
    }

    public T getY() {
        return this.f108250y;
    }

    public T getZ() {
        return this.f108251z;
    }

    public int hashCode() {
        if (isNaN()) {
            return 409;
        }
        return ((this.f108249x.hashCode() * 107) + (this.f108250y.hashCode() * 83) + this.f108251z.hashCode()) * 311;
    }

    public boolean isInfinite() {
        return !isNaN() && (Double.isInfinite(this.f108249x.getReal()) || Double.isInfinite(this.f108250y.getReal()) || Double.isInfinite(this.f108251z.getReal()));
    }

    public boolean isNaN() {
        return Double.isNaN(this.f108249x.getReal()) || Double.isNaN(this.f108250y.getReal()) || Double.isNaN(this.f108251z.getReal());
    }

    public FieldVector3D<T> negate() {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.negate(), (RealFieldElement) this.f108250y.negate(), (RealFieldElement) this.f108251z.negate());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FieldVector3D<T> normalize() throws MathArithmeticException {
        RealFieldElement norm = getNorm();
        if (norm.getReal() != 0.0d) {
            return scalarMultiply((FieldVector3D<T>) norm.reciprocal());
        }
        throw new MathArithmeticException(LocalizedFormats.CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR, new Object[0]);
    }

    public FieldVector3D<T> orthogonal() throws MathArithmeticException {
        double real = getNorm().getReal() * 0.6d;
        if (real == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        if (FastMath.abs(this.f108249x.getReal()) <= real) {
            T t = this.f108250y;
            RealFieldElement realFieldElement = (RealFieldElement) t.multiply(t);
            T t2 = this.f108251z;
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.add((RealFieldElement) t2.multiply(t2))).sqrt()).reciprocal();
            return new FieldVector3D<>((RealFieldElement) realFieldElement2.getField().getZero(), (RealFieldElement) realFieldElement2.multiply(this.f108251z), (RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(this.f108250y)).negate());
        }
        if (FastMath.abs(this.f108250y.getReal()) <= real) {
            T t3 = this.f108249x;
            RealFieldElement realFieldElement3 = (RealFieldElement) t3.multiply(t3);
            T t4 = this.f108251z;
            RealFieldElement realFieldElement4 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement3.add((RealFieldElement) t4.multiply(t4))).sqrt()).reciprocal();
            return new FieldVector3D<>((RealFieldElement) ((RealFieldElement) realFieldElement4.multiply(this.f108251z)).negate(), (RealFieldElement) realFieldElement4.getField().getZero(), (RealFieldElement) realFieldElement4.multiply(this.f108249x));
        }
        T t5 = this.f108249x;
        RealFieldElement realFieldElement5 = (RealFieldElement) t5.multiply(t5);
        T t6 = this.f108250y;
        RealFieldElement realFieldElement6 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement5.add((RealFieldElement) t6.multiply(t6))).sqrt()).reciprocal();
        return new FieldVector3D<>((RealFieldElement) realFieldElement6.multiply(this.f108250y), (RealFieldElement) ((RealFieldElement) realFieldElement6.multiply(this.f108249x)).negate(), (RealFieldElement) realFieldElement6.getField().getZero());
    }

    public FieldVector3D<T> scalarMultiply(T t) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.multiply(t), (RealFieldElement) this.f108250y.multiply(t), (RealFieldElement) this.f108251z.multiply(t));
    }

    public FieldVector3D<T> subtract(FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.subtract(fieldVector3D.f108249x), (RealFieldElement) this.f108250y.subtract(fieldVector3D.f108250y), (RealFieldElement) this.f108251z.subtract(fieldVector3D.f108251z));
    }

    public T[] toArray() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(this.f108249x.getField(), 3));
        tArr[0] = this.f108249x;
        tArr[1] = this.f108250y;
        tArr[2] = this.f108251z;
        return tArr;
    }

    public String toString() {
        return Vector3DFormat.getInstance().format(toVector3D());
    }

    public Vector3D toVector3D() {
        return new Vector3D(this.f108249x.getReal(), this.f108250y.getReal(), this.f108251z.getReal());
    }

    public FieldVector3D<T> add(Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.add(vector3D.getX()), (RealFieldElement) this.f108250y.add(vector3D.getY()), (RealFieldElement) this.f108251z.add(vector3D.getZ()));
    }

    public FieldVector3D<T> crossProduct(Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.linearCombination(vector3D.getZ(), this.f108250y, -vector3D.getY(), this.f108251z), (RealFieldElement) this.f108250y.linearCombination(vector3D.getX(), this.f108251z, -vector3D.getZ(), this.f108249x), (RealFieldElement) this.f108251z.linearCombination(vector3D.getY(), this.f108249x, -vector3D.getX(), this.f108250y));
    }

    public T dotProduct(Vector3D vector3D) {
        return (T) this.f108249x.linearCombination(vector3D.getX(), this.f108249x, vector3D.getY(), this.f108250y, vector3D.getZ(), this.f108251z);
    }

    public FieldVector3D<T> scalarMultiply(double d) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.multiply(d), (RealFieldElement) this.f108250y.multiply(d), (RealFieldElement) this.f108251z.multiply(d));
    }

    public FieldVector3D<T> subtract(Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.subtract(vector3D.getX()), (RealFieldElement) this.f108250y.subtract(vector3D.getY()), (RealFieldElement) this.f108251z.subtract(vector3D.getZ()));
    }

    public String toString(NumberFormat numberFormat) {
        return new Vector3DFormat(numberFormat).format(toVector3D());
    }

    public static <T extends RealFieldElement<T>> FieldVector3D<T> crossProduct(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) {
        return fieldVector3D.crossProduct(fieldVector3D2);
    }

    public static <T extends RealFieldElement<T>> T dotProduct(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) {
        return fieldVector3D.dotProduct(fieldVector3D2);
    }

    public FieldVector3D<T> add(T t, FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.getField().getOne(), this, t, fieldVector3D);
    }

    public FieldVector3D<T> subtract(T t, FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.getField().getOne(), this, (RealFieldElement) t.negate(), fieldVector3D);
    }

    public static <T extends RealFieldElement<T>> FieldVector3D<T> crossProduct(FieldVector3D<T> fieldVector3D, Vector3D vector3D) {
        return fieldVector3D.crossProduct(vector3D);
    }

    public static <T extends RealFieldElement<T>> T dotProduct(FieldVector3D<T> fieldVector3D, Vector3D vector3D) {
        return fieldVector3D.dotProduct(vector3D);
    }

    public FieldVector3D<T> add(T t, Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.add(t.multiply(vector3D.getX())), (RealFieldElement) this.f108250y.add(t.multiply(vector3D.getY())), (RealFieldElement) this.f108251z.add(t.multiply(vector3D.getZ())));
    }

    public FieldVector3D<T> subtract(T t, Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.subtract(t.multiply(vector3D.getX())), (RealFieldElement) this.f108250y.subtract(t.multiply(vector3D.getY())), (RealFieldElement) this.f108251z.subtract(t.multiply(vector3D.getZ())));
    }

    public FieldVector3D(T[] tArr) throws DimensionMismatchException {
        if (tArr.length == 3) {
            this.f108249x = tArr[0];
            this.f108250y = tArr[1];
            this.f108251z = tArr[2];
            return;
        }
        throw new DimensionMismatchException(tArr.length, 3);
    }

    public static <T extends RealFieldElement<T>> FieldVector3D<T> crossProduct(Vector3D vector3D, FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>((RealFieldElement) ((FieldVector3D) fieldVector3D).f108249x.linearCombination(vector3D.getY(), ((FieldVector3D) fieldVector3D).f108251z, -vector3D.getZ(), ((FieldVector3D) fieldVector3D).f108250y), (RealFieldElement) ((FieldVector3D) fieldVector3D).f108250y.linearCombination(vector3D.getZ(), ((FieldVector3D) fieldVector3D).f108249x, -vector3D.getX(), ((FieldVector3D) fieldVector3D).f108251z), (RealFieldElement) ((FieldVector3D) fieldVector3D).f108251z.linearCombination(vector3D.getX(), ((FieldVector3D) fieldVector3D).f108250y, -vector3D.getY(), ((FieldVector3D) fieldVector3D).f108249x));
    }

    public static <T extends RealFieldElement<T>> T dotProduct(Vector3D vector3D, FieldVector3D<T> fieldVector3D) {
        return fieldVector3D.dotProduct(vector3D);
    }

    public FieldVector3D<T> add(double d, FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>(1.0d, this, d, fieldVector3D);
    }

    public T distance(Vector3D vector3D) {
        RealFieldElement realFieldElement = (RealFieldElement) this.f108249x.subtract(vector3D.getX());
        RealFieldElement realFieldElement2 = (RealFieldElement) this.f108250y.subtract(vector3D.getY());
        RealFieldElement realFieldElement3 = (RealFieldElement) this.f108251z.subtract(vector3D.getZ());
        return (T) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.multiply(realFieldElement)).add((RealFieldElement) realFieldElement2.multiply(realFieldElement2))).add((RealFieldElement) realFieldElement3.multiply(realFieldElement3))).sqrt();
    }

    public T distance1(Vector3D vector3D) {
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) this.f108249x.subtract(vector3D.getX())).abs();
        RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) this.f108250y.subtract(vector3D.getY())).abs();
        return (T) ((RealFieldElement) realFieldElement.add(realFieldElement2)).add((RealFieldElement) ((RealFieldElement) this.f108251z.subtract(vector3D.getZ())).abs());
    }

    public T distanceSq(Vector3D vector3D) {
        RealFieldElement realFieldElement = (RealFieldElement) this.f108249x.subtract(vector3D.getX());
        RealFieldElement realFieldElement2 = (RealFieldElement) this.f108250y.subtract(vector3D.getY());
        RealFieldElement realFieldElement3 = (RealFieldElement) this.f108251z.subtract(vector3D.getZ());
        return (T) ((RealFieldElement) ((RealFieldElement) realFieldElement.multiply(realFieldElement)).add((RealFieldElement) realFieldElement2.multiply(realFieldElement2))).add((RealFieldElement) realFieldElement3.multiply(realFieldElement3));
    }

    public FieldVector3D<T> subtract(double d, FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>(1.0d, this, -d, fieldVector3D);
    }

    public FieldVector3D<T> add(double d, Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.add(vector3D.getX() * d), (RealFieldElement) this.f108250y.add(vector3D.getY() * d), (RealFieldElement) this.f108251z.add(d * vector3D.getZ()));
    }

    public FieldVector3D<T> subtract(double d, Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f108249x.subtract(vector3D.getX() * d), (RealFieldElement) this.f108250y.subtract(vector3D.getY() * d), (RealFieldElement) this.f108251z.subtract(d * vector3D.getZ()));
    }

    public T distanceInf(Vector3D vector3D) {
        T t = (T) ((RealFieldElement) this.f108249x.subtract(vector3D.getX())).abs();
        T t2 = (T) ((RealFieldElement) this.f108250y.subtract(vector3D.getY())).abs();
        T t3 = (T) ((RealFieldElement) this.f108251z.subtract(vector3D.getZ())).abs();
        return t.getReal() <= t2.getReal() ? t2.getReal() <= t3.getReal() ? t3 : t2 : t.getReal() <= t3.getReal() ? t3 : t;
    }

    public static <T extends RealFieldElement<T>> T distance(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) {
        return fieldVector3D.distance(fieldVector3D2);
    }

    public static <T extends RealFieldElement<T>> T distance1(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) {
        return fieldVector3D.distance1(fieldVector3D2);
    }

    public static <T extends RealFieldElement<T>> T distanceSq(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) {
        return fieldVector3D.distanceSq(fieldVector3D2);
    }

    public static <T extends RealFieldElement<T>> T distance(FieldVector3D<T> fieldVector3D, Vector3D vector3D) {
        return fieldVector3D.distance(vector3D);
    }

    public static <T extends RealFieldElement<T>> T distance1(FieldVector3D<T> fieldVector3D, Vector3D vector3D) {
        return fieldVector3D.distance1(vector3D);
    }

    public static <T extends RealFieldElement<T>> T distanceSq(FieldVector3D<T> fieldVector3D, Vector3D vector3D) {
        return fieldVector3D.distanceSq(vector3D);
    }

    public FieldVector3D(T t, T t2) {
        RealFieldElement realFieldElement = (RealFieldElement) t2.cos();
        this.f108249x = (T) ((RealFieldElement) t.cos()).multiply(realFieldElement);
        this.f108250y = (T) ((RealFieldElement) t.sin()).multiply(realFieldElement);
        this.f108251z = (T) t2.sin();
    }

    public static <T extends RealFieldElement<T>> T distance(Vector3D vector3D, FieldVector3D<T> fieldVector3D) {
        return fieldVector3D.distance(vector3D);
    }

    public static <T extends RealFieldElement<T>> T distance1(Vector3D vector3D, FieldVector3D<T> fieldVector3D) {
        return fieldVector3D.distance1(vector3D);
    }

    public static <T extends RealFieldElement<T>> T distanceSq(Vector3D vector3D, FieldVector3D<T> fieldVector3D) {
        return fieldVector3D.distanceSq(vector3D);
    }

    public static <T extends RealFieldElement<T>> T angle(FieldVector3D<T> fieldVector3D, Vector3D vector3D) throws MathArithmeticException {
        RealFieldElement realFieldElement = (RealFieldElement) fieldVector3D.getNorm().multiply(vector3D.getNorm());
        if (realFieldElement.getReal() != 0.0d) {
            RealFieldElement dotProduct = dotProduct(fieldVector3D, vector3D);
            double real = realFieldElement.getReal() * 0.9999d;
            if (dotProduct.getReal() >= (-real) && dotProduct.getReal() <= real) {
                return (T) ((RealFieldElement) dotProduct.divide(realFieldElement)).acos();
            }
            FieldVector3D crossProduct = crossProduct(fieldVector3D, vector3D);
            if (dotProduct.getReal() >= 0.0d) {
                return (T) ((RealFieldElement) crossProduct.getNorm().divide(realFieldElement)).asin();
            }
            return (T) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) crossProduct.getNorm().divide(realFieldElement)).asin()).subtract(3.141592653589793d)).negate();
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
    }

    public static <T extends RealFieldElement<T>> T distanceInf(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) {
        return fieldVector3D.distanceInf(fieldVector3D2);
    }

    public static <T extends RealFieldElement<T>> T distanceInf(FieldVector3D<T> fieldVector3D, Vector3D vector3D) {
        return fieldVector3D.distanceInf(vector3D);
    }

    public static <T extends RealFieldElement<T>> T distanceInf(Vector3D vector3D, FieldVector3D<T> fieldVector3D) {
        return fieldVector3D.distanceInf(vector3D);
    }

    public FieldVector3D(T t, FieldVector3D<T> fieldVector3D) {
        this.f108249x = (T) t.multiply(fieldVector3D.f108249x);
        this.f108250y = (T) t.multiply(fieldVector3D.f108250y);
        this.f108251z = (T) t.multiply(fieldVector3D.f108251z);
    }

    public FieldVector3D(T t, Vector3D vector3D) {
        this.f108249x = (T) t.multiply(vector3D.getX());
        this.f108250y = (T) t.multiply(vector3D.getY());
        this.f108251z = (T) t.multiply(vector3D.getZ());
    }

    public static <T extends RealFieldElement<T>> T angle(Vector3D vector3D, FieldVector3D<T> fieldVector3D) throws MathArithmeticException {
        return (T) angle(fieldVector3D, vector3D);
    }

    public FieldVector3D(double d, FieldVector3D<T> fieldVector3D) {
        this.f108249x = (T) fieldVector3D.f108249x.multiply(d);
        this.f108250y = (T) fieldVector3D.f108250y.multiply(d);
        this.f108251z = (T) fieldVector3D.f108251z.multiply(d);
    }

    public FieldVector3D(T t, FieldVector3D<T> fieldVector3D, T t2, FieldVector3D<T> fieldVector3D2) {
        this.f108249x = (T) t.linearCombination(t, fieldVector3D.getX(), t2, fieldVector3D2.getX());
        this.f108250y = (T) t.linearCombination(t, fieldVector3D.getY(), t2, fieldVector3D2.getY());
        this.f108251z = (T) t.linearCombination(t, fieldVector3D.getZ(), t2, fieldVector3D2.getZ());
    }

    public FieldVector3D(T t, Vector3D vector3D, T t2, Vector3D vector3D2) {
        this.f108249x = (T) t.linearCombination(vector3D.getX(), t, vector3D2.getX(), t2);
        this.f108250y = (T) t.linearCombination(vector3D.getY(), t, vector3D2.getY(), t2);
        this.f108251z = (T) t.linearCombination(vector3D.getZ(), t, vector3D2.getZ(), t2);
    }

    public FieldVector3D(double d, FieldVector3D<T> fieldVector3D, double d2, FieldVector3D<T> fieldVector3D2) {
        T x = fieldVector3D.getX();
        this.f108249x = (T) x.linearCombination(d, fieldVector3D.getX(), d2, fieldVector3D2.getX());
        this.f108250y = (T) x.linearCombination(d, fieldVector3D.getY(), d2, fieldVector3D2.getY());
        this.f108251z = (T) x.linearCombination(d, fieldVector3D.getZ(), d2, fieldVector3D2.getZ());
    }

    public FieldVector3D(T t, FieldVector3D<T> fieldVector3D, T t2, FieldVector3D<T> fieldVector3D2, T t3, FieldVector3D<T> fieldVector3D3) {
        this.f108249x = (T) t.linearCombination(t, fieldVector3D.getX(), t2, fieldVector3D2.getX(), t3, fieldVector3D3.getX());
        this.f108250y = (T) t.linearCombination(t, fieldVector3D.getY(), t2, fieldVector3D2.getY(), t3, fieldVector3D3.getY());
        this.f108251z = (T) t.linearCombination(t, fieldVector3D.getZ(), t2, fieldVector3D2.getZ(), t3, fieldVector3D3.getZ());
    }

    public FieldVector3D(T t, Vector3D vector3D, T t2, Vector3D vector3D2, T t3, Vector3D vector3D3) {
        this.f108249x = (T) t.linearCombination(vector3D.getX(), t, vector3D2.getX(), t2, vector3D3.getX(), t3);
        this.f108250y = (T) t.linearCombination(vector3D.getY(), t, vector3D2.getY(), t2, vector3D3.getY(), t3);
        this.f108251z = (T) t.linearCombination(vector3D.getZ(), t, vector3D2.getZ(), t2, vector3D3.getZ(), t3);
    }

    public FieldVector3D(double d, FieldVector3D<T> fieldVector3D, double d2, FieldVector3D<T> fieldVector3D2, double d3, FieldVector3D<T> fieldVector3D3) {
        T x = fieldVector3D.getX();
        this.f108249x = (T) x.linearCombination(d, fieldVector3D.getX(), d2, fieldVector3D2.getX(), d3, fieldVector3D3.getX());
        this.f108250y = (T) x.linearCombination(d, fieldVector3D.getY(), d2, fieldVector3D2.getY(), d3, fieldVector3D3.getY());
        this.f108251z = (T) x.linearCombination(d, fieldVector3D.getZ(), d2, fieldVector3D2.getZ(), d3, fieldVector3D3.getZ());
    }

    public FieldVector3D(T t, FieldVector3D<T> fieldVector3D, T t2, FieldVector3D<T> fieldVector3D2, T t3, FieldVector3D<T> fieldVector3D3, T t4, FieldVector3D<T> fieldVector3D4) {
        this.f108249x = (T) t.linearCombination(t, fieldVector3D.getX(), t2, fieldVector3D2.getX(), t3, fieldVector3D3.getX(), t4, fieldVector3D4.getX());
        this.f108250y = (T) t.linearCombination(t, fieldVector3D.getY(), t2, fieldVector3D2.getY(), t3, fieldVector3D3.getY(), t4, fieldVector3D4.getY());
        this.f108251z = (T) t.linearCombination(t, fieldVector3D.getZ(), t2, fieldVector3D2.getZ(), t3, fieldVector3D3.getZ(), t4, fieldVector3D4.getZ());
    }

    public FieldVector3D(T t, Vector3D vector3D, T t2, Vector3D vector3D2, T t3, Vector3D vector3D3, T t4, Vector3D vector3D4) {
        this.f108249x = (T) t.linearCombination(vector3D.getX(), t, vector3D2.getX(), t2, vector3D3.getX(), t3, vector3D4.getX(), t4);
        this.f108250y = (T) t.linearCombination(vector3D.getY(), t, vector3D2.getY(), t2, vector3D3.getY(), t3, vector3D4.getY(), t4);
        this.f108251z = (T) t.linearCombination(vector3D.getZ(), t, vector3D2.getZ(), t2, vector3D3.getZ(), t3, vector3D4.getZ(), t4);
    }

    public FieldVector3D(double d, FieldVector3D<T> fieldVector3D, double d2, FieldVector3D<T> fieldVector3D2, double d3, FieldVector3D<T> fieldVector3D3, double d4, FieldVector3D<T> fieldVector3D4) {
        T x = fieldVector3D.getX();
        this.f108249x = (T) x.linearCombination(d, fieldVector3D.getX(), d2, fieldVector3D2.getX(), d3, fieldVector3D3.getX(), d4, fieldVector3D4.getX());
        this.f108250y = (T) x.linearCombination(d, fieldVector3D.getY(), d2, fieldVector3D2.getY(), d3, fieldVector3D3.getY(), d4, fieldVector3D4.getY());
        this.f108251z = (T) x.linearCombination(d, fieldVector3D.getZ(), d2, fieldVector3D2.getZ(), d3, fieldVector3D3.getZ(), d4, fieldVector3D4.getZ());
    }
}
