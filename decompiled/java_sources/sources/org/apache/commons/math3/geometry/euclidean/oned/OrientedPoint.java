package org.apache.commons.math3.geometry.euclidean.oned;

import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;

/* loaded from: classes12.dex */
public class OrientedPoint implements Hyperplane<Euclidean1D> {

    /* renamed from: d */
    public static final double f108239d = 1.0E-10d;

    /* renamed from: a */
    public Vector1D f108240a;

    /* renamed from: b */
    public boolean f108241b;

    /* renamed from: c */
    public final double f108242c;

    public OrientedPoint(Vector1D vector1D, boolean z, double d) {
        this.f108240a = vector1D;
        this.f108241b = z;
        this.f108242c = d;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Hyperplane<Euclidean1D> copySelf() {
        return this;
    }

    public Vector1D getLocation() {
        return this.f108240a;
    }

    public double getOffset(Vector<Euclidean1D> vector) {
        return getOffset((Point<Euclidean1D>) vector);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getTolerance() {
        return this.f108242c;
    }

    public boolean isDirect() {
        return this.f108241b;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Point<Euclidean1D> project(Point<Euclidean1D> point) {
        return this.f108240a;
    }

    public void revertSelf() {
        this.f108241b = !this.f108241b;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public boolean sameOrientationAs(Hyperplane<Euclidean1D> hyperplane) {
        return !(this.f108241b ^ ((OrientedPoint) hyperplane).f108241b);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getOffset(Point<Euclidean1D> point) {
        double x = ((Vector1D) point).getX() - this.f108240a.getX();
        return this.f108241b ? x : -x;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public SubHyperplane<Euclidean1D> wholeHyperplane() {
        return new SubOrientedPoint(this, null);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Region<Euclidean1D> wholeSpace() {
        return new IntervalsSet(this.f108242c);
    }

    @Deprecated
    public OrientedPoint(Vector1D vector1D, boolean z) {
        this(vector1D, z, 1.0E-10d);
    }
}
