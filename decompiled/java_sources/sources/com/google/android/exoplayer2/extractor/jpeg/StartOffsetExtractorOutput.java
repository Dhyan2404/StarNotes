package com.google.android.exoplayer2.extractor.jpeg;

import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.TrackOutput;

/* loaded from: classes5.dex */
public final class StartOffsetExtractorOutput implements ExtractorOutput {

    /* renamed from: e */
    public final long f23681e;

    /* renamed from: f */
    public final ExtractorOutput f23682f;

    /* renamed from: com.google.android.exoplayer2.extractor.jpeg.StartOffsetExtractorOutput$a */
    /* loaded from: classes5.dex */
    public class C4736a implements SeekMap {

        /* renamed from: a */
        public final /* synthetic */ SeekMap f23683a;

        public C4736a(SeekMap seekMap) {
            this.f23683a = seekMap;
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public long getDurationUs() {
            return this.f23683a.getDurationUs();
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j) {
            SeekMap.SeekPoints seekPoints = this.f23683a.getSeekPoints(j);
            SeekPoint seekPoint = seekPoints.first;
            SeekPoint seekPoint2 = new SeekPoint(seekPoint.timeUs, seekPoint.position + StartOffsetExtractorOutput.this.f23681e);
            SeekPoint seekPoint3 = seekPoints.second;
            return new SeekMap.SeekPoints(seekPoint2, new SeekPoint(seekPoint3.timeUs, seekPoint3.position + StartOffsetExtractorOutput.this.f23681e));
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public boolean isSeekable() {
            return this.f23683a.isSeekable();
        }
    }

    public StartOffsetExtractorOutput(long j, ExtractorOutput extractorOutput) {
        this.f23681e = j;
        this.f23682f = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        this.f23682f.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
        this.f23682f.seekMap(new C4736a(seekMap));
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public TrackOutput track(int i, int i2) {
        return this.f23682f.track(i, i2);
    }
}
