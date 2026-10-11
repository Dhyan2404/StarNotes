package org.apache.commons.math3.geometry.partitioning;

import org.apache.commons.math3.geometry.Space;

/* loaded from: classes12.dex */
public class BoundaryAttribute<S extends Space> {

    /* renamed from: a */
    public final SubHyperplane<S> f108360a;

    /* renamed from: b */
    public final SubHyperplane<S> f108361b;

    /* renamed from: c */
    public final NodesSet<S> f108362c;

    @Deprecated
    public BoundaryAttribute(SubHyperplane<S> subHyperplane, SubHyperplane<S> subHyperplane2) {
        this(subHyperplane, subHyperplane2, null);
    }

    public SubHyperplane<S> getPlusInside() {
        return this.f108361b;
    }

    public SubHyperplane<S> getPlusOutside() {
        return this.f108360a;
    }

    public NodesSet<S> getSplitters() {
        return this.f108362c;
    }

    public BoundaryAttribute(SubHyperplane<S> subHyperplane, SubHyperplane<S> subHyperplane2, NodesSet<S> nodesSet) {
        this.f108360a = subHyperplane;
        this.f108361b = subHyperplane2;
        this.f108362c = nodesSet;
    }
}
