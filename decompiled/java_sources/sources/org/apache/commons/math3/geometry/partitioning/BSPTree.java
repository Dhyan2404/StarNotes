package org.apache.commons.math3.geometry.partitioning;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class BSPTree<S extends Space> {

    /* renamed from: a */
    public SubHyperplane<S> f108352a;

    /* renamed from: b */
    public BSPTree<S> f108353b;

    /* renamed from: c */
    public BSPTree<S> f108354c;

    /* renamed from: d */
    public BSPTree<S> f108355d;

    /* renamed from: e */
    public Object f108356e;

    /* loaded from: classes12.dex */
    public interface LeafMerger<S extends Space> {
        BSPTree<S> merge(BSPTree<S> bSPTree, BSPTree<S> bSPTree2, BSPTree<S> bSPTree3, boolean z, boolean z2);
    }

    /* loaded from: classes12.dex */
    public interface VanishingCutHandler<S extends Space> {
        BSPTree<S> fixNode(BSPTree<S> bSPTree);
    }

    /* renamed from: org.apache.commons.math3.geometry.partitioning.BSPTree$a */
    /* loaded from: classes12.dex */
    public class C19128a implements VanishingCutHandler<S> {
        public C19128a() {
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTree.VanishingCutHandler
        public BSPTree<S> fixNode(BSPTree<S> bSPTree) {
            throw new MathIllegalStateException(LocalizedFormats.NULL_NOT_ALLOWED, new Object[0]);
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.partitioning.BSPTree$b */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19129b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f108358a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f108359b;

        static {
            int[] iArr = new int[Side.values().length];
            f108359b = iArr;
            try {
                iArr[Side.PLUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f108359b[Side.MINUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f108359b[Side.BOTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[BSPTreeVisitor.Order.values().length];
            f108358a = iArr2;
            try {
                iArr2[BSPTreeVisitor.Order.PLUS_MINUS_SUB.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f108358a[BSPTreeVisitor.Order.PLUS_SUB_MINUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f108358a[BSPTreeVisitor.Order.MINUS_PLUS_SUB.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f108358a[BSPTreeVisitor.Order.MINUS_SUB_PLUS.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f108358a[BSPTreeVisitor.Order.SUB_PLUS_MINUS.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f108358a[BSPTreeVisitor.Order.SUB_MINUS_PLUS.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public BSPTree() {
        this.f108352a = null;
        this.f108353b = null;
        this.f108354c = null;
        this.f108355d = null;
        this.f108356e = null;
    }

    /* renamed from: a */
    public final void m67713a(Hyperplane<S> hyperplane, VanishingCutHandler<S> vanishingCutHandler) {
        SubHyperplane<S> subHyperplane = this.f108352a;
        if (subHyperplane != null) {
            this.f108352a = subHyperplane.split(hyperplane).getPlus();
            this.f108353b.m67713a(hyperplane, vanishingCutHandler);
            this.f108354c.m67713a(hyperplane, vanishingCutHandler);
            if (this.f108352a == null) {
                BSPTree<S> fixNode = vanishingCutHandler.fixNode(this);
                this.f108352a = fixNode.f108352a;
                this.f108353b = fixNode.f108353b;
                this.f108354c = fixNode.f108354c;
                this.f108356e = fixNode.f108356e;
            }
        }
    }

    /* renamed from: b */
    public final void m67714b(Hyperplane<S> hyperplane, VanishingCutHandler<S> vanishingCutHandler) {
        SubHyperplane<S> subHyperplane = this.f108352a;
        if (subHyperplane != null) {
            this.f108352a = subHyperplane.split(hyperplane).getMinus();
            this.f108353b.m67714b(hyperplane, vanishingCutHandler);
            this.f108354c.m67714b(hyperplane, vanishingCutHandler);
            if (this.f108352a == null) {
                BSPTree<S> fixNode = vanishingCutHandler.fixNode(this);
                this.f108352a = fixNode.f108352a;
                this.f108353b = fixNode.f108353b;
                this.f108354c = fixNode.f108354c;
                this.f108356e = fixNode.f108356e;
            }
        }
    }

    /* renamed from: c */
    public final void m67715c() {
        if (this.f108352a != null) {
            BSPTree<S> bSPTree = this.f108353b;
            if (bSPTree.f108352a == null) {
                BSPTree<S> bSPTree2 = this.f108354c;
                if (bSPTree2.f108352a == null) {
                    Object obj = bSPTree.f108356e;
                    if (!(obj == null && bSPTree2.f108356e == null) && (obj == null || !obj.equals(bSPTree2.f108356e))) {
                        return;
                    }
                    Object obj2 = this.f108353b.f108356e;
                    if (obj2 == null) {
                        obj2 = this.f108354c.f108356e;
                    }
                    this.f108356e = obj2;
                    this.f108352a = null;
                    this.f108353b = null;
                    this.f108354c = null;
                }
            }
        }
    }

    public BSPTree<S> copySelf() {
        SubHyperplane<S> subHyperplane = this.f108352a;
        return subHyperplane == null ? new BSPTree<>(this.f108356e) : new BSPTree<>(subHyperplane.copySelf(), this.f108353b.copySelf(), this.f108354c.copySelf(), this.f108356e);
    }

    /* renamed from: d */
    public final SubHyperplane<S> m67716d(SubHyperplane<S> subHyperplane) {
        while (true) {
            BSPTree<S> bSPTree = this.f108355d;
            if (bSPTree == null || subHyperplane == null) {
                break;
            }
            subHyperplane = this == bSPTree.f108353b ? subHyperplane.split(bSPTree.f108352a.getHyperplane()).getPlus() : subHyperplane.split(bSPTree.f108352a.getHyperplane()).getMinus();
            this = this.f108355d;
        }
        return subHyperplane;
    }

    /* renamed from: e */
    public final BSPTree<S> m67717e(BSPTree<S> bSPTree, LeafMerger<S> leafMerger, BSPTree<S> bSPTree2, boolean z) {
        SubHyperplane<S> subHyperplane = this.f108352a;
        if (subHyperplane == null) {
            return leafMerger.merge(this, bSPTree, bSPTree2, z, true);
        }
        if (bSPTree.f108352a == null) {
            return leafMerger.merge(bSPTree, this, bSPTree2, z, false);
        }
        BSPTree<S> split = bSPTree.split(subHyperplane);
        if (bSPTree2 != null) {
            split.f108355d = bSPTree2;
            if (z) {
                bSPTree2.f108353b = split;
            } else {
                bSPTree2.f108354c = split;
            }
        }
        this.f108353b.m67717e(split.f108353b, leafMerger, split, true);
        this.f108354c.m67717e(split.f108354c, leafMerger, split, false);
        split.m67715c();
        SubHyperplane<S> subHyperplane2 = split.f108352a;
        if (subHyperplane2 != null) {
            split.f108352a = split.m67716d(subHyperplane2.getHyperplane().wholeHyperplane());
        }
        return split;
    }

    /* renamed from: f */
    public final void m67718f(Point<S> point, double d, List<BSPTree<S>> list) {
        SubHyperplane<S> subHyperplane = this.f108352a;
        if (subHyperplane != null) {
            double offset = subHyperplane.getHyperplane().getOffset(point);
            if (offset < (-d)) {
                this.f108354c.m67718f(point, d, list);
            } else {
                if (offset > d) {
                    this.f108353b.m67718f(point, d, list);
                    return;
                }
                list.add(this);
                this.f108354c.m67718f(point, d, list);
                this.f108353b.m67718f(point, d, list);
            }
        }
    }

    public Object getAttribute() {
        return this.f108356e;
    }

    @Deprecated
    public BSPTree<S> getCell(Vector<S> vector) {
        return getCell(vector, 1.0E-10d);
    }

    public List<BSPTree<S>> getCloseCuts(Point<S> point, double d) {
        ArrayList arrayList = new ArrayList();
        m67718f(point, d, arrayList);
        return arrayList;
    }

    public SubHyperplane<S> getCut() {
        return this.f108352a;
    }

    public BSPTree<S> getMinus() {
        return this.f108354c;
    }

    public BSPTree<S> getParent() {
        return this.f108355d;
    }

    public BSPTree<S> getPlus() {
        return this.f108353b;
    }

    public boolean insertCut(Hyperplane<S> hyperplane) {
        if (this.f108352a != null) {
            this.f108353b.f108355d = null;
            this.f108354c.f108355d = null;
        }
        SubHyperplane<S> m67716d = m67716d(hyperplane.wholeHyperplane());
        if (m67716d == null || m67716d.isEmpty()) {
            this.f108352a = null;
            this.f108353b = null;
            this.f108354c = null;
            return false;
        }
        this.f108352a = m67716d;
        BSPTree<S> bSPTree = new BSPTree<>();
        this.f108353b = bSPTree;
        bSPTree.f108355d = this;
        BSPTree<S> bSPTree2 = new BSPTree<>();
        this.f108354c = bSPTree2;
        bSPTree2.f108355d = this;
        return true;
    }

    @Deprecated
    public void insertInTree(BSPTree<S> bSPTree, boolean z) {
        insertInTree(bSPTree, z, new C19128a());
    }

    public BSPTree<S> merge(BSPTree<S> bSPTree, LeafMerger<S> leafMerger) {
        return m67717e(bSPTree, leafMerger, null, false);
    }

    public BSPTree<S> pruneAroundConvexCell(Object obj, Object obj2, Object obj3) {
        BSPTree<S> bSPTree = new BSPTree<>(obj);
        while (true) {
            BSPTree<S> bSPTree2 = this.f108355d;
            if (bSPTree2 == null) {
                return bSPTree;
            }
            SubHyperplane<S> copySelf = bSPTree2.f108352a.copySelf();
            BSPTree bSPTree3 = new BSPTree(obj2);
            bSPTree = this == this.f108355d.f108353b ? new BSPTree<>(copySelf, bSPTree, bSPTree3, obj3) : new BSPTree<>(copySelf, bSPTree3, bSPTree, obj3);
            this = this.f108355d;
        }
    }

    public void setAttribute(Object obj) {
        this.f108356e = obj;
    }

    public BSPTree<S> split(SubHyperplane<S> subHyperplane) {
        SubHyperplane<S> subHyperplane2 = this.f108352a;
        if (subHyperplane2 == null) {
            return new BSPTree<>(subHyperplane, copySelf(), new BSPTree(this.f108356e), null);
        }
        Hyperplane<S> hyperplane = subHyperplane2.getHyperplane();
        Hyperplane<S> hyperplane2 = subHyperplane.getHyperplane();
        SubHyperplane.SplitSubHyperplane<S> split = subHyperplane.split(hyperplane);
        int i = C19129b.f108359b[split.getSide().ordinal()];
        if (i == 1) {
            BSPTree<S> split2 = this.f108353b.split(subHyperplane);
            if (this.f108352a.split(hyperplane2).getSide() == Side.PLUS) {
                BSPTree<S> bSPTree = new BSPTree<>(this.f108352a.copySelf(), split2.f108353b, this.f108354c.copySelf(), this.f108356e);
                split2.f108353b = bSPTree;
                bSPTree.m67715c();
                split2.f108353b.f108355d = split2;
            } else {
                BSPTree<S> bSPTree2 = new BSPTree<>(this.f108352a.copySelf(), split2.f108354c, this.f108354c.copySelf(), this.f108356e);
                split2.f108354c = bSPTree2;
                bSPTree2.m67715c();
                split2.f108354c.f108355d = split2;
            }
            return split2;
        }
        if (i == 2) {
            BSPTree<S> split3 = this.f108354c.split(subHyperplane);
            if (this.f108352a.split(hyperplane2).getSide() == Side.PLUS) {
                BSPTree<S> bSPTree3 = new BSPTree<>(this.f108352a.copySelf(), this.f108353b.copySelf(), split3.f108353b, this.f108356e);
                split3.f108353b = bSPTree3;
                bSPTree3.m67715c();
                split3.f108353b.f108355d = split3;
            } else {
                BSPTree<S> bSPTree4 = new BSPTree<>(this.f108352a.copySelf(), this.f108353b.copySelf(), split3.f108354c, this.f108356e);
                split3.f108354c = bSPTree4;
                bSPTree4.m67715c();
                split3.f108354c.f108355d = split3;
            }
            return split3;
        }
        if (i != 3) {
            return hyperplane.sameOrientationAs(hyperplane2) ? new BSPTree<>(subHyperplane, this.f108353b.copySelf(), this.f108354c.copySelf(), this.f108356e) : new BSPTree<>(subHyperplane, this.f108354c.copySelf(), this.f108353b.copySelf(), this.f108356e);
        }
        SubHyperplane.SplitSubHyperplane<S> split4 = this.f108352a.split(hyperplane2);
        BSPTree<S> bSPTree5 = new BSPTree<>(subHyperplane, this.f108353b.split(split.getPlus()), this.f108354c.split(split.getMinus()), null);
        bSPTree5.f108353b.f108352a = split4.getPlus();
        bSPTree5.f108354c.f108352a = split4.getMinus();
        BSPTree<S> bSPTree6 = bSPTree5.f108353b;
        BSPTree<S> bSPTree7 = bSPTree6.f108354c;
        BSPTree<S> bSPTree8 = bSPTree5.f108354c.f108353b;
        bSPTree6.f108354c = bSPTree8;
        bSPTree8.f108355d = bSPTree6;
        BSPTree<S> bSPTree9 = bSPTree5.f108354c;
        bSPTree9.f108353b = bSPTree7;
        bSPTree7.f108355d = bSPTree9;
        bSPTree5.f108353b.m67715c();
        bSPTree5.f108354c.m67715c();
        return bSPTree5;
    }

    public void visit(BSPTreeVisitor<S> bSPTreeVisitor) {
        if (this.f108352a == null) {
            bSPTreeVisitor.visitLeafNode(this);
            return;
        }
        switch (C19129b.f108358a[bSPTreeVisitor.visitOrder(this).ordinal()]) {
            case 1:
                this.f108353b.visit(bSPTreeVisitor);
                this.f108354c.visit(bSPTreeVisitor);
                bSPTreeVisitor.visitInternalNode(this);
                return;
            case 2:
                this.f108353b.visit(bSPTreeVisitor);
                bSPTreeVisitor.visitInternalNode(this);
                this.f108354c.visit(bSPTreeVisitor);
                return;
            case 3:
                this.f108354c.visit(bSPTreeVisitor);
                this.f108353b.visit(bSPTreeVisitor);
                bSPTreeVisitor.visitInternalNode(this);
                return;
            case 4:
                this.f108354c.visit(bSPTreeVisitor);
                bSPTreeVisitor.visitInternalNode(this);
                this.f108353b.visit(bSPTreeVisitor);
                return;
            case 5:
                bSPTreeVisitor.visitInternalNode(this);
                this.f108353b.visit(bSPTreeVisitor);
                this.f108354c.visit(bSPTreeVisitor);
                return;
            case 6:
                bSPTreeVisitor.visitInternalNode(this);
                this.f108354c.visit(bSPTreeVisitor);
                this.f108353b.visit(bSPTreeVisitor);
                return;
            default:
                throw new MathInternalError();
        }
    }

    public BSPTree<S> getCell(Point<S> point, double d) {
        SubHyperplane<S> subHyperplane = this.f108352a;
        if (subHyperplane == null) {
            return this;
        }
        double offset = subHyperplane.getHyperplane().getOffset(point);
        if (FastMath.abs(offset) < d) {
            return this;
        }
        if (offset <= 0.0d) {
            return this.f108354c.getCell(point, d);
        }
        return this.f108353b.getCell(point, d);
    }

    public void insertInTree(BSPTree<S> bSPTree, boolean z, VanishingCutHandler<S> vanishingCutHandler) {
        this.f108355d = bSPTree;
        if (bSPTree != null) {
            if (z) {
                bSPTree.f108353b = this;
            } else {
                bSPTree.f108354c = this;
            }
        }
        if (this.f108352a != null) {
            BSPTree<S> bSPTree2 = this;
            while (true) {
                BSPTree<S> bSPTree3 = bSPTree2.f108355d;
                if (bSPTree3 == null) {
                    break;
                }
                Hyperplane<S> hyperplane = bSPTree3.f108352a.getHyperplane();
                if (bSPTree2 == bSPTree2.f108355d.f108353b) {
                    this.f108352a = this.f108352a.split(hyperplane).getPlus();
                    this.f108353b.m67713a(hyperplane, vanishingCutHandler);
                    this.f108354c.m67713a(hyperplane, vanishingCutHandler);
                } else {
                    this.f108352a = this.f108352a.split(hyperplane).getMinus();
                    this.f108353b.m67714b(hyperplane, vanishingCutHandler);
                    this.f108354c.m67714b(hyperplane, vanishingCutHandler);
                }
                if (this.f108352a == null) {
                    BSPTree<S> fixNode = vanishingCutHandler.fixNode(this);
                    SubHyperplane<S> subHyperplane = fixNode.f108352a;
                    this.f108352a = subHyperplane;
                    this.f108353b = fixNode.f108353b;
                    this.f108354c = fixNode.f108354c;
                    this.f108356e = fixNode.f108356e;
                    if (subHyperplane == null) {
                        break;
                    }
                }
                bSPTree2 = bSPTree2.f108355d;
            }
            m67715c();
        }
    }

    public BSPTree(Object obj) {
        this.f108352a = null;
        this.f108353b = null;
        this.f108354c = null;
        this.f108355d = null;
        this.f108356e = obj;
    }

    public BSPTree(SubHyperplane<S> subHyperplane, BSPTree<S> bSPTree, BSPTree<S> bSPTree2, Object obj) {
        this.f108352a = subHyperplane;
        this.f108353b = bSPTree;
        this.f108354c = bSPTree2;
        this.f108355d = null;
        this.f108356e = obj;
        bSPTree.f108355d = this;
        bSPTree2.f108355d = this;
    }
}
