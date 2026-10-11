package org.apache.commons.math3.geometry.partitioning;

import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;

/* loaded from: classes12.dex */
public class BoundaryProjection<S extends Space> {

    /* renamed from: a */
    public final Point<S> f108363a;

    /* renamed from: b */
    public final Point<S> f108364b;

    /* renamed from: c */
    public final double f108365c;

    public BoundaryProjection(Point<S> point, Point<S> point2, double d) {
        this.f108363a = point;
        this.f108364b = point2;
        this.f108365c = d;
    }

    public double getOffset() {
        return this.f108365c;
    }

    public Point<S> getOriginal() {
        return this.f108363a;
    }

    public Point<S> getProjected() {
        return this.f108364b;
    }
}
