package sun.awt.geom;

import com.couchbase.lite.internal.BaseTLSIdentity;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes16.dex */
final class Edge {
    static final int GROW_PARTS = 10;
    static final int INIT_PARTS = 4;
    double activey;
    int ctag;
    Curve curve;
    int equivalence;
    int etag;
    private Edge lastEdge;
    private double lastLimit;
    private int lastResult;

    public Edge(Curve curve, int i) {
        this(curve, i, 0);
    }

    public int compareTo(Edge edge, double[] dArr) {
        if (edge == this.lastEdge) {
            double d = dArr[0];
            double d2 = this.lastLimit;
            if (d < d2) {
                if (dArr[1] > d2) {
                    dArr[1] = d2;
                }
                return this.lastResult;
            }
        }
        if (this == edge.lastEdge) {
            double d3 = dArr[0];
            double d4 = edge.lastLimit;
            if (d3 < d4) {
                if (dArr[1] > d4) {
                    dArr[1] = d4;
                }
                return 0 - edge.lastResult;
            }
        }
        int compareTo = this.curve.compareTo(edge.curve, dArr);
        this.lastEdge = edge;
        this.lastLimit = dArr[1];
        this.lastResult = compareTo;
        return compareTo;
    }

    public Curve getCurve() {
        return this.curve;
    }

    public int getCurveTag() {
        return this.ctag;
    }

    public int getEdgeTag() {
        return this.etag;
    }

    public int getEquivalence() {
        return this.equivalence;
    }

    public boolean isActiveFor(double d, int i) {
        return this.etag == i && this.activey >= d;
    }

    public void record(double d, int i) {
        this.activey = d;
        this.etag = i;
    }

    public void setEdgeTag(int i) {
        this.etag = i;
    }

    public void setEquivalence(int i) {
        this.equivalence = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Edge[");
        sb.append(this.curve);
        sb.append(", ");
        sb.append(this.ctag == 0 ? "L" : "R");
        sb.append(", ");
        int i = this.etag;
        sb.append(i == 1 ? "I" : i == -1 ? BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION : "N");
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    public Edge(Curve curve, int i, int i2) {
        this.curve = curve;
        this.ctag = i;
        this.etag = i2;
    }
}
