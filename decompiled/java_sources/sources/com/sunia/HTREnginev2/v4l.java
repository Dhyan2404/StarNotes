package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.AbstractConcatenatedTimeline;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes5.dex */
public final class v4l extends AbstractConcatenatedTimeline {

    /* renamed from: k */
    public final int f87131k;

    /* renamed from: l */
    public final int f87132l;

    /* renamed from: m */
    public final int[] f87133m;

    /* renamed from: n */
    public final int[] f87134n;

    /* renamed from: o */
    public final Timeline[] f87135o;

    /* renamed from: p */
    public final Object[] f87136p;

    /* renamed from: q */
    public final HashMap<Object, Integer> f87137q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v4l(Collection<? extends slj> collection, ShuffleOrder shuffleOrder) {
        super(false, shuffleOrder);
        int i = 0;
        int size = collection.size();
        this.f87133m = new int[size];
        this.f87134n = new int[size];
        this.f87135o = new Timeline[size];
        this.f87136p = new Object[size];
        this.f87137q = new HashMap<>();
        int i2 = 0;
        int i3 = 0;
        for (slj sljVar : collection) {
            this.f87135o[i3] = sljVar.mo17972a();
            this.f87134n[i3] = i;
            this.f87133m[i3] = i2;
            i += this.f87135o[i3].getWindowCount();
            i2 += this.f87135o[i3].getPeriodCount();
            this.f87136p[i3] = sljVar.getUid();
            this.f87137q.put(this.f87136p[i3], Integer.valueOf(i3));
            i3++;
        }
        this.f87131k = i;
        this.f87132l = i2;
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public int getChildIndexByChildUid(Object obj) {
        Integer num = this.f87137q.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public int getChildIndexByPeriodIndex(int i) {
        return Util.binarySearchFloor(this.f87133m, i + 1, false, false);
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public int getChildIndexByWindowIndex(int i) {
        return Util.binarySearchFloor(this.f87134n, i + 1, false, false);
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public Object getChildUidByChildIndex(int i) {
        return this.f87136p[i];
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public int getFirstPeriodIndexByChildIndex(int i) {
        return this.f87133m[i];
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public int getFirstWindowIndexByChildIndex(int i) {
        return this.f87134n[i];
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getPeriodCount() {
        return this.f87132l;
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public Timeline getTimelineByChildIndex(int i) {
        return this.f87135o[i];
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getWindowCount() {
        return this.f87131k;
    }

    /* renamed from: h */
    public List<Timeline> m57738h() {
        return Arrays.asList(this.f87135o);
    }
}
