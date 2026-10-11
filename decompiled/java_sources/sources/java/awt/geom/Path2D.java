package java.awt.geom;

import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Arrays;
import sun.awt.geom.Curve;

/* loaded from: classes5.dex */
public abstract class Path2D implements Shape, Cloneable {
    static final int EXPAND_MAX = 500;
    static final int INIT_SIZE = 20;
    private static final byte SEG_CLOSE = 4;
    private static final byte SEG_CUBICTO = 3;
    private static final byte SEG_LINETO = 1;
    private static final byte SEG_MOVETO = 0;
    private static final byte SEG_QUADTO = 2;
    private static final byte SERIAL_PATH_END = 97;
    private static final byte SERIAL_SEG_CLOSE = 96;
    private static final byte SERIAL_SEG_DBL_CUBICTO = 83;
    private static final byte SERIAL_SEG_DBL_LINETO = 81;
    private static final byte SERIAL_SEG_DBL_MOVETO = 80;
    private static final byte SERIAL_SEG_DBL_QUADTO = 82;
    private static final byte SERIAL_SEG_FLT_CUBICTO = 67;
    private static final byte SERIAL_SEG_FLT_LINETO = 65;
    private static final byte SERIAL_SEG_FLT_MOVETO = 64;
    private static final byte SERIAL_SEG_FLT_QUADTO = 66;
    private static final byte SERIAL_STORAGE_DBL_ARRAY = 49;
    private static final byte SERIAL_STORAGE_FLT_ARRAY = 48;
    public static final int WIND_EVEN_ODD = 0;
    public static final int WIND_NON_ZERO = 1;
    transient int numCoords;
    transient int numTypes;
    transient byte[] pointTypes;
    transient int windingRule;

    /* loaded from: classes5.dex */
    public static class Double extends Path2D implements Serializable {
        private static final long serialVersionUID = 1826762518450014216L;
        transient double[] doubleCoords;

        public Double() {
            this(1, 20);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            super.readObject(objectInputStream, true);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            super.writeObject(objectOutputStream, true);
        }

        @Override // java.awt.geom.Path2D
        public void append(float f, float f2) {
            double[] dArr = this.doubleCoords;
            int i = this.numCoords;
            int i2 = i + 1;
            dArr[i] = f;
            this.numCoords = i2 + 1;
            dArr[i2] = f2;
        }

        @Override // java.awt.geom.Path2D
        public final Object clone() {
            return new Double(this);
        }

        @Override // java.awt.geom.Path2D
        public double[] cloneCoordsDouble(AffineTransform affineTransform) {
            if (affineTransform == null) {
                double[] dArr = this.doubleCoords;
                return Arrays.copyOf(dArr, dArr.length);
            }
            double[] dArr2 = this.doubleCoords;
            double[] dArr3 = new double[dArr2.length];
            affineTransform.transform(dArr2, 0, dArr3, 0, this.numCoords / 2);
            return dArr3;
        }

        @Override // java.awt.geom.Path2D
        public float[] cloneCoordsFloat(AffineTransform affineTransform) {
            double[] dArr = this.doubleCoords;
            float[] fArr = new float[dArr.length];
            if (affineTransform == null) {
                for (int i = 0; i < this.numCoords; i++) {
                    fArr[i] = (float) this.doubleCoords[i];
                }
            } else {
                affineTransform.transform(dArr, 0, fArr, 0, this.numCoords / 2);
            }
            return fArr;
        }

        @Override // java.awt.geom.Path2D
        public final synchronized void curveTo(double d, double d2, double d3, double d4, double d5, double d6) {
            needRoom(true, 6);
            byte[] bArr = this.pointTypes;
            int i = this.numTypes;
            this.numTypes = i + 1;
            bArr[i] = 3;
            double[] dArr = this.doubleCoords;
            int i2 = this.numCoords;
            int i3 = i2 + 1;
            dArr[i2] = d;
            int i4 = i3 + 1;
            dArr[i3] = d2;
            int i5 = i4 + 1;
            dArr[i4] = d3;
            int i6 = i5 + 1;
            dArr[i5] = d4;
            int i7 = i6 + 1;
            dArr[i6] = d5;
            this.numCoords = i7 + 1;
            dArr[i7] = d6;
        }

        @Override // java.awt.Shape
        public final synchronized Rectangle2D getBounds2D() {
            double d;
            double d2;
            double d3;
            double d4;
            int i = this.numCoords;
            if (i > 0) {
                double[] dArr = this.doubleCoords;
                int i2 = i - 1;
                double d5 = dArr[i2];
                int i3 = i2 - 1;
                double d6 = dArr[i3];
                double d7 = d6;
                d2 = d5;
                while (i3 > 0) {
                    double[] dArr2 = this.doubleCoords;
                    int i4 = i3 - 1;
                    double d8 = dArr2[i4];
                    i3 = i4 - 1;
                    double d9 = dArr2[i3];
                    if (d9 < d6) {
                        d6 = d9;
                    }
                    if (d8 < d5) {
                        d5 = d8;
                    }
                    if (d9 > d7) {
                        d7 = d9;
                    }
                    if (d8 > d2) {
                        d2 = d8;
                    }
                }
                d4 = d7;
                double d10 = d5;
                d = d6;
                d3 = d10;
            } else {
                d = 0.0d;
                d2 = 0.0d;
                d3 = 0.0d;
                d4 = 0.0d;
            }
            return new Rectangle2D.Double(d, d3, d4 - d, d2 - d3);
        }

        @Override // java.awt.Shape
        public final PathIterator getPathIterator(AffineTransform affineTransform) {
            return affineTransform == null ? new CopyIterator(this) : new TxIterator(this, affineTransform);
        }

        @Override // java.awt.geom.Path2D
        public Point2D getPoint(int i) {
            double[] dArr = this.doubleCoords;
            return new Point2D.Double(dArr[i], dArr[i + 1]);
        }

        @Override // java.awt.geom.Path2D
        public final synchronized void lineTo(double d, double d2) {
            needRoom(true, 2);
            byte[] bArr = this.pointTypes;
            int i = this.numTypes;
            this.numTypes = i + 1;
            bArr[i] = 1;
            double[] dArr = this.doubleCoords;
            int i2 = this.numCoords;
            int i3 = i2 + 1;
            dArr[i2] = d;
            this.numCoords = i3 + 1;
            dArr[i3] = d2;
        }

        @Override // java.awt.geom.Path2D
        public final synchronized void moveTo(double d, double d2) {
            int i = this.numTypes;
            if (i <= 0 || this.pointTypes[i - 1] != 0) {
                needRoom(false, 2);
                byte[] bArr = this.pointTypes;
                int i2 = this.numTypes;
                this.numTypes = i2 + 1;
                bArr[i2] = 0;
                double[] dArr = this.doubleCoords;
                int i3 = this.numCoords;
                int i4 = i3 + 1;
                dArr[i3] = d;
                this.numCoords = i4 + 1;
                dArr[i4] = d2;
            } else {
                double[] dArr2 = this.doubleCoords;
                int i5 = this.numCoords;
                dArr2[i5 - 2] = d;
                dArr2[i5 - 1] = d2;
            }
        }

        @Override // java.awt.geom.Path2D
        public void needRoom(boolean z, int i) {
            if (z && this.numTypes == 0) {
                throw new IllegalPathStateException("missing initial moveto in path definition");
            }
            byte[] bArr = this.pointTypes;
            int length = bArr.length;
            if (this.numTypes >= length) {
                this.pointTypes = Arrays.copyOf(bArr, length + (length <= 500 ? length == 0 ? 1 : length : 500));
            }
            double[] dArr = this.doubleCoords;
            int length2 = dArr.length;
            if (this.numCoords + i > length2) {
                int i2 = length2 <= 1000 ? length2 : 1000;
                if (i2 >= i) {
                    i = i2;
                }
                this.doubleCoords = Arrays.copyOf(dArr, length2 + i);
            }
        }

        @Override // java.awt.geom.Path2D
        public int pointCrossings(double d, double d2) {
            int i;
            double[] dArr = this.doubleCoords;
            int i2 = 0;
            double d3 = dArr[0];
            double d4 = dArr[1];
            double d5 = d3;
            int i3 = 1;
            double d6 = d4;
            int i4 = 2;
            while (i3 < this.numTypes) {
                byte b = this.pointTypes[i3];
                if (b == 0) {
                    i = i3;
                    if (d6 != d4) {
                        i2 += Curve.pointCrossingsForLine(d, d2, d5, d6, d3, d4);
                    }
                    int i5 = i4 + 1;
                    double d7 = dArr[i4];
                    i4 = i5 + 1;
                    d6 = dArr[i5];
                    d5 = d7;
                    d3 = d5;
                    d4 = d6;
                } else if (b == 1) {
                    i = i3;
                    int i6 = i4 + 1;
                    double d8 = dArr[i4];
                    double d9 = dArr[i6];
                    i2 += Curve.pointCrossingsForLine(d, d2, d5, d6, d8, d9);
                    d5 = d8;
                    i4 = i6 + 1;
                    d6 = d9;
                } else if (b == 2) {
                    i = i3;
                    int i7 = i4 + 1;
                    double d10 = dArr[i4];
                    int i8 = i7 + 1;
                    double d11 = dArr[i7];
                    int i9 = i8 + 1;
                    double d12 = dArr[i8];
                    double d13 = dArr[i9];
                    i2 += Curve.pointCrossingsForQuad(d, d2, d5, d6, d10, d11, d12, d13, 0);
                    d5 = d12;
                    i4 = i9 + 1;
                    d6 = d13;
                } else if (b == 3) {
                    i = i3;
                    int i10 = i4 + 1;
                    double d14 = dArr[i4];
                    int i11 = i10 + 1;
                    double d15 = dArr[i10];
                    int i12 = i11 + 1;
                    double d16 = dArr[i11];
                    int i13 = i12 + 1;
                    double d17 = dArr[i12];
                    int i14 = i13 + 1;
                    double d18 = dArr[i13];
                    double d19 = dArr[i14];
                    i2 += Curve.pointCrossingsForCubic(d, d2, d5, d6, d14, d15, d16, d17, d18, d19, 0);
                    d5 = d18;
                    i4 = i14 + 1;
                    d6 = d19;
                } else if (b != 4) {
                    i = i3;
                } else {
                    if (d6 != d4) {
                        i = i3;
                        i2 += Curve.pointCrossingsForLine(d, d2, d5, d6, d3, d4);
                    } else {
                        i = i3;
                    }
                    d5 = d3;
                    d6 = d4;
                }
                i3 = i + 1;
            }
            return d6 != d4 ? i2 + Curve.pointCrossingsForLine(d, d2, d5, d6, d3, d4) : i2;
        }

        @Override // java.awt.geom.Path2D
        public final synchronized void quadTo(double d, double d2, double d3, double d4) {
            needRoom(true, 4);
            byte[] bArr = this.pointTypes;
            int i = this.numTypes;
            this.numTypes = i + 1;
            bArr[i] = 2;
            double[] dArr = this.doubleCoords;
            int i2 = this.numCoords;
            int i3 = i2 + 1;
            dArr[i2] = d;
            int i4 = i3 + 1;
            dArr[i3] = d2;
            int i5 = i4 + 1;
            dArr[i4] = d3;
            this.numCoords = i5 + 1;
            dArr[i5] = d4;
        }

        @Override // java.awt.geom.Path2D
        public int rectCrossings(double d, double d2, double d3, double d4) {
            double[] dArr = this.doubleCoords;
            double d5 = dArr[0];
            double d6 = dArr[1];
            int i = 0;
            double d7 = d5;
            double d8 = d6;
            int i2 = 2;
            for (int i3 = 1; i != Integer.MIN_VALUE && i3 < this.numTypes; i3++) {
                byte b = this.pointTypes[i3];
                if (b == 0) {
                    if (d7 != d5 || d8 != d6) {
                        i = Curve.rectCrossingsForLine(i, d, d2, d3, d4, d7, d8, d5, d6);
                    }
                    int i4 = i2 + 1;
                    double d9 = dArr[i2];
                    i2 = i4 + 1;
                    d8 = dArr[i4];
                    d7 = d9;
                    d5 = d7;
                    d6 = d8;
                } else if (b == 1) {
                    int i5 = i2 + 1;
                    double d10 = dArr[i2];
                    double d11 = dArr[i5];
                    i = Curve.rectCrossingsForLine(i, d, d2, d3, d4, d7, d8, d10, d11);
                    d7 = d10;
                    i2 = i5 + 1;
                    d8 = d11;
                } else if (b == 2) {
                    int i6 = i2 + 1;
                    double d12 = dArr[i2];
                    int i7 = i6 + 1;
                    double d13 = dArr[i6];
                    int i8 = i7 + 1;
                    double d14 = dArr[i7];
                    double d15 = dArr[i8];
                    i = Curve.rectCrossingsForQuad(i, d, d2, d3, d4, d7, d8, d12, d13, d14, d15, 0);
                    d7 = d14;
                    i2 = i8 + 1;
                    d8 = d15;
                } else if (b == 3) {
                    int i9 = i2 + 1;
                    double d16 = dArr[i2];
                    int i10 = i9 + 1;
                    double d17 = dArr[i9];
                    int i11 = i10 + 1;
                    double d18 = dArr[i10];
                    int i12 = i11 + 1;
                    double d19 = dArr[i11];
                    int i13 = i12 + 1;
                    double d20 = dArr[i12];
                    double d21 = dArr[i13];
                    i = Curve.rectCrossingsForCubic(i, d, d2, d3, d4, d7, d8, d16, d17, d18, d19, d20, d21, 0);
                    d7 = d20;
                    i2 = i13 + 1;
                    d8 = d21;
                } else if (b == 4) {
                    if (d7 != d5 || d8 != d6) {
                        i = Curve.rectCrossingsForLine(i, d, d2, d3, d4, d7, d8, d5, d6);
                    }
                    d7 = d5;
                    d8 = d6;
                }
            }
            return i != Integer.MIN_VALUE ? (d7 == d5 && d8 == d6) ? i : Curve.rectCrossingsForLine(i, d, d2, d3, d4, d7, d8, d5, d6) : i;
        }

        @Override // java.awt.geom.Path2D
        public final void transform(AffineTransform affineTransform) {
            double[] dArr = this.doubleCoords;
            affineTransform.transform(dArr, 0, dArr, 0, this.numCoords / 2);
        }

        public Double(int i) {
            this(i, 20);
        }

        /* loaded from: classes5.dex */
        public static class CopyIterator extends Iterator {
            double[] doubleCoords;

            public CopyIterator(Double r1) {
                super(r1);
                this.doubleCoords = r1.doubleCoords;
            }

            @Override // java.awt.geom.PathIterator
            public int currentSegment(float[] fArr) {
                byte b = this.path.pointTypes[this.typeIdx];
                int i = Iterator.curvecoords[b];
                if (i > 0) {
                    for (int i2 = 0; i2 < i; i2++) {
                        fArr[i2] = (float) this.doubleCoords[this.pointIdx + i2];
                    }
                }
                return b;
            }

            @Override // java.awt.geom.PathIterator
            public int currentSegment(double[] dArr) {
                byte b = this.path.pointTypes[this.typeIdx];
                int i = Iterator.curvecoords[b];
                if (i > 0) {
                    System.arraycopy(this.doubleCoords, this.pointIdx, dArr, 0, i);
                }
                return b;
            }
        }

        /* loaded from: classes5.dex */
        public static class TxIterator extends Iterator {
            AffineTransform affine;
            double[] doubleCoords;

            public TxIterator(Double r1, AffineTransform affineTransform) {
                super(r1);
                this.doubleCoords = r1.doubleCoords;
                this.affine = affineTransform;
            }

            @Override // java.awt.geom.PathIterator
            public int currentSegment(float[] fArr) {
                byte b = this.path.pointTypes[this.typeIdx];
                int i = Iterator.curvecoords[b];
                if (i > 0) {
                    this.affine.transform(this.doubleCoords, this.pointIdx, fArr, 0, i / 2);
                }
                return b;
            }

            @Override // java.awt.geom.PathIterator
            public int currentSegment(double[] dArr) {
                byte b = this.path.pointTypes[this.typeIdx];
                int i = Iterator.curvecoords[b];
                if (i > 0) {
                    this.affine.transform(this.doubleCoords, this.pointIdx, dArr, 0, i / 2);
                }
                return b;
            }
        }

        public Double(int i, int i2) {
            super(i, i2);
            this.doubleCoords = new double[i2 * 2];
        }

        @Override // java.awt.geom.Path2D
        public void append(double d, double d2) {
            double[] dArr = this.doubleCoords;
            int i = this.numCoords;
            int i2 = i + 1;
            dArr[i] = d;
            this.numCoords = i2 + 1;
            dArr[i2] = d2;
        }

        public Double(Shape shape) {
            this(shape, (AffineTransform) null);
        }

        @Override // java.awt.geom.Path2D
        public final void append(PathIterator pathIterator, boolean z) {
            int i;
            int i2;
            double[] dArr = new double[6];
            boolean z2 = z;
            while (!pathIterator.isDone()) {
                int currentSegment = pathIterator.currentSegment(dArr);
                if (currentSegment != 0) {
                    if (currentSegment == 1) {
                        lineTo(dArr[0], dArr[1]);
                    } else if (currentSegment == 2) {
                        quadTo(dArr[0], dArr[1], dArr[2], dArr[3]);
                    } else if (currentSegment == 3) {
                        curveTo(dArr[0], dArr[1], dArr[2], dArr[3], dArr[4], dArr[5]);
                    } else if (currentSegment == 4) {
                        closePath();
                    }
                } else if (z2 && (i = this.numTypes) >= 1 && (i2 = this.numCoords) >= 1) {
                    if (this.pointTypes[i - 1] != 4) {
                        double[] dArr2 = this.doubleCoords;
                        if (dArr2[i2 - 2] == dArr[0] && dArr2[i2 - 1] == dArr[1]) {
                        }
                    }
                    lineTo(dArr[0], dArr[1]);
                } else {
                    moveTo(dArr[0], dArr[1]);
                }
                pathIterator.next();
                z2 = false;
            }
        }

        public Double(Shape shape, AffineTransform affineTransform) {
            if (shape instanceof Path2D) {
                Path2D path2D = (Path2D) shape;
                setWindingRule(path2D.windingRule);
                this.numTypes = path2D.numTypes;
                byte[] bArr = path2D.pointTypes;
                this.pointTypes = Arrays.copyOf(bArr, bArr.length);
                this.numCoords = path2D.numCoords;
                this.doubleCoords = path2D.cloneCoordsDouble(affineTransform);
                return;
            }
            PathIterator pathIterator = shape.getPathIterator(affineTransform);
            setWindingRule(pathIterator.getWindingRule());
            this.pointTypes = new byte[20];
            this.doubleCoords = new double[40];
            append(pathIterator, false);
        }
    }

    /* loaded from: classes5.dex */
    public static class Float extends Path2D implements Serializable {
        private static final long serialVersionUID = 6990832515060788886L;
        transient float[] floatCoords;

        public Float() {
            this(1, 20);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            super.readObject(objectInputStream, false);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            super.writeObject(objectOutputStream, false);
        }

        @Override // java.awt.geom.Path2D
        public void append(float f, float f2) {
            float[] fArr = this.floatCoords;
            int i = this.numCoords;
            int i2 = i + 1;
            fArr[i] = f;
            this.numCoords = i2 + 1;
            fArr[i2] = f2;
        }

        @Override // java.awt.geom.Path2D
        public final Object clone() {
            return this instanceof GeneralPath ? new GeneralPath(this) : new Float(this);
        }

        @Override // java.awt.geom.Path2D
        public double[] cloneCoordsDouble(AffineTransform affineTransform) {
            float[] fArr = this.floatCoords;
            double[] dArr = new double[fArr.length];
            if (affineTransform == null) {
                for (int i = 0; i < this.numCoords; i++) {
                    dArr[i] = this.floatCoords[i];
                }
            } else {
                affineTransform.transform(fArr, 0, dArr, 0, this.numCoords / 2);
            }
            return dArr;
        }

        @Override // java.awt.geom.Path2D
        public float[] cloneCoordsFloat(AffineTransform affineTransform) {
            if (affineTransform == null) {
                float[] fArr = this.floatCoords;
                return Arrays.copyOf(fArr, fArr.length);
            }
            float[] fArr2 = this.floatCoords;
            float[] fArr3 = new float[fArr2.length];
            affineTransform.transform(fArr2, 0, fArr3, 0, this.numCoords / 2);
            return fArr3;
        }

        @Override // java.awt.geom.Path2D
        public final synchronized void curveTo(double d, double d2, double d3, double d4, double d5, double d6) {
            needRoom(true, 6);
            byte[] bArr = this.pointTypes;
            int i = this.numTypes;
            this.numTypes = i + 1;
            bArr[i] = 3;
            float[] fArr = this.floatCoords;
            int i2 = this.numCoords;
            int i3 = i2 + 1;
            fArr[i2] = (float) d;
            int i4 = i3 + 1;
            fArr[i3] = (float) d2;
            int i5 = i4 + 1;
            fArr[i4] = (float) d3;
            int i6 = i5 + 1;
            fArr[i5] = (float) d4;
            int i7 = i6 + 1;
            fArr[i6] = (float) d5;
            this.numCoords = i7 + 1;
            fArr[i7] = (float) d6;
        }

        @Override // java.awt.Shape
        public final synchronized Rectangle2D getBounds2D() {
            float f;
            float f2;
            float f3;
            float f4;
            int i = this.numCoords;
            if (i > 0) {
                float[] fArr = this.floatCoords;
                int i2 = i - 1;
                float f5 = fArr[i2];
                int i3 = i2 - 1;
                f = fArr[i3];
                f3 = f5;
                f4 = f3;
                f2 = f;
                while (i3 > 0) {
                    float[] fArr2 = this.floatCoords;
                    int i4 = i3 - 1;
                    float f6 = fArr2[i4];
                    i3 = i4 - 1;
                    float f7 = fArr2[i3];
                    if (f7 < f) {
                        f = f7;
                    }
                    if (f6 < f3) {
                        f3 = f6;
                    }
                    if (f7 > f2) {
                        f2 = f7;
                    }
                    if (f6 > f4) {
                        f4 = f6;
                    }
                }
            } else {
                f = 0.0f;
                f2 = 0.0f;
                f3 = 0.0f;
                f4 = 0.0f;
            }
            return new Rectangle2D.Float(f, f3, f2 - f, f4 - f3);
        }

        @Override // java.awt.Shape
        public final PathIterator getPathIterator(AffineTransform affineTransform) {
            return affineTransform == null ? new CopyIterator(this) : new TxIterator(this, affineTransform);
        }

        @Override // java.awt.geom.Path2D
        public Point2D getPoint(int i) {
            float[] fArr = this.floatCoords;
            return new Point2D.Float(fArr[i], fArr[i + 1]);
        }

        @Override // java.awt.geom.Path2D
        public final synchronized void lineTo(double d, double d2) {
            needRoom(true, 2);
            byte[] bArr = this.pointTypes;
            int i = this.numTypes;
            this.numTypes = i + 1;
            bArr[i] = 1;
            float[] fArr = this.floatCoords;
            int i2 = this.numCoords;
            int i3 = i2 + 1;
            fArr[i2] = (float) d;
            this.numCoords = i3 + 1;
            fArr[i3] = (float) d2;
        }

        @Override // java.awt.geom.Path2D
        public final synchronized void moveTo(double d, double d2) {
            int i = this.numTypes;
            if (i > 0 && this.pointTypes[i - 1] == 0) {
                float[] fArr = this.floatCoords;
                int i2 = this.numCoords;
                fArr[i2 - 2] = (float) d;
                fArr[i2 - 1] = (float) d2;
            } else {
                needRoom(false, 2);
                byte[] bArr = this.pointTypes;
                int i3 = this.numTypes;
                this.numTypes = i3 + 1;
                bArr[i3] = 0;
                float[] fArr2 = this.floatCoords;
                int i4 = this.numCoords;
                int i5 = i4 + 1;
                fArr2[i4] = (float) d;
                this.numCoords = i5 + 1;
                fArr2[i5] = (float) d2;
            }
        }

        @Override // java.awt.geom.Path2D
        public void needRoom(boolean z, int i) {
            if (z && this.numTypes == 0) {
                throw new IllegalPathStateException("missing initial moveto in path definition");
            }
            byte[] bArr = this.pointTypes;
            int length = bArr.length;
            if (this.numTypes >= length) {
                this.pointTypes = Arrays.copyOf(bArr, length + (length <= 500 ? length == 0 ? 1 : length : 500));
            }
            float[] fArr = this.floatCoords;
            int length2 = fArr.length;
            if (this.numCoords + i > length2) {
                int i2 = length2 <= 1000 ? length2 : 1000;
                if (i2 >= i) {
                    i = i2;
                }
                this.floatCoords = Arrays.copyOf(fArr, length2 + i);
            }
        }

        @Override // java.awt.geom.Path2D
        public int pointCrossings(double d, double d2) {
            int i;
            float[] fArr = this.floatCoords;
            int i2 = 0;
            double d3 = fArr[0];
            double d4 = fArr[1];
            double d5 = d3;
            int i3 = 1;
            double d6 = d4;
            int i4 = 2;
            while (i3 < this.numTypes) {
                byte b = this.pointTypes[i3];
                if (b == 0) {
                    i = i3;
                    if (d6 != d4) {
                        i2 += Curve.pointCrossingsForLine(d, d2, d5, d6, d3, d4);
                    }
                    int i5 = i4 + 1;
                    double d7 = fArr[i4];
                    i4 = i5 + 1;
                    d6 = fArr[i5];
                    d5 = d7;
                    d3 = d5;
                    d4 = d6;
                } else if (b == 1) {
                    i = i3;
                    int i6 = i4 + 1;
                    double d8 = fArr[i4];
                    i4 = i6 + 1;
                    double d9 = fArr[i6];
                    i2 += Curve.pointCrossingsForLine(d, d2, d5, d6, d8, d9);
                    d6 = d9;
                    d5 = d8;
                } else if (b == 2) {
                    i = i3;
                    int i7 = i4 + 1;
                    double d10 = fArr[i4];
                    int i8 = i7 + 1;
                    double d11 = fArr[i7];
                    int i9 = i8 + 1;
                    double d12 = fArr[i8];
                    int i10 = i9 + 1;
                    double d13 = fArr[i9];
                    i2 += Curve.pointCrossingsForQuad(d, d2, d5, d6, d10, d11, d12, d13, 0);
                    i4 = i10;
                    d6 = d13;
                    d5 = d12;
                } else if (b == 3) {
                    i = i3;
                    int i11 = i4 + 1;
                    double d14 = fArr[i4];
                    int i12 = i11 + 1;
                    double d15 = fArr[i11];
                    int i13 = i12 + 1;
                    double d16 = fArr[i12];
                    int i14 = i13 + 1;
                    double d17 = fArr[i13];
                    int i15 = i14 + 1;
                    double d18 = fArr[i14];
                    int i16 = i15 + 1;
                    double d19 = fArr[i15];
                    i2 += Curve.pointCrossingsForCubic(d, d2, d5, d6, d14, d15, d16, d17, d18, d19, 0);
                    i4 = i16;
                    d6 = d19;
                    d5 = d18;
                } else if (b != 4) {
                    i = i3;
                } else {
                    if (d6 != d4) {
                        i = i3;
                        i2 += Curve.pointCrossingsForLine(d, d2, d5, d6, d3, d4);
                    } else {
                        i = i3;
                    }
                    d5 = d3;
                    d6 = d4;
                }
                i3 = i + 1;
            }
            return d6 != d4 ? i2 + Curve.pointCrossingsForLine(d, d2, d5, d6, d3, d4) : i2;
        }

        @Override // java.awt.geom.Path2D
        public final synchronized void quadTo(double d, double d2, double d3, double d4) {
            needRoom(true, 4);
            byte[] bArr = this.pointTypes;
            int i = this.numTypes;
            this.numTypes = i + 1;
            bArr[i] = 2;
            float[] fArr = this.floatCoords;
            int i2 = this.numCoords;
            int i3 = i2 + 1;
            fArr[i2] = (float) d;
            int i4 = i3 + 1;
            fArr[i3] = (float) d2;
            int i5 = i4 + 1;
            fArr[i4] = (float) d3;
            this.numCoords = i5 + 1;
            fArr[i5] = (float) d4;
        }

        @Override // java.awt.geom.Path2D
        public int rectCrossings(double d, double d2, double d3, double d4) {
            float[] fArr = this.floatCoords;
            double d5 = fArr[0];
            double d6 = fArr[1];
            int i = 0;
            double d7 = d5;
            double d8 = d6;
            int i2 = 2;
            for (int i3 = 1; i != Integer.MIN_VALUE && i3 < this.numTypes; i3++) {
                byte b = this.pointTypes[i3];
                if (b == 0) {
                    if (d7 != d5 || d8 != d6) {
                        i = Curve.rectCrossingsForLine(i, d, d2, d3, d4, d7, d8, d5, d6);
                    }
                    int i4 = i2 + 1;
                    double d9 = fArr[i2];
                    i2 = i4 + 1;
                    d8 = fArr[i4];
                    d7 = d9;
                    d5 = d7;
                    d6 = d8;
                } else if (b == 1) {
                    int i5 = i2 + 1;
                    double d10 = fArr[i2];
                    i2 = i5 + 1;
                    double d11 = fArr[i5];
                    i = Curve.rectCrossingsForLine(i, d, d2, d3, d4, d7, d8, d10, d11);
                    d8 = d11;
                    d7 = d10;
                } else if (b == 2) {
                    int i6 = i2 + 1;
                    double d12 = fArr[i2];
                    int i7 = i6 + 1;
                    double d13 = fArr[i6];
                    int i8 = i7 + 1;
                    double d14 = fArr[i7];
                    double d15 = fArr[i8];
                    i = Curve.rectCrossingsForQuad(i, d, d2, d3, d4, d7, d8, d12, d13, d14, d15, 0);
                    i2 = i8 + 1;
                    d8 = d15;
                    d7 = d14;
                } else if (b == 3) {
                    int i9 = i2 + 1;
                    double d16 = fArr[i2];
                    int i10 = i9 + 1;
                    double d17 = fArr[i9];
                    int i11 = i10 + 1;
                    double d18 = fArr[i10];
                    int i12 = i11 + 1;
                    double d19 = fArr[i11];
                    int i13 = i12 + 1;
                    double d20 = fArr[i12];
                    double d21 = fArr[i13];
                    i = Curve.rectCrossingsForCubic(i, d, d2, d3, d4, d7, d8, d16, d17, d18, d19, d20, d21, 0);
                    i2 = i13 + 1;
                    d8 = d21;
                    d7 = d20;
                } else if (b == 4) {
                    if (d7 != d5 || d8 != d6) {
                        i = Curve.rectCrossingsForLine(i, d, d2, d3, d4, d7, d8, d5, d6);
                    }
                    d7 = d5;
                    d8 = d6;
                }
            }
            return i != Integer.MIN_VALUE ? (d7 == d5 && d8 == d6) ? i : Curve.rectCrossingsForLine(i, d, d2, d3, d4, d7, d8, d5, d6) : i;
        }

        @Override // java.awt.geom.Path2D
        public final void transform(AffineTransform affineTransform) {
            float[] fArr = this.floatCoords;
            affineTransform.transform(fArr, 0, fArr, 0, this.numCoords / 2);
        }

        public Float(int i) {
            this(i, 20);
        }

        /* loaded from: classes5.dex */
        public static class CopyIterator extends Iterator {
            float[] floatCoords;

            public CopyIterator(Float r1) {
                super(r1);
                this.floatCoords = r1.floatCoords;
            }

            @Override // java.awt.geom.PathIterator
            public int currentSegment(float[] fArr) {
                byte b = this.path.pointTypes[this.typeIdx];
                int i = Iterator.curvecoords[b];
                if (i > 0) {
                    System.arraycopy(this.floatCoords, this.pointIdx, fArr, 0, i);
                }
                return b;
            }

            @Override // java.awt.geom.PathIterator
            public int currentSegment(double[] dArr) {
                byte b = this.path.pointTypes[this.typeIdx];
                int i = Iterator.curvecoords[b];
                if (i > 0) {
                    for (int i2 = 0; i2 < i; i2++) {
                        dArr[i2] = this.floatCoords[this.pointIdx + i2];
                    }
                }
                return b;
            }
        }

        /* loaded from: classes5.dex */
        public static class TxIterator extends Iterator {
            AffineTransform affine;
            float[] floatCoords;

            public TxIterator(Float r1, AffineTransform affineTransform) {
                super(r1);
                this.floatCoords = r1.floatCoords;
                this.affine = affineTransform;
            }

            @Override // java.awt.geom.PathIterator
            public int currentSegment(float[] fArr) {
                byte b = this.path.pointTypes[this.typeIdx];
                int i = Iterator.curvecoords[b];
                if (i > 0) {
                    this.affine.transform(this.floatCoords, this.pointIdx, fArr, 0, i / 2);
                }
                return b;
            }

            @Override // java.awt.geom.PathIterator
            public int currentSegment(double[] dArr) {
                byte b = this.path.pointTypes[this.typeIdx];
                int i = Iterator.curvecoords[b];
                if (i > 0) {
                    this.affine.transform(this.floatCoords, this.pointIdx, dArr, 0, i / 2);
                }
                return b;
            }
        }

        public Float(int i, int i2) {
            super(i, i2);
            this.floatCoords = new float[i2 * 2];
        }

        @Override // java.awt.geom.Path2D
        public void append(double d, double d2) {
            float[] fArr = this.floatCoords;
            int i = this.numCoords;
            int i2 = i + 1;
            fArr[i] = (float) d;
            this.numCoords = i2 + 1;
            fArr[i2] = (float) d2;
        }

        public Float(Shape shape) {
            this(shape, (AffineTransform) null);
        }

        @Override // java.awt.geom.Path2D
        public final void append(PathIterator pathIterator, boolean z) {
            int i;
            int i2;
            float[] fArr = new float[6];
            while (!pathIterator.isDone()) {
                int currentSegment = pathIterator.currentSegment(fArr);
                if (currentSegment != 0) {
                    if (currentSegment == 1) {
                        lineTo(fArr[0], fArr[1]);
                    } else if (currentSegment == 2) {
                        quadTo(fArr[0], fArr[1], fArr[2], fArr[3]);
                    } else if (currentSegment == 3) {
                        curveTo(fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5]);
                    } else if (currentSegment == 4) {
                        closePath();
                    }
                } else if (z && (i = this.numTypes) >= 1 && (i2 = this.numCoords) >= 1) {
                    if (this.pointTypes[i - 1] != 4) {
                        float[] fArr2 = this.floatCoords;
                        if (fArr2[i2 - 2] == fArr[0] && fArr2[i2 - 1] == fArr[1]) {
                        }
                    }
                    lineTo(fArr[0], fArr[1]);
                } else {
                    moveTo(fArr[0], fArr[1]);
                }
                pathIterator.next();
                z = false;
            }
        }

        public Float(Shape shape, AffineTransform affineTransform) {
            if (shape instanceof Path2D) {
                Path2D path2D = (Path2D) shape;
                setWindingRule(path2D.windingRule);
                this.numTypes = path2D.numTypes;
                byte[] bArr = path2D.pointTypes;
                this.pointTypes = Arrays.copyOf(bArr, bArr.length);
                this.numCoords = path2D.numCoords;
                this.floatCoords = path2D.cloneCoordsFloat(affineTransform);
                return;
            }
            PathIterator pathIterator = shape.getPathIterator(affineTransform);
            setWindingRule(pathIterator.getWindingRule());
            this.pointTypes = new byte[20];
            this.floatCoords = new float[40];
            append(pathIterator, false);
        }

        public final synchronized void lineTo(float f, float f2) {
            needRoom(true, 2);
            byte[] bArr = this.pointTypes;
            int i = this.numTypes;
            this.numTypes = i + 1;
            bArr[i] = 1;
            float[] fArr = this.floatCoords;
            int i2 = this.numCoords;
            int i3 = i2 + 1;
            fArr[i2] = f;
            this.numCoords = i3 + 1;
            fArr[i3] = f2;
        }

        public final synchronized void quadTo(float f, float f2, float f3, float f4) {
            needRoom(true, 4);
            byte[] bArr = this.pointTypes;
            int i = this.numTypes;
            this.numTypes = i + 1;
            bArr[i] = 2;
            float[] fArr = this.floatCoords;
            int i2 = this.numCoords;
            int i3 = i2 + 1;
            fArr[i2] = f;
            int i4 = i3 + 1;
            fArr[i3] = f2;
            int i5 = i4 + 1;
            fArr[i4] = f3;
            this.numCoords = i5 + 1;
            fArr[i5] = f4;
        }

        public final synchronized void moveTo(float f, float f2) {
            int i = this.numTypes;
            if (i > 0 && this.pointTypes[i - 1] == 0) {
                float[] fArr = this.floatCoords;
                int i2 = this.numCoords;
                fArr[i2 - 2] = f;
                fArr[i2 - 1] = f2;
            } else {
                needRoom(false, 2);
                byte[] bArr = this.pointTypes;
                int i3 = this.numTypes;
                this.numTypes = i3 + 1;
                bArr[i3] = 0;
                float[] fArr2 = this.floatCoords;
                int i4 = this.numCoords;
                int i5 = i4 + 1;
                fArr2[i4] = f;
                this.numCoords = i5 + 1;
                fArr2[i5] = f2;
            }
        }

        public final synchronized void curveTo(float f, float f2, float f3, float f4, float f5, float f6) {
            needRoom(true, 6);
            byte[] bArr = this.pointTypes;
            int i = this.numTypes;
            this.numTypes = i + 1;
            bArr[i] = 3;
            float[] fArr = this.floatCoords;
            int i2 = this.numCoords;
            int i3 = i2 + 1;
            fArr[i2] = f;
            int i4 = i3 + 1;
            fArr[i3] = f2;
            int i5 = i4 + 1;
            fArr[i4] = f3;
            int i6 = i5 + 1;
            fArr[i5] = f4;
            int i7 = i6 + 1;
            fArr[i6] = f5;
            this.numCoords = i7 + 1;
            fArr[i7] = f6;
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class Iterator implements PathIterator {
        static final int[] curvecoords = {2, 2, 4, 6, 0};
        Path2D path;
        int pointIdx;
        int typeIdx;

        public Iterator(Path2D path2D) {
            this.path = path2D;
        }

        @Override // java.awt.geom.PathIterator
        public int getWindingRule() {
            return this.path.getWindingRule();
        }

        @Override // java.awt.geom.PathIterator
        public boolean isDone() {
            return this.typeIdx >= this.path.numTypes;
        }

        @Override // java.awt.geom.PathIterator
        public void next() {
            byte[] bArr = this.path.pointTypes;
            int i = this.typeIdx;
            this.typeIdx = i + 1;
            this.pointIdx += curvecoords[bArr[i]];
        }
    }

    public Path2D() {
    }

    public static boolean contains(PathIterator pathIterator, double d, double d2) {
        if ((d * 0.0d) + (d2 * 0.0d) == 0.0d) {
            return (Curve.pointCrossingsForPath(pathIterator, d, d2) & (pathIterator.getWindingRule() == 1 ? -1 : 1)) != 0;
        }
        return false;
    }

    public static boolean intersects(PathIterator pathIterator, double d, double d2, double d3, double d4) {
        double d5 = d + d3;
        if (java.lang.Double.isNaN(d5)) {
            return false;
        }
        double d6 = d2 + d4;
        if (java.lang.Double.isNaN(d6) || d3 <= 0.0d || d4 <= 0.0d) {
            return false;
        }
        int i = pathIterator.getWindingRule() == 1 ? -1 : 2;
        int rectCrossingsForPath = Curve.rectCrossingsForPath(pathIterator, d, d2, d5, d6);
        return rectCrossingsForPath == Integer.MIN_VALUE || (rectCrossingsForPath & i) != 0;
    }

    public abstract void append(double d, double d2);

    public abstract void append(float f, float f2);

    public final void append(Shape shape, boolean z) {
        append(shape.getPathIterator(null), z);
    }

    public abstract void append(PathIterator pathIterator, boolean z);

    public abstract Object clone();

    public abstract double[] cloneCoordsDouble(AffineTransform affineTransform);

    public abstract float[] cloneCoordsFloat(AffineTransform affineTransform);

    public final synchronized void closePath() {
        int i = this.numTypes;
        if (i == 0 || this.pointTypes[i - 1] != 4) {
            needRoom(true, 0);
            byte[] bArr = this.pointTypes;
            int i2 = this.numTypes;
            this.numTypes = i2 + 1;
            bArr[i2] = 4;
        }
    }

    public final synchronized Shape createTransformedShape(AffineTransform affineTransform) {
        Path2D path2D;
        path2D = (Path2D) clone();
        if (affineTransform != null) {
            path2D.transform(affineTransform);
        }
        return path2D;
    }

    public abstract void curveTo(double d, double d2, double d3, double d4, double d5, double d6);

    @Override // java.awt.Shape
    public final Rectangle getBounds() {
        return getBounds2D().getBounds();
    }

    public final synchronized Point2D getCurrentPoint() {
        int i = this.numCoords;
        int i2 = this.numTypes;
        if (i2 >= 1 && i >= 1) {
            if (this.pointTypes[i2 - 1] == 4) {
                for (int i3 = i2 - 2; i3 > 0; i3--) {
                    byte b = this.pointTypes[i3];
                    if (b == 0) {
                        break;
                    }
                    if (b == 1) {
                        i -= 2;
                    } else if (b == 2) {
                        i -= 4;
                    } else if (b == 3) {
                        i -= 6;
                    }
                }
            }
            return getPoint(i - 2);
        }
        return null;
    }

    @Override // java.awt.Shape
    public final PathIterator getPathIterator(AffineTransform affineTransform, double d) {
        return new FlatteningPathIterator(getPathIterator(affineTransform), d);
    }

    abstract Point2D getPoint(int i);

    public final synchronized int getWindingRule() {
        return this.windingRule;
    }

    public abstract void lineTo(double d, double d2);

    public abstract void moveTo(double d, double d2);

    public abstract void needRoom(boolean z, int i);

    public abstract int pointCrossings(double d, double d2);

    public abstract void quadTo(double d, double d2, double d3, double d4);

    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x0049. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x004c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009a A[LOOP:1: B:36:0x009a->B:38:0x009e, LOOP_START, PHI: r4
      0x009a: PHI (r4v6 int) = (r4v2 int), (r4v7 int) binds: [B:35:0x0098, B:38:0x009e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00aa A[LOOP:2: B:41:0x00aa->B:43:0x00ae, LOOP_START, PHI: r4
      0x00aa: PHI (r4v3 int) = (r4v2 int), (r4v4 int) binds: [B:35:0x0098, B:43:0x00ae] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void readObject(java.io.ObjectInputStream r10, boolean r11) throws java.lang.ClassNotFoundException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.geom.Path2D.readObject(java.io.ObjectInputStream, boolean):void");
    }

    public abstract int rectCrossings(double d, double d2, double d3, double d4);

    public final synchronized void reset() {
        this.numCoords = 0;
        this.numTypes = 0;
    }

    public final void setWindingRule(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("winding rule must be WIND_EVEN_ODD or WIND_NON_ZERO");
        }
        this.windingRule = i;
    }

    public abstract void transform(AffineTransform affineTransform);

    public final void writeObject(ObjectOutputStream objectOutputStream, boolean z) throws IOException {
        double[] dArr;
        int i;
        objectOutputStream.defaultWriteObject();
        float[] fArr = null;
        if (z) {
            dArr = ((Double) this).doubleCoords;
        } else {
            dArr = null;
            fArr = ((Float) this).floatCoords;
        }
        int i2 = this.numTypes;
        objectOutputStream.writeByte(z ? 49 : 48);
        objectOutputStream.writeInt(i2);
        objectOutputStream.writeInt(this.numCoords);
        objectOutputStream.writeByte((byte) this.windingRule);
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            byte b = this.pointTypes[i4];
            int i5 = 1;
            if (b == 0) {
                i = z ? 80 : 64;
            } else if (b != 1) {
                i5 = 2;
                if (b != 2) {
                    i5 = 3;
                    if (b == 3) {
                        i = z ? 83 : 67;
                    } else {
                        if (b != 4) {
                            throw new InternalError("unrecognized path type");
                        }
                        i = 96;
                        i5 = 0;
                    }
                } else {
                    i = z ? 82 : 66;
                }
            } else {
                i = z ? 81 : 65;
            }
            objectOutputStream.writeByte(i);
            while (true) {
                i5--;
                if (i5 >= 0) {
                    if (z) {
                        int i6 = i3 + 1;
                        objectOutputStream.writeDouble(dArr[i3]);
                        i3 = i6 + 1;
                        objectOutputStream.writeDouble(dArr[i6]);
                    } else {
                        int i7 = i3 + 1;
                        objectOutputStream.writeFloat(fArr[i3]);
                        i3 = i7 + 1;
                        objectOutputStream.writeFloat(fArr[i7]);
                    }
                }
            }
        }
        objectOutputStream.writeByte(97);
    }

    public Path2D(int i, int i2) {
        setWindingRule(i);
        this.pointTypes = new byte[i2];
    }

    public static boolean contains(PathIterator pathIterator, Point2D point2D) {
        return contains(pathIterator, point2D.getX(), point2D.getY());
    }

    public static boolean intersects(PathIterator pathIterator, Rectangle2D rectangle2D) {
        return intersects(pathIterator, rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }

    @Override // java.awt.Shape
    public final boolean contains(double d, double d2) {
        if ((d * 0.0d) + (d2 * 0.0d) != 0.0d || this.numTypes < 2) {
            return false;
        }
        return (pointCrossings(d, d2) & (this.windingRule == 1 ? -1 : 1)) != 0;
    }

    @Override // java.awt.Shape
    public final boolean intersects(double d, double d2, double d3, double d4) {
        double d5 = d + d3;
        if (java.lang.Double.isNaN(d5)) {
            return false;
        }
        double d6 = d2 + d4;
        if (java.lang.Double.isNaN(d6) || d3 <= 0.0d || d4 <= 0.0d) {
            return false;
        }
        int i = this.windingRule == 1 ? -1 : 2;
        int rectCrossings = rectCrossings(d, d2, d5, d6);
        return rectCrossings == Integer.MIN_VALUE || (rectCrossings & i) != 0;
    }

    @Override // java.awt.Shape
    public final boolean contains(Point2D point2D) {
        return contains(point2D.getX(), point2D.getY());
    }

    public static boolean contains(PathIterator pathIterator, double d, double d2, double d3, double d4) {
        double d5 = d + d3;
        if (java.lang.Double.isNaN(d5)) {
            return false;
        }
        double d6 = d2 + d4;
        if (java.lang.Double.isNaN(d6) || d3 <= 0.0d || d4 <= 0.0d) {
            return false;
        }
        int i = pathIterator.getWindingRule() == 1 ? -1 : 2;
        int rectCrossingsForPath = Curve.rectCrossingsForPath(pathIterator, d, d2, d5, d6);
        return (rectCrossingsForPath == Integer.MIN_VALUE || (rectCrossingsForPath & i) == 0) ? false : true;
    }

    @Override // java.awt.Shape
    public final boolean intersects(Rectangle2D rectangle2D) {
        return intersects(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }

    public static boolean contains(PathIterator pathIterator, Rectangle2D rectangle2D) {
        return contains(pathIterator, rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }

    @Override // java.awt.Shape
    public final boolean contains(double d, double d2, double d3, double d4) {
        double d5 = d + d3;
        if (java.lang.Double.isNaN(d5)) {
            return false;
        }
        double d6 = d2 + d4;
        if (java.lang.Double.isNaN(d6) || d3 <= 0.0d || d4 <= 0.0d) {
            return false;
        }
        int i = this.windingRule == 1 ? -1 : 2;
        int rectCrossings = rectCrossings(d, d2, d5, d6);
        return (rectCrossings == Integer.MIN_VALUE || (rectCrossings & i) == 0) ? false : true;
    }

    @Override // java.awt.Shape
    public final boolean contains(Rectangle2D rectangle2D) {
        return contains(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }
}
