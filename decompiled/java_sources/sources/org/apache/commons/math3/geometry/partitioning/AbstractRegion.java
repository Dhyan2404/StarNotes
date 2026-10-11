package org.apache.commons.math3.geometry.partitioning;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeSet;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;

/* loaded from: classes12.dex */
public abstract class AbstractRegion<S extends Space, T extends Space> implements Region<S> {

    /* renamed from: e */
    public BSPTree<S> f108343e;

    /* renamed from: f */
    public final double f108344f;

    /* renamed from: g */
    public double f108345g;

    /* renamed from: h */
    public Point<S> f108346h;

    /* renamed from: org.apache.commons.math3.geometry.partitioning.AbstractRegion$a */
    /* loaded from: classes12.dex */
    public class C19125a implements Comparator<SubHyperplane<S>> {
        public C19125a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(SubHyperplane<S> subHyperplane, SubHyperplane<S> subHyperplane2) {
            if (subHyperplane2.getSize() < subHyperplane.getSize()) {
                return -1;
            }
            return subHyperplane == subHyperplane2 ? 0 : 1;
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.partitioning.AbstractRegion$b */
    /* loaded from: classes12.dex */
    public class C19126b implements BSPTreeVisitor<S> {
        public C19126b() {
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public void visitInternalNode(BSPTree<S> bSPTree) {
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public void visitLeafNode(BSPTree<S> bSPTree) {
            if (bSPTree.getParent() == null || bSPTree == bSPTree.getParent().getMinus()) {
                bSPTree.setAttribute(Boolean.TRUE);
            } else {
                bSPTree.setAttribute(Boolean.FALSE);
            }
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public BSPTreeVisitor.Order visitOrder(BSPTree<S> bSPTree) {
            return BSPTreeVisitor.Order.PLUS_SUB_MINUS;
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.partitioning.AbstractRegion$c */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19127c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f108349a;

        static {
            int[] iArr = new int[Side.values().length];
            f108349a = iArr;
            try {
                iArr[Side.PLUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f108349a[Side.MINUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f108349a[Side.BOTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public AbstractRegion(double d) {
        this.f108343e = new BSPTree<>(Boolean.TRUE);
        this.f108344f = d;
    }

    /* renamed from: a */
    public final void m67708a(BSPTree<S> bSPTree, Collection<SubHyperplane<S>> collection) {
        Hyperplane<S> hyperplane;
        Iterator<SubHyperplane<S>> it2 = collection.iterator();
        loop0: while (true) {
            hyperplane = null;
            while (hyperplane == null && it2.hasNext()) {
                hyperplane = it2.next().getHyperplane();
                if (!bSPTree.insertCut(hyperplane.copySelf())) {
                    break;
                }
            }
        }
        if (it2.hasNext()) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            while (it2.hasNext()) {
                SubHyperplane<S> next = it2.next();
                SubHyperplane.SplitSubHyperplane<S> split = next.split(hyperplane);
                int i = C19127c.f108349a[split.getSide().ordinal()];
                if (i == 1) {
                    arrayList.add(next);
                } else if (i == 2) {
                    arrayList2.add(next);
                } else if (i == 3) {
                    arrayList.add(split.getPlus());
                    arrayList2.add(split.getMinus());
                }
            }
            m67708a(bSPTree.getPlus(), arrayList);
            m67708a(bSPTree.getMinus(), arrayList2);
        }
    }

    public AbstractRegion<S, T> applyTransform(Transform<S, T> transform) {
        BoundaryAttribute boundaryAttribute;
        HashMap hashMap = new HashMap();
        BSPTree<S> m67710c = m67710c(getTree(false), transform, hashMap);
        for (Map.Entry<BSPTree<S>, BSPTree<S>> entry : hashMap.entrySet()) {
            if (entry.getKey().getCut() != null && (boundaryAttribute = (BoundaryAttribute) entry.getKey().getAttribute()) != null) {
                BoundaryAttribute boundaryAttribute2 = (BoundaryAttribute) entry.getValue().getAttribute();
                Iterator<BSPTree<S>> it2 = boundaryAttribute.getSplitters().iterator();
                while (it2.hasNext()) {
                    boundaryAttribute2.getSplitters().add(hashMap.get(it2.next()));
                }
            }
        }
        return buildNew((BSPTree) m67710c);
    }

    /* renamed from: b */
    public final SubHyperplane<S> m67709b(BSPTree<S> bSPTree, SubHyperplane<S> subHyperplane) {
        if (bSPTree.getCut() == null) {
            if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
                return subHyperplane.copySelf();
            }
            return null;
        }
        SubHyperplane.SplitSubHyperplane<S> split = subHyperplane.split(bSPTree.getCut().getHyperplane());
        if (split.getPlus() == null) {
            return split.getMinus() != null ? m67709b(bSPTree.getMinus(), subHyperplane) : m67709b(bSPTree.getPlus(), m67709b(bSPTree.getMinus(), subHyperplane));
        }
        if (split.getMinus() == null) {
            return m67709b(bSPTree.getPlus(), subHyperplane);
        }
        SubHyperplane<S> m67709b = m67709b(bSPTree.getPlus(), split.getPlus());
        SubHyperplane<S> m67709b2 = m67709b(bSPTree.getMinus(), split.getMinus());
        return m67709b == null ? m67709b2 : m67709b2 == null ? m67709b : m67709b.reunite(m67709b2);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public abstract AbstractRegion<S, T> buildNew(BSPTree<S> bSPTree);

    /* renamed from: c */
    public final BSPTree<S> m67710c(BSPTree<S> bSPTree, Transform<S, T> transform, Map<BSPTree<S>, BSPTree<S>> map) {
        BSPTree<S> bSPTree2;
        if (bSPTree.getCut() == null) {
            bSPTree2 = new BSPTree<>(bSPTree.getAttribute());
        } else {
            AbstractSubHyperplane<S, T> applyTransform = ((AbstractSubHyperplane) bSPTree.getCut()).applyTransform(transform);
            BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
            if (boundaryAttribute != null) {
                boundaryAttribute = new BoundaryAttribute(boundaryAttribute.getPlusOutside() == null ? null : ((AbstractSubHyperplane) boundaryAttribute.getPlusOutside()).applyTransform(transform), boundaryAttribute.getPlusInside() != null ? ((AbstractSubHyperplane) boundaryAttribute.getPlusInside()).applyTransform(transform) : null, new NodesSet());
            }
            bSPTree2 = new BSPTree<>(applyTransform, m67710c(bSPTree.getPlus(), transform, map), m67710c(bSPTree.getMinus(), transform, map), boundaryAttribute);
        }
        map.put(bSPTree, bSPTree2);
        return bSPTree2;
    }

    public Region.Location checkPoint(Vector<S> vector) {
        return checkPoint((Point) vector);
    }

    public abstract void computeGeometricalProperties();

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public boolean contains(Region<S> region) {
        return new RegionFactory().difference(region, this).isEmpty();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public Point<S> getBarycenter() {
        if (this.f108346h == null) {
            computeGeometricalProperties();
        }
        return this.f108346h;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public double getBoundarySize() {
        C19139c c19139c = new C19139c();
        getTree(true).visit(c19139c);
        return c19139c.m67727a();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public double getSize() {
        if (this.f108346h == null) {
            computeGeometricalProperties();
        }
        return this.f108345g;
    }

    public double getTolerance() {
        return this.f108344f;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public BSPTree<S> getTree(boolean z) {
        if (z && this.f108343e.getCut() != null && this.f108343e.getAttribute() == null) {
            this.f108343e.visit(new C19137a());
        }
        return this.f108343e;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public SubHyperplane<S> intersection(SubHyperplane<S> subHyperplane) {
        return m67709b(this.f108343e, subHyperplane);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public boolean isEmpty() {
        return isEmpty(this.f108343e);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public boolean isFull() {
        return isFull(this.f108343e);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public BoundaryProjection<S> projectToBoundary(Point<S> point) {
        C19138b c19138b = new C19138b(point);
        getTree(true).visit(c19138b);
        return c19138b.m67725d();
    }

    public void setBarycenter(Vector<S> vector) {
        setBarycenter((Point) vector);
    }

    public void setSize(double d) {
        this.f108345g = d;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    @Deprecated
    public Side side(Hyperplane<S> hyperplane) {
        C19141e c19141e = new C19141e(this);
        c19141e.m67739c(this.f108343e, hyperplane.wholeHyperplane());
        return c19141e.m67738b() ? c19141e.m67737a() ? Side.BOTH : Side.PLUS : c19141e.m67737a() ? Side.MINUS : Side.HYPER;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public Region.Location checkPoint(Point<S> point) {
        return checkPoint(this.f108343e, point);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public AbstractRegion<S, T> copySelf() {
        return buildNew((BSPTree) this.f108343e.copySelf());
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public boolean isEmpty(BSPTree<S> bSPTree) {
        if (bSPTree.getCut() == null) {
            return !((Boolean) bSPTree.getAttribute()).booleanValue();
        }
        return isEmpty(bSPTree.getMinus()) && isEmpty(bSPTree.getPlus());
    }

    @Override // org.apache.commons.math3.geometry.partitioning.Region
    public boolean isFull(BSPTree<S> bSPTree) {
        if (bSPTree.getCut() == null) {
            return ((Boolean) bSPTree.getAttribute()).booleanValue();
        }
        return isFull(bSPTree.getMinus()) && isFull(bSPTree.getPlus());
    }

    public void setBarycenter(Point<S> point) {
        this.f108346h = point;
    }

    public Region.Location checkPoint(BSPTree<S> bSPTree, Vector<S> vector) {
        return checkPoint((BSPTree) bSPTree, (Point) vector);
    }

    public AbstractRegion(BSPTree<S> bSPTree, double d) {
        this.f108343e = bSPTree;
        this.f108344f = d;
    }

    public Region.Location checkPoint(BSPTree<S> bSPTree, Point<S> point) {
        BSPTree<S> cell = bSPTree.getCell(point, this.f108344f);
        if (cell.getCut() == null) {
            return ((Boolean) cell.getAttribute()).booleanValue() ? Region.Location.INSIDE : Region.Location.OUTSIDE;
        }
        Region.Location checkPoint = checkPoint(cell.getMinus(), point);
        return checkPoint == checkPoint(cell.getPlus(), point) ? checkPoint : Region.Location.BOUNDARY;
    }

    public AbstractRegion(Collection<SubHyperplane<S>> collection, double d) {
        this.f108344f = d;
        if (collection.size() == 0) {
            this.f108343e = new BSPTree<>(Boolean.TRUE);
            return;
        }
        TreeSet treeSet = new TreeSet(new C19125a());
        treeSet.addAll(collection);
        BSPTree<S> bSPTree = new BSPTree<>();
        this.f108343e = bSPTree;
        m67708a(bSPTree, treeSet);
        this.f108343e.visit(new C19126b());
    }

    public AbstractRegion(Hyperplane<S>[] hyperplaneArr, double d) {
        this.f108344f = d;
        if (hyperplaneArr != null && hyperplaneArr.length != 0) {
            BSPTree<S> tree = hyperplaneArr[0].wholeSpace().getTree(false);
            this.f108343e = tree;
            tree.setAttribute(Boolean.TRUE);
            for (Hyperplane<S> hyperplane : hyperplaneArr) {
                if (tree.insertCut(hyperplane)) {
                    tree.setAttribute(null);
                    tree.getPlus().setAttribute(Boolean.FALSE);
                    tree = tree.getMinus();
                    tree.setAttribute(Boolean.TRUE);
                }
            }
            return;
        }
        this.f108343e = new BSPTree<>(Boolean.FALSE);
    }
}
