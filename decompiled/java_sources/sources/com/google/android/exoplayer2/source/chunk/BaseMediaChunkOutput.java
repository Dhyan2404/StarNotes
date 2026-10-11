package com.google.android.exoplayer2.source.chunk;

import com.google.android.exoplayer2.extractor.DummyTrackOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.source.chunk.ChunkExtractor;
import com.google.android.exoplayer2.util.Log;

/* loaded from: classes5.dex */
public final class BaseMediaChunkOutput implements ChunkExtractor.TrackOutputProvider {

    /* renamed from: c */
    public static final String f25585c = "BaseMediaChunkOutput";

    /* renamed from: a */
    public final int[] f25586a;

    /* renamed from: b */
    public final SampleQueue[] f25587b;

    public BaseMediaChunkOutput(int[] iArr, SampleQueue[] sampleQueueArr) {
        this.f25586a = iArr;
        this.f25587b = sampleQueueArr;
    }

    public int[] getWriteIndices() {
        int[] iArr = new int[this.f25587b.length];
        int i = 0;
        while (true) {
            SampleQueue[] sampleQueueArr = this.f25587b;
            if (i >= sampleQueueArr.length) {
                return iArr;
            }
            iArr[i] = sampleQueueArr[i].getWriteIndex();
            i++;
        }
    }

    public void setSampleOffsetUs(long j) {
        for (SampleQueue sampleQueue : this.f25587b) {
            sampleQueue.setSampleOffsetUs(j);
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor.TrackOutputProvider
    public TrackOutput track(int i, int i2) {
        int i3 = 0;
        while (true) {
            int[] iArr = this.f25586a;
            if (i3 >= iArr.length) {
                StringBuilder sb = new StringBuilder(36);
                sb.append("Unmatched track of type: ");
                sb.append(i2);
                Log.m21489e(f25585c, sb.toString());
                return new DummyTrackOutput();
            }
            if (i2 == iArr[i3]) {
                return this.f25587b[i3];
            }
            i3++;
        }
    }
}
