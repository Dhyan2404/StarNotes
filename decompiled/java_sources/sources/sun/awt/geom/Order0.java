package sun.awt.geom;

import java.awt.geom.Rectangle2D;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes16.dex */
public final class Order0 extends Curve {

    /* renamed from: x */
    private double f116321x;

    /* renamed from: y */
    private double f116322y;

    public Order0(double d, double d2) {
        super(1);
        this.f116321x = d;
        this.f116322y = d2;
    }

    @Override // sun.awt.geom.Curve
    public double TforY(double d) {
        return 0.0d;
    }

    @Override // sun.awt.geom.Curve
    public double XforT(double d) {
        return this.f116321x;
    }

    @Override // sun.awt.geom.Curve
    public double XforY(double d) {
        return d;
    }

    @Override // sun.awt.geom.Curve
    public double YforT(double d) {
        return this.f116322y;
    }

    @Override // sun.awt.geom.Curve
    public boolean accumulateCrossings(Crossings crossings) {
        return this.f116321x > crossings.getXLo() && this.f116321x < crossings.getXHi() && this.f116322y > crossings.getYLo() && this.f116322y < crossings.getYHi();
    }

    @Override // sun.awt.geom.Curve
    public int crossingsFor(double d, double d2) {
        return 0;
    }

    @Override // sun.awt.geom.Curve
    public double dXforT(double d, int i) {
        return 0.0d;
    }

    @Override // sun.awt.geom.Curve
    public double dYforT(double d, int i) {
        return 0.0d;
    }

    @Override // sun.awt.geom.Curve
    public void enlarge(Rectangle2D rectangle2D) {
        rectangle2D.add(this.f116321x, this.f116322y);
    }

    @Override // sun.awt.geom.Curve
    public int getOrder() {
        return 0;
    }

    @Override // sun.awt.geom.Curve
    public Curve getReversedCurve() {
        return this;
    }

    @Override // sun.awt.geom.Curve
    public int getSegment(double[] dArr) {
        dArr[0] = this.f116321x;
        dArr[1] = this.f116322y;
        return 0;
    }

    @Override // sun.awt.geom.Curve
    public Curve getSubCurve(double d, double d2, int i) {
        return this;
    }

    @Override // sun.awt.geom.Curve
    public double getX0() {
        return this.f116321x;
    }

    @Override // sun.awt.geom.Curve
    public double getX1() {
        return this.f116321x;
    }

    @Override // sun.awt.geom.Curve
    public double getXBot() {
        return this.f116321x;
    }

    @Override // sun.awt.geom.Curve
    public double getXMax() {
        return this.f116321x;
    }

    @Override // sun.awt.geom.Curve
    public double getXMin() {
        return this.f116321x;
    }

    @Override // sun.awt.geom.Curve
    public double getXTop() {
        return this.f116321x;
    }

    @Override // sun.awt.geom.Curve
    public double getY0() {
        return this.f116322y;
    }

    @Override // sun.awt.geom.Curve
    public double getY1() {
        return this.f116322y;
    }

    @Override // sun.awt.geom.Curve
    public double getYBot() {
        return this.f116322y;
    }

    @Override // sun.awt.geom.Curve
    public double getYTop() {
        return this.f116322y;
    }

    @Override // sun.awt.geom.Curve
    public double nextVertical(double d, double d2) {
        return d2;
    }
}
