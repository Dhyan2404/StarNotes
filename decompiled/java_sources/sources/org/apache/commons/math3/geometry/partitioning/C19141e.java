package org.apache.commons.math3.geometry.partitioning;

import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;

/* renamed from: org.apache.commons.math3.geometry.partitioning.e */
/* loaded from: classes12.dex */
public class C19141e<S extends Space> {

    /* renamed from: a */
    public final Region<S> f108390a;

    /* renamed from: b */
    public boolean f108391b = false;

    /* renamed from: c */
    public boolean f108392c = false;

    /* renamed from: org.apache.commons.math3.geometry.partitioning.e$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f108393a;

        static {
            int[] iArr = new int[Side.values().length];
            f108393a = iArr;
            try {
                iArr[Side.PLUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f108393a[Side.MINUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f108393a[Side.BOTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public C19141e(Region<S> region) {
        this.f108390a = region;
    }

    /* renamed from: a */
    public boolean m67737a() {
        return this.f108392c;
    }

    /* renamed from: b */
    public boolean m67738b() {
        return this.f108391b;
    }

    /* renamed from: c */
    public void m67739c(BSPTree<S> bSPTree, SubHyperplane<S> subHyperplane) {
        if (bSPTree.getCut() == null) {
            if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
                this.f108391b = true;
                this.f108392c = true;
                return;
            }
            return;
        }
        SubHyperplane.SplitSubHyperplane<S> split = subHyperplane.split(bSPTree.getCut().getHyperplane());
        int i = a.f108393a[split.getSide().ordinal()];
        if (i == 1) {
            if (bSPTree.getCut().split(subHyperplane.getHyperplane()).getSide() == Side.PLUS) {
                if (!this.f108390a.isEmpty(bSPTree.getMinus())) {
                    this.f108391b = true;
                }
            } else if (!this.f108390a.isEmpty(bSPTree.getMinus())) {
                this.f108392c = true;
            }
            if (this.f108391b && this.f108392c) {
                return;
            }
            m67739c(bSPTree.getPlus(), subHyperplane);
            return;
        }
        if (i == 2) {
            if (bSPTree.getCut().split(subHyperplane.getHyperplane()).getSide() == Side.PLUS) {
                if (!this.f108390a.isEmpty(bSPTree.getPlus())) {
                    this.f108391b = true;
                }
            } else if (!this.f108390a.isEmpty(bSPTree.getPlus())) {
                this.f108392c = true;
            }
            if (this.f108391b && this.f108392c) {
                return;
            }
            m67739c(bSPTree.getMinus(), subHyperplane);
            return;
        }
        if (i == 3) {
            m67739c(bSPTree.getPlus(), split.getPlus());
            if (this.f108391b && this.f108392c) {
                return;
            }
            m67739c(bSPTree.getMinus(), split.getMinus());
            return;
        }
        if (bSPTree.getCut().getHyperplane().sameOrientationAs(subHyperplane.getHyperplane())) {
            if (bSPTree.getPlus().getCut() != null || ((Boolean) bSPTree.getPlus().getAttribute()).booleanValue()) {
                this.f108391b = true;
            }
            if (bSPTree.getMinus().getCut() != null || ((Boolean) bSPTree.getMinus().getAttribute()).booleanValue()) {
                this.f108392c = true;
                return;
            }
            return;
        }
        if (bSPTree.getPlus().getCut() != null || ((Boolean) bSPTree.getPlus().getAttribute()).booleanValue()) {
            this.f108392c = true;
        }
        if (bSPTree.getMinus().getCut() != null || ((Boolean) bSPTree.getMinus().getAttribute()).booleanValue()) {
            this.f108391b = true;
        }
    }
}
