package sun.awt.geom;

/* loaded from: classes16.dex */
final class CurveLink {
    Curve curve;
    int etag;
    CurveLink next;
    double ybot;
    double ytop;

    public CurveLink(Curve curve, double d, double d2, int i) {
        this.curve = curve;
        this.ytop = d;
        this.ybot = d2;
        this.etag = i;
        if (d < curve.getYTop() || this.ybot > curve.getYBot()) {
            throw new InternalError("bad curvelink [" + this.ytop + "=>" + this.ybot + "] for " + curve);
        }
    }

    public boolean absorb(CurveLink curveLink) {
        return absorb(curveLink.curve, curveLink.ytop, curveLink.ybot, curveLink.etag);
    }

    public Curve getCurve() {
        return this.curve;
    }

    public int getEdgeTag() {
        return this.etag;
    }

    public Curve getMoveto() {
        return new Order0(getXTop(), getYTop());
    }

    public CurveLink getNext() {
        return this.next;
    }

    public Curve getSubCurve() {
        return (this.ytop == this.curve.getYTop() && this.ybot == this.curve.getYBot()) ? this.curve.getWithDirection(this.etag) : this.curve.getSubCurve(this.ytop, this.ybot, this.etag);
    }

    public double getX() {
        return this.curve.XforY(this.ytop);
    }

    public double getXBot() {
        return this.curve.XforY(this.ybot);
    }

    public double getXTop() {
        return this.curve.XforY(this.ytop);
    }

    public double getYBot() {
        return this.ybot;
    }

    public double getYTop() {
        return this.ytop;
    }

    public boolean isEmpty() {
        return this.ytop == this.ybot;
    }

    public void setNext(CurveLink curveLink) {
        this.next = curveLink;
    }

    public boolean absorb(Curve curve, double d, double d2, int i) {
        if (this.curve != curve || this.etag != i || this.ybot < d || this.ytop > d2) {
            return false;
        }
        if (d >= curve.getYTop() && d2 <= curve.getYBot()) {
            this.ytop = Math.min(this.ytop, d);
            this.ybot = Math.max(this.ybot, d2);
            return true;
        }
        throw new InternalError("bad curvelink [" + d + "=>" + d2 + "] for " + curve);
    }
}
