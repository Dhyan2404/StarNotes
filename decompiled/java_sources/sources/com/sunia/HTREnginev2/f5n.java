package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class f5n implements Subtitle {

    /* renamed from: e */
    public final Cue[] f69679e;

    /* renamed from: f */
    public final long[] f69680f;

    public f5n(Cue[] cueArr, long[] jArr) {
        this.f69679e = cueArr;
        this.f69680f = jArr;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j) {
        Cue cue;
        int binarySearchFloor = Util.binarySearchFloor(this.f69680f, j, true, false);
        return (binarySearchFloor == -1 || (cue = this.f69679e[binarySearchFloor]) == Cue.EMPTY) ? Collections.emptyList() : Collections.singletonList(cue);
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        Assertions.checkArgument(i >= 0);
        Assertions.checkArgument(i < this.f69680f.length);
        return this.f69680f[i];
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.f69680f.length;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int binarySearchCeil = Util.binarySearchCeil(this.f69680f, j, false, false);
        if (binarySearchCeil < this.f69680f.length) {
            return binarySearchCeil;
        }
        return -1;
    }
}
