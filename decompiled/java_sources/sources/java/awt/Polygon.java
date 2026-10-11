package java.awt;

import java.awt.geom.AffineTransform;
import java.awt.geom.PathIterator;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.Serializable;
import java.util.Arrays;
import sun.awt.geom.Crossings;

/* loaded from: classes4.dex */
public class Polygon implements Shape, Serializable {
    private static final int MIN_LENGTH = 4;
    private static final long serialVersionUID = -6460061437900069969L;
    protected Rectangle bounds;
    public int npoints;
    public int[] xpoints;
    public int[] ypoints;

    public Polygon() {
        this.xpoints = new int[4];
        this.ypoints = new int[4];
    }

    private Crossings getCrossings(double d, double d2, double d3, double d4) {
        Crossings.EvenOdd evenOdd = new Crossings.EvenOdd(d, d2, d3, d4);
        int[] iArr = this.xpoints;
        int i = this.npoints;
        int i2 = iArr[i - 1];
        int i3 = this.ypoints[i - 1];
        int i4 = 0;
        while (i4 < this.npoints) {
            int i5 = this.xpoints[i4];
            int i6 = this.ypoints[i4];
            if (evenOdd.accumulateLine(i2, i3, i5, i6)) {
                return null;
            }
            i4++;
            i2 = i5;
            i3 = i6;
        }
        return evenOdd;
    }

    public void addPoint(int i, int i2) {
        int i3 = this.npoints;
        if (i3 >= this.xpoints.length || i3 >= this.ypoints.length) {
            int i4 = i3 * 2;
            if (i4 < 4) {
                i4 = 4;
            } else if (((i4 - 1) & i4) != 0) {
                i4 = Integer.highestOneBit(i4);
            }
            this.xpoints = Arrays.copyOf(this.xpoints, i4);
            this.ypoints = Arrays.copyOf(this.ypoints, i4);
        }
        int[] iArr = this.xpoints;
        int i5 = this.npoints;
        iArr[i5] = i;
        this.ypoints[i5] = i2;
        this.npoints = i5 + 1;
        if (this.bounds != null) {
            updateBounds(i, i2);
        }
    }

    public void calculateBounds(int[] iArr, int[] iArr2, int i) {
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MIN_VALUE;
        for (int i6 = 0; i6 < i; i6++) {
            int i7 = iArr[i6];
            i2 = Math.min(i2, i7);
            i5 = Math.max(i5, i7);
            int i8 = iArr2[i6];
            i4 = Math.min(i4, i8);
            i3 = Math.max(i3, i8);
        }
        this.bounds = new Rectangle(i2, i4, i5 - i2, i3 - i4);
    }

    public boolean contains(Point point) {
        return contains(point.f97730x, point.f97731y);
    }

    @Deprecated
    public Rectangle getBoundingBox() {
        int i = this.npoints;
        if (i == 0) {
            return new Rectangle();
        }
        if (this.bounds == null) {
            calculateBounds(this.xpoints, this.ypoints, i);
        }
        return this.bounds.getBounds();
    }

    @Override // java.awt.Shape
    public Rectangle getBounds() {
        return getBoundingBox();
    }

    @Override // java.awt.Shape
    public Rectangle2D getBounds2D() {
        return getBounds();
    }

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform) {
        return new PolygonPathIterator(this, affineTransform);
    }

    @Deprecated
    public boolean inside(int i, int i2) {
        return contains(i, i2);
    }

    @Override // java.awt.Shape
    public boolean intersects(double d, double d2, double d3, double d4) {
        if (this.npoints <= 0 || !getBoundingBox().intersects(d, d2, d3, d4)) {
            return false;
        }
        Crossings crossings = getCrossings(d, d2, d + d3, d2 + d4);
        return crossings == null || !crossings.isEmpty();
    }

    public void invalidate() {
        this.bounds = null;
    }

    public void reset() {
        this.npoints = 0;
        this.bounds = null;
    }

    public void translate(int i, int i2) {
        for (int i3 = 0; i3 < this.npoints; i3++) {
            int[] iArr = this.xpoints;
            iArr[i3] = iArr[i3] + i;
            int[] iArr2 = this.ypoints;
            iArr2[i3] = iArr2[i3] + i2;
        }
        Rectangle rectangle = this.bounds;
        if (rectangle != null) {
            rectangle.translate(i, i2);
        }
    }

    public void updateBounds(int i, int i2) {
        Rectangle rectangle = this.bounds;
        int i3 = rectangle.f97732x;
        if (i < i3) {
            rectangle.width += i3 - i;
            rectangle.f97732x = i;
        } else {
            rectangle.width = Math.max(rectangle.width, i - i3);
        }
        Rectangle rectangle2 = this.bounds;
        int i4 = rectangle2.f97733y;
        if (i2 >= i4) {
            rectangle2.height = Math.max(rectangle2.height, i2 - i4);
        } else {
            rectangle2.height += i4 - i2;
            rectangle2.f97733y = i2;
        }
    }

    public boolean contains(int i, int i2) {
        return contains(i, i2);
    }

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform, double d) {
        return getPathIterator(affineTransform);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0067  */
    @Override // java.awt.Shape
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean contains(double r22, double r24) {
        /*
            Method dump skipped, instructions count: 170
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.Polygon.contains(double, double):boolean");
    }

    public Polygon(int[] iArr, int[] iArr2, int i) {
        if (i > iArr.length || i > iArr2.length) {
            throw new IndexOutOfBoundsException("npoints > xpoints.length || npoints > ypoints.length");
        }
        if (i >= 0) {
            this.npoints = i;
            this.xpoints = Arrays.copyOf(iArr, i);
            this.ypoints = Arrays.copyOf(iArr2, i);
            return;
        }
        throw new NegativeArraySizeException("npoints < 0");
    }

    @Override // java.awt.Shape
    public boolean intersects(Rectangle2D rectangle2D) {
        return intersects(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }

    /* loaded from: classes4.dex */
    public class PolygonPathIterator implements PathIterator {
        int index;
        Polygon poly;
        AffineTransform transform;

        public PolygonPathIterator(Polygon polygon, AffineTransform affineTransform) {
            this.poly = polygon;
            this.transform = affineTransform;
            if (polygon.npoints == 0) {
                this.index = 1;
            }
        }

        @Override // java.awt.geom.PathIterator
        public int currentSegment(float[] fArr) {
            if (this.index >= this.poly.npoints) {
                return 4;
            }
            fArr[0] = r1.xpoints[r0];
            fArr[1] = r1.ypoints[r0];
            AffineTransform affineTransform = this.transform;
            if (affineTransform != null) {
                affineTransform.transform(fArr, 0, fArr, 0, 1);
            }
            return this.index == 0 ? 0 : 1;
        }

        @Override // java.awt.geom.PathIterator
        public int getWindingRule() {
            return 0;
        }

        @Override // java.awt.geom.PathIterator
        public boolean isDone() {
            return this.index > this.poly.npoints;
        }

        @Override // java.awt.geom.PathIterator
        public void next() {
            this.index++;
        }

        @Override // java.awt.geom.PathIterator
        public int currentSegment(double[] dArr) {
            if (this.index >= this.poly.npoints) {
                return 4;
            }
            dArr[0] = r1.xpoints[r0];
            dArr[1] = r1.ypoints[r0];
            AffineTransform affineTransform = this.transform;
            if (affineTransform != null) {
                affineTransform.transform(dArr, 0, dArr, 0, 1);
            }
            return this.index == 0 ? 0 : 1;
        }
    }

    @Override // java.awt.Shape
    public boolean contains(Point2D point2D) {
        return contains(point2D.getX(), point2D.getY());
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2, double d3, double d4) {
        if (this.npoints <= 0 || !getBoundingBox().intersects(d, d2, d3, d4)) {
            return false;
        }
        double d5 = d2 + d4;
        Crossings crossings = getCrossings(d, d2, d + d3, d5);
        return crossings != null && crossings.covers(d2, d5);
    }

    @Override // java.awt.Shape
    public boolean contains(Rectangle2D rectangle2D) {
        return contains(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }
}
