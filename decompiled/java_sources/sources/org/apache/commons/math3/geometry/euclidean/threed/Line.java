package org.apache.commons.math3.geometry.euclidean.threed;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.partitioning.Embedding;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class Line implements Embedding<Euclidean3D, Euclidean1D> {

    /* renamed from: d */
    public static final double f108252d = 1.0E-10d;

    /* renamed from: a */
    public Vector3D f108253a;

    /* renamed from: b */
    public Vector3D f108254b;

    /* renamed from: c */
    public final double f108255c;

    public Line(Vector3D vector3D, Vector3D vector3D2, double d) throws MathIllegalArgumentException {
        reset(vector3D, vector3D2);
        this.f108255c = d;
    }

    public Vector3D closestPoint(Line line) {
        double dotProduct = this.f108253a.dotProduct(line.f108253a);
        double d = 1.0d - (dotProduct * dotProduct);
        if (d < Precision.EPSILON) {
            return this.f108254b;
        }
        Vector<Euclidean3D> subtract = line.f108254b.subtract((Vector<Euclidean3D>) this.f108254b);
        return new Vector3D(1.0d, this.f108254b, (subtract.dotProduct(this.f108253a) - (subtract.dotProduct(line.f108253a) * dotProduct)) / d, this.f108253a);
    }

    public boolean contains(Vector3D vector3D) {
        return distance(vector3D) < this.f108255c;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public double distance(Vector3D vector3D) {
        ?? subtract = vector3D.subtract((Vector<Euclidean3D>) this.f108254b);
        return new Vector3D(1.0d, subtract, -subtract.dotProduct(this.f108253a), this.f108253a).getNorm();
    }

    public double getAbscissa(Vector3D vector3D) {
        return vector3D.subtract((Vector<Euclidean3D>) this.f108254b).dotProduct(this.f108253a);
    }

    public Vector3D getDirection() {
        return this.f108253a;
    }

    public Vector3D getOrigin() {
        return this.f108254b;
    }

    public double getTolerance() {
        return this.f108255c;
    }

    public Vector3D intersection(Line line) {
        Vector3D closestPoint = closestPoint(line);
        if (line.contains(closestPoint)) {
            return closestPoint;
        }
        return null;
    }

    public boolean isSimilarTo(Line line) {
        double angle = Vector3D.angle(this.f108253a, line.f108253a);
        double d = this.f108255c;
        return (angle < d || angle > 3.141592653589793d - d) && contains(line.f108254b);
    }

    public Vector3D pointAt(double d) {
        return new Vector3D(1.0d, this.f108254b, d, this.f108253a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [org.apache.commons.math3.geometry.Vector, org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public void reset(Vector3D vector3D, Vector3D vector3D2) throws MathIllegalArgumentException {
        ?? subtract = vector3D2.subtract((Vector<Euclidean3D>) vector3D);
        double normSq = subtract.getNormSq();
        if (normSq == 0.0d) {
            throw new MathIllegalArgumentException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        this.f108253a = new Vector3D(1.0d / FastMath.sqrt(normSq), (Vector3D) subtract);
        this.f108254b = new Vector3D(1.0d, vector3D, (-vector3D.dotProduct(subtract)) / normSq, subtract);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Line revert() {
        Line line = new Line(this);
        line.f108253a = line.f108253a.negate();
        return line;
    }

    public SubLine wholeLine() {
        return new SubLine(this, new IntervalsSet(this.f108255c));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Vector3D toSpace(Vector<Euclidean1D> vector) {
        return toSpace((Point<Euclidean1D>) vector);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    public Vector1D toSubSpace(Vector<Euclidean3D> vector) {
        return toSubSpace((Point<Euclidean3D>) vector);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Embedding
    public Point<Euclidean3D> toSpace(Point<Euclidean1D> point) {
        return pointAt(((Vector1D) point).getX());
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Embedding
    public Point<Euclidean1D> toSubSpace(Point<Euclidean3D> point) {
        return new Vector1D(getAbscissa((Vector3D) point));
    }

    public Line(Line line) {
        this.f108253a = line.f108253a;
        this.f108254b = line.f108254b;
        this.f108255c = line.f108255c;
    }

    public double distance(Line line) {
        Vector3D crossProduct = Vector3D.crossProduct(this.f108253a, line.f108253a);
        double norm = crossProduct.getNorm();
        if (norm < Precision.SAFE_MIN) {
            return distance(line.f108254b);
        }
        return FastMath.abs(line.f108254b.subtract((Vector<Euclidean3D>) this.f108254b).dotProduct(crossProduct) / norm);
    }

    @Deprecated
    public Line(Vector3D vector3D, Vector3D vector3D2) throws MathIllegalArgumentException {
        this(vector3D, vector3D2, 1.0E-10d);
    }
}
