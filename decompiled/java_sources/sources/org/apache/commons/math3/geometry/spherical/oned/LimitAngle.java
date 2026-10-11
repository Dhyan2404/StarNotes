package org.apache.commons.math3.geometry.spherical.oned;

import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;

/* loaded from: classes12.dex */
public class LimitAngle implements Hyperplane<Sphere1D> {

    /* renamed from: a */
    public S1Point f108423a;

    /* renamed from: b */
    public boolean f108424b;

    /* renamed from: c */
    public final double f108425c;

    public LimitAngle(S1Point s1Point, boolean z, double d) {
        this.f108423a = s1Point;
        this.f108424b = z;
        this.f108425c = d;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Hyperplane<Sphere1D> copySelf() {
        return this;
    }

    public S1Point getLocation() {
        return this.f108423a;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getOffset(Point<Sphere1D> point) {
        double alpha = ((S1Point) point).getAlpha() - this.f108423a.getAlpha();
        return this.f108424b ? alpha : -alpha;
    }

    public LimitAngle getReverse() {
        return new LimitAngle(this.f108423a, !this.f108424b, this.f108425c);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public double getTolerance() {
        return this.f108425c;
    }

    public boolean isDirect() {
        return this.f108424b;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Point<Sphere1D> project(Point<Sphere1D> point) {
        return this.f108423a;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public boolean sameOrientationAs(Hyperplane<Sphere1D> hyperplane) {
        return !(this.f108424b ^ ((LimitAngle) hyperplane).f108424b);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public SubHyperplane<Sphere1D> wholeHyperplane() {
        return new SubLimitAngle(this, null);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Hyperplane
    public Region<Sphere1D> wholeSpace() {
        return new ArcsSet(this.f108425c);
    }
}
