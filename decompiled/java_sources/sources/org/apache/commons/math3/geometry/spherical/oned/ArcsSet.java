package org.apache.commons.math3.geometry.spherical.oned;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BoundaryProjection;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.Side;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class ArcsSet extends AbstractRegion<Sphere1D, Sphere1D> implements Iterable<double[]> {

    /* loaded from: classes12.dex */
    public static class InconsistentStateAt2PiWrapping extends MathIllegalArgumentException {
        private static final long serialVersionUID = 20140107;

        public InconsistentStateAt2PiWrapping() {
            super(LocalizedFormats.INCONSISTENT_STATE_AT_2_PI_WRAPPING, new Object[0]);
        }
    }

    /* loaded from: classes12.dex */
    public static class Split {

        /* renamed from: a */
        public final ArcsSet f108417a;

        /* renamed from: b */
        public final ArcsSet f108418b;

        public ArcsSet getMinus() {
            return this.f108418b;
        }

        public ArcsSet getPlus() {
            return this.f108417a;
        }

        public Side getSide() {
            return this.f108417a != null ? this.f108418b != null ? Side.BOTH : Side.PLUS : this.f108418b != null ? Side.MINUS : Side.HYPER;
        }

        public Split(ArcsSet arcsSet, ArcsSet arcsSet2) {
            this.f108417a = arcsSet;
            this.f108418b = arcsSet2;
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.spherical.oned.ArcsSet$b */
    /* loaded from: classes12.dex */
    public class C19144b implements Iterator<double[]> {

        /* renamed from: e */
        public final BSPTree<Sphere1D> f108419e;

        /* renamed from: f */
        public BSPTree<Sphere1D> f108420f;

        /* renamed from: g */
        public double[] f108421g;

        public C19144b() {
            BSPTree<Sphere1D> m67780s = ArcsSet.this.m67780s();
            this.f108419e = m67780s;
            this.f108420f = m67780s;
            if (m67780s != null) {
                m67788b();
            } else if (((Boolean) ArcsSet.this.m67781t(ArcsSet.this.getTree(false)).getAttribute()).booleanValue()) {
                this.f108421g = new double[]{0.0d, 6.283185307179586d};
            } else {
                this.f108421g = null;
            }
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public double[] next() {
            double[] dArr = this.f108421g;
            if (dArr == null) {
                throw new NoSuchElementException();
            }
            m67788b();
            return dArr;
        }

        /* renamed from: b */
        public final void m67788b() {
            BSPTree<Sphere1D> bSPTree = this.f108420f;
            while (bSPTree != null && !ArcsSet.this.m67785y(bSPTree)) {
                bSPTree = ArcsSet.this.m67772D(bSPTree);
            }
            if (bSPTree == null) {
                this.f108420f = null;
                this.f108421g = null;
                return;
            }
            BSPTree<Sphere1D> bSPTree2 = bSPTree;
            while (bSPTree2 != null && !ArcsSet.this.m67784x(bSPTree2)) {
                bSPTree2 = ArcsSet.this.m67772D(bSPTree2);
            }
            if (bSPTree2 != null) {
                this.f108421g = new double[]{ArcsSet.this.m67779r(bSPTree), ArcsSet.this.m67779r(bSPTree2)};
                this.f108420f = bSPTree2;
                return;
            }
            BSPTree<Sphere1D> bSPTree3 = this.f108419e;
            while (bSPTree3 != null && !ArcsSet.this.m67784x(bSPTree3)) {
                bSPTree3 = ArcsSet.this.m67773E(bSPTree3);
            }
            if (bSPTree3 == null) {
                throw new MathInternalError();
            }
            this.f108421g = new double[]{ArcsSet.this.m67779r(bSPTree), ArcsSet.this.m67779r(bSPTree3) + 6.283185307179586d};
            this.f108420f = null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f108421g != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public ArcsSet(double d) {
        super(d);
    }

    /* renamed from: m */
    public static BSPTree<Sphere1D> m67768m(double d, double d2, double d3) throws NumberIsTooLargeException {
        if (!Precision.equals(d, d2, 0)) {
            double d4 = d2 - d;
            if (d4 < 6.283185307179586d) {
                if (d > d2) {
                    throw new NumberIsTooLargeException(LocalizedFormats.ENDPOINTS_NOT_AN_INTERVAL, Double.valueOf(d), Double.valueOf(d2), true);
                }
                double normalizeAngle = MathUtils.normalizeAngle(d, 3.141592653589793d);
                double d5 = d4 + normalizeAngle;
                SubHyperplane<Sphere1D> wholeHyperplane = new LimitAngle(new S1Point(normalizeAngle), false, d3).wholeHyperplane();
                if (d5 <= 6.283185307179586d) {
                    SubHyperplane<Sphere1D> wholeHyperplane2 = new LimitAngle(new S1Point(d5), true, d3).wholeHyperplane();
                    Boolean bool = Boolean.FALSE;
                    return new BSPTree<>(wholeHyperplane, new BSPTree(bool), new BSPTree(wholeHyperplane2, new BSPTree(bool), new BSPTree(Boolean.TRUE), null), null);
                }
                SubHyperplane<Sphere1D> wholeHyperplane3 = new LimitAngle(new S1Point(d5 - 6.283185307179586d), true, d3).wholeHyperplane();
                BSPTree bSPTree = new BSPTree(Boolean.FALSE);
                Boolean bool2 = Boolean.TRUE;
                return new BSPTree<>(wholeHyperplane, new BSPTree(wholeHyperplane3, bSPTree, new BSPTree(bool2), null), new BSPTree(bool2), null);
            }
        }
        return new BSPTree<>(Boolean.TRUE);
    }

    /* renamed from: A */
    public final boolean m67769A(BSPTree<Sphere1D> bSPTree) {
        return ((LimitAngle) bSPTree.getCut().getHyperplane()).isDirect();
    }

    /* renamed from: B */
    public final BSPTree<Sphere1D> m67770B(BSPTree<Sphere1D> bSPTree) {
        BSPTree<Sphere1D> m67776o = m67776o(bSPTree);
        while (m67776o.getCut() != null) {
            m67776o = m67777p(m67776o);
        }
        return m67776o;
    }

    /* renamed from: C */
    public final BSPTree<Sphere1D> m67771C(BSPTree<Sphere1D> bSPTree) {
        BSPTree<Sphere1D> m67777p = m67777p(bSPTree);
        while (m67777p.getCut() != null) {
            m67777p = m67776o(m67777p);
        }
        return m67777p;
    }

    /* renamed from: D */
    public final BSPTree<Sphere1D> m67772D(BSPTree<Sphere1D> bSPTree) {
        if (m67776o(bSPTree).getCut() != null) {
            return m67770B(bSPTree).getParent();
        }
        while (m67783v(bSPTree)) {
            bSPTree = bSPTree.getParent();
        }
        return bSPTree.getParent();
    }

    /* renamed from: E */
    public final BSPTree<Sphere1D> m67773E(BSPTree<Sphere1D> bSPTree) {
        if (m67777p(bSPTree).getCut() != null) {
            return m67771C(bSPTree).getParent();
        }
        while (m67786z(bSPTree)) {
            bSPTree = bSPTree.getParent();
        }
        return bSPTree.getParent();
    }

    public List<Arc> asList() {
        ArrayList arrayList = new ArrayList();
        Iterator<double[]> it2 = iterator();
        while (it2.hasNext()) {
            double[] next = it2.next();
            arrayList.add(new Arc(next[0], next[1], getTolerance()));
        }
        return arrayList;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Sphere1D>) bSPTree);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion
    public void computeGeometricalProperties() {
        double d = 0.0d;
        if (getTree(false).getCut() == null) {
            setBarycenter(S1Point.NaN);
            setSize(((Boolean) getTree(false).getAttribute()).booleanValue() ? 6.283185307179586d : 0.0d);
            return;
        }
        Iterator<double[]> it2 = iterator();
        double d2 = 0.0d;
        while (it2.hasNext()) {
            double[] next = it2.next();
            double d3 = next[1];
            double d4 = next[0];
            double d5 = d3 - d4;
            d += d5;
            d2 += d5 * (d4 + d3);
        }
        setSize(d);
        if (Precision.equals(d, 6.283185307179586d, 0)) {
            setBarycenter(S1Point.NaN);
        } else if (d >= Precision.SAFE_MIN) {
            setBarycenter(new S1Point(d2 / (d * 2.0d)));
        } else {
            setBarycenter(((LimitAngle) getTree(false).getCut().getHyperplane()).getLocation());
        }
    }

    @Override // java.lang.Iterable
    public Iterator<double[]> iterator() {
        return new C19144b();
    }

    /* renamed from: l */
    public final void m67774l(BSPTree<Sphere1D> bSPTree, double d, boolean z) {
        LimitAngle limitAngle = new LimitAngle(new S1Point(d), !z, getTolerance());
        BSPTree<Sphere1D> cell = bSPTree.getCell(limitAngle.getLocation(), getTolerance());
        if (cell.getCut() != null) {
            throw new MathInternalError();
        }
        cell.insertCut(limitAngle);
        cell.setAttribute(null);
        cell.getPlus().setAttribute(Boolean.FALSE);
        cell.getMinus().setAttribute(Boolean.TRUE);
    }

    /* renamed from: n */
    public final void m67775n() throws InconsistentStateAt2PiWrapping {
        BSPTree<Sphere1D> tree = getTree(false);
        if (tree.getCut() == null) {
            return;
        }
        Boolean bool = (Boolean) m67781t(tree).getAttribute();
        Boolean bool2 = (Boolean) m67782u(tree).getAttribute();
        if (bool2.booleanValue() ^ bool.booleanValue()) {
            throw new InconsistentStateAt2PiWrapping();
        }
    }

    /* renamed from: o */
    public final BSPTree<Sphere1D> m67776o(BSPTree<Sphere1D> bSPTree) {
        return m67769A(bSPTree) ? bSPTree.getPlus() : bSPTree.getMinus();
    }

    /* renamed from: p */
    public final BSPTree<Sphere1D> m67777p(BSPTree<Sphere1D> bSPTree) {
        return m67769A(bSPTree) ? bSPTree.getMinus() : bSPTree.getPlus();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public BoundaryProjection<Sphere1D> projectToBoundary(Point<Sphere1D> point) {
        double alpha = ((S1Point) point).getAlpha();
        Iterator<double[]> it2 = iterator();
        double d = Double.NaN;
        boolean z = false;
        double d2 = Double.NaN;
        while (it2.hasNext()) {
            double[] next = it2.next();
            if (Double.isNaN(d2)) {
                d2 = next[0];
            }
            if (!z) {
                double d3 = next[0];
                if (alpha >= d3) {
                    double d4 = next[1];
                    if (alpha <= d4) {
                        double d5 = d3 - alpha;
                        double d6 = alpha - d4;
                        return d5 < d6 ? new BoundaryProjection<>(point, new S1Point(next[1]), d6) : new BoundaryProjection<>(point, new S1Point(next[0]), d5);
                    }
                } else {
                    if (!Double.isNaN(d)) {
                        double d7 = alpha - d;
                        double d8 = next[0] - alpha;
                        return d7 < d8 ? new BoundaryProjection<>(point, new S1Point(d), d7) : new BoundaryProjection<>(point, new S1Point(next[0]), d8);
                    }
                    z = true;
                }
            }
            d = next[1];
        }
        if (Double.isNaN(d)) {
            return new BoundaryProjection<>(point, null, 6.283185307179586d);
        }
        if (z) {
            double d9 = alpha - (d - 6.283185307179586d);
            double d10 = d2 - alpha;
            return d9 < d10 ? new BoundaryProjection<>(point, new S1Point(d), d9) : new BoundaryProjection<>(point, new S1Point(d2), d10);
        }
        double d11 = alpha - d;
        double d12 = (6.283185307179586d + d2) - alpha;
        return d11 < d12 ? new BoundaryProjection<>(point, new S1Point(d), d11) : new BoundaryProjection<>(point, new S1Point(d2), d12);
    }

    /* renamed from: q */
    public final ArcsSet m67778q(List<Double> list) {
        if (list.isEmpty()) {
            return null;
        }
        int i = 0;
        while (i < list.size()) {
            int size = (i + 1) % list.size();
            double doubleValue = list.get(i).doubleValue();
            if (FastMath.abs(MathUtils.normalizeAngle(list.get(size).doubleValue(), doubleValue) - doubleValue) <= getTolerance()) {
                if (size > 0) {
                    list.remove(size);
                    list.remove(i);
                    i--;
                } else {
                    double doubleValue2 = list.remove(list.size() - 1).doubleValue();
                    double doubleValue3 = list.remove(0).doubleValue();
                    if (list.isEmpty()) {
                        if (doubleValue2 - doubleValue3 > 3.141592653589793d) {
                            return new ArcsSet((BSPTree<Sphere1D>) new BSPTree(Boolean.TRUE), getTolerance());
                        }
                        return null;
                    }
                    list.add(Double.valueOf(list.remove(0).doubleValue() + 6.283185307179586d));
                }
            }
            i++;
        }
        BSPTree<Sphere1D> bSPTree = new BSPTree<>(Boolean.FALSE);
        for (int i2 = 0; i2 < list.size() - 1; i2 += 2) {
            m67774l(bSPTree, list.get(i2).doubleValue(), true);
            m67774l(bSPTree, list.get(i2 + 1).doubleValue(), false);
        }
        if (bSPTree.getCut() == null) {
            return null;
        }
        return new ArcsSet(bSPTree, getTolerance());
    }

    /* renamed from: r */
    public final double m67779r(BSPTree<Sphere1D> bSPTree) {
        return ((LimitAngle) bSPTree.getCut().getHyperplane()).getLocation().getAlpha();
    }

    /* renamed from: s */
    public final BSPTree<Sphere1D> m67780s() {
        BSPTree<Sphere1D> tree = getTree(false);
        if (tree.getCut() == null) {
            return null;
        }
        BSPTree<Sphere1D> parent = m67781t(tree).getParent();
        while (parent != null && !m67785y(parent)) {
            parent = m67772D(parent);
        }
        return parent;
    }

    @Deprecated
    public Side side(Arc arc) {
        return split(arc).getSide();
    }

    public Split split(Arc arc) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        double inf = arc.getInf() + 3.141592653589793d;
        double sup = arc.getSup() - arc.getInf();
        Iterator<double[]> it2 = iterator();
        while (it2.hasNext()) {
            double[] next = it2.next();
            double normalizeAngle = MathUtils.normalizeAngle(next[0], inf) - arc.getInf();
            double d = next[0];
            double d2 = d - normalizeAngle;
            double d3 = next[1] - d2;
            if (normalizeAngle < sup) {
                arrayList.add(Double.valueOf(d));
                if (d3 > sup) {
                    double d4 = sup + d2;
                    arrayList.add(Double.valueOf(d4));
                    arrayList2.add(Double.valueOf(d4));
                    if (d3 > 6.283185307179586d) {
                        double d5 = d2 + 6.283185307179586d;
                        arrayList2.add(Double.valueOf(d5));
                        arrayList.add(Double.valueOf(d5));
                        arrayList.add(Double.valueOf(next[1]));
                    } else {
                        arrayList2.add(Double.valueOf(next[1]));
                    }
                } else {
                    arrayList.add(Double.valueOf(next[1]));
                }
            } else {
                arrayList2.add(Double.valueOf(d));
                if (d3 > 6.283185307179586d) {
                    double d6 = d2 + 6.283185307179586d;
                    arrayList2.add(Double.valueOf(d6));
                    arrayList.add(Double.valueOf(d6));
                    double d7 = sup + 6.283185307179586d;
                    if (d3 > d7) {
                        double d8 = d7 + d2;
                        arrayList.add(Double.valueOf(d8));
                        arrayList2.add(Double.valueOf(d8));
                        arrayList2.add(Double.valueOf(next[1]));
                    } else {
                        arrayList.add(Double.valueOf(next[1]));
                    }
                } else {
                    arrayList2.add(Double.valueOf(next[1]));
                }
            }
        }
        return new Split(m67778q(arrayList));
    }

    /* renamed from: t */
    public final BSPTree<Sphere1D> m67781t(BSPTree<Sphere1D> bSPTree) {
        if (bSPTree.getCut() == null) {
            return bSPTree;
        }
        BSPTree<Sphere1D> bSPTree2 = null;
        while (bSPTree != null) {
            bSPTree2 = bSPTree;
            bSPTree = m67773E(bSPTree);
        }
        return m67771C(bSPTree2);
    }

    /* renamed from: u */
    public final BSPTree<Sphere1D> m67782u(BSPTree<Sphere1D> bSPTree) {
        if (bSPTree.getCut() == null) {
            return bSPTree;
        }
        BSPTree<Sphere1D> bSPTree2 = null;
        while (bSPTree != null) {
            bSPTree2 = bSPTree;
            bSPTree = m67772D(bSPTree);
        }
        return m67770B(bSPTree2);
    }

    /* renamed from: v */
    public final boolean m67783v(BSPTree<Sphere1D> bSPTree) {
        BSPTree<Sphere1D> parent = bSPTree.getParent();
        return parent != null && bSPTree == m67776o(parent);
    }

    /* renamed from: x */
    public final boolean m67784x(BSPTree<Sphere1D> bSPTree) {
        return ((Boolean) m67771C(bSPTree).getAttribute()).booleanValue() && !((Boolean) m67770B(bSPTree).getAttribute()).booleanValue();
    }

    /* renamed from: y */
    public final boolean m67785y(BSPTree<Sphere1D> bSPTree) {
        return !((Boolean) m67771C(bSPTree).getAttribute()).booleanValue() && ((Boolean) m67770B(bSPTree).getAttribute()).booleanValue();
    }

    /* renamed from: z */
    public final boolean m67786z(BSPTree<Sphere1D> bSPTree) {
        BSPTree<Sphere1D> parent = bSPTree.getParent();
        return parent != null && bSPTree == m67777p(parent);
    }

    public ArcsSet(double d, double d2, double d3) throws NumberIsTooLargeException {
        super(m67768m(d, d2, d3), d3);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Sphere1D>) bSPTree);
    }

    public ArcsSet(BSPTree<Sphere1D> bSPTree, double d) throws InconsistentStateAt2PiWrapping {
        super(bSPTree, d);
        m67775n();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public ArcsSet buildNew(BSPTree<Sphere1D> bSPTree) {
        return new ArcsSet(bSPTree, getTolerance());
    }

    public ArcsSet(Collection<SubHyperplane<Sphere1D>> collection, double d) throws InconsistentStateAt2PiWrapping {
        super(collection, d);
        m67775n();
    }
}
