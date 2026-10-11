package org.ahocorasick.interval;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes11.dex */
public class IntervalNode {

    /* renamed from: a */
    public IntervalNode f104540a;

    /* renamed from: b */
    public IntervalNode f104541b;

    /* renamed from: c */
    public int f104542c;

    /* renamed from: d */
    public List<Intervalable> f104543d = new ArrayList();

    /* loaded from: classes11.dex */
    public enum Direction {
        LEFT,
        RIGHT
    }

    /* renamed from: org.ahocorasick.interval.IntervalNode$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18663a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f104544a;

        static {
            int[] iArr = new int[Direction.values().length];
            f104544a = iArr;
            try {
                iArr[Direction.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f104544a[Direction.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public IntervalNode(List<Intervalable> list) {
        this.f104540a = null;
        this.f104541b = null;
        this.f104542c = determineMedian(list);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Intervalable intervalable : list) {
            if (intervalable.getEnd() < this.f104542c) {
                arrayList.add(intervalable);
            } else if (intervalable.getStart() > this.f104542c) {
                arrayList2.add(intervalable);
            } else {
                this.f104543d.add(intervalable);
            }
        }
        if (arrayList.size() > 0) {
            this.f104540a = new IntervalNode(arrayList);
        }
        if (arrayList2.size() > 0) {
            this.f104541b = new IntervalNode(arrayList2);
        }
    }

    public void addToOverlaps(Intervalable intervalable, List<Intervalable> list, List<Intervalable> list2) {
        for (Intervalable intervalable2 : list2) {
            if (!intervalable2.equals(intervalable)) {
                list.add(intervalable2);
            }
        }
    }

    public List<Intervalable> checkForOverlaps(Intervalable intervalable, Direction direction) {
        ArrayList arrayList = new ArrayList();
        for (Intervalable intervalable2 : this.f104543d) {
            int i = C18663a.f104544a[direction.ordinal()];
            if (i != 1) {
                if (i == 2 && intervalable2.getEnd() >= intervalable.getStart()) {
                    arrayList.add(intervalable2);
                }
            } else if (intervalable2.getStart() <= intervalable.getEnd()) {
                arrayList.add(intervalable2);
            }
        }
        return arrayList;
    }

    public List<Intervalable> checkForOverlapsToTheLeft(Intervalable intervalable) {
        return checkForOverlaps(intervalable, Direction.LEFT);
    }

    public List<Intervalable> checkForOverlapsToTheRight(Intervalable intervalable) {
        return checkForOverlaps(intervalable, Direction.RIGHT);
    }

    public int determineMedian(List<Intervalable> list) {
        int i = -1;
        int i2 = -1;
        for (Intervalable intervalable : list) {
            int start = intervalable.getStart();
            int end = intervalable.getEnd();
            if (i == -1 || start < i) {
                i = start;
            }
            if (i2 == -1 || end > i2) {
                i2 = end;
            }
        }
        return (i + i2) / 2;
    }

    public List<Intervalable> findOverlappingRanges(IntervalNode intervalNode, Intervalable intervalable) {
        return intervalNode != null ? intervalNode.findOverlaps(intervalable) : Collections.emptyList();
    }

    public List<Intervalable> findOverlaps(Intervalable intervalable) {
        ArrayList arrayList = new ArrayList();
        if (this.f104542c < intervalable.getStart()) {
            addToOverlaps(intervalable, arrayList, findOverlappingRanges(this.f104541b, intervalable));
            addToOverlaps(intervalable, arrayList, checkForOverlapsToTheRight(intervalable));
        } else if (this.f104542c > intervalable.getEnd()) {
            addToOverlaps(intervalable, arrayList, findOverlappingRanges(this.f104540a, intervalable));
            addToOverlaps(intervalable, arrayList, checkForOverlapsToTheLeft(intervalable));
        } else {
            addToOverlaps(intervalable, arrayList, this.f104543d);
            addToOverlaps(intervalable, arrayList, findOverlappingRanges(this.f104540a, intervalable));
            addToOverlaps(intervalable, arrayList, findOverlappingRanges(this.f104541b, intervalable));
        }
        return arrayList;
    }
}
