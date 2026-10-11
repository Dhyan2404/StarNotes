package sun.font;

import java.awt.Shape;
import java.awt.font.LayoutPath;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;
import java.awt.geom.NoninvertibleTransformException;
import java.awt.geom.PathIterator;
import java.awt.geom.Point2D;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.Iterator;

/* loaded from: classes16.dex */
public abstract class LayoutPathImpl extends LayoutPath {
    private static final Formatter LOG = new Formatter(System.out);
    private static final boolean LOGMAP = false;

    /* loaded from: classes16.dex */
    public static class EmptyPath extends LayoutPathImpl {

        /* renamed from: tx */
        private AffineTransform f116349tx;

        public EmptyPath(AffineTransform affineTransform) {
            this.f116349tx = affineTransform;
        }

        @Override // sun.font.LayoutPathImpl
        public double end() {
            return 0.0d;
        }

        @Override // sun.font.LayoutPathImpl
        public double length() {
            return 0.0d;
        }

        @Override // sun.font.LayoutPathImpl
        public Shape mapShape(Shape shape) {
            AffineTransform affineTransform = this.f116349tx;
            return affineTransform != null ? affineTransform.createTransformedShape(shape) : shape;
        }

        @Override // java.awt.font.LayoutPath
        public void pathToPoint(Point2D point2D, boolean z, Point2D point2D2) {
            AffineTransform affineTransform = this.f116349tx;
            if (affineTransform != null) {
                affineTransform.transform(point2D, point2D2);
            } else {
                point2D2.setLocation(point2D);
            }
        }

        @Override // java.awt.font.LayoutPath
        public boolean pointToPath(Point2D point2D, Point2D point2D2) {
            point2D2.setLocation(point2D);
            AffineTransform affineTransform = this.f116349tx;
            if (affineTransform != null) {
                try {
                    affineTransform.inverseTransform(point2D, point2D2);
                } catch (NoninvertibleTransformException unused) {
                }
            }
            return point2D2.getX() > 0.0d;
        }

        @Override // sun.font.LayoutPathImpl
        public double start() {
            return 0.0d;
        }
    }

    /* loaded from: classes16.dex */
    public enum EndType {
        PINNED,
        EXTENDED,
        CLOSED;

        public boolean isClosed() {
            return this == CLOSED;
        }

        public boolean isExtended() {
            return this == EXTENDED;
        }

        public boolean isPinned() {
            return this == PINNED;
        }
    }

    /* loaded from: classes16.dex */
    public static final class SegmentPathBuilder {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        /* renamed from: a */
        private double f116362a;
        private double[] data;
        private boolean pconnect;

        /* renamed from: px */
        private double f116363px;

        /* renamed from: py */
        private double f116364py;

        /* renamed from: w */
        private int f116365w;

        private void nextPoint(double d, double d2, boolean z) {
            if (d == this.f116363px && d2 == this.f116364py) {
                return;
            }
            if (this.f116365w == 0) {
                if (this.data == null) {
                    this.data = new double[6];
                }
                if (z) {
                    this.f116365w = 3;
                }
            }
            int i = this.f116365w;
            if (i != 0 && !z && !this.pconnect) {
                double[] dArr = this.data;
                this.f116363px = d;
                dArr[i - 3] = d;
                this.f116364py = d2;
                dArr[i - 2] = d2;
                return;
            }
            double[] dArr2 = this.data;
            if (i == dArr2.length) {
                double[] dArr3 = new double[i * 2];
                System.arraycopy(dArr2, 0, dArr3, 0, i);
                this.data = dArr3;
            }
            if (z) {
                double d3 = d - this.f116363px;
                double d4 = d2 - this.f116364py;
                this.f116362a += Math.sqrt((d3 * d3) + (d4 * d4));
            }
            double[] dArr4 = this.data;
            int i2 = this.f116365w;
            int i3 = i2 + 1;
            dArr4[i2] = d;
            int i4 = i3 + 1;
            dArr4[i3] = d2;
            this.f116365w = i4 + 1;
            dArr4[i4] = this.f116362a;
            this.f116363px = d;
            this.f116364py = d2;
            this.pconnect = z;
        }

        public SegmentPath build(EndType endType, double... dArr) {
            reset((dArr.length / 2) * 3);
            int i = 0;
            while (i < dArr.length) {
                nextPoint(dArr[i], dArr[i + 1], i != 0);
                i += 2;
            }
            return complete(endType);
        }

        public SegmentPath complete() {
            return complete(EndType.EXTENDED);
        }

        public void lineTo(double d, double d2) {
            nextPoint(d, d2, true);
        }

        public void moveTo(double d, double d2) {
            nextPoint(d, d2, false);
        }

        public void reset(int i) {
            double[] dArr = this.data;
            if (dArr == null || i > dArr.length) {
                this.data = new double[i];
            } else if (i == 0) {
                this.data = null;
            }
            this.f116365w = 0;
            this.f116364py = 0.0d;
            this.f116363px = 0.0d;
            this.pconnect = false;
        }

        public SegmentPath complete(EndType endType) {
            int i;
            double[] dArr = this.data;
            if (dArr == null || (i = this.f116365w) < 6) {
                return null;
            }
            if (i == dArr.length) {
                SegmentPath segmentPath = new SegmentPath(this.data, endType);
                reset(0);
                return segmentPath;
            }
            double[] dArr2 = new double[i];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            SegmentPath segmentPath2 = new SegmentPath(dArr2, endType);
            reset(2);
            return segmentPath2;
        }
    }

    public static LayoutPathImpl getPath(EndType endType, double... dArr) {
        if ((dArr.length & 1) == 0) {
            return SegmentPath.get(endType, dArr);
        }
        throw new IllegalArgumentException("odd number of points not allowed");
    }

    public abstract double end();

    public abstract double length();

    public abstract Shape mapShape(Shape shape);

    public Point2D pathToPoint(double d, double d2, boolean z) {
        Point2D.Double r0 = new Point2D.Double(d, d2);
        pathToPoint(r0, z, r0);
        return r0;
    }

    public Point2D pointToPath(double d, double d2) {
        Point2D.Double r0 = new Point2D.Double(d, d2);
        pointToPath(r0, r0);
        return r0;
    }

    public abstract double start();

    public void pathToPoint(double d, double d2, boolean z, Point2D point2D) {
        point2D.setLocation(d, d2);
        pathToPoint(point2D, z, point2D);
    }

    public void pointToPath(double d, double d2, Point2D point2D) {
        point2D.setLocation(d, d2);
        pointToPath(point2D, point2D);
    }

    /* loaded from: classes16.dex */
    public static final class SegmentPath extends LayoutPathImpl {
        private double[] data;
        EndType etype;

        /* loaded from: classes16.dex */
        public class Mapper {
            final Point2D.Double cpt;
            boolean haveMT;

            /* renamed from: li */
            final LineInfo f116355li;
            final Point2D.Double mpt;
            final ArrayList<Segment> segments;

            public Mapper() {
                SegmentPath.this.getClass();
                this.f116355li = new LineInfo();
                this.segments = new ArrayList<>();
                for (int i = 3; i < SegmentPath.this.data.length; i += 3) {
                    if (SegmentPath.this.data[i + 2] != SegmentPath.this.data[i - 1]) {
                        ArrayList<Segment> arrayList = this.segments;
                        SegmentPath.this.getClass();
                        arrayList.add(new Segment(i));
                    }
                }
                this.mpt = new Point2D.Double();
                this.cpt = new Point2D.Double();
            }

            public void close() {
                Point2D.Double r0 = this.mpt;
                lineTo(r0.f97775x, r0.f97776y);
                Iterator<Segment> it2 = this.segments.iterator();
                while (it2.hasNext()) {
                    it2.next().close();
                }
            }

            public void init() {
                this.haveMT = false;
                Iterator<Segment> it2 = this.segments.iterator();
                while (it2.hasNext()) {
                    it2.next().init();
                }
            }

            public void lineTo(double d, double d2) {
                boolean z = this.haveMT;
                if (z) {
                    Point2D.Double r1 = this.cpt;
                    Point2D.Double r2 = this.mpt;
                    r1.f97775x = r2.f97775x;
                    r1.f97776y = r2.f97776y;
                }
                Point2D.Double r12 = this.cpt;
                if (d == r12.f97775x && d2 == r12.f97776y) {
                    return;
                }
                if (z) {
                    this.haveMT = false;
                    Iterator<Segment> it2 = this.segments.iterator();
                    while (it2.hasNext()) {
                        it2.next().move();
                    }
                }
                LineInfo lineInfo = this.f116355li;
                Point2D.Double r0 = this.cpt;
                lineInfo.set(r0.f97775x, r0.f97776y, d, d2);
                Iterator<Segment> it3 = this.segments.iterator();
                while (it3.hasNext()) {
                    it3.next().line(this.f116355li);
                }
                Point2D.Double r11 = this.cpt;
                r11.f97775x = d;
                r11.f97776y = d2;
            }

            public Shape mapShape(Shape shape) {
                PathIterator pathIterator = shape.getPathIterator(null, 1.0d);
                init();
                double[] dArr = new double[2];
                while (!pathIterator.isDone()) {
                    int currentSegment = pathIterator.currentSegment(dArr);
                    if (currentSegment == 0) {
                        moveTo(dArr[0], dArr[1]);
                    } else if (currentSegment == 1) {
                        lineTo(dArr[0], dArr[1]);
                    } else if (currentSegment == 4) {
                        close();
                    }
                    pathIterator.next();
                }
                GeneralPath generalPath = new GeneralPath();
                Iterator<Segment> it2 = this.segments.iterator();
                while (it2.hasNext()) {
                    generalPath.append((Shape) it2.next().f116358gp, false);
                }
                return generalPath;
            }

            public void moveTo(double d, double d2) {
                Point2D.Double r0 = this.mpt;
                r0.f97775x = d;
                r0.f97776y = d2;
                this.haveMT = true;
            }
        }

        /* loaded from: classes16.dex */
        public class Segment {
            boolean broken;

            /* renamed from: cx */
            double f116356cx;

            /* renamed from: cy */
            double f116357cy;

            /* renamed from: gp */
            GeneralPath f116358gp;

            /* renamed from: ix */
            final int f116359ix;
            final LineInfo temp;

            /* renamed from: ux */
            final double f116360ux;

            /* renamed from: uy */
            final double f116361uy;

            public Segment(int i) {
                this.f116359ix = i;
                double d = SegmentPath.this.data[i + 2] - SegmentPath.this.data[i - 1];
                this.f116360ux = (SegmentPath.this.data[i] - SegmentPath.this.data[i - 3]) / d;
                this.f116361uy = (SegmentPath.this.data[i + 1] - SegmentPath.this.data[i - 2]) / d;
                SegmentPath.this.getClass();
                this.temp = new LineInfo();
            }

            public void close() {
                if (this.broken) {
                    return;
                }
                this.f116358gp.closePath();
            }

            public void init() {
                this.broken = true;
                this.f116357cy = Double.MIN_VALUE;
                this.f116356cx = Double.MIN_VALUE;
                this.f116358gp = new GeneralPath();
            }

            public void line(LineInfo lineInfo) {
                if (lineInfo.pin(this.f116359ix, this.temp)) {
                    this.temp.f116353sx -= SegmentPath.this.data[this.f116359ix - 1];
                    double d = SegmentPath.this.data[this.f116359ix - 3];
                    LineInfo lineInfo2 = this.temp;
                    double d2 = (d + (lineInfo2.f116353sx * this.f116360ux)) - (lineInfo2.f116354sy * this.f116361uy);
                    double d3 = SegmentPath.this.data[this.f116359ix - 2];
                    LineInfo lineInfo3 = this.temp;
                    double d4 = d3 + (lineInfo3.f116353sx * this.f116361uy) + (lineInfo3.f116354sy * this.f116360ux);
                    lineInfo3.f116350lx -= SegmentPath.this.data[this.f116359ix - 1];
                    double d5 = SegmentPath.this.data[this.f116359ix - 3];
                    LineInfo lineInfo4 = this.temp;
                    double d6 = (d5 + (lineInfo4.f116350lx * this.f116360ux)) - (lineInfo4.f116351ly * this.f116361uy);
                    double d7 = SegmentPath.this.data[this.f116359ix - 2];
                    LineInfo lineInfo5 = this.temp;
                    double d8 = d7 + (lineInfo5.f116350lx * this.f116361uy) + (lineInfo5.f116351ly * this.f116360ux);
                    if (d2 != this.f116356cx || d4 != this.f116357cy) {
                        if (this.broken) {
                            this.f116358gp.moveTo((float) d2, (float) d4);
                        } else {
                            this.f116358gp.lineTo((float) d2, (float) d4);
                        }
                    }
                    this.f116358gp.lineTo((float) d6, (float) d8);
                    this.broken = false;
                    this.f116356cx = d6;
                    this.f116357cy = d8;
                }
            }

            public void move() {
                this.broken = true;
            }
        }

        public SegmentPath(double[] dArr, EndType endType) {
            this.data = dArr;
            this.etype = endType;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0041, code lost:
        
            if (r14 > r3) goto L11;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void calcoffset(int r19, boolean r20, java.awt.geom.Point2D r21) {
            /*
                r18 = this;
                r0 = r18
                double[] r1 = r0.data
                int r2 = r19 + (-3)
                r2 = r1[r2]
                int r4 = r19 + (-2)
                r4 = r1[r4]
                double r6 = r21.getX()
                double r6 = r6 - r2
                double r8 = r21.getY()
                double r8 = r8 - r4
                double[] r0 = r0.data
                r10 = r0[r19]
                double r10 = r10 - r2
                int r1 = r19 + 1
                r1 = r0[r1]
                double r1 = r1 - r4
                int r3 = r19 + 2
                r3 = r0[r3]
                int r5 = r19 + (-1)
                r12 = r0[r5]
                double r3 = r3 - r12
                double r14 = r6 * r10
                double r16 = r8 * r1
                double r14 = r14 + r16
                double r14 = r14 / r3
                double r0 = -r1
                double r6 = r6 * r0
                double r8 = r8 * r10
                double r6 = r6 + r8
                double r6 = r6 / r3
                if (r20 != 0) goto L44
                r0 = 0
                int r2 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
                if (r2 >= 0) goto L3f
                r3 = r0
                goto L45
            L3f:
                int r0 = (r14 > r3 ? 1 : (r14 == r3 ? 0 : -1))
                if (r0 <= 0) goto L44
                goto L45
            L44:
                r3 = r14
            L45:
                double r3 = r3 + r12
                r0 = r21
                r0.setLocation(r3, r6)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: sun.font.LayoutPathImpl.SegmentPath.calcoffset(int, boolean, java.awt.geom.Point2D):void");
        }

        public static SegmentPath get(EndType endType, double... dArr) {
            return new SegmentPathBuilder().build(endType, dArr);
        }

        private double getClosedAdvance(double d, boolean z) {
            if (!this.etype.isClosed()) {
                return d;
            }
            double length = (d - this.data[2]) - (((int) (r7 / length())) * length());
            if (length < 0.0d || (length == 0.0d && z)) {
                length += length();
            }
            return length + this.data[2];
        }

        private int getSegmentIndexForAdvance(double d, boolean z) {
            double closedAdvance = getClosedAdvance(d, z);
            int length = this.data.length - 1;
            int i = 5;
            while (i < length) {
                double d2 = this.data[i];
                if (closedAdvance < d2 || (closedAdvance == d2 && z)) {
                    break;
                }
                i += 3;
            }
            return i - 2;
        }

        private int locateAndGetIndex(Point2D point2D, boolean z, Point2D point2D2) {
            double x = point2D.getX();
            double y = point2D.getY();
            int segmentIndexForAdvance = getSegmentIndexForAdvance(x, z);
            map(segmentIndexForAdvance, x, y, point2D2);
            return segmentIndexForAdvance;
        }

        private void map(int i, double d, double d2, Point2D point2D) {
            double[] dArr = this.data;
            double d3 = dArr[i];
            double d4 = dArr[i - 3];
            double d5 = dArr[i + 1];
            double d6 = dArr[i - 2];
            double d7 = dArr[i + 2];
            double d8 = dArr[i - 1];
            double d9 = d7 - d8;
            double d10 = (d3 - d4) / d9;
            double d11 = (d5 - d6) / d9;
            double d12 = d - d8;
            point2D.setLocation((d4 + (d12 * d10)) - (d2 * d11), d6 + (d12 * d11) + (d2 * d10));
        }

        @Override // sun.font.LayoutPathImpl
        public double end() {
            return this.data[r2.length - 1];
        }

        @Override // sun.font.LayoutPathImpl
        public double length() {
            double[] dArr = this.data;
            return dArr[dArr.length - 1] - dArr[2];
        }

        @Override // sun.font.LayoutPathImpl
        public Shape mapShape(Shape shape) {
            return new Mapper().mapShape(shape);
        }

        @Override // java.awt.font.LayoutPath
        public void pathToPoint(Point2D point2D, boolean z, Point2D point2D2) {
            locateAndGetIndex(point2D, z, point2D2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x006b, code lost:
        
            if (r7 == (r41.data.length - 3)) goto L25;
         */
        /* JADX WARN: Removed duplicated region for block: B:23:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00a4 A[SYNTHETIC] */
        @Override // java.awt.font.LayoutPath
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean pointToPath(java.awt.geom.Point2D r42, java.awt.geom.Point2D r43) {
            /*
                Method dump skipped, instructions count: 351
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: sun.font.LayoutPathImpl.SegmentPath.pointToPath(java.awt.geom.Point2D, java.awt.geom.Point2D):boolean");
        }

        @Override // sun.font.LayoutPathImpl
        public double start() {
            return this.data[2];
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("{");
            sb.append(this.etype.toString());
            sb.append(" ");
            for (int i = 0; i < this.data.length; i += 3) {
                if (i > 0) {
                    sb.append(",");
                }
                double[] dArr = this.data;
                float f = ((int) (dArr[i] * 100.0d)) / 100.0f;
                float f2 = ((int) (dArr[i + 1] * 100.0d)) / 100.0f;
                sb.append("{");
                sb.append(f);
                sb.append(",");
                sb.append(f2);
                sb.append(",");
                sb.append(((int) (dArr[i + 2] * 10.0d)) / 10.0f);
                sb.append("}");
            }
            sb.append("}");
            return sb.toString();
        }

        /* loaded from: classes16.dex */
        public class LineInfo {

            /* renamed from: lx */
            double f116350lx;

            /* renamed from: ly */
            double f116351ly;

            /* renamed from: m */
            double f116352m;

            /* renamed from: sx */
            double f116353sx;

            /* renamed from: sy */
            double f116354sy;

            public LineInfo() {
            }

            public boolean pin(double d, double d2, LineInfo lineInfo) {
                lineInfo.set(this);
                double d3 = this.f116350lx;
                double d4 = this.f116353sx;
                if (d3 >= d4) {
                    if (d4 >= d2 || d3 < d) {
                        return false;
                    }
                    if (d4 < d) {
                        double d5 = this.f116352m;
                        if (d5 != 0.0d) {
                            lineInfo.f116354sy = this.f116354sy + (d5 * (d - d4));
                        }
                        lineInfo.f116353sx = d;
                    }
                    if (d3 <= d2) {
                        return true;
                    }
                    double d6 = this.f116352m;
                    if (d6 != 0.0d) {
                        lineInfo.f116351ly = this.f116351ly + (d6 * (d2 - d3));
                    }
                    lineInfo.f116350lx = d2;
                    return true;
                }
                if (d3 >= d2 || d4 < d) {
                    return false;
                }
                if (d3 < d) {
                    double d7 = this.f116352m;
                    if (d7 != 0.0d) {
                        lineInfo.f116351ly = this.f116351ly + (d7 * (d - d3));
                    }
                    lineInfo.f116350lx = d;
                }
                if (d4 <= d2) {
                    return true;
                }
                double d8 = this.f116352m;
                if (d8 != 0.0d) {
                    lineInfo.f116354sy = this.f116354sy + (d8 * (d2 - d4));
                }
                lineInfo.f116353sx = d2;
                return true;
            }

            public void set(double d, double d2, double d3, double d4) {
                this.f116353sx = d;
                this.f116354sy = d2;
                this.f116350lx = d3;
                this.f116351ly = d4;
                double d5 = d3 - d;
                if (d5 == 0.0d) {
                    this.f116352m = 0.0d;
                } else {
                    this.f116352m = (d4 - d2) / d5;
                }
            }

            public void set(LineInfo lineInfo) {
                this.f116353sx = lineInfo.f116353sx;
                this.f116354sy = lineInfo.f116354sy;
                this.f116350lx = lineInfo.f116350lx;
                this.f116351ly = lineInfo.f116351ly;
                this.f116352m = lineInfo.f116352m;
            }

            public boolean pin(int i, LineInfo lineInfo) {
                double d = SegmentPath.this.data[i - 1];
                double d2 = SegmentPath.this.data[i + 2];
                if (SegmentPath.this.etype.ordinal() == 2) {
                    if (i == 3) {
                        d = Double.NEGATIVE_INFINITY;
                    }
                    if (i == SegmentPath.this.data.length - 3) {
                        d2 = Double.POSITIVE_INFINITY;
                    }
                }
                return pin(d, d2, lineInfo);
            }
        }
    }
}
