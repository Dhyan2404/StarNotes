package org.apache.commons.math3.geometry.partitioning;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;

/* loaded from: classes12.dex */
public abstract class AbstractSubHyperplane<S extends Space, T extends Space> implements SubHyperplane<S> {

    /* renamed from: a */
    public final Hyperplane<S> f108350a;

    /* renamed from: b */
    public final Region<T> f108351b;

    public AbstractSubHyperplane(Hyperplane<S> hyperplane, Region<T> region) {
        this.f108350a = hyperplane;
        this.f108351b = region;
    }

    /* renamed from: a */
    public final BSPTree<T> m67712a(BSPTree<T> bSPTree, Hyperplane<S> hyperplane, Transform<S, T> transform, Map<BSPTree<T>, BSPTree<T>> map) {
        BSPTree<T> bSPTree2;
        if (bSPTree.getCut() == null) {
            bSPTree2 = new BSPTree<>(bSPTree.getAttribute());
        } else {
            BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
            if (boundaryAttribute != null) {
                boundaryAttribute = new BoundaryAttribute(boundaryAttribute.getPlusOutside() == null ? null : transform.apply(boundaryAttribute.getPlusOutside(), this.f108350a, hyperplane), boundaryAttribute.getPlusInside() != null ? transform.apply(boundaryAttribute.getPlusInside(), this.f108350a, hyperplane) : null, new NodesSet());
            }
            bSPTree2 = new BSPTree<>(transform.apply(bSPTree.getCut(), this.f108350a, hyperplane), m67712a(bSPTree.getPlus(), hyperplane, transform, map), m67712a(bSPTree.getMinus(), hyperplane, transform, map), boundaryAttribute);
        }
        map.put(bSPTree, bSPTree2);
        return bSPTree2;
    }

    public AbstractSubHyperplane<S, T> applyTransform(Transform<S, T> transform) {
        BoundaryAttribute boundaryAttribute;
        Hyperplane<S> apply = transform.apply(this.f108350a);
        HashMap hashMap = new HashMap();
        BSPTree<T> m67712a = m67712a(this.f108351b.getTree(false), apply, transform, hashMap);
        for (Map.Entry<BSPTree<T>, BSPTree<T>> entry : hashMap.entrySet()) {
            if (entry.getKey().getCut() != null && (boundaryAttribute = (BoundaryAttribute) entry.getKey().getAttribute()) != null) {
                BoundaryAttribute boundaryAttribute2 = (BoundaryAttribute) entry.getValue().getAttribute();
                Iterator<BSPTree<S>> it2 = boundaryAttribute.getSplitters().iterator();
                while (it2.hasNext()) {
                    boundaryAttribute2.getSplitters().add(hashMap.get(it2.next()));
                }
            }
        }
        return buildNew(apply, this.f108351b.buildNew(m67712a));
    }

    public abstract AbstractSubHyperplane<S, T> buildNew(Hyperplane<S> hyperplane, Region<T> region);

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    public Hyperplane<S> getHyperplane() {
        return this.f108350a;
    }

    public Region<T> getRemainingRegion() {
        return this.f108351b;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    public double getSize() {
        return this.f108351b.getSize();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    public boolean isEmpty() {
        return this.f108351b.isEmpty();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    @Deprecated
    public Side side(Hyperplane<S> hyperplane) {
        return split(hyperplane).getSide();
    }

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    public abstract SubHyperplane.SplitSubHyperplane<S> split(Hyperplane<S> hyperplane);

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    public AbstractSubHyperplane<S, T> copySelf() {
        return buildNew(this.f108350a.copySelf(), this.f108351b);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.SubHyperplane
    public AbstractSubHyperplane<S, T> reunite(SubHyperplane<S> subHyperplane) {
        return buildNew(this.f108350a, new RegionFactory().union(this.f108351b, ((AbstractSubHyperplane) subHyperplane).f108351b));
    }
}
