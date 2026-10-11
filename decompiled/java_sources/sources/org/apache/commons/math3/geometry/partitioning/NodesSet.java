package org.apache.commons.math3.geometry.partitioning;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.Space;

/* loaded from: classes12.dex */
public class NodesSet<S extends Space> implements Iterable<BSPTree<S>> {

    /* renamed from: e */
    public List<BSPTree<S>> f108366e = new ArrayList();

    public void add(BSPTree<S> bSPTree) {
        Iterator<BSPTree<S>> it2 = this.f108366e.iterator();
        while (it2.hasNext()) {
            if (bSPTree == it2.next()) {
                return;
            }
        }
        this.f108366e.add(bSPTree);
    }

    public void addAll(Iterable<BSPTree<S>> iterable) {
        Iterator<BSPTree<S>> it2 = iterable.iterator();
        while (it2.hasNext()) {
            add(it2.next());
        }
    }

    @Override // java.lang.Iterable
    public Iterator<BSPTree<S>> iterator() {
        return this.f108366e.iterator();
    }
}
