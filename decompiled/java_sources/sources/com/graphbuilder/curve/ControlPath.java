package com.graphbuilder.curve;

import com.graphbuilder.struc.Bag;

/* loaded from: classes4.dex */
public class ControlPath {

    /* renamed from: a */
    public Bag f38815a = new Bag();

    /* renamed from: b */
    public Bag f38816b = new Bag();

    public void addCurve(Curve curve) {
        if (curve == null) {
            throw new IllegalArgumentException("Curve cannot be null.");
        }
        this.f38815a.add(curve);
    }

    public void addPoint(Point point) {
        if (point == null) {
            throw new IllegalArgumentException("Point cannot be null.");
        }
        this.f38816b.add(point);
    }

    public void ensureCurveCapacity(int i) {
        this.f38815a.ensureCapacity(i);
    }

    public void ensurePointCapacity(int i) {
        this.f38816b.ensureCapacity(i);
    }

    public Curve getCurve(int i) {
        return (Curve) this.f38815a.get(i);
    }

    public Point getPoint(int i) {
        return (Point) this.f38816b.get(i);
    }

    public void insertCurve(Curve curve, int i) {
        if (curve == null) {
            throw new IllegalArgumentException("Curve cannot be null.");
        }
        this.f38815a.insert(curve, i);
    }

    public void insertPoint(Point point, int i) {
        if (point == null) {
            throw new IllegalArgumentException("Point cannot be null.");
        }
        this.f38816b.insert(point, i);
    }

    public int numCurves() {
        return this.f38815a.size();
    }

    public int numPoints() {
        return this.f38816b.size();
    }

    public void removeCurve(Curve curve) {
        this.f38815a.remove(curve);
    }

    public void removePoint(Point point) {
        this.f38816b.remove(point);
    }

    public Curve setCurve(Curve curve, int i) {
        if (curve != null) {
            return (Curve) this.f38815a.set(curve, i);
        }
        throw new IllegalArgumentException("Curve cannot be null.");
    }

    public Point setPoint(Point point, int i) {
        if (point != null) {
            return (Point) this.f38816b.set(point, i);
        }
        throw new IllegalArgumentException("Point cannot be null.");
    }

    public void trimCurveArray() {
        this.f38815a.trimArray();
    }

    public void trimPointArray() {
        this.f38816b.trimArray();
    }

    public void removeCurve(int i) {
        this.f38815a.remove(i);
    }

    public void removePoint(int i) {
        this.f38816b.remove(i);
    }
}
