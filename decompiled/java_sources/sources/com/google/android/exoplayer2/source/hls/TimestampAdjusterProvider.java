package com.google.android.exoplayer2.source.hls;

import android.util.SparseArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;

/* loaded from: classes5.dex */
public final class TimestampAdjusterProvider {

    /* renamed from: a */
    public final SparseArray<TimestampAdjuster> f26043a = new SparseArray<>();

    public TimestampAdjuster getAdjuster(int i) {
        TimestampAdjuster timestampAdjuster = this.f26043a.get(i);
        if (timestampAdjuster != null) {
            return timestampAdjuster;
        }
        TimestampAdjuster timestampAdjuster2 = new TimestampAdjuster(9223372036854775806L);
        this.f26043a.put(i, timestampAdjuster2);
        return timestampAdjuster2;
    }

    public void reset() {
        this.f26043a.clear();
    }
}
