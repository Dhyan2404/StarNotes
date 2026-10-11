package org.ahocorasick.interval;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* loaded from: classes11.dex */
public class IntervalTree {

    /* renamed from: a */
    public IntervalNode f104545a;

    public IntervalTree(List<Intervalable> list) {
        this.f104545a = null;
        this.f104545a = new IntervalNode(list);
    }

    public List<Intervalable> findOverlaps(Intervalable intervalable) {
        return this.f104545a.findOverlaps(intervalable);
    }

    public List<Intervalable> removeOverlaps(List<Intervalable> list) {
        Collections.sort(list, new IntervalableComparatorBySize());
        TreeSet treeSet = new TreeSet();
        for (Intervalable intervalable : list) {
            if (!treeSet.contains(intervalable)) {
                treeSet.addAll(findOverlaps(intervalable));
            }
        }
        Iterator it2 = treeSet.iterator();
        while (it2.hasNext()) {
            list.remove((Intervalable) it2.next());
        }
        Collections.sort(list, new IntervalableComparatorByPosition());
        return list;
    }
}
