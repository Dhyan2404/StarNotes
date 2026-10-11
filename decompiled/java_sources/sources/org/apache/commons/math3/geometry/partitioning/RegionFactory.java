package org.apache.commons.math3.geometry.partitioning;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;

/* loaded from: classes12.dex */
public class RegionFactory<S extends Space> {

    /* renamed from: a */
    public final RegionFactory<S>.C19133d f108367a = new C19133d(this, null);

    /* renamed from: org.apache.commons.math3.geometry.partitioning.RegionFactory$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19130a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f108368a;

        static {
            int[] iArr = new int[Side.values().length];
            f108368a = iArr;
            try {
                iArr[Side.HYPER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f108368a[Side.PLUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.partitioning.RegionFactory$b */
    /* loaded from: classes12.dex */
    public class C19131b implements BSPTree.LeafMerger<S>, BSPTree.VanishingCutHandler<S> {

        /* renamed from: a */
        public final Region<S> f108369a;

        /* renamed from: b */
        public final Region<S> f108370b;

        public C19131b(Region<S> region, Region<S> region2) {
            this.f108369a = region.copySelf();
            this.f108370b = region2.copySelf();
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTree.VanishingCutHandler
        public BSPTree<S> fixNode(BSPTree<S> bSPTree) {
            Point<S> barycenter = this.f108369a.buildNew(bSPTree.pruneAroundConvexCell(Boolean.TRUE, Boolean.FALSE, null)).getBarycenter();
            return new BSPTree<>(Boolean.valueOf(this.f108369a.checkPoint(barycenter) == Region.Location.INSIDE && this.f108370b.checkPoint(barycenter) == Region.Location.OUTSIDE));
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTree.LeafMerger
        public BSPTree<S> merge(BSPTree<S> bSPTree, BSPTree<S> bSPTree2, BSPTree<S> bSPTree3, boolean z, boolean z2) {
            if (!((Boolean) bSPTree.getAttribute()).booleanValue()) {
                if (!z2) {
                    bSPTree = bSPTree2;
                }
                bSPTree.insertInTree(bSPTree3, z, this);
                return bSPTree;
            }
            RegionFactory regionFactory = RegionFactory.this;
            if (z2) {
                bSPTree = bSPTree2;
            }
            BSPTree<S> m67720b = regionFactory.m67720b(bSPTree);
            m67720b.insertInTree(bSPTree3, z, this);
            return m67720b;
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.partitioning.RegionFactory$c */
    /* loaded from: classes12.dex */
    public class C19132c implements BSPTree.LeafMerger<S> {
        public C19132c() {
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTree.LeafMerger
        public BSPTree<S> merge(BSPTree<S> bSPTree, BSPTree<S> bSPTree2, BSPTree<S> bSPTree3, boolean z, boolean z2) {
            if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
                bSPTree2.insertInTree(bSPTree3, z, new C19135f(true));
                return bSPTree2;
            }
            bSPTree.insertInTree(bSPTree3, z, new C19135f(false));
            return bSPTree;
        }

        public /* synthetic */ C19132c(RegionFactory regionFactory, C19130a c19130a) {
            this();
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.partitioning.RegionFactory$d */
    /* loaded from: classes12.dex */
    public class C19133d implements BSPTreeVisitor<S> {
        public C19133d() {
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public void visitInternalNode(BSPTree<S> bSPTree) {
            bSPTree.setAttribute(null);
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public void visitLeafNode(BSPTree<S> bSPTree) {
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public BSPTreeVisitor.Order visitOrder(BSPTree<S> bSPTree) {
            return BSPTreeVisitor.Order.PLUS_SUB_MINUS;
        }

        public /* synthetic */ C19133d(RegionFactory regionFactory, C19130a c19130a) {
            this();
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.partitioning.RegionFactory$e */
    /* loaded from: classes12.dex */
    public class C19134e implements BSPTree.LeafMerger<S> {
        public C19134e() {
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTree.LeafMerger
        public BSPTree<S> merge(BSPTree<S> bSPTree, BSPTree<S> bSPTree2, BSPTree<S> bSPTree3, boolean z, boolean z2) {
            if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
                bSPTree.insertInTree(bSPTree3, z, new C19135f(true));
                return bSPTree;
            }
            bSPTree2.insertInTree(bSPTree3, z, new C19135f(false));
            return bSPTree2;
        }

        public /* synthetic */ C19134e(RegionFactory regionFactory, C19130a c19130a) {
            this();
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.partitioning.RegionFactory$f */
    /* loaded from: classes12.dex */
    public class C19135f implements BSPTree.VanishingCutHandler<S> {

        /* renamed from: a */
        public final boolean f108375a;

        public C19135f(boolean z) {
            this.f108375a = z;
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTree.VanishingCutHandler
        public BSPTree<S> fixNode(BSPTree<S> bSPTree) {
            return bSPTree.getPlus().getAttribute().equals(bSPTree.getMinus().getAttribute()) ? new BSPTree<>(bSPTree.getPlus().getAttribute()) : new BSPTree<>(Boolean.valueOf(this.f108375a));
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.partitioning.RegionFactory$g */
    /* loaded from: classes12.dex */
    public class C19136g implements BSPTree.LeafMerger<S> {
        public C19136g() {
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTree.LeafMerger
        public BSPTree<S> merge(BSPTree<S> bSPTree, BSPTree<S> bSPTree2, BSPTree<S> bSPTree3, boolean z, boolean z2) {
            if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
                bSPTree2 = RegionFactory.this.m67720b(bSPTree2);
            }
            bSPTree2.insertInTree(bSPTree3, z, new C19135f(true));
            return bSPTree2;
        }

        public /* synthetic */ C19136g(RegionFactory regionFactory, C19130a c19130a) {
            this();
        }
    }

    /* renamed from: b */
    public final BSPTree<S> m67720b(BSPTree<S> bSPTree) {
        BoundaryAttribute boundaryAttribute;
        HashMap hashMap = new HashMap();
        BSPTree<S> m67721c = m67721c(bSPTree, hashMap);
        for (Map.Entry<BSPTree<S>, BSPTree<S>> entry : hashMap.entrySet()) {
            if (entry.getKey().getCut() != null && (boundaryAttribute = (BoundaryAttribute) entry.getKey().getAttribute()) != null) {
                BoundaryAttribute boundaryAttribute2 = (BoundaryAttribute) entry.getValue().getAttribute();
                Iterator<BSPTree<S>> it2 = boundaryAttribute.getSplitters().iterator();
                while (it2.hasNext()) {
                    boundaryAttribute2.getSplitters().add(hashMap.get(it2.next()));
                }
            }
        }
        return m67721c;
    }

    public Region<S> buildConvex(Hyperplane<S>... hyperplaneArr) {
        if (hyperplaneArr == null || hyperplaneArr.length == 0) {
            return null;
        }
        Region<S> wholeSpace = hyperplaneArr[0].wholeSpace();
        BSPTree<S> tree = wholeSpace.getTree(false);
        tree.setAttribute(Boolean.TRUE);
        for (Hyperplane<S> hyperplane : hyperplaneArr) {
            if (tree.insertCut(hyperplane)) {
                tree.setAttribute(null);
                tree.getPlus().setAttribute(Boolean.FALSE);
                tree = tree.getMinus();
                tree.setAttribute(Boolean.TRUE);
            } else {
                SubHyperplane<S> wholeHyperplane = hyperplane.wholeHyperplane();
                for (BSPTree<S> bSPTree = tree; bSPTree.getParent() != null && wholeHyperplane != null; bSPTree = bSPTree.getParent()) {
                    Hyperplane<S> hyperplane2 = bSPTree.getParent().getCut().getHyperplane();
                    SubHyperplane.SplitSubHyperplane<S> split = wholeHyperplane.split(hyperplane2);
                    int i = C19130a.f108368a[split.getSide().ordinal()];
                    if (i != 1) {
                        if (i == 2) {
                            throw new MathIllegalArgumentException(LocalizedFormats.NOT_CONVEX_HYPERPLANES, new Object[0]);
                        }
                        wholeHyperplane = split.getMinus();
                    } else if (!hyperplane.sameOrientationAs(hyperplane2)) {
                        return getComplement(hyperplaneArr[0].wholeSpace());
                    }
                }
            }
        }
        return wholeSpace;
    }

    /* renamed from: c */
    public final BSPTree<S> m67721c(BSPTree<S> bSPTree, Map<BSPTree<S>, BSPTree<S>> map) {
        BSPTree<S> bSPTree2;
        if (bSPTree.getCut() == null) {
            bSPTree2 = new BSPTree<>(((Boolean) bSPTree.getAttribute()).booleanValue() ? Boolean.FALSE : Boolean.TRUE);
        } else {
            BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
            if (boundaryAttribute != null) {
                boundaryAttribute = new BoundaryAttribute(boundaryAttribute.getPlusInside() == null ? null : boundaryAttribute.getPlusInside().copySelf(), boundaryAttribute.getPlusOutside() != null ? boundaryAttribute.getPlusOutside().copySelf() : null, new NodesSet());
            }
            bSPTree2 = new BSPTree<>(bSPTree.getCut().copySelf(), m67721c(bSPTree.getPlus(), map), m67721c(bSPTree.getMinus(), map), boundaryAttribute);
        }
        map.put(bSPTree, bSPTree2);
        return bSPTree2;
    }

    public Region<S> difference(Region<S> region, Region<S> region2) {
        BSPTree<S> merge = region.getTree(false).merge(region2.getTree(false), new C19131b(region, region2));
        merge.visit(this.f108367a);
        return region.buildNew(merge);
    }

    public Region<S> getComplement(Region<S> region) {
        return region.buildNew(m67720b(region.getTree(false)));
    }

    public Region<S> intersection(Region<S> region, Region<S> region2) {
        BSPTree<S> merge = region.getTree(false).merge(region2.getTree(false), new C19132c(this, null));
        merge.visit(this.f108367a);
        return region.buildNew(merge);
    }

    public Region<S> union(Region<S> region, Region<S> region2) {
        BSPTree<S> merge = region.getTree(false).merge(region2.getTree(false), new C19134e(this, null));
        merge.visit(this.f108367a);
        return region.buildNew(merge);
    }

    public Region<S> xor(Region<S> region, Region<S> region2) {
        BSPTree<S> merge = region.getTree(false).merge(region2.getTree(false), new C19136g(this, null));
        merge.visit(this.f108367a);
        return region.buildNew(merge);
    }
}
