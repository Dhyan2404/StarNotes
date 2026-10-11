package org.apache.commons.math3.geometry.euclidean.oned;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BoundaryProjection;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class IntervalsSet extends AbstractRegion<Euclidean1D, Euclidean1D> implements Iterable<double[]> {

    /* renamed from: i */
    public static final double f108235i = 1.0E-10d;

    /* renamed from: org.apache.commons.math3.geometry.euclidean.oned.IntervalsSet$a */
    /* loaded from: classes12.dex */
    public class C19108a implements Iterator<double[]> {

        /* renamed from: e */
        public BSPTree<Euclidean1D> f108236e;

        /* renamed from: f */
        public double[] f108237f;

        public C19108a() {
            BSPTree<Euclidean1D> m67620p = IntervalsSet.this.m67620p();
            this.f108236e = m67620p;
            if (m67620p == null) {
                if (((Boolean) IntervalsSet.this.m67621q(IntervalsSet.this.getTree(false)).getAttribute()).booleanValue()) {
                    this.f108237f = new double[]{Double.NEGATIVE_INFINITY, Double.POSITIVE_INFINITY};
                    return;
                } else {
                    this.f108237f = null;
                    return;
                }
            }
            if (IntervalsSet.this.m67625u(m67620p)) {
                this.f108237f = new double[]{Double.NEGATIVE_INFINITY, IntervalsSet.this.m67619o(this.f108236e)};
            } else {
                m67631b();
            }
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public double[] next() {
            double[] dArr = this.f108237f;
            if (dArr == null) {
                throw new NoSuchElementException();
            }
            m67631b();
            return dArr;
        }

        /* renamed from: b */
        public final void m67631b() {
            BSPTree<Euclidean1D> bSPTree = this.f108236e;
            while (bSPTree != null && !IntervalsSet.this.m67626v(bSPTree)) {
                bSPTree = IntervalsSet.this.m67629z(bSPTree);
            }
            if (bSPTree == null) {
                this.f108236e = null;
                this.f108237f = null;
                return;
            }
            BSPTree<Euclidean1D> bSPTree2 = bSPTree;
            while (bSPTree2 != null && !IntervalsSet.this.m67625u(bSPTree2)) {
                bSPTree2 = IntervalsSet.this.m67629z(bSPTree2);
            }
            if (bSPTree2 != null) {
                this.f108237f = new double[]{IntervalsSet.this.m67619o(bSPTree), IntervalsSet.this.m67619o(bSPTree2)};
                this.f108236e = bSPTree2;
            } else {
                this.f108237f = new double[]{IntervalsSet.this.m67619o(bSPTree), Double.POSITIVE_INFINITY};
                this.f108236e = null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f108237f != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public IntervalsSet(double d) {
        super(d);
    }

    /* renamed from: k */
    public static BSPTree<Euclidean1D> m67614k(double d, double d2, double d3) {
        if (Double.isInfinite(d) && d < 0.0d) {
            return (!Double.isInfinite(d2) || d2 <= 0.0d) ? new BSPTree<>(new OrientedPoint(new Vector1D(d2), true, d3).wholeHyperplane(), new BSPTree(Boolean.FALSE), new BSPTree(Boolean.TRUE), null) : new BSPTree<>(Boolean.TRUE);
        }
        SubHyperplane<Euclidean1D> wholeHyperplane = new OrientedPoint(new Vector1D(d), false, d3).wholeHyperplane();
        if (Double.isInfinite(d2) && d2 > 0.0d) {
            return new BSPTree<>(wholeHyperplane, new BSPTree(Boolean.FALSE), new BSPTree(Boolean.TRUE), null);
        }
        SubHyperplane<Euclidean1D> wholeHyperplane2 = new OrientedPoint(new Vector1D(d2), true, d3).wholeHyperplane();
        Boolean bool = Boolean.FALSE;
        return new BSPTree<>(wholeHyperplane, new BSPTree(bool), new BSPTree(wholeHyperplane2, new BSPTree(bool), new BSPTree(Boolean.TRUE), null), null);
    }

    /* renamed from: A */
    public final BSPTree<Euclidean1D> m67615A(BSPTree<Euclidean1D> bSPTree) {
        if (m67617m(bSPTree).getCut() != null) {
            return m67628y(bSPTree).getParent();
        }
        while (m67623s(bSPTree)) {
            bSPTree = bSPTree.getParent();
        }
        return bSPTree.getParent();
    }

    public List<Interval> asList() {
        ArrayList arrayList = new ArrayList();
        Iterator<double[]> it2 = iterator();
        while (it2.hasNext()) {
            double[] next = it2.next();
            arrayList.add(new Interval(next[0], next[1]));
        }
        return arrayList;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean1D>) bSPTree);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion
    public void computeGeometricalProperties() {
        if (getTree(false).getCut() == null) {
            setBarycenter((Point) Vector1D.NaN);
            setSize(((Boolean) getTree(false).getAttribute()).booleanValue() ? Double.POSITIVE_INFINITY : 0.0d);
            return;
        }
        double d = 0.0d;
        for (Interval interval : asList()) {
            r2 += interval.getSize();
            d += interval.getSize() * interval.getBarycenter();
        }
        setSize(r2);
        if (Double.isInfinite(r2)) {
            setBarycenter((Point) Vector1D.NaN);
        } else if (r2 >= Precision.SAFE_MIN) {
            setBarycenter((Point) new Vector1D(d / r2));
        } else {
            setBarycenter((Point) ((OrientedPoint) getTree(false).getCut().getHyperplane()).getLocation());
        }
    }

    public double getInf() {
        BSPTree<Euclidean1D> tree = getTree(false);
        double d = Double.POSITIVE_INFINITY;
        while (tree.getCut() != null) {
            OrientedPoint orientedPoint = (OrientedPoint) tree.getCut().getHyperplane();
            double x = orientedPoint.getLocation().getX();
            tree = orientedPoint.isDirect() ? tree.getMinus() : tree.getPlus();
            d = x;
        }
        if (((Boolean) tree.getAttribute()).booleanValue()) {
            return Double.NEGATIVE_INFINITY;
        }
        return d;
    }

    public double getSup() {
        BSPTree<Euclidean1D> tree = getTree(false);
        double d = Double.NEGATIVE_INFINITY;
        while (tree.getCut() != null) {
            OrientedPoint orientedPoint = (OrientedPoint) tree.getCut().getHyperplane();
            double x = orientedPoint.getLocation().getX();
            tree = orientedPoint.isDirect() ? tree.getPlus() : tree.getMinus();
            d = x;
        }
        if (((Boolean) tree.getAttribute()).booleanValue()) {
            return Double.POSITIVE_INFINITY;
        }
        return d;
    }

    @Override // java.lang.Iterable
    public Iterator<double[]> iterator() {
        return new C19108a();
    }

    /* renamed from: l */
    public final BSPTree<Euclidean1D> m67616l(BSPTree<Euclidean1D> bSPTree) {
        return m67624t(bSPTree) ? bSPTree.getPlus() : bSPTree.getMinus();
    }

    /* renamed from: m */
    public final BSPTree<Euclidean1D> m67617m(BSPTree<Euclidean1D> bSPTree) {
        return m67624t(bSPTree) ? bSPTree.getMinus() : bSPTree.getPlus();
    }

    /* renamed from: n */
    public final Vector1D m67618n(double d) {
        if (Double.isInfinite(d)) {
            return null;
        }
        return new Vector1D(d);
    }

    /* renamed from: o */
    public final double m67619o(BSPTree<Euclidean1D> bSPTree) {
        return ((OrientedPoint) bSPTree.getCut().getHyperplane()).getLocation().getX();
    }

    /* renamed from: p */
    public final BSPTree<Euclidean1D> m67620p() {
        BSPTree<Euclidean1D> tree = getTree(false);
        if (tree.getCut() == null) {
            return null;
        }
        BSPTree<Euclidean1D> parent = m67621q(tree).getParent();
        while (parent != null && !m67626v(parent) && !m67625u(parent)) {
            parent = m67629z(parent);
        }
        return parent;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public BoundaryProjection<Euclidean1D> projectToBoundary(Point<Euclidean1D> point) {
        double x = ((Vector1D) point).getX();
        Iterator<double[]> it2 = iterator();
        double d = Double.NEGATIVE_INFINITY;
        while (it2.hasNext()) {
            double[] next = it2.next();
            double d2 = next[0];
            if (x < d2) {
                double d3 = x - d;
                double d4 = d2 - x;
                return d3 < d4 ? new BoundaryProjection<>(point, m67618n(d), d3) : new BoundaryProjection<>(point, m67618n(d2), d4);
            }
            d = next[1];
            if (x <= d) {
                double d5 = d2 - x;
                double d6 = x - d;
                return d5 < d6 ? new BoundaryProjection<>(point, m67618n(d), d6) : new BoundaryProjection<>(point, m67618n(d2), d5);
            }
        }
        return new BoundaryProjection<>(point, m67618n(d), x - d);
    }

    /* renamed from: q */
    public final BSPTree<Euclidean1D> m67621q(BSPTree<Euclidean1D> bSPTree) {
        if (bSPTree.getCut() == null) {
            return bSPTree;
        }
        BSPTree<Euclidean1D> bSPTree2 = null;
        while (bSPTree != null) {
            bSPTree2 = bSPTree;
            bSPTree = m67615A(bSPTree);
        }
        return m67628y(bSPTree2);
    }

    /* renamed from: r */
    public final boolean m67622r(BSPTree<Euclidean1D> bSPTree) {
        BSPTree<Euclidean1D> parent = bSPTree.getParent();
        return parent != null && bSPTree == m67616l(parent);
    }

    /* renamed from: s */
    public final boolean m67623s(BSPTree<Euclidean1D> bSPTree) {
        BSPTree<Euclidean1D> parent = bSPTree.getParent();
        return parent != null && bSPTree == m67617m(parent);
    }

    /* renamed from: t */
    public final boolean m67624t(BSPTree<Euclidean1D> bSPTree) {
        return ((OrientedPoint) bSPTree.getCut().getHyperplane()).isDirect();
    }

    /* renamed from: u */
    public final boolean m67625u(BSPTree<Euclidean1D> bSPTree) {
        return ((Boolean) m67628y(bSPTree).getAttribute()).booleanValue() && !((Boolean) m67627x(bSPTree).getAttribute()).booleanValue();
    }

    /* renamed from: v */
    public final boolean m67626v(BSPTree<Euclidean1D> bSPTree) {
        return !((Boolean) m67628y(bSPTree).getAttribute()).booleanValue() && ((Boolean) m67627x(bSPTree).getAttribute()).booleanValue();
    }

    /* renamed from: x */
    public final BSPTree<Euclidean1D> m67627x(BSPTree<Euclidean1D> bSPTree) {
        BSPTree<Euclidean1D> m67616l = m67616l(bSPTree);
        while (m67616l.getCut() != null) {
            m67616l = m67617m(m67616l);
        }
        return m67616l;
    }

    /* renamed from: y */
    public final BSPTree<Euclidean1D> m67628y(BSPTree<Euclidean1D> bSPTree) {
        BSPTree<Euclidean1D> m67617m = m67617m(bSPTree);
        while (m67617m.getCut() != null) {
            m67617m = m67616l(m67617m);
        }
        return m67617m;
    }

    /* renamed from: z */
    public final BSPTree<Euclidean1D> m67629z(BSPTree<Euclidean1D> bSPTree) {
        if (m67616l(bSPTree).getCut() != null) {
            return m67627x(bSPTree).getParent();
        }
        while (m67622r(bSPTree)) {
            bSPTree = bSPTree.getParent();
        }
        return bSPTree.getParent();
    }

    public IntervalsSet(double d, double d2, double d3) {
        super(m67614k(d, d2, d3), d3);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean1D>) bSPTree);
    }

    public IntervalsSet(BSPTree<Euclidean1D> bSPTree, double d) {
        super(bSPTree, d);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public IntervalsSet buildNew(BSPTree<Euclidean1D> bSPTree) {
        return new IntervalsSet(bSPTree, getTolerance());
    }

    public IntervalsSet(Collection<SubHyperplane<Euclidean1D>> collection, double d) {
        super(collection, d);
    }

    @Deprecated
    public IntervalsSet() {
        this(1.0E-10d);
    }

    @Deprecated
    public IntervalsSet(double d, double d2) {
        this(d, d2, 1.0E-10d);
    }

    @Deprecated
    public IntervalsSet(BSPTree<Euclidean1D> bSPTree) {
        this(bSPTree, 1.0E-10d);
    }

    @Deprecated
    public IntervalsSet(Collection<SubHyperplane<Euclidean1D>> collection) {
        this(collection, 1.0E-10d);
    }
}
