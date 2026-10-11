package org.apache.commons.math3.geometry.euclidean.twod;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.oned.Interval;
import org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet;
import org.apache.commons.math3.geometry.euclidean.oned.Vector1D;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.BoundaryAttribute;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.NodesSet;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.Side;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class PolygonsSet extends AbstractRegion<Euclidean2D, Euclidean1D> {

    /* renamed from: j */
    public static final double f108317j = 1.0E-10d;

    /* renamed from: i */
    public Vector2D[][] f108318i;

    /* renamed from: org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19119a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f108319a;

        static {
            int[] iArr = new int[Side.values().length];
            f108319a = iArr;
            try {
                iArr[Side.PLUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f108319a[Side.MINUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet$b */
    /* loaded from: classes12.dex */
    public static class C19120b extends Segment {

        /* renamed from: d */
        public final BSPTree<Euclidean2D> f108320d;

        /* renamed from: e */
        public final BSPTree<Euclidean2D> f108321e;

        /* renamed from: f */
        public final BSPTree<Euclidean2D> f108322f;

        /* renamed from: g */
        public C19120b f108323g;

        /* renamed from: h */
        public C19120b f108324h;

        /* renamed from: i */
        public boolean f108325i;

        public C19120b(Vector2D vector2D, Vector2D vector2D2, Line line, BSPTree<Euclidean2D> bSPTree, BSPTree<Euclidean2D> bSPTree2, BSPTree<Euclidean2D> bSPTree3) {
            super(vector2D, vector2D2, line);
            this.f108320d = bSPTree;
            this.f108321e = bSPTree2;
            this.f108322f = bSPTree3;
            this.f108323g = null;
            this.f108324h = null;
            this.f108325i = false;
        }

        /* renamed from: a */
        public BSPTree<Euclidean2D> m67678a() {
            return this.f108322f;
        }

        /* renamed from: b */
        public C19120b m67679b() {
            return this.f108324h;
        }

        /* renamed from: c */
        public BSPTree<Euclidean2D> m67680c() {
            return this.f108320d;
        }

        /* renamed from: d */
        public C19120b m67681d() {
            return this.f108323g;
        }

        /* renamed from: e */
        public BSPTree<Euclidean2D> m67682e() {
            return this.f108321e;
        }

        /* renamed from: f */
        public boolean m67683f() {
            return this.f108325i;
        }

        /* renamed from: g */
        public void m67684g(C19120b c19120b) {
            this.f108324h = c19120b;
        }

        /* renamed from: h */
        public void m67685h(C19120b c19120b) {
            this.f108323g = c19120b;
        }

        /* renamed from: i */
        public void m67686i(boolean z) {
            this.f108325i = z;
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet$c */
    /* loaded from: classes12.dex */
    public static class C19121c {

        /* renamed from: a */
        public final C19123e f108326a;

        /* renamed from: b */
        public final C19123e f108327b;

        /* renamed from: c */
        public final Line f108328c;

        /* renamed from: d */
        public BSPTree<Euclidean2D> f108329d = null;

        public C19121c(C19123e c19123e, C19123e c19123e2, Line line) {
            this.f108326a = c19123e;
            this.f108327b = c19123e2;
            this.f108328c = line;
            c19123e.m67701f(this);
            c19123e2.m67700e(this);
        }

        /* renamed from: a */
        public C19123e m67687a() {
            return this.f108327b;
        }

        /* renamed from: b */
        public Line m67688b() {
            return this.f108328c;
        }

        /* renamed from: c */
        public BSPTree<Euclidean2D> m67689c() {
            return this.f108329d;
        }

        /* renamed from: d */
        public C19123e m67690d() {
            return this.f108326a;
        }

        /* renamed from: e */
        public void m67691e(BSPTree<Euclidean2D> bSPTree) {
            this.f108329d = bSPTree;
        }

        /* renamed from: f */
        public C19123e m67692f(Line line) {
            C19123e c19123e = new C19123e(this.f108328c.intersection(line));
            c19123e.m67696a(line);
            C19121c c19121c = new C19121c(this.f108326a, c19123e, this.f108328c);
            C19121c c19121c2 = new C19121c(c19123e, this.f108327b, this.f108328c);
            c19121c.f108329d = this.f108329d;
            c19121c2.f108329d = this.f108329d;
            return c19123e;
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet$d */
    /* loaded from: classes12.dex */
    public static class C19122d implements BSPTreeVisitor<Euclidean2D> {

        /* renamed from: a */
        public final double f108330a;

        /* renamed from: b */
        public final List<C19120b> f108331b = new ArrayList();

        public C19122d(double d) {
            this.f108330a = d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v3, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
        /* JADX WARN: Type inference failed for: r5v3, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
        /* renamed from: a */
        public final void m67693a(SubHyperplane<Euclidean2D> subHyperplane, BSPTree<Euclidean2D> bSPTree, Iterable<BSPTree<Euclidean2D>> iterable, boolean z) {
            Line line = (Line) subHyperplane.getHyperplane();
            for (Interval interval : ((IntervalsSet) ((AbstractSubHyperplane) subHyperplane).getRemainingRegion()).asList()) {
                Vector2D space = Double.isInfinite(interval.getInf()) ? null : line.toSpace((Point<Euclidean1D>) new Vector1D(interval.getInf()));
                Vector2D space2 = Double.isInfinite(interval.getSup()) ? null : line.toSpace((Point<Euclidean1D>) new Vector1D(interval.getSup()));
                BSPTree<Euclidean2D> m67695c = m67695c(space, iterable);
                BSPTree<Euclidean2D> m67695c2 = m67695c(space2, iterable);
                if (z) {
                    this.f108331b.add(new C19120b(space2, space, line.getReverse(), bSPTree, m67695c2, m67695c));
                } else {
                    this.f108331b.add(new C19120b(space, space2, line, bSPTree, m67695c, m67695c2));
                }
            }
        }

        /* renamed from: b */
        public List<C19120b> m67694b() {
            return this.f108331b;
        }

        /* renamed from: c */
        public final BSPTree<Euclidean2D> m67695c(Vector2D vector2D, Iterable<BSPTree<Euclidean2D>> iterable) {
            double d = Double.POSITIVE_INFINITY;
            BSPTree<Euclidean2D> bSPTree = null;
            for (BSPTree<Euclidean2D> bSPTree2 : iterable) {
                double abs = FastMath.abs(bSPTree2.getCut().getHyperplane().getOffset(vector2D));
                if (abs < d) {
                    bSPTree = bSPTree2;
                    d = abs;
                }
            }
            if (d <= this.f108330a) {
                return bSPTree;
            }
            return null;
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public void visitInternalNode(BSPTree<Euclidean2D> bSPTree) {
            BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
            NodesSet splitters = boundaryAttribute.getSplitters();
            if (boundaryAttribute.getPlusOutside() != null) {
                m67693a(boundaryAttribute.getPlusOutside(), bSPTree, splitters, false);
            }
            if (boundaryAttribute.getPlusInside() != null) {
                m67693a(boundaryAttribute.getPlusInside(), bSPTree, splitters, true);
            }
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public void visitLeafNode(BSPTree<Euclidean2D> bSPTree) {
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public BSPTreeVisitor.Order visitOrder(BSPTree<Euclidean2D> bSPTree) {
            return BSPTreeVisitor.Order.MINUS_SUB_PLUS;
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet$e */
    /* loaded from: classes12.dex */
    public static class C19123e {

        /* renamed from: a */
        public final Vector2D f108332a;

        /* renamed from: b */
        public C19121c f108333b = null;

        /* renamed from: c */
        public C19121c f108334c = null;

        /* renamed from: d */
        public final List<Line> f108335d = new ArrayList();

        public C19123e(Vector2D vector2D) {
            this.f108332a = vector2D;
        }

        /* renamed from: a */
        public void m67696a(Line line) {
            this.f108335d.add(line);
        }

        /* renamed from: b */
        public C19121c m67697b() {
            return this.f108333b;
        }

        /* renamed from: c */
        public Vector2D m67698c() {
            return this.f108332a;
        }

        /* renamed from: d */
        public C19121c m67699d() {
            return this.f108334c;
        }

        /* renamed from: e */
        public void m67700e(C19121c c19121c) {
            this.f108333b = c19121c;
            m67696a(c19121c.m67688b());
        }

        /* renamed from: f */
        public void m67701f(C19121c c19121c) {
            this.f108334c = c19121c;
            m67696a(c19121c.m67688b());
        }

        /* renamed from: g */
        public Line m67702g(C19123e c19123e) {
            for (Line line : this.f108335d) {
                Iterator<Line> it2 = c19123e.f108335d.iterator();
                while (it2.hasNext()) {
                    if (line == it2.next()) {
                        return line;
                    }
                }
            }
            return null;
        }
    }

    public PolygonsSet(double d) {
        super(d);
    }

    /* renamed from: d */
    public static Line[] m67669d(double d, double d2, double d3, double d4, double d5) {
        if (d >= d2 - d5 || d3 >= d4 - d5) {
            return null;
        }
        Vector2D vector2D = new Vector2D(d, d3);
        Vector2D vector2D2 = new Vector2D(d, d4);
        Vector2D vector2D3 = new Vector2D(d2, d3);
        Vector2D vector2D4 = new Vector2D(d2, d4);
        return new Line[]{new Line(vector2D, vector2D3, d5), new Line(vector2D3, vector2D4, d5), new Line(vector2D4, vector2D2, d5), new Line(vector2D2, vector2D, d5)};
    }

    /* renamed from: j */
    public static void m67670j(double d, BSPTree<Euclidean2D> bSPTree, List<C19121c> list) {
        C19121c c19121c;
        int i = 0;
        loop0: while (true) {
            c19121c = null;
            while (c19121c == null && i < list.size()) {
                int i2 = i + 1;
                C19121c c19121c2 = list.get(i);
                if (c19121c2.m67689c() == null && bSPTree.insertCut(c19121c2.m67688b())) {
                    c19121c2.m67691e(bSPTree);
                    c19121c = c19121c2;
                    i = i2;
                } else {
                    i = i2;
                }
            }
        }
        if (c19121c == null) {
            BSPTree<Euclidean2D> parent = bSPTree.getParent();
            if (parent == null || bSPTree == parent.getMinus()) {
                bSPTree.setAttribute(Boolean.TRUE);
                return;
            } else {
                bSPTree.setAttribute(Boolean.FALSE);
                return;
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (C19121c c19121c3 : list) {
            if (c19121c3 != c19121c) {
                double offset = c19121c.m67688b().getOffset((Point<Euclidean2D>) c19121c3.m67690d().m67698c());
                double offset2 = c19121c.m67688b().getOffset((Point<Euclidean2D>) c19121c3.m67687a().m67698c());
                Side side = FastMath.abs(offset) <= d ? Side.HYPER : offset < 0.0d ? Side.MINUS : Side.PLUS;
                Side side2 = FastMath.abs(offset2) <= d ? Side.HYPER : offset2 < 0.0d ? Side.MINUS : Side.PLUS;
                int i3 = C19119a.f108319a[side.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (side2 == Side.PLUS) {
                            arrayList.add(c19121c3);
                        } else if (side2 == Side.MINUS) {
                            arrayList2.add(c19121c3);
                        }
                    } else if (side2 == Side.PLUS) {
                        C19123e m67692f = c19121c3.m67692f(c19121c.m67688b());
                        arrayList2.add(m67692f.m67697b());
                        arrayList.add(m67692f.m67699d());
                    } else {
                        arrayList2.add(c19121c3);
                    }
                } else if (side2 == Side.MINUS) {
                    C19123e m67692f2 = c19121c3.m67692f(c19121c.m67688b());
                    arrayList2.add(m67692f2.m67699d());
                    arrayList.add(m67692f2.m67697b());
                } else {
                    arrayList.add(c19121c3);
                }
            }
        }
        if (arrayList.isEmpty()) {
            bSPTree.getPlus().setAttribute(Boolean.FALSE);
        } else {
            m67670j(d, bSPTree.getPlus(), arrayList);
        }
        if (arrayList2.isEmpty()) {
            bSPTree.getMinus().setAttribute(Boolean.TRUE);
        } else {
            m67670j(d, bSPTree.getMinus(), arrayList2);
        }
    }

    /* renamed from: m */
    public static BSPTree<Euclidean2D> m67671m(double d, Vector2D... vector2DArr) {
        int length = vector2DArr.length;
        if (length == 0) {
            return new BSPTree<>(Boolean.TRUE);
        }
        C19123e[] c19123eArr = new C19123e[length];
        for (int i = 0; i < length; i++) {
            c19123eArr[i] = new C19123e(vector2DArr[i]);
        }
        ArrayList arrayList = new ArrayList(length);
        int i2 = 0;
        while (i2 < length) {
            C19123e c19123e = c19123eArr[i2];
            i2++;
            C19123e c19123e2 = c19123eArr[i2 % length];
            Line m67702g = c19123e.m67702g(c19123e2);
            if (m67702g == null) {
                m67702g = new Line(c19123e.m67698c(), c19123e2.m67698c(), d);
            }
            arrayList.add(new C19121c(c19123e, c19123e2, m67702g));
            for (int i3 = 0; i3 < length; i3++) {
                C19123e c19123e3 = c19123eArr[i3];
                if (c19123e3 != c19123e && c19123e3 != c19123e2 && FastMath.abs(m67702g.getOffset((Point<Euclidean2D>) c19123e3.m67698c())) <= d) {
                    c19123e3.m67696a(m67702g);
                }
            }
        }
        BSPTree<Euclidean2D> bSPTree = new BSPTree<>();
        m67670j(d, bSPTree, arrayList);
        return bSPTree;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean2D>) bSPTree);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion
    public void computeGeometricalProperties() {
        Vector2D[][] vertices = getVertices();
        if (vertices.length == 0) {
            BSPTree<Euclidean2D> tree = getTree(false);
            if (tree.getCut() == null && ((Boolean) tree.getAttribute()).booleanValue()) {
                setSize(Double.POSITIVE_INFINITY);
                setBarycenter((Point) Vector2D.NaN);
                return;
            } else {
                setSize(0.0d);
                setBarycenter((Point) new Vector2D(0.0d, 0.0d));
                return;
            }
        }
        if (vertices[0][0] == null) {
            setSize(Double.POSITIVE_INFINITY);
            setBarycenter((Point) Vector2D.NaN);
            return;
        }
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        for (Vector2D[] vector2DArr : vertices) {
            double x = vector2DArr[vector2DArr.length - 1].getX();
            double y = vector2DArr[vector2DArr.length - 1].getY();
            int length = vector2DArr.length;
            int i = 0;
            while (i < length) {
                Vector2D vector2D = vector2DArr[i];
                double x2 = vector2D.getX();
                double y2 = vector2D.getY();
                double d4 = (x * y2) - (y * x2);
                d += d4;
                d2 += (x + x2) * d4;
                d3 += d4 * (y + y2);
                i++;
                x = x2;
                y = y2;
            }
        }
        if (d < 0.0d) {
            setSize(Double.POSITIVE_INFINITY);
            setBarycenter((Point) Vector2D.NaN);
        } else {
            setSize(d / 2.0d);
            double d5 = d * 3.0d;
            setBarycenter((Point) new Vector2D(d2 / d5, d3 / d5));
        }
    }

    /* renamed from: e */
    public final int m67672e(List<C19120b> list) {
        int i = 0;
        for (C19120b c19120b : list) {
            if (c19120b.m67679b() == null && c19120b.getEnd() != null) {
                Vector2D end = c19120b.getEnd();
                C19120b c19120b2 = null;
                double d = Double.POSITIVE_INFINITY;
                for (C19120b c19120b3 : list) {
                    if (c19120b3.m67681d() == null && c19120b3.getStart() != null) {
                        double distance = Vector2D.distance(end, c19120b3.getStart());
                        if (distance < d) {
                            c19120b2 = c19120b3;
                            d = distance;
                        }
                    }
                }
                if (d <= getTolerance()) {
                    c19120b.m67684g(c19120b2);
                    c19120b2.m67685h(c19120b);
                    i++;
                }
            }
        }
        return i;
    }

    /* renamed from: g */
    public final void m67673g(List<Segment> list) {
        int i = 0;
        while (i < list.size()) {
            Segment segment = list.get(i);
            int size = (i + 1) % list.size();
            Segment segment2 = list.get(size);
            if (segment2 != null && Precision.equals(segment.getLine().getAngle(), segment2.getLine().getAngle(), Precision.EPSILON)) {
                list.set(size, new Segment(segment.getStart(), segment2.getEnd(), segment.getLine()));
                list.remove(i);
                i--;
            }
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    /* JADX WARN: Type inference failed for: r3v13, types: [org.apache.commons.math3.geometry.euclidean.oned.Vector1D] */
    public Vector2D[][] getVertices() {
        Iterator it2;
        int i;
        Iterator it3;
        if (this.f108318i == null) {
            int i2 = 0;
            if (getTree(false).getCut() == null) {
                this.f108318i = new Vector2D[0];
            } else {
                C19122d c19122d = new C19122d(getTolerance());
                int i3 = 1;
                getTree(true).visit(c19122d);
                List<C19120b> m67694b = c19122d.m67694b();
                int size = m67694b.size() - m67676k(m67694b);
                if (size > 0) {
                    size -= m67677l(m67694b);
                }
                if (size > 0) {
                    m67672e(m67694b);
                }
                ArrayList arrayList = new ArrayList();
                while (true) {
                    C19120b m67675i = m67675i(m67694b);
                    if (m67675i == null) {
                        break;
                    }
                    List<Segment> m67674h = m67674h(m67675i);
                    if (m67674h != null) {
                        if (m67674h.get(0).getStart() == null) {
                            arrayList.add(0, m67674h);
                        } else {
                            arrayList.add(m67674h);
                        }
                    }
                }
                this.f108318i = new Vector2D[arrayList.size()];
                Iterator it4 = arrayList.iterator();
                int i4 = 0;
                while (it4.hasNext()) {
                    List<Segment> list = (List) it4.next();
                    Object obj = null;
                    if (list.size() < 2 || (list.size() == 2 && ((Segment) list.get(i2)).getStart() == null && ((Segment) list.get(i3)).getEnd() == null)) {
                        it2 = it4;
                        Line line = ((Segment) list.get(i2)).getLine();
                        Vector2D[][] vector2DArr = this.f108318i;
                        Vector2D[] vector2DArr2 = new Vector2D[3];
                        vector2DArr2[i2] = 0;
                        i = 1;
                        vector2DArr2[1] = line.toSpace((Point<Euclidean1D>) new Vector1D(-3.4028234663852886E38d));
                        vector2DArr2[2] = line.toSpace((Point<Euclidean1D>) new Vector1D(3.4028234663852886E38d));
                        vector2DArr[i4] = vector2DArr2;
                        i4++;
                    } else {
                        if (((Segment) list.get(i2)).getStart() == null) {
                            int size2 = list.size() + 2;
                            Vector2D[] vector2DArr3 = new Vector2D[size2];
                            int i5 = i2;
                            for (Segment segment : list) {
                                if (i5 == 0) {
                                    double x = segment.getLine().toSubSpace((Point<Euclidean2D>) segment.getEnd()).getX();
                                    it3 = it4;
                                    double max = x - FastMath.max(1.0d, FastMath.abs(x / 2.0d));
                                    int i6 = i5 + 1;
                                    vector2DArr3[i5] = obj;
                                    i5 = i6 + 1;
                                    vector2DArr3[i6] = segment.getLine().toSpace((Point<Euclidean1D>) new Vector1D(max));
                                } else {
                                    it3 = it4;
                                }
                                int i7 = size2 - 1;
                                if (i5 < i7) {
                                    vector2DArr3[i5] = segment.getEnd();
                                    i5++;
                                }
                                if (i5 == i7) {
                                    double x2 = segment.getLine().toSubSpace((Point<Euclidean2D>) segment.getStart()).getX();
                                    vector2DArr3[i5] = segment.getLine().toSpace((Point<Euclidean1D>) new Vector1D(x2 + FastMath.max(1.0d, FastMath.abs(x2 / 2.0d))));
                                    i5++;
                                }
                                it4 = it3;
                                obj = null;
                            }
                            it2 = it4;
                            this.f108318i[i4] = vector2DArr3;
                            i4++;
                        } else {
                            it2 = it4;
                            Vector2D[] vector2DArr4 = new Vector2D[list.size()];
                            Iterator it5 = list.iterator();
                            int i8 = 0;
                            while (it5.hasNext()) {
                                vector2DArr4[i8] = ((Segment) it5.next()).getStart();
                                i8++;
                            }
                            this.f108318i[i4] = vector2DArr4;
                            i4++;
                        }
                        i2 = 0;
                        i = 1;
                    }
                    i3 = i;
                    it4 = it2;
                }
            }
        }
        return (Vector2D[][]) this.f108318i.clone();
    }

    /* renamed from: h */
    public final List<Segment> m67674h(C19120b c19120b) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(c19120b);
        c19120b.m67686i(true);
        C19120b m67679b = c19120b.m67679b();
        while (m67679b != c19120b && m67679b != null) {
            arrayList.add(m67679b);
            m67679b.m67686i(true);
            m67679b = m67679b.m67679b();
        }
        if (m67679b == null) {
            for (C19120b m67681d = c19120b.m67681d(); m67681d != null; m67681d = m67681d.m67681d()) {
                arrayList.add(0, m67681d);
                m67681d.m67686i(true);
            }
        }
        m67673g(arrayList);
        if (arrayList.size() != 2 || arrayList.get(0).getStart() == null) {
            return arrayList;
        }
        return null;
    }

    /* renamed from: i */
    public final C19120b m67675i(List<C19120b> list) {
        for (C19120b c19120b : list) {
            if (!c19120b.m67683f()) {
                return c19120b;
            }
        }
        return null;
    }

    /* renamed from: k */
    public final int m67676k(List<C19120b> list) {
        int i = 0;
        for (C19120b c19120b : list) {
            if (c19120b.m67679b() == null) {
                BSPTree<Euclidean2D> m67680c = c19120b.m67680c();
                BSPTree<Euclidean2D> m67678a = c19120b.m67678a();
                Iterator<C19120b> it2 = list.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        C19120b next = it2.next();
                        if (next.m67681d() == null && next.m67680c() == m67678a && next.m67682e() == m67680c) {
                            c19120b.m67684g(next);
                            next.m67685h(c19120b);
                            i++;
                            break;
                        }
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: l */
    public final int m67677l(List<C19120b> list) {
        int i = 0;
        for (C19120b c19120b : list) {
            if (c19120b.m67679b() == null) {
                Hyperplane<Euclidean2D> hyperplane = c19120b.m67680c().getCut().getHyperplane();
                BSPTree<Euclidean2D> m67678a = c19120b.m67678a();
                Iterator<C19120b> it2 = list.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        C19120b next = it2.next();
                        if (next.m67681d() == null && next.m67680c().getCut().getHyperplane() == hyperplane && next.m67682e() == m67678a) {
                            c19120b.m67684g(next);
                            next.m67685h(c19120b);
                            i++;
                            break;
                        }
                    }
                }
            }
        }
        return i;
    }

    public PolygonsSet(BSPTree<Euclidean2D> bSPTree, double d) {
        super(bSPTree, d);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean2D>) bSPTree);
    }

    public PolygonsSet(Collection<SubHyperplane<Euclidean2D>> collection, double d) {
        super(collection, d);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public PolygonsSet buildNew(BSPTree<Euclidean2D> bSPTree) {
        return new PolygonsSet(bSPTree, getTolerance());
    }

    public PolygonsSet(double d, double d2, double d3, double d4, double d5) {
        super(m67669d(d, d2, d3, d4, d5), d5);
    }

    public PolygonsSet(double d, Vector2D... vector2DArr) {
        super(m67671m(d, vector2DArr), d);
    }

    @Deprecated
    public PolygonsSet() {
        this(1.0E-10d);
    }

    @Deprecated
    public PolygonsSet(BSPTree<Euclidean2D> bSPTree) {
        this(bSPTree, 1.0E-10d);
    }

    @Deprecated
    public PolygonsSet(Collection<SubHyperplane<Euclidean2D>> collection) {
        this(collection, 1.0E-10d);
    }

    @Deprecated
    public PolygonsSet(double d, double d2, double d3, double d4) {
        this(d, d2, d3, d4, 1.0E-10d);
    }
}
