package com.sun.javafx.geom;

import sun.awt.geom.Crossings;

/* loaded from: classes9.dex */
final class Order0 extends Curve {

    /* renamed from: x */
    private double f64040x;

    /* renamed from: y */
    private double f64041y;

    public Order0(double d, double d2) {
        super(1);
        this.f64040x = d;
        this.f64041y = d2;
    }

    @Override // com.sun.javafx.geom.Curve
    public double TforY(double d) {
        return 0.0d;
    }

    @Override // com.sun.javafx.geom.Curve
    public double XforT(double d) {
        return this.f64040x;
    }

    @Override // com.sun.javafx.geom.Curve
    public double XforY(double d) {
        return d;
    }

    @Override // com.sun.javafx.geom.Curve
    public double YforT(double d) {
        return this.f64041y;
    }

    @Override // com.sun.javafx.geom.Curve
    public boolean accumulateCrossings(Crossings crossings) {
        return this.f64040x > crossings.getXLo() && this.f64040x < crossings.getXHi() && this.f64041y > crossings.getYLo() && this.f64041y < crossings.getYHi();
    }

    @Override // com.sun.javafx.geom.Curve
    public int crossingsFor(double d, double d2) {
        return 0;
    }

    @Override // com.sun.javafx.geom.Curve
    public double dXforT(double d, int i) {
        return 0.0d;
    }

    @Override // com.sun.javafx.geom.Curve
    public double dYforT(double d, int i) {
        return 0.0d;
    }

    @Override // com.sun.javafx.geom.Curve
    public void enlarge(RectBounds rectBounds) {
        rectBounds.add((float) this.f64040x, (float) this.f64041y);
    }

    @Override // com.sun.javafx.geom.Curve
    public int getOrder() {
        return 0;
    }

    @Override // com.sun.javafx.geom.Curve
    public Curve getReversedCurve() {
        return this;
    }

    @Override // com.sun.javafx.geom.Curve
    public int getSegment(float[] fArr) {
        fArr[0] = (float) this.f64040x;
        fArr[1] = (float) this.f64041y;
        return 0;
    }

    @Override // com.sun.javafx.geom.Curve
    public Curve getSubCurve(double d, double d2, int i) {
        return this;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getX0() {
        return this.f64040x;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getX1() {
        return this.f64040x;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getXBot() {
        return this.f64040x;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getXMax() {
        return this.f64040x;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getXMin() {
        return this.f64040x;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getXTop() {
        return this.f64040x;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getY0() {
        return this.f64041y;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getY1() {
        return this.f64041y;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getYBot() {
        return this.f64041y;
    }

    @Override // com.sun.javafx.geom.Curve
    public double getYTop() {
        return this.f64041y;
    }

    @Override // com.sun.javafx.geom.Curve
    public double nextVertical(double d, double d2) {
        return d2;
    }
}
