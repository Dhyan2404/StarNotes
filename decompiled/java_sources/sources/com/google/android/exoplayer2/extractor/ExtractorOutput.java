package com.google.android.exoplayer2.extractor;

/* loaded from: classes5.dex */
public interface ExtractorOutput {
    public static final ExtractorOutput PLACEHOLDER = new C4731a();

    /* renamed from: com.google.android.exoplayer2.extractor.ExtractorOutput$a */
    /* loaded from: classes5.dex */
    public class C4731a implements ExtractorOutput {
        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public void endTracks() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public void seekMap(SeekMap seekMap) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public TrackOutput track(int i, int i2) {
            throw new UnsupportedOperationException();
        }
    }

    void endTracks();

    void seekMap(SeekMap seekMap);

    TrackOutput track(int i, int i2);
}
