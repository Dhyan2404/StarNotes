package org.apache.commons.math3.geometry.euclidean.threed;

import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;
import org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.geometry.partitioning.Embedding;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class Plane implements Hyperplane<Euclidean3D>, Embedding<Euclidean3D, Euclidean2D> {

    /* renamed from: g */
    public static final double f108262g = 1.0E-10d;

    /* renamed from: a */
    public double f108263a;

    /* renamed from: b */
    public Vector3D f108264b;

    /* renamed from: c */
    public Vector3D f108265c;

    /* renamed from: d */
    public Vector3D f108266d;

    /* renamed from: e */
    public Vector3D f108267e;

    /* renamed from: f */
    public final double f108268f;

    public Plane(Vector3D vector3D, double d) throws MathArithmeticException {
        m67640b(vector3D);
        this.f108268f = d;
        this.f108263a = 0.0d;
        m67639a();
    }

    /* renamed from: a */
    public final void m67639a() {
        this.f108264b = new Vector3D(-this.f108263a, this.f108267e);
        Vector3D orthogonal = this.f108267e.orthogonal();
        this.f108265c = orthogonal;
        this.f108266d = Vector3D.crossProduct(this.f108267e, orthogonal);
    }

    /* renamed from: b */
    public final void m67640b(Vector3D vector3D) throws MathArithmeticException {
        double norm = vector3D.getNorm();
        if (norm < 1.0E-10d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        this.f108267e = new Vector3D(1.0d / norm, vector3D);
    }

    public boolean contains(Vector3D vector3D) {
        return FastMath.abs(getOffset((Vector<Euclidean3D>) vector3D)) < this.f108268f;
    }

    public Vector3D getNormal() {
        return this.f108267e;
    }

    public double getOffset(Plane plane) {
        return this.f108263a + (sameOrientationAs(plane) ? -plane.f108263a : plane.f108263a);
    }

    public Vector3D getOrigin() {
        return this.f108264b;
    }

    public Vector3D getPointAt(Vector2D vector2D, double d) {
        return new Vector3D(vector2D.getX(), this.f108265c, vector2D.getY(), this.f108266d, d - this.f108263a, this.f108267e);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getTolerance() {
        return this.f108268f;
    }

    public Vector3D getU() {
        return this.f108265c;
    }

    public Vector3D getV() {
        return this.f108266d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.apache.commons.math3.geometry.Vector, org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Vector3D intersection(Line line) {
        Vector3D direction = line.getDirection();
        double dotProduct = this.f108267e.dotProduct(direction);
        if (FastMath.abs(dotProduct) < 1.0E-10d) {
            return null;
        }
        ?? space = line.toSpace((Point<Euclidean1D>) Vector1D.ZERO);
        return new Vector3D(1.0d, space, (-(this.f108263a + this.f108267e.dotProduct(space))) / dotProduct, direction);
    }

    public boolean isSimilarTo(Plane plane) {
        double angle = Vector3D.angle(this.f108267e, plane.f108267e);
        return (angle < 1.0E-10d && FastMath.abs(this.f108263a - plane.f108263a) < this.f108268f) || (angle > 3.141592653489793d && FastMath.abs(this.f108263a + plane.f108263a) < this.f108268f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.commons.math3.geometry.Vector, org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Point<Euclidean3D> project(Point<Euclidean3D> point) {
        return toSpace((Vector<Euclidean2D>) toSubSpace(point));
    }

    public void reset(Vector3D vector3D, Vector3D vector3D2) throws MathArithmeticException {
        m67640b(vector3D2);
        this.f108263a = -vector3D.dotProduct(this.f108267e);
        m67639a();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public void revertSelf() {
        Vector3D vector3D = this.f108265c;
        this.f108265c = this.f108266d;
        this.f108266d = vector3D;
        this.f108267e = this.f108267e.negate();
        this.f108263a = -this.f108263a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r5v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Plane rotate(Vector3D vector3D, Rotation rotation) {
        Plane plane = new Plane((Vector3D) vector3D.add((Vector<Euclidean3D>) rotation.applyTo((Vector3D) this.f108264b.subtract((Vector<Euclidean3D>) vector3D))), rotation.applyTo(this.f108267e), this.f108268f);
        plane.f108265c = rotation.applyTo(this.f108265c);
        plane.f108266d = rotation.applyTo(this.f108266d);
        return plane;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public boolean sameOrientationAs(Hyperplane<Euclidean3D> hyperplane) {
        return ((Plane) hyperplane).f108267e.dotProduct(this.f108267e) > 0.0d;
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Plane translate(Vector3D vector3D) {
        Plane plane = new Plane((Vector3D) this.f108264b.add((Vector<Euclidean3D>) vector3D), this.f108267e, this.f108268f);
        plane.f108265c = this.f108265c;
        plane.f108266d = this.f108266d;
        return plane;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Hyperplane<Euclidean3D> copySelf() {
        return new Plane(this);
    }

    public double getOffset(Vector<Euclidean3D> vector) {
        return getOffset((Point<Euclidean3D>) vector);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Vector3D toSpace(Vector<Euclidean2D> vector) {
        return toSpace((Point<Euclidean2D>) vector);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
    public Vector2D toSubSpace(Vector<Euclidean3D> vector) {
        return toSubSpace((Point<Euclidean3D>) vector);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public SubHyperplane<Euclidean3D> wholeHyperplane() {
        return new SubPlane(this, new PolygonsSet(this.f108268f));
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Region<Euclidean3D> wholeSpace() {
        return new PolyhedronsSet(this.f108268f);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getOffset(Point<Euclidean3D> point) {
        return ((Vector3D) point).dotProduct(this.f108267e) + this.f108263a;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Embedding
    public Point<Euclidean3D> toSpace(Point<Euclidean2D> point) {
        Vector2D vector2D = (Vector2D) point;
        return new Vector3D(vector2D.getX(), this.f108265c, vector2D.getY(), this.f108266d, -this.f108263a, this.f108267e);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Embedding
    public Point<Euclidean2D> toSubSpace(Point<Euclidean3D> point) {
        Vector3D vector3D = (Vector3D) point;
        return new Vector2D(vector3D.dotProduct(this.f108265c), vector3D.dotProduct(this.f108266d));
    }

    public void reset(Plane plane) {
        this.f108263a = plane.f108263a;
        this.f108264b = plane.f108264b;
        this.f108265c = plane.f108265c;
        this.f108266d = plane.f108266d;
        this.f108267e = plane.f108267e;
    }

    public Plane(Vector3D vector3D, Vector3D vector3D2, double d) throws MathArithmeticException {
        m67640b(vector3D2);
        this.f108268f = d;
        this.f108263a = -vector3D.dotProduct(this.f108267e);
        m67639a();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Line intersection(Plane plane) {
        Vector3D crossProduct = Vector3D.crossProduct(this.f108267e, plane.f108267e);
        double norm = crossProduct.getNorm();
        double d = this.f108268f;
        if (norm < d) {
            return null;
        }
        Vector3D intersection = intersection(this, plane, new Plane(crossProduct, d));
        return new Line(intersection, intersection.add((Vector<Euclidean3D>) crossProduct), this.f108268f);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Plane(Vector3D vector3D, Vector3D vector3D2, Vector3D vector3D3, double d) throws MathArithmeticException {
        this(vector3D, vector3D2.subtract((Vector<Euclidean3D>) vector3D).crossProduct(vector3D3.subtract((Vector<Euclidean3D>) vector3D)), d);
    }

    public static Vector3D intersection(Plane plane, Plane plane2, Plane plane3) {
        double x = plane.f108267e.getX();
        double y = plane.f108267e.getY();
        double z = plane.f108267e.getZ();
        double d = plane.f108263a;
        double x2 = plane2.f108267e.getX();
        double y2 = plane2.f108267e.getY();
        double z2 = plane2.f108267e.getZ();
        double d2 = plane2.f108263a;
        double x3 = plane3.f108267e.getX();
        double y3 = plane3.f108267e.getY();
        double z3 = plane3.f108267e.getZ();
        double d3 = plane3.f108263a;
        double d4 = (y2 * z3) - (y3 * z2);
        double d5 = (z2 * x3) - (z3 * x2);
        double d6 = (x2 * y3) - (x3 * y2);
        double d7 = (x * d4) + (y * d5) + (z * d6);
        if (FastMath.abs(d7) < 1.0E-10d) {
            return null;
        }
        double d8 = 1.0d / d7;
        return new Vector3D(((((-d4) * d) - (((z * y3) - (z3 * y)) * d2)) - (((z2 * y) - (z * y2)) * d3)) * d8, ((((-d5) * d) - (((z3 * x) - (z * x3)) * d2)) - (((z * x2) - (z2 * x)) * d3)) * d8, ((((-d6) * d) - (((x3 * y) - (y3 * x)) * d2)) - (((y2 * x) - (y * x2)) * d3)) * d8);
    }

    @Deprecated
    public Plane(Vector3D vector3D) throws MathArithmeticException {
        this(vector3D, 1.0E-10d);
    }

    @Deprecated
    public Plane(Vector3D vector3D, Vector3D vector3D2) throws MathArithmeticException {
        this(vector3D, vector3D2, 1.0E-10d);
    }

    @Deprecated
    public Plane(Vector3D vector3D, Vector3D vector3D2, Vector3D vector3D3) throws MathArithmeticException {
        this(vector3D, vector3D2, vector3D3, 1.0E-10d);
    }

    public Plane(Plane plane) {
        this.f108263a = plane.f108263a;
        this.f108264b = plane.f108264b;
        this.f108265c = plane.f108265c;
        this.f108266d = plane.f108266d;
        this.f108267e = plane.f108267e;
        this.f108268f = plane.f108268f;
    }
}
