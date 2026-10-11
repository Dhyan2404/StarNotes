package org.apache.commons.math3.geometry.euclidean.twod;

import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class Segment {

    /* renamed from: a */
    public final Vector2D f108336a;

    /* renamed from: b */
    public final Vector2D f108337b;

    /* renamed from: c */
    public final Line f108338c;

    public Segment(Vector2D vector2D, Vector2D vector2D2, Line line) {
        this.f108336a = vector2D;
        this.f108337b = vector2D2;
        this.f108338c = line;
    }

    public double distance(Vector2D vector2D) {
        double x = this.f108337b.getX() - this.f108336a.getX();
        double y = this.f108337b.getY() - this.f108336a.getY();
        double x2 = (((vector2D.getX() - this.f108336a.getX()) * x) + ((vector2D.getY() - this.f108336a.getY()) * y)) / ((x * x) + (y * y));
        return (x2 < 0.0d || x2 > 1.0d) ? FastMath.min(getStart().distance((Point<Euclidean2D>) vector2D), getEnd().distance((Point<Euclidean2D>) vector2D)) : new Vector2D(this.f108336a.getX() + (x * x2), this.f108336a.getY() + (x2 * y)).distance((Point<Euclidean2D>) vector2D);
    }

    public Vector2D getEnd() {
        return this.f108337b;
    }

    public Line getLine() {
        return this.f108338c;
    }

    public Vector2D getStart() {
        return this.f108336a;
    }
}
