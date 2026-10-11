package sun.awt.geom;

import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Vector;

/* loaded from: classes16.dex */
public abstract class AreaOp {
    public static final int CTAG_LEFT = 0;
    public static final int CTAG_RIGHT = 1;
    public static final int ETAG_ENTER = 1;
    public static final int ETAG_EXIT = -1;
    public static final int ETAG_IGNORE = 0;
    public static final int RSTAG_INSIDE = 1;
    public static final int RSTAG_OUTSIDE = -1;
    private static Comparator YXTopComparator = new Comparator() { // from class: sun.awt.geom.AreaOp.1
        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            Curve curve = ((Edge) obj).getCurve();
            Curve curve2 = ((Edge) obj2).getCurve();
            double yTop = curve.getYTop();
            double yTop2 = curve2.getYTop();
            if (yTop == yTop2) {
                yTop = curve.getXTop();
                yTop2 = curve2.getXTop();
                if (yTop == yTop2) {
                    return 0;
                }
            }
            return yTop < yTop2 ? -1 : 1;
        }
    };
    private static CurveLink[] EmptyLinkList = new CurveLink[2];
    private static ChainEnd[] EmptyChainList = new ChainEnd[2];

    /* loaded from: classes16.dex */
    public static class AddOp extends CAGOp {
        @Override // sun.awt.geom.AreaOp.CAGOp
        public boolean newClassification(boolean z, boolean z2) {
            return z || z2;
        }
    }

    /* loaded from: classes16.dex */
    public static abstract class CAGOp extends AreaOp {
        boolean inLeft;
        boolean inResult;
        boolean inRight;

        public CAGOp() {
            super();
        }

        @Override // sun.awt.geom.AreaOp
        public int classify(Edge edge) {
            if (edge.getCurveTag() == 0) {
                this.inLeft = !this.inLeft;
            } else {
                this.inRight = !this.inRight;
            }
            boolean newClassification = newClassification(this.inLeft, this.inRight);
            if (this.inResult == newClassification) {
                return 0;
            }
            this.inResult = newClassification;
            return newClassification ? 1 : -1;
        }

        @Override // sun.awt.geom.AreaOp
        public int getState() {
            return this.inResult ? 1 : -1;
        }

        public abstract boolean newClassification(boolean z, boolean z2);

        @Override // sun.awt.geom.AreaOp
        public void newRow() {
            this.inLeft = false;
            this.inRight = false;
            this.inResult = false;
        }
    }

    /* loaded from: classes16.dex */
    public static class EOWindOp extends AreaOp {
        private boolean inside;

        public EOWindOp() {
            super();
        }

        @Override // sun.awt.geom.AreaOp
        public int classify(Edge edge) {
            boolean z = !this.inside;
            this.inside = z;
            return z ? 1 : -1;
        }

        @Override // sun.awt.geom.AreaOp
        public int getState() {
            return this.inside ? 1 : -1;
        }

        @Override // sun.awt.geom.AreaOp
        public void newRow() {
            this.inside = false;
        }
    }

    /* loaded from: classes16.dex */
    public static class IntOp extends CAGOp {
        @Override // sun.awt.geom.AreaOp.CAGOp
        public boolean newClassification(boolean z, boolean z2) {
            return z && z2;
        }
    }

    /* loaded from: classes16.dex */
    public static class NZWindOp extends AreaOp {
        private int count;

        public NZWindOp() {
            super();
        }

        @Override // sun.awt.geom.AreaOp
        public int classify(Edge edge) {
            int i = this.count;
            int i2 = i == 0 ? 1 : 0;
            int direction = i + edge.getCurve().getDirection();
            this.count = direction;
            if (direction == 0) {
                return -1;
            }
            return i2;
        }

        @Override // sun.awt.geom.AreaOp
        public int getState() {
            return this.count == 0 ? -1 : 1;
        }

        @Override // sun.awt.geom.AreaOp
        public void newRow() {
            this.count = 0;
        }
    }

    /* loaded from: classes16.dex */
    public static class SubOp extends CAGOp {
        @Override // sun.awt.geom.AreaOp.CAGOp
        public boolean newClassification(boolean z, boolean z2) {
            return z && !z2;
        }
    }

    /* loaded from: classes16.dex */
    public static class XorOp extends CAGOp {
        @Override // sun.awt.geom.AreaOp.CAGOp
        public boolean newClassification(boolean z, boolean z2) {
            return z != z2;
        }
    }

    private static void addEdges(Vector vector, Vector vector2, int i) {
        Enumeration elements = vector2.elements();
        while (elements.hasMoreElements()) {
            Curve curve = (Curve) elements.nextElement();
            if (curve.getOrder() > 0) {
                vector.add(new Edge(curve, i));
            }
        }
    }

    public static void finalizeSubCurves(Vector vector, Vector vector2) {
        int size = vector2.size();
        if (size == 0) {
            return;
        }
        if ((size & 1) != 0) {
            throw new InternalError("Odd number of chains!");
        }
        ChainEnd[] chainEndArr = new ChainEnd[size];
        vector2.toArray(chainEndArr);
        for (int i = 1; i < size; i += 2) {
            CurveLink linkTo = chainEndArr[i - 1].linkTo(chainEndArr[i]);
            if (linkTo != null) {
                vector.add(linkTo);
            }
        }
        vector2.clear();
    }

    public static boolean obstructs(double d, double d2, int i) {
        if ((i & 1) == 0) {
            if (d <= d2) {
                return true;
            }
        } else if (d < d2) {
            return true;
        }
        return false;
    }

    private Vector pruneEdges(Vector vector) {
        CurveLink curveLink;
        Vector vector2;
        Vector vector3;
        int classify;
        int i;
        double d;
        int i2;
        int i3;
        int i4;
        int size = vector.size();
        if (size < 2) {
            return vector;
        }
        Edge[] edgeArr = (Edge[]) vector.toArray(new Edge[size]);
        Arrays.sort(edgeArr, YXTopComparator);
        double[] dArr = new double[2];
        Vector vector4 = new Vector();
        Vector vector5 = new Vector();
        Vector vector6 = new Vector();
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i6 < size) {
            double d2 = dArr[i5];
            int i8 = i7 - 1;
            int i9 = i8;
            while (i8 >= i6) {
                Edge edge = edgeArr[i8];
                if (edge.getCurve().getYBot() > d2) {
                    if (i9 > i8) {
                        edgeArr[i9] = edge;
                    }
                    i9--;
                }
                i8--;
            }
            i6 = i9 + 1;
            if (i6 >= i7) {
                if (i7 >= size) {
                    break;
                }
                d2 = edgeArr[i7].getCurve().getYTop();
                if (d2 > dArr[i5]) {
                    finalizeSubCurves(vector4, vector5);
                }
                dArr[i5] = d2;
            }
            while (i7 < size && edgeArr[i7].getCurve().getYTop() <= d2) {
                i7++;
            }
            dArr[1] = edgeArr[i6].getCurve().getYBot();
            if (i7 < size) {
                double yTop = edgeArr[i7].getCurve().getYTop();
                if (dArr[1] > yTop) {
                    dArr[1] = yTop;
                }
            }
            int i10 = 1;
            for (int i11 = i6; i11 < i7; i11++) {
                Edge edge2 = edgeArr[i11];
                edge2.setEquivalence(i5);
                int i12 = i11;
                while (true) {
                    if (i12 > i6) {
                        Edge edge3 = edgeArr[i12 - 1];
                        int compareTo = edge2.compareTo(edge3, dArr);
                        if (dArr[1] <= dArr[i5]) {
                            throw new InternalError("backstepping to " + dArr[1] + " from " + dArr[i5]);
                        }
                        if (compareTo < 0) {
                            edgeArr[i12] = edge3;
                            i12--;
                        } else if (compareTo == 0) {
                            int equivalence = edge3.getEquivalence();
                            if (equivalence == 0) {
                                i4 = i10 + 1;
                                edge3.setEquivalence(i10);
                            } else {
                                i4 = i10;
                                i10 = equivalence;
                            }
                            edge2.setEquivalence(i10);
                            i10 = i4;
                        }
                    }
                }
                edgeArr[i12] = edge2;
            }
            newRow();
            double d3 = dArr[i5];
            double d4 = dArr[1];
            int i13 = i6;
            while (i13 < i7) {
                Edge edge4 = edgeArr[i13];
                int equivalence2 = edge4.getEquivalence();
                if (equivalence2 != 0) {
                    int i14 = i13;
                    int state = getState();
                    vector2 = vector4;
                    int i15 = state == 1 ? -1 : 1;
                    double d5 = d4;
                    Edge edge5 = null;
                    Edge edge6 = edge4;
                    while (true) {
                        classify(edge4);
                        if (edge5 == null && edge4.isActiveFor(d3, i15)) {
                            edge5 = edge4;
                        }
                        double yBot = edge4.getCurve().getYBot();
                        if (yBot > d5) {
                            edge6 = edge4;
                            d5 = yBot;
                            i2 = i15;
                        } else {
                            i2 = i15;
                        }
                        i3 = i14 + 1;
                        if (i3 >= i7) {
                            vector3 = vector5;
                            break;
                        }
                        edge4 = edgeArr[i3];
                        vector3 = vector5;
                        if (edge4.getEquivalence() != equivalence2) {
                            break;
                        }
                        i14 = i3;
                        i15 = i2;
                        vector5 = vector3;
                    }
                    i = i3 - 1;
                    if (getState() == state) {
                        i2 = 0;
                    } else {
                        if (edge5 == null) {
                            edge5 = edge6;
                        }
                        edge4 = edge5;
                    }
                    classify = i2;
                } else {
                    vector2 = vector4;
                    vector3 = vector5;
                    classify = classify(edge4);
                    i = i13;
                }
                if (classify != 0) {
                    edge4.record(d4, classify);
                    d = d4;
                    vector6.add(new CurveLink(edge4.getCurve(), d3, d, classify));
                } else {
                    d = d4;
                }
                i13 = i + 1;
                vector4 = vector2;
                d4 = d;
                vector5 = vector3;
            }
            Vector vector7 = vector4;
            Vector vector8 = vector5;
            double d6 = d4;
            if (getState() != -1) {
                System.out.println("Still inside at end of active edge list!");
                System.out.println("num curves = " + (i7 - i6));
                System.out.println("num links = " + vector6.size());
                System.out.println("y top = " + dArr[0]);
                if (i7 < size) {
                    System.out.println("y top of next curve = " + edgeArr[i7].getCurve().getYTop());
                } else {
                    System.out.println("no more curves");
                }
                for (int i16 = i6; i16 < i7; i16++) {
                    Edge edge7 = edgeArr[i16];
                    System.out.println(edge7);
                    int equivalence3 = edge7.getEquivalence();
                    if (equivalence3 != 0) {
                        System.out.println("  was equal to " + equivalence3 + RemoveAudioAction.f58149k);
                    }
                }
            }
            vector4 = vector7;
            vector5 = vector8;
            resolveLinks(vector4, vector5, vector6);
            vector6.clear();
            i5 = 0;
            dArr[0] = d6;
        }
        finalizeSubCurves(vector4, vector5);
        Vector vector9 = new Vector();
        Enumeration elements = vector4.elements();
        while (elements.hasMoreElements()) {
            CurveLink curveLink2 = (CurveLink) elements.nextElement();
            vector9.add(curveLink2.getMoveto());
            while (true) {
                curveLink = curveLink2;
                do {
                    curveLink2 = curveLink2.getNext();
                    if (curveLink2 != null) {
                    }
                } while (curveLink.absorb(curveLink2));
                vector9.add(curveLink.getSubCurve());
            }
            vector9.add(curveLink.getSubCurve());
        }
        return vector9;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0111 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void resolveLinks(java.util.Vector r17, java.util.Vector r18, java.util.Vector r19) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.awt.geom.AreaOp.resolveLinks(java.util.Vector, java.util.Vector, java.util.Vector):void");
    }

    public Vector calculate(Vector vector, Vector vector2) {
        Vector vector3 = new Vector();
        addEdges(vector3, vector, 0);
        addEdges(vector3, vector2, 1);
        return pruneEdges(vector3);
    }

    public abstract int classify(Edge edge);

    public abstract int getState();

    public abstract void newRow();

    private AreaOp() {
    }
}
