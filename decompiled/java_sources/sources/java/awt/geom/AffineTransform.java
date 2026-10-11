package java.awt.geom;

import java.awt.InternalError;
import java.awt.Shape;
import java.awt.geom.Path2D;
import java.awt.geom.Point2D;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* loaded from: classes5.dex */
public class AffineTransform implements Cloneable, Serializable {
    public static final int APPLY_IDENTITY = 0;
    public static final int APPLY_SCALE = 2;
    public static final int APPLY_SHEAR = 4;
    public static final int APPLY_TRANSLATE = 1;
    private static final int HI_IDENTITY = 0;
    private static final int HI_SCALE = 16;
    private static final int HI_SHEAR = 32;
    private static final int HI_SHIFT = 3;
    private static final int HI_TRANSLATE = 8;
    public static final int TYPE_FLIP = 64;
    public static final int TYPE_GENERAL_ROTATION = 16;
    public static final int TYPE_GENERAL_SCALE = 4;
    public static final int TYPE_GENERAL_TRANSFORM = 32;
    public static final int TYPE_IDENTITY = 0;
    public static final int TYPE_MASK_ROTATION = 24;
    public static final int TYPE_MASK_SCALE = 6;
    public static final int TYPE_QUADRANT_ROTATION = 8;
    public static final int TYPE_TRANSLATION = 1;
    public static final int TYPE_UNIFORM_SCALE = 2;
    private static final int TYPE_UNKNOWN = -1;
    private static final int[] rot90conversion = {4, 5, 4, 5, 2, 3, 6, 7};
    private static final long serialVersionUID = 1330973210523860834L;
    double m00;
    double m01;
    double m02;
    double m10;
    double m11;
    double m12;
    transient int state;
    private transient int type;

    private AffineTransform(double d, double d2, double d3, double d4, double d5, double d6, int i) {
        this.m00 = d;
        this.m10 = d2;
        this.m01 = d3;
        this.m11 = d4;
        this.m02 = d5;
        this.m12 = d6;
        this.state = i;
        this.type = -1;
    }

    private static double _matround(double d) {
        return Math.rint(d * 1.0E15d) / 1.0E15d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x003e, code lost:
    
        if (r10 != (-1.0d)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x007f, code lost:
    
        r8 = r1 | 10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x007d, code lost:
    
        if (r10 != (-1.0d)) goto L51;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void calculateType() {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.geom.AffineTransform.calculateType():void");
    }

    public static AffineTransform getQuadrantRotateInstance(int i) {
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.setToQuadrantRotation(i);
        return affineTransform;
    }

    public static AffineTransform getRotateInstance(double d) {
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.setToRotation(d);
        return affineTransform;
    }

    public static AffineTransform getScaleInstance(double d, double d2) {
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.setToScale(d, d2);
        return affineTransform;
    }

    public static AffineTransform getShearInstance(double d, double d2) {
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.setToShear(d, d2);
        return affineTransform;
    }

    public static AffineTransform getTranslateInstance(double d, double d2) {
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.setToTranslation(d, d2);
        return affineTransform;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        updateState();
    }

    private final void rotate180() {
        double d = -this.m00;
        this.m00 = d;
        double d2 = -this.m11;
        this.m11 = d2;
        int i = this.state;
        if ((i & 4) != 0) {
            this.m01 = -this.m01;
            this.m10 = -this.m10;
        } else if (d == 1.0d && d2 == 1.0d) {
            this.state = i & (-3);
        } else {
            this.state = i | 2;
        }
        this.type = -1;
    }

    private final void rotate270() {
        double d = this.m00;
        double d2 = -this.m01;
        this.m00 = d2;
        this.m01 = d;
        double d3 = this.m10;
        this.m10 = -this.m11;
        this.m11 = d3;
        int i = rot90conversion[this.state];
        if ((i & 6) == 2 && d2 == 1.0d && d3 == 1.0d) {
            i -= 2;
        }
        this.state = i;
        this.type = -1;
    }

    private final void rotate90() {
        double d = this.m00;
        double d2 = this.m01;
        this.m00 = d2;
        this.m01 = -d;
        double d3 = this.m10;
        this.m10 = this.m11;
        double d4 = -d3;
        this.m11 = d4;
        int i = rot90conversion[this.state];
        if ((i & 6) == 2 && d2 == 1.0d && d4 == 1.0d) {
            i -= 2;
        }
        this.state = i;
        this.type = -1;
    }

    private void stateError() {
        throw new InternalError("missing case in transform state switch");
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws ClassNotFoundException, IOException {
        objectOutputStream.defaultWriteObject();
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new InternalError(e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0029. Please report as an issue. */
    public void concatenate(AffineTransform affineTransform) {
        int i = this.state;
        int i2 = affineTransform.state;
        int i3 = (i2 << 3) | i;
        if (i3 != 48) {
            if (i3 != 56) {
                switch (i3) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        return;
                    case 8:
                        break;
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        translate(affineTransform.m02, affineTransform.m12);
                        return;
                    case 16:
                        break;
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        scale(affineTransform.m00, affineTransform.m11);
                        return;
                    case 24:
                        break;
                    default:
                        switch (i3) {
                            case 32:
                                break;
                            case 33:
                                this.m00 = 0.0d;
                                this.m01 = affineTransform.m01;
                                this.m10 = affineTransform.m10;
                                this.m11 = 0.0d;
                                this.state = 5;
                                this.type = -1;
                                return;
                            case 34:
                            case 35:
                                this.m01 = this.m00 * affineTransform.m01;
                                this.m00 = 0.0d;
                                this.m10 = this.m11 * affineTransform.m10;
                                this.m11 = 0.0d;
                                this.state = i ^ 6;
                                this.type = -1;
                                return;
                            case 36:
                            case 37:
                                this.m00 = this.m01 * affineTransform.m10;
                                this.m01 = 0.0d;
                                this.m11 = this.m10 * affineTransform.m01;
                                this.m10 = 0.0d;
                                this.state = i ^ 6;
                                this.type = -1;
                                return;
                            case 38:
                            case 39:
                                double d = affineTransform.m01;
                                double d2 = affineTransform.m10;
                                double d3 = this.m00;
                                this.m00 = this.m01 * d2;
                                this.m01 = d3 * d;
                                double d4 = this.m10;
                                this.m10 = this.m11 * d2;
                                this.m11 = d4 * d;
                                this.type = -1;
                                return;
                            case 40:
                                this.m02 = affineTransform.m02;
                                this.m12 = affineTransform.m12;
                                break;
                            default:
                                double d5 = affineTransform.m00;
                                double d6 = affineTransform.m01;
                                double d7 = affineTransform.m02;
                                double d8 = affineTransform.m10;
                                double d9 = affineTransform.m11;
                                double d10 = affineTransform.m12;
                                switch (i) {
                                    case 1:
                                        this.m00 = d5;
                                        this.m01 = d6;
                                        this.m02 += d7;
                                        this.m10 = d8;
                                        this.m11 = d9;
                                        this.m12 += d10;
                                        this.state = i2 | 1;
                                        this.type = -1;
                                        return;
                                    case 2:
                                    case 3:
                                        double d11 = this.m00;
                                        this.m00 = d5 * d11;
                                        this.m01 = d6 * d11;
                                        this.m02 += d7 * d11;
                                        double d12 = this.m11;
                                        this.m10 = d8 * d12;
                                        this.m11 = d9 * d12;
                                        this.m12 += d10 * d12;
                                        updateState();
                                        return;
                                    case 4:
                                    case 5:
                                        double d13 = this.m01;
                                        this.m00 = d8 * d13;
                                        this.m01 = d9 * d13;
                                        this.m02 += d10 * d13;
                                        double d14 = this.m10;
                                        this.m10 = d5 * d14;
                                        this.m11 = d6 * d14;
                                        this.m12 += d7 * d14;
                                        updateState();
                                        return;
                                    case 6:
                                        this.state = i | i2;
                                        double d15 = this.m00;
                                        double d16 = this.m01;
                                        this.m00 = (d5 * d15) + (d8 * d16);
                                        this.m01 = (d6 * d15) + (d9 * d16);
                                        this.m02 += (d15 * d7) + (d10 * d16);
                                        double d17 = this.m10;
                                        double d18 = this.m11;
                                        this.m10 = (d5 * d17) + (d8 * d18);
                                        this.m11 = (d6 * d17) + (d9 * d18);
                                        this.m12 += (d7 * d17) + (d10 * d18);
                                        this.type = -1;
                                        return;
                                    case 7:
                                        double d152 = this.m00;
                                        double d162 = this.m01;
                                        this.m00 = (d5 * d152) + (d8 * d162);
                                        this.m01 = (d6 * d152) + (d9 * d162);
                                        this.m02 += (d152 * d7) + (d10 * d162);
                                        double d172 = this.m10;
                                        double d182 = this.m11;
                                        this.m10 = (d5 * d172) + (d8 * d182);
                                        this.m11 = (d6 * d172) + (d9 * d182);
                                        this.m12 += (d7 * d172) + (d10 * d182);
                                        this.type = -1;
                                        return;
                                    default:
                                        stateError();
                                        this.state = i | i2;
                                        double d1522 = this.m00;
                                        double d1622 = this.m01;
                                        this.m00 = (d5 * d1522) + (d8 * d1622);
                                        this.m01 = (d6 * d1522) + (d9 * d1622);
                                        this.m02 += (d1522 * d7) + (d10 * d1622);
                                        double d1722 = this.m10;
                                        double d1822 = this.m11;
                                        this.m10 = (d5 * d1722) + (d8 * d1822);
                                        this.m11 = (d6 * d1722) + (d9 * d1822);
                                        this.m12 += (d7 * d1722) + (d10 * d1822);
                                        this.type = -1;
                                        return;
                                }
                        }
                        this.m01 = affineTransform.m01;
                        this.m10 = affineTransform.m10;
                        this.m11 = 0.0d;
                        this.m00 = 0.0d;
                        this.state = i2;
                        this.type = affineTransform.type;
                        return;
                }
                this.m02 = affineTransform.m02;
                this.m12 = affineTransform.m12;
                this.state = i2;
                this.type = affineTransform.type;
                return;
            }
            this.m01 = affineTransform.m01;
            this.m10 = affineTransform.m10;
            this.m00 = affineTransform.m00;
            this.m11 = affineTransform.m11;
            this.m02 = affineTransform.m02;
            this.m12 = affineTransform.m12;
            this.state = i2;
            this.type = affineTransform.type;
            return;
        }
        this.m01 = affineTransform.m01;
        this.m10 = affineTransform.m10;
        this.m00 = affineTransform.m00;
        this.m11 = affineTransform.m11;
        this.state = i2;
        this.type = affineTransform.type;
    }

    public AffineTransform createInverse() throws NoninvertibleTransformException {
        switch (this.state) {
            case 0:
                return new AffineTransform();
            case 1:
                return new AffineTransform(1.0d, 0.0d, 0.0d, 1.0d, -this.m02, -this.m12, 1);
            case 2:
                double d = this.m00;
                if (d != 0.0d) {
                    double d2 = this.m11;
                    if (d2 != 0.0d) {
                        return new AffineTransform(1.0d / d, 0.0d, 0.0d, 1.0d / d2, 0.0d, 0.0d, 2);
                    }
                }
                throw new NoninvertibleTransformException("Determinant is 0");
            case 3:
                double d3 = this.m00;
                if (d3 != 0.0d) {
                    double d4 = this.m11;
                    if (d4 != 0.0d) {
                        return new AffineTransform(1.0d / d3, 0.0d, 0.0d, 1.0d / d4, (-this.m02) / d3, (-this.m12) / d4, 3);
                    }
                }
                throw new NoninvertibleTransformException("Determinant is 0");
            case 4:
                double d5 = this.m01;
                if (d5 != 0.0d) {
                    double d6 = this.m10;
                    if (d6 != 0.0d) {
                        return new AffineTransform(0.0d, 1.0d / d5, 1.0d / d6, 0.0d, 0.0d, 0.0d, 4);
                    }
                }
                throw new NoninvertibleTransformException("Determinant is 0");
            case 5:
                double d7 = this.m01;
                if (d7 != 0.0d) {
                    double d8 = this.m10;
                    if (d8 != 0.0d) {
                        return new AffineTransform(0.0d, 1.0d / d7, 1.0d / d8, 0.0d, (-this.m12) / d8, (-this.m02) / d7, 5);
                    }
                }
                throw new NoninvertibleTransformException("Determinant is 0");
            case 6:
                double d9 = (this.m00 * this.m11) - (this.m01 * this.m10);
                if (Math.abs(d9) > Double.MIN_VALUE) {
                    return new AffineTransform(this.m11 / d9, (-this.m10) / d9, (-this.m01) / d9, this.m00 / d9, 0.0d, 0.0d, 6);
                }
                throw new NoninvertibleTransformException("Determinant is " + d9);
            case 7:
                double d10 = (this.m00 * this.m11) - (this.m01 * this.m10);
                if (Math.abs(d10) <= Double.MIN_VALUE) {
                    throw new NoninvertibleTransformException("Determinant is " + d10);
                }
                double d11 = this.m11;
                double d12 = this.m10;
                double d13 = (-d12) / d10;
                double d14 = this.m01;
                double d15 = (-d14) / d10;
                double d16 = this.m00;
                double d17 = this.m12;
                double d18 = this.m02;
                return new AffineTransform(d11 / d10, d13, d15, d16 / d10, ((d14 * d17) - (d11 * d18)) / d10, ((d12 * d18) - (d16 * d17)) / d10, 7);
            default:
                stateError();
                return null;
        }
    }

    public Shape createTransformedShape(Shape shape) {
        if (shape == null) {
            return null;
        }
        return new Path2D.Double(shape, this);
    }

    public Point2D deltaTransform(Point2D point2D, Point2D point2D2) {
        if (point2D2 == null) {
            if (point2D instanceof Point2D.Double) {
                point2D2 = new Point2D.Double();
            } else {
                point2D2 = new Point2D.Float();
            }
        }
        double x = point2D.getX();
        double y = point2D.getY();
        switch (this.state) {
            case 0:
            case 1:
                point2D2.setLocation(x, y);
                return point2D2;
            case 2:
            case 3:
                point2D2.setLocation(x * this.m00, y * this.m11);
                return point2D2;
            case 4:
            case 5:
                point2D2.setLocation(y * this.m01, x * this.m10);
                return point2D2;
            case 6:
            case 7:
                point2D2.setLocation((this.m00 * x) + (this.m01 * y), (x * this.m10) + (y * this.m11));
                return point2D2;
            default:
                stateError();
                return null;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AffineTransform)) {
            return false;
        }
        AffineTransform affineTransform = (AffineTransform) obj;
        return this.m00 == affineTransform.m00 && this.m01 == affineTransform.m01 && this.m02 == affineTransform.m02 && this.m10 == affineTransform.m10 && this.m11 == affineTransform.m11 && this.m12 == affineTransform.m12;
    }

    public double getDeterminant() {
        switch (this.state) {
            case 0:
            case 1:
                return 1.0d;
            case 2:
            case 3:
                return this.m00 * this.m11;
            case 4:
            case 5:
                return -(this.m01 * this.m10);
            case 6:
            case 7:
                break;
            default:
                stateError();
                break;
        }
        return (this.m00 * this.m11) - (this.m01 * this.m10);
    }

    public void getMatrix(double[] dArr) {
        dArr[0] = this.m00;
        dArr[1] = this.m10;
        dArr[2] = this.m01;
        dArr[3] = this.m11;
        if (dArr.length > 5) {
            dArr[4] = this.m02;
            dArr[5] = this.m12;
        }
    }

    public double getScaleX() {
        return this.m00;
    }

    public double getScaleY() {
        return this.m11;
    }

    public double getShearX() {
        return this.m01;
    }

    public double getShearY() {
        return this.m10;
    }

    public int getState() {
        return this.state;
    }

    public double getTranslateX() {
        return this.m02;
    }

    public double getTranslateY() {
        return this.m12;
    }

    public int getType() {
        if (this.type == -1) {
            calculateType();
        }
        return this.type;
    }

    public int hashCode() {
        long doubleToLongBits = (((((((((Double.doubleToLongBits(this.m00) * 31) + Double.doubleToLongBits(this.m01)) * 31) + Double.doubleToLongBits(this.m02)) * 31) + Double.doubleToLongBits(this.m10)) * 31) + Double.doubleToLongBits(this.m11)) * 31) + Double.doubleToLongBits(this.m12);
        return ((int) doubleToLongBits) ^ ((int) (doubleToLongBits >> 32));
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x001f. Please report as an issue. */
    public Point2D inverseTransform(Point2D point2D, Point2D point2D2) throws NoninvertibleTransformException {
        if (point2D2 == null) {
            if (point2D instanceof Point2D.Double) {
                point2D2 = new Point2D.Double();
            } else {
                point2D2 = new Point2D.Float();
            }
        }
        double x = point2D.getX();
        double y = point2D.getY();
        switch (this.state) {
            case 0:
                point2D2.setLocation(x, y);
                return point2D2;
            case 1:
                point2D2.setLocation(x - this.m02, y - this.m12);
                return point2D2;
            case 3:
                x -= this.m02;
                y -= this.m12;
            case 2:
                double d = this.m00;
                if (d != 0.0d) {
                    double d2 = this.m11;
                    if (d2 != 0.0d) {
                        point2D2.setLocation(x / d, y / d2);
                        return point2D2;
                    }
                }
                throw new NoninvertibleTransformException("Determinant is 0");
            case 5:
                x -= this.m02;
                y -= this.m12;
            case 4:
                double d3 = this.m01;
                if (d3 != 0.0d) {
                    double d4 = this.m10;
                    if (d4 != 0.0d) {
                        point2D2.setLocation(y / d4, x / d3);
                        return point2D2;
                    }
                }
                throw new NoninvertibleTransformException("Determinant is 0");
            default:
                stateError();
            case 7:
                x -= this.m02;
                y -= this.m12;
            case 6:
                double d5 = (this.m00 * this.m11) - (this.m01 * this.m10);
                if (Math.abs(d5) > Double.MIN_VALUE) {
                    point2D2.setLocation(((this.m11 * x) - (this.m01 * y)) / d5, ((y * this.m00) - (x * this.m10)) / d5);
                    return point2D2;
                }
                throw new NoninvertibleTransformException("Determinant is " + d5);
        }
    }

    public void invert() throws NoninvertibleTransformException {
        switch (this.state) {
            case 0:
                return;
            case 1:
                this.m02 = -this.m02;
                this.m12 = -this.m12;
                return;
            case 2:
                double d = this.m00;
                double d2 = this.m11;
                if (d == 0.0d || d2 == 0.0d) {
                    throw new NoninvertibleTransformException("Determinant is 0");
                }
                this.m00 = 1.0d / d;
                this.m11 = 1.0d / d2;
                return;
            case 3:
                double d3 = this.m00;
                double d4 = this.m02;
                double d5 = this.m11;
                double d6 = this.m12;
                if (d3 == 0.0d || d5 == 0.0d) {
                    throw new NoninvertibleTransformException("Determinant is 0");
                }
                this.m00 = 1.0d / d3;
                this.m11 = 1.0d / d5;
                this.m02 = (-d4) / d3;
                this.m12 = (-d6) / d5;
                return;
            case 4:
                double d7 = this.m01;
                double d8 = this.m10;
                if (d7 == 0.0d || d8 == 0.0d) {
                    throw new NoninvertibleTransformException("Determinant is 0");
                }
                this.m10 = 1.0d / d7;
                this.m01 = 1.0d / d8;
                return;
            case 5:
                double d9 = this.m01;
                double d10 = this.m02;
                double d11 = this.m10;
                double d12 = this.m12;
                if (d9 == 0.0d || d11 == 0.0d) {
                    throw new NoninvertibleTransformException("Determinant is 0");
                }
                this.m10 = 1.0d / d9;
                this.m01 = 1.0d / d11;
                this.m02 = (-d12) / d11;
                this.m12 = (-d10) / d9;
                return;
            case 6:
                double d13 = this.m00;
                double d14 = this.m01;
                double d15 = this.m10;
                double d16 = this.m11;
                double d17 = (d13 * d16) - (d14 * d15);
                if (Math.abs(d17) <= Double.MIN_VALUE) {
                    throw new NoninvertibleTransformException("Determinant is " + d17);
                }
                this.m00 = d16 / d17;
                this.m10 = (-d15) / d17;
                this.m01 = (-d14) / d17;
                this.m11 = d13 / d17;
                return;
            case 7:
                double d18 = this.m00;
                double d19 = this.m01;
                double d20 = this.m02;
                double d21 = this.m10;
                double d22 = this.m11;
                double d23 = this.m12;
                double d24 = (d18 * d22) - (d19 * d21);
                if (Math.abs(d24) <= Double.MIN_VALUE) {
                    throw new NoninvertibleTransformException("Determinant is " + d24);
                }
                this.m00 = d22 / d24;
                this.m10 = (-d21) / d24;
                this.m01 = (-d19) / d24;
                this.m11 = d18 / d24;
                this.m02 = ((d19 * d23) - (d22 * d20)) / d24;
                this.m12 = ((d21 * d20) - (d18 * d23)) / d24;
                return;
            default:
                stateError();
                return;
        }
    }

    public boolean isIdentity() {
        return this.state == 0 || getType() == 0;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001f. Please report as an issue. */
    public void preConcatenate(AffineTransform affineTransform) {
        double d;
        double d2;
        double d3;
        int i = this.state;
        int i2 = affineTransform.state;
        int i3 = (i2 << 3) | i;
        switch (i3) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return;
            case 8:
            case 10:
            case 12:
            case 14:
                this.m02 = affineTransform.m02;
                this.m12 = affineTransform.m12;
                this.state = i | 1;
                this.type |= 1;
                return;
            case 9:
            case 11:
            case 13:
            case 15:
                this.m02 += affineTransform.m02;
                this.m12 += affineTransform.m12;
                return;
            case 16:
            case 17:
                this.state = i | 2;
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                break;
            default:
                switch (i3) {
                    case 36:
                    case 37:
                        i |= 2;
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                        this.state = i ^ 4;
                    case 38:
                    case 39:
                        double d4 = affineTransform.m01;
                        double d5 = affineTransform.m10;
                        double d6 = this.m00;
                        this.m00 = this.m10 * d4;
                        this.m10 = d6 * d5;
                        double d7 = this.m01;
                        this.m01 = this.m11 * d4;
                        this.m11 = d7 * d5;
                        double d8 = this.m02;
                        this.m02 = this.m12 * d4;
                        this.m12 = d8 * d5;
                        this.type = -1;
                        return;
                    default:
                        double d9 = affineTransform.m00;
                        double d10 = affineTransform.m01;
                        double d11 = affineTransform.m02;
                        double d12 = affineTransform.m10;
                        double d13 = affineTransform.m11;
                        double d14 = affineTransform.m12;
                        switch (i) {
                            case 0:
                                this.m02 = d11;
                                this.m12 = d14;
                                this.m00 = d9;
                                this.m10 = d12;
                                this.m01 = d10;
                                this.m11 = d13;
                                this.state = i | i2;
                                this.type = -1;
                                return;
                            case 1:
                                double d15 = this.m02;
                                double d16 = this.m12;
                                d11 += (d15 * d9) + (d16 * d10);
                                d14 += (d15 * d12) + (d16 * d13);
                                this.m02 = d11;
                                this.m12 = d14;
                                this.m00 = d9;
                                this.m10 = d12;
                                this.m01 = d10;
                                this.m11 = d13;
                                this.state = i | i2;
                                this.type = -1;
                                return;
                            case 3:
                                double d17 = this.m02;
                                double d18 = this.m12;
                                d11 += (d17 * d9) + (d18 * d10);
                                d14 += (d17 * d12) + (d18 * d13);
                            case 2:
                                this.m02 = d11;
                                this.m12 = d14;
                                double d19 = this.m00;
                                this.m00 = d19 * d9;
                                this.m10 = d19 * d12;
                                double d20 = this.m11;
                                this.m01 = d10 * d20;
                                this.m11 = d20 * d13;
                                updateState();
                                return;
                            case 5:
                                double d21 = this.m02;
                                double d22 = this.m12;
                                d11 += (d21 * d9) + (d22 * d10);
                                d14 += (d21 * d12) + (d22 * d13);
                            case 4:
                                this.m02 = d11;
                                this.m12 = d14;
                                double d23 = this.m10;
                                this.m00 = d10 * d23;
                                this.m10 = d23 * d13;
                                double d24 = this.m01;
                                this.m01 = d24 * d9;
                                this.m11 = d24 * d12;
                                updateState();
                                return;
                            case 6:
                                d = d14;
                                d2 = d9;
                                this.m02 = d11;
                                this.m12 = d;
                                double d25 = this.m00;
                                double d26 = this.m10;
                                this.m00 = (d25 * d2) + (d26 * d10);
                                this.m10 = (d25 * d12) + (d26 * d13);
                                double d27 = this.m01;
                                double d28 = this.m11;
                                this.m01 = (d27 * d2) + (d10 * d28);
                                this.m11 = (d27 * d12) + (d28 * d13);
                                updateState();
                                return;
                            case 7:
                                d3 = d14;
                                d2 = d9;
                                double d29 = this.m02;
                                double d30 = this.m12;
                                d11 += (d29 * d2) + (d30 * d10);
                                d = d3 + (d29 * d12) + (d30 * d13);
                                this.m02 = d11;
                                this.m12 = d;
                                double d252 = this.m00;
                                double d262 = this.m10;
                                this.m00 = (d252 * d2) + (d262 * d10);
                                this.m10 = (d252 * d12) + (d262 * d13);
                                double d272 = this.m01;
                                double d282 = this.m11;
                                this.m01 = (d272 * d2) + (d10 * d282);
                                this.m11 = (d272 * d12) + (d282 * d13);
                                updateState();
                                return;
                            default:
                                d3 = d14;
                                d2 = d9;
                                stateError();
                                double d292 = this.m02;
                                double d302 = this.m12;
                                d11 += (d292 * d2) + (d302 * d10);
                                d = d3 + (d292 * d12) + (d302 * d13);
                                this.m02 = d11;
                                this.m12 = d;
                                double d2522 = this.m00;
                                double d2622 = this.m10;
                                this.m00 = (d2522 * d2) + (d2622 * d10);
                                this.m10 = (d2522 * d12) + (d2622 * d13);
                                double d2722 = this.m01;
                                double d2822 = this.m11;
                                this.m01 = (d2722 * d2) + (d10 * d2822);
                                this.m11 = (d2722 * d12) + (d2822 * d13);
                                updateState();
                                return;
                        }
                }
        }
        double d31 = affineTransform.m00;
        double d32 = affineTransform.m11;
        if ((i & 4) != 0) {
            this.m01 *= d31;
            this.m10 *= d32;
            if ((i & 2) != 0) {
                this.m00 *= d31;
                this.m11 *= d32;
            }
        } else {
            this.m00 *= d31;
            this.m11 *= d32;
        }
        if ((i & 1) != 0) {
            this.m02 *= d31;
            this.m12 *= d32;
        }
        this.type = -1;
    }

    public void quadrantRotate(int i) {
        int i2 = i & 3;
        if (i2 == 1) {
            rotate90();
        } else if (i2 == 2) {
            rotate180();
        } else {
            if (i2 != 3) {
                return;
            }
            rotate270();
        }
    }

    public void rotate(double d) {
        double sin = Math.sin(d);
        if (sin == 1.0d) {
            rotate90();
            return;
        }
        if (sin == -1.0d) {
            rotate270();
            return;
        }
        double cos = Math.cos(d);
        if (cos == -1.0d) {
            rotate180();
            return;
        }
        if (cos != 1.0d) {
            double d2 = this.m00;
            double d3 = this.m01;
            this.m00 = (cos * d2) + (sin * d3);
            double d4 = -sin;
            this.m01 = (d2 * d4) + (d3 * cos);
            double d5 = this.m10;
            double d6 = this.m11;
            this.m10 = (cos * d5) + (sin * d6);
            this.m11 = (d4 * d5) + (cos * d6);
            updateState();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
    public void scale(double d, double d2) {
        int i = this.state;
        switch (i) {
            case 0:
            case 1:
                this.m00 = d;
                this.m11 = d2;
                if (d == 1.0d && d2 == 1.0d) {
                    return;
                }
                this.state = i | 2;
                this.type = -1;
                return;
            case 2:
            case 3:
                double d3 = this.m00 * d;
                this.m00 = d3;
                double d4 = this.m11 * d2;
                this.m11 = d4;
                if (d3 != 1.0d || d4 != 1.0d) {
                    this.type = -1;
                    return;
                }
                int i2 = i & 1;
                this.state = i2;
                this.type = i2 != 0 ? 1 : 0;
                return;
            default:
                stateError();
            case 6:
            case 7:
                this.m00 *= d;
                this.m11 *= d2;
            case 4:
            case 5:
                double d5 = this.m01 * d2;
                this.m01 = d5;
                double d6 = this.m10 * d;
                this.m10 = d6;
                if (d5 == 0.0d && d6 == 0.0d) {
                    int i3 = i & 1;
                    if (this.m00 == 1.0d && this.m11 == 1.0d) {
                        this.type = i3 != 0 ? 1 : 0;
                    } else {
                        i3 |= 2;
                        this.type = -1;
                    }
                    this.state = i3;
                    return;
                }
                return;
        }
    }

    public void setToIdentity() {
        this.m11 = 1.0d;
        this.m00 = 1.0d;
        this.m12 = 0.0d;
        this.m02 = 0.0d;
        this.m01 = 0.0d;
        this.m10 = 0.0d;
        this.state = 0;
        this.type = 0;
    }

    public void setToQuadrantRotation(int i) {
        int i2 = i & 3;
        if (i2 == 0) {
            this.m00 = 1.0d;
            this.m10 = 0.0d;
            this.m01 = 0.0d;
            this.m11 = 1.0d;
            this.m02 = 0.0d;
            this.m12 = 0.0d;
            this.state = 0;
            this.type = 0;
            return;
        }
        if (i2 == 1) {
            this.m00 = 0.0d;
            this.m10 = 1.0d;
            this.m01 = -1.0d;
            this.m11 = 0.0d;
            this.m02 = 0.0d;
            this.m12 = 0.0d;
            this.state = 4;
            this.type = 8;
            return;
        }
        if (i2 == 2) {
            this.m00 = -1.0d;
            this.m10 = 0.0d;
            this.m01 = 0.0d;
            this.m11 = -1.0d;
            this.m02 = 0.0d;
            this.m12 = 0.0d;
            this.state = 2;
            this.type = 8;
            return;
        }
        if (i2 != 3) {
            return;
        }
        this.m00 = 0.0d;
        this.m10 = -1.0d;
        this.m01 = 1.0d;
        this.m11 = 0.0d;
        this.m02 = 0.0d;
        this.m12 = 0.0d;
        this.state = 4;
        this.type = 8;
    }

    public void setToRotation(double d) {
        double d2;
        double sin = Math.sin(d);
        if (sin != 1.0d && sin != -1.0d) {
            d2 = Math.cos(d);
            if (d2 == -1.0d) {
                this.state = 2;
                this.type = 8;
            } else if (d2 == 1.0d) {
                this.state = 0;
                this.type = 0;
            } else {
                this.state = 6;
                this.type = 16;
            }
            sin = 0.0d;
        } else {
            this.state = 4;
            this.type = 8;
            d2 = 0.0d;
        }
        this.m00 = d2;
        this.m10 = sin;
        this.m01 = -sin;
        this.m11 = d2;
        this.m02 = 0.0d;
        this.m12 = 0.0d;
    }

    public void setToScale(double d, double d2) {
        this.m00 = d;
        this.m10 = 0.0d;
        this.m01 = 0.0d;
        this.m11 = d2;
        this.m02 = 0.0d;
        this.m12 = 0.0d;
        if (d == 1.0d && d2 == 1.0d) {
            this.state = 0;
            this.type = 0;
        } else {
            this.state = 2;
            this.type = -1;
        }
    }

    public void setToShear(double d, double d2) {
        this.m00 = 1.0d;
        this.m01 = d;
        this.m10 = d2;
        this.m11 = 1.0d;
        this.m02 = 0.0d;
        this.m12 = 0.0d;
        if (d == 0.0d && d2 == 0.0d) {
            this.state = 0;
            this.type = 0;
        } else {
            this.state = 6;
            this.type = -1;
        }
    }

    public void setToTranslation(double d, double d2) {
        this.m00 = 1.0d;
        this.m10 = 0.0d;
        this.m01 = 0.0d;
        this.m11 = 1.0d;
        this.m02 = d;
        this.m12 = d2;
        if (d == 0.0d && d2 == 0.0d) {
            this.state = 0;
            this.type = 0;
        } else {
            this.state = 1;
            this.type = 1;
        }
    }

    public void setTransform(AffineTransform affineTransform) {
        this.m00 = affineTransform.m00;
        this.m10 = affineTransform.m10;
        this.m01 = affineTransform.m01;
        this.m11 = affineTransform.m11;
        this.m02 = affineTransform.m02;
        this.m12 = affineTransform.m12;
        this.state = affineTransform.state;
        this.type = affineTransform.type;
    }

    public void shear(double d, double d2) {
        int i = this.state;
        switch (i) {
            case 0:
            case 1:
                this.m01 = d;
                this.m10 = d2;
                if (d == 0.0d && d2 == 0.0d) {
                    return;
                }
                this.state = i | 2 | 4;
                this.type = -1;
                return;
            case 2:
            case 3:
                double d3 = this.m00 * d;
                this.m01 = d3;
                double d4 = this.m11 * d2;
                this.m10 = d4;
                if (d3 != 0.0d || d4 != 0.0d) {
                    this.state = i | 4;
                }
                this.type = -1;
                return;
            case 4:
            case 5:
                double d5 = this.m01 * d2;
                this.m00 = d5;
                double d6 = this.m10 * d;
                this.m11 = d6;
                if (d5 != 0.0d || d6 != 0.0d) {
                    this.state = i | 2;
                }
                this.type = -1;
                return;
            case 6:
            case 7:
                double d7 = this.m00;
                double d8 = this.m01;
                this.m00 = (d8 * d2) + d7;
                this.m01 = (d7 * d) + d8;
                double d9 = this.m10;
                double d10 = this.m11;
                this.m10 = (d2 * d10) + d9;
                this.m11 = (d9 * d) + d10;
                updateState();
                return;
            default:
                stateError();
                return;
        }
    }

    public String toString() {
        return "AffineTransform[[" + _matround(this.m00) + ", " + _matround(this.m01) + ", " + _matround(this.m02) + "], [" + _matround(this.m10) + ", " + _matround(this.m11) + ", " + _matround(this.m12) + "]]";
    }

    public Point2D transform(Point2D point2D, Point2D point2D2) {
        if (point2D2 == null) {
            if (point2D instanceof Point2D.Double) {
                point2D2 = new Point2D.Double();
            } else {
                point2D2 = new Point2D.Float();
            }
        }
        double x = point2D.getX();
        double y = point2D.getY();
        switch (this.state) {
            case 0:
                point2D2.setLocation(x, y);
                return point2D2;
            case 1:
                point2D2.setLocation(x + this.m02, y + this.m12);
                return point2D2;
            case 2:
                point2D2.setLocation(x * this.m00, y * this.m11);
                return point2D2;
            case 3:
                point2D2.setLocation((x * this.m00) + this.m02, (y * this.m11) + this.m12);
                return point2D2;
            case 4:
                point2D2.setLocation(y * this.m01, x * this.m10);
                return point2D2;
            case 5:
                point2D2.setLocation((y * this.m01) + this.m02, (x * this.m10) + this.m12);
                return point2D2;
            case 6:
                point2D2.setLocation((this.m00 * x) + (this.m01 * y), (x * this.m10) + (y * this.m11));
                return point2D2;
            case 7:
                point2D2.setLocation((this.m00 * x) + (this.m01 * y) + this.m02, (x * this.m10) + (y * this.m11) + this.m12);
                return point2D2;
            default:
                stateError();
                return null;
        }
    }

    public void translate(double d, double d2) {
        switch (this.state) {
            case 0:
                this.m02 = d;
                this.m12 = d2;
                if (d == 0.0d && d2 == 0.0d) {
                    return;
                }
                this.state = 1;
                this.type = 1;
                return;
            case 1:
                double d3 = d + this.m02;
                this.m02 = d3;
                double d4 = d2 + this.m12;
                this.m12 = d4;
                if (d3 == 0.0d && d4 == 0.0d) {
                    this.state = 0;
                    this.type = 0;
                    return;
                }
                return;
            case 2:
                double d5 = d * this.m00;
                this.m02 = d5;
                double d6 = d2 * this.m11;
                this.m12 = d6;
                if (d5 == 0.0d && d6 == 0.0d) {
                    return;
                }
                this.state = 3;
                this.type |= 1;
                return;
            case 3:
                double d7 = (d * this.m00) + this.m02;
                this.m02 = d7;
                double d8 = (d2 * this.m11) + this.m12;
                this.m12 = d8;
                if (d7 == 0.0d && d8 == 0.0d) {
                    this.state = 2;
                    int i = this.type;
                    if (i != -1) {
                        this.type = i - 1;
                        return;
                    }
                    return;
                }
                return;
            case 4:
                double d9 = d2 * this.m01;
                this.m02 = d9;
                double d10 = d * this.m10;
                this.m12 = d10;
                if (d9 == 0.0d && d10 == 0.0d) {
                    return;
                }
                this.state = 5;
                this.type |= 1;
                return;
            case 5:
                double d11 = (d2 * this.m01) + this.m02;
                this.m02 = d11;
                double d12 = (d * this.m10) + this.m12;
                this.m12 = d12;
                if (d11 == 0.0d && d12 == 0.0d) {
                    this.state = 4;
                    int i2 = this.type;
                    if (i2 != -1) {
                        this.type = i2 - 1;
                        return;
                    }
                    return;
                }
                return;
            case 6:
                double d13 = (this.m00 * d) + (this.m01 * d2);
                this.m02 = d13;
                double d14 = (d * this.m10) + (d2 * this.m11);
                this.m12 = d14;
                if (d13 == 0.0d && d14 == 0.0d) {
                    return;
                }
                this.state = 7;
                this.type |= 1;
                return;
            case 7:
                double d15 = (this.m00 * d) + (this.m01 * d2) + this.m02;
                this.m02 = d15;
                double d16 = (d * this.m10) + (d2 * this.m11) + this.m12;
                this.m12 = d16;
                if (d15 == 0.0d && d16 == 0.0d) {
                    this.state = 6;
                    int i3 = this.type;
                    if (i3 != -1) {
                        this.type = i3 - 1;
                        return;
                    }
                    return;
                }
                return;
            default:
                stateError();
                return;
        }
    }

    public void updateState() {
        if (this.m01 == 0.0d && this.m10 == 0.0d) {
            if (this.m00 == 1.0d && this.m11 == 1.0d) {
                if (this.m02 == 0.0d && this.m12 == 0.0d) {
                    this.state = 0;
                    this.type = 0;
                    return;
                } else {
                    this.state = 1;
                    this.type = 1;
                    return;
                }
            }
            if (this.m02 == 0.0d && this.m12 == 0.0d) {
                this.state = 2;
                this.type = -1;
                return;
            } else {
                this.state = 3;
                this.type = -1;
                return;
            }
        }
        if (this.m00 == 0.0d && this.m11 == 0.0d) {
            if (this.m02 == 0.0d && this.m12 == 0.0d) {
                this.state = 4;
                this.type = -1;
                return;
            } else {
                this.state = 5;
                this.type = -1;
                return;
            }
        }
        if (this.m02 == 0.0d && this.m12 == 0.0d) {
            this.state = 6;
            this.type = -1;
        } else {
            this.state = 7;
            this.type = -1;
        }
    }

    public static AffineTransform getQuadrantRotateInstance(int i, double d, double d2) {
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.setToQuadrantRotation(i, d, d2);
        return affineTransform;
    }

    public static AffineTransform getRotateInstance(double d, double d2, double d3) {
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.setToRotation(d, d2, d3);
        return affineTransform;
    }

    public void quadrantRotate(int i, double d, double d2) {
        int i2 = i & 3;
        if (i2 != 0) {
            if (i2 == 1) {
                double d3 = this.m02;
                double d4 = this.m00;
                double d5 = this.m01;
                this.m02 = d3 + ((d4 - d5) * d) + ((d5 + d4) * d2);
                double d6 = this.m12;
                double d7 = this.m10;
                double d8 = this.m11;
                this.m12 = d6 + (d * (d7 - d8)) + (d2 * (d8 + d7));
                rotate90();
            } else if (i2 == 2) {
                double d9 = this.m02;
                double d10 = this.m00;
                double d11 = this.m01;
                this.m02 = d9 + ((d10 + d10) * d) + ((d11 + d11) * d2);
                double d12 = this.m12;
                double d13 = this.m10;
                double d14 = d * (d13 + d13);
                double d15 = this.m11;
                this.m12 = d12 + d14 + (d2 * (d15 + d15));
                rotate180();
            } else if (i2 == 3) {
                double d16 = this.m02;
                double d17 = this.m00;
                double d18 = this.m01;
                this.m02 = d16 + ((d17 + d18) * d) + ((d18 - d17) * d2);
                double d19 = this.m12;
                double d20 = this.m10;
                double d21 = this.m11;
                this.m12 = d19 + (d * (d20 + d21)) + (d2 * (d21 - d20));
                rotate270();
            }
            if (this.m02 == 0.0d && this.m12 == 0.0d) {
                this.state &= -2;
            } else {
                this.state |= 1;
            }
        }
    }

    public static AffineTransform getRotateInstance(double d, double d2) {
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.setToRotation(d, d2);
        return affineTransform;
    }

    public static AffineTransform getRotateInstance(double d, double d2, double d3, double d4) {
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.setToRotation(d, d2, d3, d4);
        return affineTransform;
    }

    public void setTransform(double d, double d2, double d3, double d4, double d5, double d6) {
        this.m00 = d;
        this.m10 = d2;
        this.m01 = d3;
        this.m11 = d4;
        this.m02 = d5;
        this.m12 = d6;
        updateState();
    }

    public AffineTransform() {
        this.m11 = 1.0d;
        this.m00 = 1.0d;
    }

    public AffineTransform(AffineTransform affineTransform) {
        this.m00 = affineTransform.m00;
        this.m10 = affineTransform.m10;
        this.m01 = affineTransform.m01;
        this.m11 = affineTransform.m11;
        this.m02 = affineTransform.m02;
        this.m12 = affineTransform.m12;
        this.state = affineTransform.state;
        this.type = affineTransform.type;
    }

    public void deltaTransform(double[] dArr, int i, double[] dArr2, int i2, int i3) {
        int i4 = i;
        int i5 = i2;
        if (dArr2 == dArr && i5 > i4) {
            int i6 = i3 * 2;
            if (i5 < i4 + i6) {
                System.arraycopy(dArr, i4, dArr2, i5, i6);
                i4 = i5;
            }
        }
        switch (this.state) {
            case 0:
            case 1:
                if (dArr == dArr2 && i4 == i5) {
                    return;
                }
                System.arraycopy(dArr, i4, dArr2, i5, i3 * 2);
                return;
            case 2:
            case 3:
                double d = this.m00;
                double d2 = this.m11;
                int i7 = i3;
                while (true) {
                    i7--;
                    if (i7 < 0) {
                        return;
                    }
                    int i8 = i5 + 1;
                    int i9 = i4 + 1;
                    dArr2[i5] = dArr[i4] * d;
                    i5 = i8 + 1;
                    i4 = i9 + 1;
                    dArr2[i8] = dArr[i9] * d2;
                }
            case 4:
            case 5:
                double d3 = this.m01;
                double d4 = this.m10;
                int i10 = i3;
                while (true) {
                    i10--;
                    if (i10 < 0) {
                        return;
                    }
                    int i11 = i4 + 1;
                    double d5 = dArr[i4];
                    int i12 = i5 + 1;
                    dArr2[i5] = dArr[i11] * d3;
                    i5 = i12 + 1;
                    dArr2[i12] = d5 * d4;
                    i4 = i11 + 1;
                }
            case 6:
            case 7:
                double d6 = this.m00;
                double d7 = this.m01;
                double d8 = this.m10;
                double d9 = this.m11;
                int i13 = i3;
                while (true) {
                    i13--;
                    if (i13 < 0) {
                        return;
                    }
                    int i14 = i4 + 1;
                    double d10 = dArr[i4];
                    i4 = i14 + 1;
                    double d11 = dArr[i14];
                    int i15 = i5 + 1;
                    dArr2[i5] = (d10 * d6) + (d11 * d7);
                    i5 = i15 + 1;
                    dArr2[i15] = (d10 * d8) + (d11 * d9);
                }
            default:
                stateError();
                return;
        }
    }

    public void rotate(double d, double d2, double d3) {
        translate(d2, d3);
        rotate(d);
        translate(-d2, -d3);
    }

    public void transform(Point2D[] point2DArr, int i, Point2D[] point2DArr2, int i2, int i3) {
        Point2D point2D;
        int i4 = this.state;
        int i5 = i;
        int i6 = i2;
        int i7 = i3;
        while (true) {
            i7--;
            if (i7 < 0) {
                return;
            }
            int i8 = i5 + 1;
            Point2D point2D2 = point2DArr[i5];
            double x = point2D2.getX();
            double y = point2D2.getY();
            int i9 = i6 + 1;
            Point2D point2D3 = point2DArr2[i6];
            if (point2D3 == null) {
                if (point2D2 instanceof Point2D.Double) {
                    point2D = new Point2D.Double();
                } else {
                    point2D = new Point2D.Float();
                }
                point2D3 = point2D;
                point2DArr2[i9 - 1] = point2D3;
            }
            switch (i4) {
                case 0:
                    point2D3.setLocation(x, y);
                    break;
                case 1:
                    point2D3.setLocation(x + this.m02, y + this.m12);
                    break;
                case 2:
                    point2D3.setLocation(x * this.m00, y * this.m11);
                    break;
                case 3:
                    point2D3.setLocation((x * this.m00) + this.m02, (y * this.m11) + this.m12);
                    break;
                case 4:
                    point2D3.setLocation(y * this.m01, x * this.m10);
                    break;
                case 5:
                    point2D3.setLocation((y * this.m01) + this.m02, (x * this.m10) + this.m12);
                    break;
                case 6:
                    point2D3.setLocation((this.m00 * x) + (this.m01 * y), (x * this.m10) + (y * this.m11));
                    break;
                case 7:
                    point2D3.setLocation((this.m00 * x) + (this.m01 * y) + this.m02, (x * this.m10) + (y * this.m11) + this.m12);
                    break;
                default:
                    stateError();
                    return;
            }
            i5 = i8;
            i6 = i9;
        }
    }

    public void setToRotation(double d, double d2, double d3) {
        setToRotation(d);
        double d4 = this.m10;
        double d5 = 1.0d - this.m00;
        double d6 = (d2 * d5) + (d3 * d4);
        this.m02 = d6;
        double d7 = (d3 * d5) - (d2 * d4);
        this.m12 = d7;
        if (d6 == 0.0d && d7 == 0.0d) {
            return;
        }
        this.state |= 1;
        this.type |= 1;
    }

    public void rotate(double d, double d2) {
        if (d2 == 0.0d) {
            if (d < 0.0d) {
                rotate180();
                return;
            }
            return;
        }
        if (d == 0.0d) {
            if (d2 > 0.0d) {
                rotate90();
                return;
            } else {
                rotate270();
                return;
            }
        }
        double sqrt = Math.sqrt((d * d) + (d2 * d2));
        double d3 = d2 / sqrt;
        double d4 = d / sqrt;
        double d5 = this.m00;
        double d6 = this.m01;
        this.m00 = (d4 * d5) + (d3 * d6);
        double d7 = -d3;
        this.m01 = (d5 * d7) + (d6 * d4);
        double d8 = this.m10;
        double d9 = this.m11;
        this.m10 = (d4 * d8) + (d3 * d9);
        this.m11 = (d7 * d8) + (d4 * d9);
        updateState();
    }

    public AffineTransform(float f, float f2, float f3, float f4, float f5, float f6) {
        this.m00 = f;
        this.m10 = f2;
        this.m01 = f3;
        this.m11 = f4;
        this.m02 = f5;
        this.m12 = f6;
        updateState();
    }

    public void setToRotation(double d, double d2) {
        double d3;
        if (d2 == 0.0d) {
            if (d < 0.0d) {
                this.state = 2;
                this.type = 8;
                d3 = 0.0d;
            } else {
                this.state = 0;
                this.type = 0;
                d3 = 0.0d;
                r4 = 1.0d;
            }
        } else if (d == 0.0d) {
            r4 = d2 > 0.0d ? 1.0d : -1.0d;
            this.state = 4;
            this.type = 8;
            d3 = r4;
            r4 = 0.0d;
        } else {
            double sqrt = Math.sqrt((d * d) + (d2 * d2));
            r4 = d / sqrt;
            d3 = d2 / sqrt;
            this.state = 6;
            this.type = 16;
        }
        this.m00 = r4;
        this.m10 = d3;
        this.m01 = -d3;
        this.m11 = r4;
        this.m02 = 0.0d;
        this.m12 = 0.0d;
    }

    public void inverseTransform(double[] dArr, int i, double[] dArr2, int i2, int i3) throws NoninvertibleTransformException {
        int i4 = i;
        if (dArr2 == dArr && i2 > i4) {
            int i5 = i3 * 2;
            if (i2 < i4 + i5) {
                System.arraycopy(dArr, i4, dArr2, i2, i5);
                i4 = i2;
            }
        }
        switch (this.state) {
            case 0:
                int i6 = i4;
                if (dArr == dArr2 && i6 == i2) {
                    return;
                }
                System.arraycopy(dArr, i6, dArr2, i2, i3 * 2);
                return;
            case 1:
                double d = this.m02;
                double d2 = this.m12;
                int i7 = i4;
                int i8 = i2;
                int i9 = i3;
                while (true) {
                    i9--;
                    if (i9 < 0) {
                        return;
                    }
                    int i10 = i8 + 1;
                    int i11 = i7 + 1;
                    dArr2[i8] = dArr[i7] - d;
                    i8 = i10 + 1;
                    i7 = i11 + 1;
                    dArr2[i10] = dArr[i11] - d2;
                }
            case 2:
                int i12 = i4;
                double d3 = this.m00;
                double d4 = this.m11;
                if (d3 == 0.0d || d4 == 0.0d) {
                    throw new NoninvertibleTransformException("Determinant is 0");
                }
                int i13 = i12;
                int i14 = i2;
                int i15 = i3;
                while (true) {
                    i15--;
                    if (i15 < 0) {
                        return;
                    }
                    int i16 = i14 + 1;
                    int i17 = i13 + 1;
                    dArr2[i14] = dArr[i13] / d3;
                    i14 = i16 + 1;
                    i13 = i17 + 1;
                    dArr2[i16] = dArr[i17] / d4;
                }
                break;
            case 3:
                int i18 = i4;
                double d5 = this.m00;
                double d6 = this.m02;
                double d7 = this.m11;
                double d8 = this.m12;
                if (d5 == 0.0d || d7 == 0.0d) {
                    throw new NoninvertibleTransformException("Determinant is 0");
                }
                int i19 = i18;
                int i20 = i2;
                int i21 = i3;
                while (true) {
                    i21--;
                    if (i21 < 0) {
                        return;
                    }
                    int i22 = i20 + 1;
                    int i23 = i19 + 1;
                    dArr2[i20] = (dArr[i19] - d6) / d5;
                    i20 = i22 + 1;
                    i19 = i23 + 1;
                    dArr2[i22] = (dArr[i23] - d8) / d7;
                }
                break;
            case 4:
                int i24 = i4;
                double d9 = this.m01;
                double d10 = this.m10;
                if (d9 == 0.0d || d10 == 0.0d) {
                    throw new NoninvertibleTransformException("Determinant is 0");
                }
                int i25 = i24;
                int i26 = i2;
                int i27 = i3;
                while (true) {
                    i27--;
                    if (i27 < 0) {
                        return;
                    }
                    int i28 = i25 + 1;
                    double d11 = dArr[i25];
                    int i29 = i26 + 1;
                    dArr2[i26] = dArr[i28] / d10;
                    i26 = i29 + 1;
                    dArr2[i29] = d11 / d9;
                    i25 = i28 + 1;
                }
                break;
            case 5:
                int i30 = i4;
                double d12 = this.m01;
                double d13 = this.m02;
                double d14 = this.m10;
                double d15 = this.m12;
                if (d12 == 0.0d || d14 == 0.0d) {
                    throw new NoninvertibleTransformException("Determinant is 0");
                }
                int i31 = i30;
                int i32 = i2;
                int i33 = i3;
                while (true) {
                    i33--;
                    if (i33 < 0) {
                        return;
                    }
                    int i34 = i31 + 1;
                    double d16 = dArr[i31] - d13;
                    int i35 = i32 + 1;
                    dArr2[i32] = (dArr[i34] - d15) / d14;
                    i32 = i35 + 1;
                    dArr2[i35] = d16 / d12;
                    i31 = i34 + 1;
                }
                break;
            case 6:
                int i36 = i4;
                double d17 = this.m00;
                double d18 = this.m01;
                double d19 = this.m10;
                double d20 = this.m11;
                double d21 = (d17 * d20) - (d18 * d19);
                if (Math.abs(d21) <= Double.MIN_VALUE) {
                    throw new NoninvertibleTransformException("Determinant is " + d21);
                }
                int i37 = i36;
                int i38 = i2;
                int i39 = i3;
                while (true) {
                    i39--;
                    if (i39 < 0) {
                        return;
                    }
                    int i40 = i37 + 1;
                    double d22 = dArr[i37];
                    i37 = i40 + 1;
                    double d23 = dArr[i40];
                    int i41 = i38 + 1;
                    dArr2[i38] = ((d22 * d20) - (d23 * d18)) / d21;
                    i38 = i41 + 1;
                    dArr2[i41] = ((d23 * d17) - (d22 * d19)) / d21;
                }
            case 7:
                double d24 = this.m00;
                double d25 = this.m01;
                double d26 = this.m02;
                double d27 = this.m10;
                double d28 = this.m11;
                int i42 = i4;
                double d29 = this.m12;
                double d30 = (d24 * d28) - (d25 * d27);
                if (Math.abs(d30) <= Double.MIN_VALUE) {
                    throw new NoninvertibleTransformException("Determinant is " + d30);
                }
                int i43 = i42;
                int i44 = i2;
                int i45 = i3;
                while (true) {
                    i45--;
                    if (i45 < 0) {
                        return;
                    }
                    int i46 = i43 + 1;
                    double d31 = dArr[i43] - d26;
                    i43 = i46 + 1;
                    double d32 = dArr[i46] - d29;
                    int i47 = i44 + 1;
                    dArr2[i44] = ((d31 * d28) - (d32 * d25)) / d30;
                    i44 = i47 + 1;
                    dArr2[i47] = ((d32 * d24) - (d31 * d27)) / d30;
                    d29 = d29;
                }
            default:
                stateError();
                return;
        }
    }

    public AffineTransform(float[] fArr) {
        this.m00 = fArr[0];
        this.m10 = fArr[1];
        this.m01 = fArr[2];
        this.m11 = fArr[3];
        if (fArr.length > 5) {
            this.m02 = fArr[4];
            this.m12 = fArr[5];
        }
        updateState();
    }

    public void rotate(double d, double d2, double d3, double d4) {
        translate(d3, d4);
        rotate(d, d2);
        translate(-d3, -d4);
    }

    public void setToQuadrantRotation(int i, double d, double d2) {
        int i2 = i & 3;
        if (i2 == 0) {
            this.m00 = 1.0d;
            this.m10 = 0.0d;
            this.m01 = 0.0d;
            this.m11 = 1.0d;
            this.m02 = 0.0d;
            this.m12 = 0.0d;
            this.state = 0;
            this.type = 0;
            return;
        }
        if (i2 == 1) {
            this.m00 = 0.0d;
            this.m10 = 1.0d;
            this.m01 = -1.0d;
            this.m11 = 0.0d;
            double d3 = d + d2;
            this.m02 = d3;
            double d4 = d2 - d;
            this.m12 = d4;
            if (d3 == 0.0d && d4 == 0.0d) {
                this.state = 4;
                this.type = 8;
                return;
            } else {
                this.state = 5;
                this.type = 9;
                return;
            }
        }
        if (i2 == 2) {
            this.m00 = -1.0d;
            this.m10 = 0.0d;
            this.m01 = 0.0d;
            this.m11 = -1.0d;
            double d5 = d + d;
            this.m02 = d5;
            double d6 = d2 + d2;
            this.m12 = d6;
            if (d5 == 0.0d && d6 == 0.0d) {
                this.state = 2;
                this.type = 8;
                return;
            } else {
                this.state = 3;
                this.type = 9;
                return;
            }
        }
        if (i2 != 3) {
            return;
        }
        this.m00 = 0.0d;
        this.m10 = -1.0d;
        this.m01 = 1.0d;
        this.m11 = 0.0d;
        double d7 = d - d2;
        this.m02 = d7;
        double d8 = d2 + d;
        this.m12 = d8;
        if (d7 == 0.0d && d8 == 0.0d) {
            this.state = 4;
            this.type = 8;
        } else {
            this.state = 5;
            this.type = 9;
        }
    }

    public void transform(float[] fArr, int i, float[] fArr2, int i2, int i3) {
        float[] fArr3 = fArr;
        int i4 = i;
        int i5 = i2;
        if (fArr2 == fArr3 && i5 > i4) {
            int i6 = i3 * 2;
            if (i5 < i4 + i6) {
                System.arraycopy(fArr3, i4, fArr2, i5, i6);
                i4 = i5;
            }
        }
        switch (this.state) {
            case 0:
                if (fArr3 == fArr2 && i4 == i5) {
                    return;
                }
                System.arraycopy(fArr3, i4, fArr2, i5, i3 * 2);
                return;
            case 1:
                double d = this.m02;
                double d2 = this.m12;
                int i7 = i4;
                int i8 = i3;
                while (true) {
                    i8--;
                    if (i8 < 0) {
                        return;
                    }
                    int i9 = i5 + 1;
                    fArr2[i5] = (float) (fArr3[i7] + d);
                    i5 = i9 + 1;
                    i7 = i7 + 1 + 1;
                    fArr2[i9] = (float) (fArr3[r10] + d2);
                }
            case 2:
                double d3 = this.m00;
                double d4 = this.m11;
                int i10 = i4;
                int i11 = i3;
                while (true) {
                    i11--;
                    if (i11 < 0) {
                        return;
                    }
                    int i12 = i5 + 1;
                    fArr2[i5] = (float) (fArr3[i10] * d3);
                    i5 = i12 + 1;
                    i10 = i10 + 1 + 1;
                    fArr2[i12] = (float) (fArr3[r10] * d4);
                }
            case 3:
                double d5 = this.m00;
                double d6 = this.m02;
                double d7 = this.m11;
                double d8 = this.m12;
                int i13 = i4;
                int i14 = i3;
                while (true) {
                    i14--;
                    if (i14 < 0) {
                        return;
                    }
                    int i15 = i5 + 1;
                    double d9 = d8;
                    fArr2[i5] = (float) ((fArr3[i13] * d5) + d6);
                    i5 = i15 + 1;
                    i13 = i13 + 1 + 1;
                    fArr2[i15] = (float) ((fArr3[r14] * d7) + d9);
                    d8 = d9;
                }
            case 4:
                double d10 = this.m01;
                double d11 = this.m10;
                int i16 = i4;
                int i17 = i3;
                while (true) {
                    i17--;
                    if (i17 < 0) {
                        return;
                    }
                    int i18 = i16 + 1;
                    double d12 = fArr[i16];
                    int i19 = i5 + 1;
                    fArr2[i5] = (float) (fArr[i18] * d10);
                    i5 = i19 + 1;
                    fArr2[i19] = (float) (d12 * d11);
                    i16 = i18 + 1;
                }
            case 5:
                float[] fArr4 = fArr3;
                double d13 = this.m01;
                double d14 = this.m02;
                double d15 = this.m10;
                double d16 = this.m12;
                int i20 = i4;
                int i21 = i3;
                while (true) {
                    i21--;
                    if (i21 < 0) {
                        return;
                    }
                    int i22 = i20 + 1;
                    double d17 = fArr4[i20];
                    int i23 = i5 + 1;
                    fArr2[i5] = (float) ((fArr4[i22] * d13) + d14);
                    i5 = i23 + 1;
                    fArr2[i23] = (float) ((d17 * d15) + d16);
                    fArr4 = fArr;
                    i20 = i22 + 1;
                }
            case 6:
                double d18 = this.m00;
                double d19 = this.m01;
                double d20 = this.m10;
                double d21 = this.m11;
                int i24 = i4;
                int i25 = i3;
                while (true) {
                    i25--;
                    if (i25 < 0) {
                        return;
                    }
                    int i26 = i24 + 1;
                    double d22 = fArr[i24];
                    double d23 = fArr[i26];
                    int i27 = i5 + 1;
                    fArr2[i5] = (float) ((d18 * d22) + (d19 * d23));
                    i5 = i27 + 1;
                    fArr2[i27] = (float) ((d22 * d20) + (d23 * d21));
                    i24 = i26 + 1;
                    d18 = d18;
                }
            case 7:
                double d24 = this.m00;
                double d25 = this.m01;
                double d26 = this.m02;
                double d27 = this.m10;
                double d28 = this.m11;
                double d29 = this.m12;
                int i28 = i3;
                while (true) {
                    int i29 = i28 - 1;
                    if (i29 < 0) {
                        return;
                    }
                    int i30 = i4 + 1;
                    double d30 = d29;
                    double d31 = fArr3[i4];
                    i4 = i30 + 1;
                    double d32 = fArr3[i30];
                    int i31 = i5 + 1;
                    fArr2[i5] = (float) ((d24 * d31) + (d25 * d32) + d26);
                    i5 = i31 + 1;
                    fArr2[i31] = (float) ((d31 * d27) + (d32 * d28) + d30);
                    i28 = i29;
                    fArr3 = fArr;
                    d29 = d30;
                    d24 = d24;
                }
            default:
                stateError();
                return;
        }
    }

    public AffineTransform(double d, double d2, double d3, double d4, double d5, double d6) {
        this.m00 = d;
        this.m10 = d2;
        this.m01 = d3;
        this.m11 = d4;
        this.m02 = d5;
        this.m12 = d6;
        updateState();
    }

    public void setToRotation(double d, double d2, double d3, double d4) {
        setToRotation(d, d2);
        double d5 = this.m10;
        double d6 = 1.0d - this.m00;
        double d7 = (d3 * d6) + (d4 * d5);
        this.m02 = d7;
        double d8 = (d4 * d6) - (d3 * d5);
        this.m12 = d8;
        if (d7 == 0.0d && d8 == 0.0d) {
            return;
        }
        this.state |= 1;
        this.type |= 1;
    }

    public AffineTransform(double[] dArr) {
        this.m00 = dArr[0];
        this.m10 = dArr[1];
        this.m01 = dArr[2];
        this.m11 = dArr[3];
        if (dArr.length > 5) {
            this.m02 = dArr[4];
            this.m12 = dArr[5];
        }
        updateState();
    }

    public void transform(double[] dArr, int i, double[] dArr2, int i2, int i3) {
        int i4 = i;
        int i5 = i2;
        if (dArr2 == dArr && i5 > i4) {
            int i6 = i3 * 2;
            if (i5 < i4 + i6) {
                System.arraycopy(dArr, i4, dArr2, i5, i6);
                i4 = i5;
            }
        }
        switch (this.state) {
            case 0:
                if (dArr == dArr2 && i4 == i5) {
                    return;
                }
                System.arraycopy(dArr, i4, dArr2, i5, i3 * 2);
                return;
            case 1:
                double d = this.m02;
                double d2 = this.m12;
                int i7 = i3;
                while (true) {
                    i7--;
                    if (i7 < 0) {
                        return;
                    }
                    int i8 = i5 + 1;
                    int i9 = i4 + 1;
                    dArr2[i5] = dArr[i4] + d;
                    i5 = i8 + 1;
                    i4 = i9 + 1;
                    dArr2[i8] = dArr[i9] + d2;
                }
            case 2:
                double d3 = this.m00;
                double d4 = this.m11;
                int i10 = i3;
                while (true) {
                    i10--;
                    if (i10 < 0) {
                        return;
                    }
                    int i11 = i5 + 1;
                    int i12 = i4 + 1;
                    dArr2[i5] = dArr[i4] * d3;
                    i5 = i11 + 1;
                    i4 = i12 + 1;
                    dArr2[i11] = dArr[i12] * d4;
                }
            case 3:
                double d5 = this.m00;
                double d6 = this.m02;
                double d7 = this.m11;
                double d8 = this.m12;
                int i13 = i3;
                while (true) {
                    i13--;
                    if (i13 < 0) {
                        return;
                    }
                    int i14 = i5 + 1;
                    int i15 = i4 + 1;
                    dArr2[i5] = (dArr[i4] * d5) + d6;
                    i5 = i14 + 1;
                    i4 = i15 + 1;
                    dArr2[i14] = (dArr[i15] * d7) + d8;
                }
            case 4:
                double d9 = this.m01;
                double d10 = this.m10;
                int i16 = i3;
                while (true) {
                    i16--;
                    if (i16 < 0) {
                        return;
                    }
                    int i17 = i4 + 1;
                    double d11 = dArr[i4];
                    int i18 = i5 + 1;
                    dArr2[i5] = dArr[i17] * d9;
                    i5 = i18 + 1;
                    dArr2[i18] = d11 * d10;
                    i4 = i17 + 1;
                }
            case 5:
                double d12 = this.m01;
                double d13 = this.m02;
                double d14 = this.m10;
                double d15 = this.m12;
                int i19 = i3;
                while (true) {
                    i19--;
                    if (i19 < 0) {
                        return;
                    }
                    int i20 = i4 + 1;
                    double d16 = dArr[i4];
                    int i21 = i5 + 1;
                    dArr2[i5] = (dArr[i20] * d12) + d13;
                    i5 = i21 + 1;
                    dArr2[i21] = (d16 * d14) + d15;
                    i4 = i20 + 1;
                }
            case 6:
                double d17 = this.m00;
                double d18 = this.m01;
                double d19 = this.m10;
                double d20 = this.m11;
                int i22 = i3;
                while (true) {
                    i22--;
                    if (i22 < 0) {
                        return;
                    }
                    int i23 = i4 + 1;
                    double d21 = dArr[i4];
                    i4 = i23 + 1;
                    double d22 = dArr[i23];
                    int i24 = i5 + 1;
                    dArr2[i5] = (d17 * d21) + (d18 * d22);
                    i5 = i24 + 1;
                    dArr2[i24] = (d21 * d19) + (d22 * d20);
                }
            case 7:
                double d23 = this.m00;
                double d24 = this.m01;
                double d25 = this.m02;
                double d26 = this.m10;
                double d27 = this.m11;
                double d28 = this.m12;
                int i25 = i3;
                while (true) {
                    i25--;
                    if (i25 < 0) {
                        return;
                    }
                    int i26 = i4 + 1;
                    double d29 = dArr[i4];
                    i4 = i26 + 1;
                    double d30 = dArr[i26];
                    int i27 = i5 + 1;
                    dArr2[i5] = (d23 * d29) + (d24 * d30) + d25;
                    i5 = i27 + 1;
                    dArr2[i27] = (d29 * d26) + (d30 * d27) + d28;
                }
            default:
                stateError();
                return;
        }
    }

    public void transform(float[] fArr, int i, double[] dArr, int i2, int i3) {
        switch (this.state) {
            case 0:
                int i4 = i;
                int i5 = i2;
                int i6 = i3;
                while (true) {
                    i6--;
                    if (i6 < 0) {
                        return;
                    }
                    int i7 = i5 + 1;
                    dArr[i5] = fArr[i4];
                    i5 = i7 + 1;
                    i4 = i4 + 1 + 1;
                    dArr[i7] = fArr[r4];
                }
            case 1:
                double d = this.m02;
                double d2 = this.m12;
                int i8 = i;
                int i9 = i2;
                int i10 = i3;
                while (true) {
                    i10--;
                    if (i10 < 0) {
                        return;
                    }
                    int i11 = i9 + 1;
                    dArr[i9] = fArr[i8] + d;
                    i9 = i11 + 1;
                    i8 = i8 + 1 + 1;
                    dArr[i11] = fArr[r8] + d2;
                }
            case 2:
                double d3 = this.m00;
                double d4 = this.m11;
                int i12 = i;
                int i13 = i2;
                int i14 = i3;
                while (true) {
                    i14--;
                    if (i14 < 0) {
                        return;
                    }
                    int i15 = i13 + 1;
                    dArr[i13] = fArr[i12] * d3;
                    i13 = i15 + 1;
                    i12 = i12 + 1 + 1;
                    dArr[i15] = fArr[r8] * d4;
                }
            case 3:
                double d5 = this.m00;
                double d6 = this.m02;
                double d7 = this.m11;
                double d8 = this.m12;
                int i16 = i;
                int i17 = i2;
                int i18 = i3;
                while (true) {
                    i18--;
                    if (i18 < 0) {
                        return;
                    }
                    int i19 = i17 + 1;
                    dArr[i17] = (fArr[i16] * d5) + d6;
                    i17 = i19 + 1;
                    i16 = i16 + 1 + 1;
                    dArr[i19] = (fArr[r12] * d7) + d8;
                }
            case 4:
                double d9 = this.m01;
                double d10 = this.m10;
                int i20 = i;
                int i21 = i2;
                int i22 = i3;
                while (true) {
                    i22--;
                    if (i22 < 0) {
                        return;
                    }
                    int i23 = i20 + 1;
                    double d11 = fArr[i20];
                    int i24 = i21 + 1;
                    dArr[i21] = fArr[i23] * d9;
                    i21 = i24 + 1;
                    dArr[i24] = d11 * d10;
                    i20 = i23 + 1;
                }
            case 5:
                double d12 = this.m01;
                double d13 = this.m02;
                double d14 = this.m10;
                double d15 = this.m12;
                int i25 = i;
                int i26 = i2;
                int i27 = i3;
                while (true) {
                    int i28 = i27 - 1;
                    if (i28 < 0) {
                        return;
                    }
                    int i29 = i25 + 1;
                    double d16 = fArr[i25];
                    int i30 = i26 + 1;
                    dArr[i26] = (fArr[i29] * d12) + d13;
                    i26 = i30 + 1;
                    dArr[i30] = (d16 * d14) + d15;
                    i27 = i28;
                    i25 = i29 + 1;
                }
            case 6:
                double d17 = this.m00;
                double d18 = this.m01;
                double d19 = this.m10;
                double d20 = this.m11;
                int i31 = i;
                int i32 = i2;
                int i33 = i3;
                while (true) {
                    i33--;
                    if (i33 < 0) {
                        return;
                    }
                    int i34 = i31 + 1;
                    double d21 = fArr[i31];
                    i31 = i34 + 1;
                    double d22 = fArr[i34];
                    int i35 = i32 + 1;
                    dArr[i32] = (d17 * d21) + (d18 * d22);
                    i32 = i35 + 1;
                    dArr[i35] = (d21 * d19) + (d22 * d20);
                }
            case 7:
                double d23 = this.m00;
                double d24 = this.m01;
                double d25 = this.m02;
                double d26 = this.m10;
                double d27 = this.m11;
                double d28 = this.m12;
                int i36 = i;
                int i37 = i2;
                int i38 = i3;
                while (true) {
                    int i39 = i38 - 1;
                    if (i39 < 0) {
                        return;
                    }
                    int i40 = i36 + 1;
                    double d29 = d28;
                    double d30 = fArr[i36];
                    i36 = i40 + 1;
                    double d31 = fArr[i40];
                    int i41 = i37 + 1;
                    dArr[i37] = (d23 * d30) + (d24 * d31) + d25;
                    i37 = i41 + 1;
                    dArr[i41] = (d30 * d26) + (d31 * d27) + d29;
                    i38 = i39;
                    d28 = d29;
                }
            default:
                stateError();
                return;
        }
    }

    public void transform(double[] dArr, int i, float[] fArr, int i2, int i3) {
        switch (this.state) {
            case 0:
                int i4 = i;
                int i5 = i2;
                int i6 = i3;
                while (true) {
                    i6--;
                    if (i6 < 0) {
                        return;
                    }
                    int i7 = i5 + 1;
                    int i8 = i4 + 1;
                    fArr[i5] = (float) dArr[i4];
                    i5 = i7 + 1;
                    i4 = i8 + 1;
                    fArr[i7] = (float) dArr[i8];
                }
            case 1:
                double d = this.m02;
                double d2 = this.m12;
                int i9 = i;
                int i10 = i2;
                int i11 = i3;
                while (true) {
                    i11--;
                    if (i11 < 0) {
                        return;
                    }
                    int i12 = i10 + 1;
                    int i13 = i9 + 1;
                    fArr[i10] = (float) (dArr[i9] + d);
                    i10 = i12 + 1;
                    i9 = i13 + 1;
                    fArr[i12] = (float) (dArr[i13] + d2);
                }
            case 2:
                double d3 = this.m00;
                double d4 = this.m11;
                int i14 = i;
                int i15 = i2;
                int i16 = i3;
                while (true) {
                    i16--;
                    if (i16 < 0) {
                        return;
                    }
                    int i17 = i15 + 1;
                    int i18 = i14 + 1;
                    fArr[i15] = (float) (dArr[i14] * d3);
                    i15 = i17 + 1;
                    i14 = i18 + 1;
                    fArr[i17] = (float) (dArr[i18] * d4);
                }
            case 3:
                double d5 = this.m00;
                double d6 = this.m02;
                double d7 = this.m11;
                double d8 = this.m12;
                int i19 = i;
                int i20 = i2;
                int i21 = i3;
                while (true) {
                    i21--;
                    if (i21 < 0) {
                        return;
                    }
                    int i22 = i20 + 1;
                    int i23 = i19 + 1;
                    fArr[i20] = (float) ((dArr[i19] * d5) + d6);
                    i20 = i22 + 1;
                    i19 = i23 + 1;
                    fArr[i22] = (float) ((dArr[i23] * d7) + d8);
                }
            case 4:
                double d9 = this.m01;
                double d10 = this.m10;
                int i24 = i;
                int i25 = i2;
                int i26 = i3;
                while (true) {
                    i26--;
                    if (i26 < 0) {
                        return;
                    }
                    int i27 = i24 + 1;
                    double d11 = dArr[i24];
                    int i28 = i25 + 1;
                    fArr[i25] = (float) (dArr[i27] * d9);
                    i25 = i28 + 1;
                    fArr[i28] = (float) (d11 * d10);
                    i24 = i27 + 1;
                }
            case 5:
                double d12 = this.m01;
                double d13 = this.m02;
                double d14 = this.m10;
                double d15 = this.m12;
                int i29 = i;
                int i30 = i2;
                int i31 = i3;
                while (true) {
                    i31--;
                    if (i31 < 0) {
                        return;
                    }
                    int i32 = i29 + 1;
                    double d16 = dArr[i29];
                    int i33 = i30 + 1;
                    fArr[i30] = (float) ((dArr[i32] * d12) + d13);
                    i30 = i33 + 1;
                    fArr[i33] = (float) ((d16 * d14) + d15);
                    i29 = i32 + 1;
                    d12 = d12;
                }
            case 6:
                double d17 = this.m00;
                double d18 = this.m01;
                double d19 = this.m10;
                double d20 = this.m11;
                int i34 = i;
                int i35 = i2;
                int i36 = i3;
                while (true) {
                    i36--;
                    if (i36 < 0) {
                        return;
                    }
                    int i37 = i34 + 1;
                    double d21 = dArr[i34];
                    int i38 = i37 + 1;
                    double d22 = dArr[i37];
                    int i39 = i35 + 1;
                    fArr[i35] = (float) ((d17 * d21) + (d18 * d22));
                    i35 = i39 + 1;
                    fArr[i39] = (float) ((d21 * d19) + (d22 * d20));
                    i34 = i38;
                    d17 = d17;
                }
            case 7:
                double d23 = this.m00;
                double d24 = this.m01;
                double d25 = this.m02;
                double d26 = this.m10;
                double d27 = this.m11;
                double d28 = this.m12;
                int i40 = i;
                int i41 = i2;
                int i42 = i3;
                while (true) {
                    i42--;
                    if (i42 < 0) {
                        return;
                    }
                    int i43 = i40 + 1;
                    double d29 = dArr[i40];
                    int i44 = i43 + 1;
                    double d30 = dArr[i43];
                    int i45 = i41 + 1;
                    fArr[i41] = (float) ((d23 * d29) + (d24 * d30) + d25);
                    i41 = i45 + 1;
                    fArr[i45] = (float) ((d29 * d26) + (d30 * d27) + d28);
                    i40 = i44;
                    d23 = d23;
                }
            default:
                stateError();
                return;
        }
    }
}
