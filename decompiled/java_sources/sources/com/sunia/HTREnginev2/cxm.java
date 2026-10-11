package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class cxm implements Subtitle {

    /* renamed from: e */
    public final List<List<Cue>> f67292e;

    /* renamed from: f */
    public final List<Long> f67293f;

    public cxm(List<List<Cue>> list, List<Long> list2) {
        this.f67292e = list;
        this.f67293f = list2;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j) {
        int binarySearchFloor = Util.binarySearchFloor((List<? extends Comparable<? super Long>>) this.f67293f, Long.valueOf(j), true, false);
        return binarySearchFloor == -1 ? Collections.emptyList() : this.f67292e.get(binarySearchFloor);
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        Assertions.checkArgument(i >= 0);
        Assertions.checkArgument(i < this.f67293f.size());
        return this.f67293f.get(i).longValue();
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.f67293f.size();
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int binarySearchCeil = Util.binarySearchCeil((List<? extends Comparable<? super Long>>) this.f67293f, Long.valueOf(j), false, false);
        if (binarySearchCeil < this.f67293f.size()) {
            return binarySearchCeil;
        }
        return -1;
    }
}
