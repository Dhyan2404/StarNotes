package org.apache.commons.math3.geometry.partitioning;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;

/* renamed from: org.apache.commons.math3.geometry.partitioning.d */
/* loaded from: classes12.dex */
public class C19140d<S extends Space> {

    /* renamed from: a */
    public SubHyperplane<S> f108385a = null;

    /* renamed from: b */
    public SubHyperplane<S> f108386b = null;

    /* renamed from: c */
    public final NodesSet<S> f108387c = new NodesSet<>();

    /* renamed from: d */
    public final NodesSet<S> f108388d = new NodesSet<>();

    /* renamed from: org.apache.commons.math3.geometry.partitioning.d$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f108389a;

        static {
            int[] iArr = new int[Side.values().length];
            f108389a = iArr;
            try {
                iArr[Side.PLUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f108389a[Side.MINUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f108389a[Side.BOTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public C19140d(BSPTree<S> bSPTree, SubHyperplane<S> subHyperplane) {
        m67730c(bSPTree, subHyperplane, new ArrayList());
    }

    /* renamed from: a */
    public final void m67728a(SubHyperplane<S> subHyperplane, List<BSPTree<S>> list) {
        SubHyperplane<S> subHyperplane2 = this.f108386b;
        if (subHyperplane2 == null) {
            this.f108386b = subHyperplane;
        } else {
            this.f108386b = subHyperplane2.reunite(subHyperplane);
        }
        this.f108388d.addAll(list);
    }

    /* renamed from: b */
    public final void m67729b(SubHyperplane<S> subHyperplane, List<BSPTree<S>> list) {
        SubHyperplane<S> subHyperplane2 = this.f108385a;
        if (subHyperplane2 == null) {
            this.f108385a = subHyperplane;
        } else {
            this.f108385a = subHyperplane2.reunite(subHyperplane);
        }
        this.f108387c.addAll(list);
    }

    /* renamed from: c */
    public final void m67730c(BSPTree<S> bSPTree, SubHyperplane<S> subHyperplane, List<BSPTree<S>> list) {
        if (bSPTree.getCut() == null) {
            if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
                m67728a(subHyperplane, list);
                return;
            } else {
                m67729b(subHyperplane, list);
                return;
            }
        }
        SubHyperplane.SplitSubHyperplane<S> split = subHyperplane.split(bSPTree.getCut().getHyperplane());
        int i = a.f108389a[split.getSide().ordinal()];
        if (i == 1) {
            m67730c(bSPTree.getPlus(), subHyperplane, list);
            return;
        }
        if (i == 2) {
            m67730c(bSPTree.getMinus(), subHyperplane, list);
        } else {
            if (i != 3) {
                throw new MathInternalError();
            }
            list.add(bSPTree);
            m67730c(bSPTree.getPlus(), split.getPlus(), list);
            m67730c(bSPTree.getMinus(), split.getMinus(), list);
            list.remove(list.size() - 1);
        }
    }

    /* renamed from: d */
    public NodesSet<S> m67731d() {
        return this.f108388d;
    }

    /* renamed from: e */
    public NodesSet<S> m67732e() {
        return this.f108387c;
    }

    /* renamed from: f */
    public SubHyperplane<S> m67733f() {
        return this.f108386b;
    }

    /* renamed from: g */
    public SubHyperplane<S> m67734g() {
        return this.f108385a;
    }

    /* renamed from: h */
    public boolean m67735h() {
        SubHyperplane<S> subHyperplane = this.f108386b;
        return (subHyperplane == null || subHyperplane.isEmpty()) ? false : true;
    }

    /* renamed from: i */
    public boolean m67736i() {
        SubHyperplane<S> subHyperplane = this.f108385a;
        return (subHyperplane == null || subHyperplane.isEmpty()) ? false : true;
    }
}
