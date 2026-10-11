package org.apache.commons.math3.geometry.euclidean.twod;

import java.awt.geom.AffineTransform;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.euclidean.oned.OrientedPoint;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.partitioning.Embedding;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.geometry.partitioning.Transform;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class Line implements Hyperplane<Euclidean2D>, Embedding<Euclidean2D, Euclidean1D> {

    /* renamed from: g */
    public static final double f108301g = 1.0E-10d;

    /* renamed from: a */
    public double f108302a;

    /* renamed from: b */
    public double f108303b;

    /* renamed from: c */
    public double f108304c;

    /* renamed from: d */
    public double f108305d;

    /* renamed from: e */
    public final double f108306e;

    /* renamed from: f */
    public Line f108307f;

    @Deprecated
    public static Transform<Euclidean2D, Euclidean1D> getTransform(AffineTransform affineTransform) throws MathIllegalArgumentException {
        double[] dArr = new double[6];
        affineTransform.getMatrix(dArr);
        return new C19118b(dArr[0], dArr[1], dArr[2], dArr[3], dArr[4], dArr[5]);
    }

    public boolean contains(Vector2D vector2D) {
        return FastMath.abs(getOffset((Vector<Euclidean2D>) vector2D)) < this.f108306e;
    }

    public double distance(Vector2D vector2D) {
        return FastMath.abs(getOffset((Vector<Euclidean2D>) vector2D));
    }

    /* renamed from: e */
    public final void m67666e() {
        Line line = this.f108307f;
        if (line != null) {
            line.f108307f = null;
        }
        this.f108307f = null;
    }

    public double getAngle() {
        return MathUtils.normalizeAngle(this.f108302a, 3.141592653589793d);
    }

    public double getOffset(Line line) {
        return this.f108305d + (MathArrays.linearCombination(this.f108303b, line.f108303b, this.f108304c, line.f108304c) > 0.0d ? -line.f108305d : line.f108305d);
    }

    public double getOriginOffset() {
        return this.f108305d;
    }

    public Vector2D getPointAt(Vector1D vector1D, double d) {
        double x = vector1D.getX();
        double d2 = d - this.f108305d;
        return new Vector2D(MathArrays.linearCombination(x, this.f108303b, d2, this.f108304c), MathArrays.linearCombination(x, this.f108304c, -d2, this.f108303b));
    }

    public Line getReverse() {
        if (this.f108307f == null) {
            double d = this.f108302a;
            Line line = new Line(d < 3.141592653589793d ? d + 3.141592653589793d : d - 3.141592653589793d, -this.f108303b, -this.f108304c, -this.f108305d, this.f108306e);
            this.f108307f = line;
            line.f108307f = this;
        }
        return this.f108307f;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getTolerance() {
        return this.f108306e;
    }

    public Vector2D intersection(Line line) {
        double linearCombination = MathArrays.linearCombination(this.f108304c, line.f108303b, -line.f108304c, this.f108303b);
        if (FastMath.abs(linearCombination) < this.f108306e) {
            return null;
        }
        return new Vector2D(MathArrays.linearCombination(this.f108303b, line.f108305d, -line.f108303b, this.f108305d) / linearCombination, MathArrays.linearCombination(this.f108304c, line.f108305d, -line.f108304c, this.f108305d) / linearCombination);
    }

    public boolean isParallelTo(Line line) {
        return FastMath.abs(MathArrays.linearCombination(this.f108304c, line.f108303b, -this.f108303b, line.f108304c)) < this.f108306e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.commons.math3.geometry.Vector, org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Point<Euclidean2D> project(Point<Euclidean2D> point) {
        return toSpace((Vector<Euclidean1D>) toSubSpace(point));
    }

    public void reset(Vector2D vector2D, Vector2D vector2D2) {
        m67666e();
        double x = vector2D2.getX() - vector2D.getX();
        double y = vector2D2.getY() - vector2D.getY();
        double hypot = FastMath.hypot(x, y);
        if (hypot == 0.0d) {
            this.f108302a = 0.0d;
            this.f108303b = 1.0d;
            this.f108304c = 0.0d;
            this.f108305d = vector2D.getY();
            return;
        }
        this.f108302a = FastMath.atan2(-y, -x) + 3.141592653589793d;
        this.f108303b = x / hypot;
        this.f108304c = y / hypot;
        this.f108305d = MathArrays.linearCombination(vector2D2.getX(), vector2D.getY(), -vector2D.getX(), vector2D2.getY()) / hypot;
    }

    public void revertSelf() {
        m67666e();
        double d = this.f108302a;
        if (d < 3.141592653589793d) {
            this.f108302a = d + 3.141592653589793d;
        } else {
            this.f108302a = d - 3.141592653589793d;
        }
        this.f108303b = -this.f108303b;
        this.f108304c = -this.f108304c;
        this.f108305d = -this.f108305d;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public boolean sameOrientationAs(Hyperplane<Euclidean2D> hyperplane) {
        Line line = (Line) hyperplane;
        return MathArrays.linearCombination(this.f108304c, line.f108304c, this.f108303b, line.f108303b) >= 0.0d;
    }

    public void setAngle(double d) {
        m67666e();
        double normalizeAngle = MathUtils.normalizeAngle(d, 3.141592653589793d);
        this.f108302a = normalizeAngle;
        this.f108303b = FastMath.cos(normalizeAngle);
        this.f108304c = FastMath.sin(this.f108302a);
    }

    public void setOriginOffset(double d) {
        m67666e();
        this.f108305d = d;
    }

    public void translateToPoint(Vector2D vector2D) {
        this.f108305d = MathArrays.linearCombination(this.f108303b, vector2D.getY(), -this.f108304c, vector2D.getX());
    }

    /* renamed from: org.apache.commons.math3.geometry.euclidean.twod.Line$b */
    /* loaded from: classes12.dex */
    public static class C19118b implements Transform<Euclidean2D, Euclidean1D> {

        /* renamed from: a */
        public double f108308a;

        /* renamed from: b */
        public double f108309b;

        /* renamed from: c */
        public double f108310c;

        /* renamed from: d */
        public double f108311d;

        /* renamed from: e */
        public double f108312e;

        /* renamed from: f */
        public double f108313f;

        /* renamed from: g */
        public double f108314g;

        /* renamed from: h */
        public double f108315h;

        /* renamed from: i */
        public double f108316i;

        public C19118b(double d, double d2, double d3, double d4, double d5, double d6) throws MathIllegalArgumentException {
            this.f108308a = d;
            this.f108309b = d2;
            this.f108310c = d3;
            this.f108311d = d4;
            this.f108312e = d5;
            this.f108313f = d6;
            this.f108314g = MathArrays.linearCombination(d3, d6, -d4, d5);
            double d7 = -d2;
            this.f108315h = MathArrays.linearCombination(d, d6, d7, d5);
            double linearCombination = MathArrays.linearCombination(d, d4, d7, d3);
            this.f108316i = linearCombination;
            if (FastMath.abs(linearCombination) < 1.0E-20d) {
                throw new MathIllegalArgumentException(LocalizedFormats.NON_INVERTIBLE_TRANSFORM, new Object[0]);
            }
        }

        @Override // org.apache.commons.math3.geometry.partitioning.Transform
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Line apply(Hyperplane<Euclidean2D> hyperplane) {
            Line line = (Line) hyperplane;
            double linearCombination = MathArrays.linearCombination(this.f108315h, line.f108303b, this.f108314g, line.f108304c, this.f108316i, line.f108305d);
            double linearCombination2 = MathArrays.linearCombination(this.f108308a, line.f108303b, this.f108310c, line.f108304c);
            double linearCombination3 = MathArrays.linearCombination(this.f108309b, line.f108303b, this.f108311d, line.f108304c);
            double sqrt = 1.0d / FastMath.sqrt((linearCombination3 * linearCombination3) + (linearCombination2 * linearCombination2));
            return new Line(FastMath.atan2(-linearCombination3, -linearCombination2) + 3.141592653589793d, sqrt * linearCombination2, sqrt * linearCombination3, sqrt * linearCombination, line.f108306e);
        }

        @Override // org.apache.commons.math3.geometry.partitioning.Transform
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Vector2D apply(Point<Euclidean2D> point) {
            Vector2D vector2D = (Vector2D) point;
            double x = vector2D.getX();
            double y = vector2D.getY();
            return new Vector2D(MathArrays.linearCombination(this.f108308a, x, this.f108310c, y, this.f108312e, 1.0d), MathArrays.linearCombination(this.f108309b, x, this.f108311d, y, this.f108313f, 1.0d));
        }

        @Override // org.apache.commons.math3.geometry.partitioning.Transform
        public SubHyperplane<Euclidean1D> apply(SubHyperplane<Euclidean1D> subHyperplane, Hyperplane<Euclidean2D> hyperplane, Hyperplane<Euclidean2D> hyperplane2) {
            OrientedPoint orientedPoint = (OrientedPoint) subHyperplane.getHyperplane();
            Line line = (Line) hyperplane;
            return new OrientedPoint(((Line) hyperplane2).toSubSpace((Vector<Euclidean2D>) apply(line.toSpace((Vector<Euclidean1D>) orientedPoint.getLocation()))), orientedPoint.isDirect(), line.f108306e).wholeHyperplane();
        }
    }

    public Line(Vector2D vector2D, Vector2D vector2D2, double d) {
        reset(vector2D, vector2D2);
        this.f108306e = d;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Hyperplane<Euclidean2D> copySelf() {
        return new Line(this);
    }

    public double getOffset(Vector<Euclidean2D> vector) {
        return getOffset((Point<Euclidean2D>) vector);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
    public Vector2D toSpace(Vector<Euclidean1D> vector) {
        return toSpace((Point<Euclidean1D>) vector);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    public Vector1D toSubSpace(Vector<Euclidean2D> vector) {
        return toSubSpace((Point<Euclidean2D>) vector);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public SubHyperplane<Euclidean2D> wholeHyperplane() {
        return new SubLine(this, new IntervalsSet(this.f108306e));
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Region<Euclidean2D> wholeSpace() {
        return new PolygonsSet(this.f108306e);
    }

    public static Transform<Euclidean2D, Euclidean1D> getTransform(double d, double d2, double d3, double d4, double d5, double d6) throws MathIllegalArgumentException {
        return new C19118b(d, d2, d3, d4, d5, d6);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getOffset(Point<Euclidean2D> point) {
        Vector2D vector2D = (Vector2D) point;
        return MathArrays.linearCombination(this.f108304c, vector2D.getX(), -this.f108303b, vector2D.getY(), 1.0d, this.f108305d);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Embedding
    public Point<Euclidean2D> toSpace(Point<Euclidean1D> point) {
        double x = ((Vector1D) point).getX();
        return new Vector2D(MathArrays.linearCombination(x, this.f108303b, -this.f108305d, this.f108304c), MathArrays.linearCombination(x, this.f108304c, this.f108305d, this.f108303b));
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Embedding
    public Point<Euclidean1D> toSubSpace(Point<Euclidean2D> point) {
        Vector2D vector2D = (Vector2D) point;
        return new Vector1D(MathArrays.linearCombination(this.f108303b, vector2D.getX(), this.f108304c, vector2D.getY()));
    }

    public Line(Vector2D vector2D, double d, double d2) {
        reset(vector2D, d);
        this.f108306e = d2;
    }

    public Line(double d, double d2, double d3, double d4, double d5) {
        this.f108302a = d;
        this.f108303b = d2;
        this.f108304c = d3;
        this.f108305d = d4;
        this.f108306e = d5;
        this.f108307f = null;
    }

    public void reset(Vector2D vector2D, double d) {
        m67666e();
        double normalizeAngle = MathUtils.normalizeAngle(d, 3.141592653589793d);
        this.f108302a = normalizeAngle;
        this.f108303b = FastMath.cos(normalizeAngle);
        this.f108304c = FastMath.sin(this.f108302a);
        this.f108305d = MathArrays.linearCombination(this.f108303b, vector2D.getY(), -this.f108304c, vector2D.getX());
    }

    @Deprecated
    public Line(Vector2D vector2D, Vector2D vector2D2) {
        this(vector2D, vector2D2, 1.0E-10d);
    }

    @Deprecated
    public Line(Vector2D vector2D, double d) {
        this(vector2D, d, 1.0E-10d);
    }

    public Line(Line line) {
        this.f108302a = MathUtils.normalizeAngle(line.f108302a, 3.141592653589793d);
        this.f108303b = line.f108303b;
        this.f108304c = line.f108304c;
        this.f108305d = line.f108305d;
        this.f108306e = line.f108306e;
        this.f108307f = null;
    }
}
