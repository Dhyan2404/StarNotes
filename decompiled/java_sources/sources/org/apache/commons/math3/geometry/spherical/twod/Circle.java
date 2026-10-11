package org.apache.commons.math3.geometry.spherical.twod;

import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.threed.Rotation;
import org.apache.commons.math3.geometry.euclidean.threed.Vector3D;
import org.apache.commons.math3.geometry.partitioning.Embedding;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.geometry.partitioning.Transform;
import org.apache.commons.math3.geometry.spherical.oned.Arc;
import org.apache.commons.math3.geometry.spherical.oned.ArcsSet;
import org.apache.commons.math3.geometry.spherical.oned.S1Point;
import org.apache.commons.math3.geometry.spherical.oned.Sphere1D;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class Circle implements Hyperplane<Sphere2D>, Embedding<Sphere2D, Sphere1D> {

    /* renamed from: a */
    public Vector3D f108427a;

    /* renamed from: b */
    public Vector3D f108428b;

    /* renamed from: c */
    public Vector3D f108429c;

    /* renamed from: d */
    public final double f108430d;

    /* renamed from: org.apache.commons.math3.geometry.spherical.twod.Circle$b */
    /* loaded from: classes12.dex */
    public static class C19148b implements Transform<Sphere2D, Sphere1D> {

        /* renamed from: a */
        public final Rotation f108431a;

        public C19148b(Rotation rotation) {
            this.f108431a = rotation;
        }

        @Override // org.apache.commons.math3.geometry.partitioning.Transform
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Circle apply(Hyperplane<Sphere2D> hyperplane) {
            Circle circle = (Circle) hyperplane;
            return new Circle(this.f108431a.applyTo(circle.f108427a), this.f108431a.applyTo(circle.f108428b), this.f108431a.applyTo(circle.f108429c), circle.f108430d);
        }

        @Override // org.apache.commons.math3.geometry.partitioning.Transform
        public SubHyperplane<Sphere1D> apply(SubHyperplane<Sphere1D> subHyperplane, Hyperplane<Sphere2D> hyperplane, Hyperplane<Sphere2D> hyperplane2) {
            return subHyperplane;
        }

        @Override // org.apache.commons.math3.geometry.partitioning.Transform
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public S2Point apply(Point<Sphere2D> point) {
            return new S2Point(this.f108431a.applyTo(((S2Point) point).getVector()));
        }
    }

    public static Transform<Sphere2D, Sphere1D> getTransform(Rotation rotation) {
        return new C19148b(rotation);
    }

    public Arc getInsideArc(Circle circle) {
        double phase = getPhase(circle.f108427a);
        return new Arc(phase - 1.5707963267948966d, phase + 1.5707963267948966d, this.f108430d);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getOffset(Point<Sphere2D> point) {
        return getOffset(((S2Point) point).getVector());
    }

    public double getPhase(Vector3D vector3D) {
        return FastMath.atan2(-vector3D.dotProduct(this.f108429c), -vector3D.dotProduct(this.f108428b)) + 3.141592653589793d;
    }

    public Vector3D getPointAt(double d) {
        return new Vector3D(FastMath.cos(d), this.f108428b, FastMath.sin(d), this.f108429c);
    }

    public Vector3D getPole() {
        return this.f108427a;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Circle getReverse() {
        return new Circle(this.f108427a.negate(), this.f108428b, this.f108429c.negate(), this.f108430d);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getTolerance() {
        return this.f108430d;
    }

    public Vector3D getXAxis() {
        return this.f108428b;
    }

    public Vector3D getYAxis() {
        return this.f108429c;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Point<Sphere2D> project(Point<Sphere2D> point) {
        return toSpace(toSubSpace(point));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r2v2, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public void reset(Vector3D vector3D) {
        this.f108427a = vector3D.normalize();
        Vector3D orthogonal = vector3D.orthogonal();
        this.f108428b = orthogonal;
        this.f108429c = Vector3D.crossProduct(vector3D, orthogonal).normalize();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r0v3, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public void revertSelf() {
        this.f108429c = this.f108429c.negate();
        this.f108427a = this.f108427a.negate();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public boolean sameOrientationAs(Hyperplane<Sphere2D> hyperplane) {
        return Vector3D.dotProduct(this.f108427a, ((Circle) hyperplane).f108427a) >= 0.0d;
    }

    public Circle(Vector3D vector3D, double d) {
        reset(vector3D);
        this.f108430d = d;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Hyperplane<Sphere2D> copySelf() {
        return new Circle(this);
    }

    public double getOffset(Vector3D vector3D) {
        return Vector3D.angle(this.f108427a, vector3D) - 1.5707963267948966d;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Embedding
    public Point<Sphere2D> toSpace(Point<Sphere1D> point) {
        return new S2Point(getPointAt(((S1Point) point).getAlpha()));
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Embedding
    public Point<Sphere1D> toSubSpace(Point<Sphere2D> point) {
        return new S1Point(getPhase(((S2Point) point).getVector()));
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public SubHyperplane<Sphere2D> wholeHyperplane() {
        return new SubCircle(this, new ArcsSet(this.f108430d));
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Region<Sphere2D> wholeSpace() {
        return new SphericalPolygonsSet(this.f108430d);
    }

    public Circle(S2Point s2Point, S2Point s2Point2, double d) {
        reset(s2Point.getVector().crossProduct(s2Point2.getVector()));
        this.f108430d = d;
    }

    public Circle(Vector3D vector3D, Vector3D vector3D2, Vector3D vector3D3, double d) {
        this.f108427a = vector3D;
        this.f108428b = vector3D2;
        this.f108429c = vector3D3;
        this.f108430d = d;
    }

    public Circle(Circle circle) {
        this(circle.f108427a, circle.f108428b, circle.f108429c, circle.f108430d);
    }
}
