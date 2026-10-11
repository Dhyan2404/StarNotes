package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.extractor.BinarySearchSeeker;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.FlacFrameReader;
import com.google.android.exoplayer2.extractor.FlacStreamMetadata;
import java.io.IOException;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class ing extends BinarySearchSeeker {

    /* renamed from: com.sunia.HTREnginev2.ing$b */
    /* loaded from: classes5.dex */
    public static final class C13884b implements BinarySearchSeeker.TimestampSeeker {

        /* renamed from: a */
        public final FlacStreamMetadata f73410a;

        /* renamed from: b */
        public final int f73411b;

        /* renamed from: c */
        public final FlacFrameReader.SampleNumberHolder f73412c;

        /* renamed from: a */
        public final long m54729a(ExtractorInput extractorInput) throws IOException {
            while (extractorInput.getPeekPosition() < extractorInput.getLength() - 6 && !FlacFrameReader.checkFrameHeaderFromPeek(extractorInput, this.f73410a, this.f73411b, this.f73412c)) {
                extractorInput.advancePeekPosition(1);
            }
            if (extractorInput.getPeekPosition() < extractorInput.getLength() - 6) {
                return this.f73412c.sampleNumber;
            }
            extractorInput.advancePeekPosition((int) (extractorInput.getLength() - extractorInput.getPeekPosition()));
            return this.f73410a.totalSamples;
        }

        @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker
        public BinarySearchSeeker.TimestampSearchResult searchForTimestamp(ExtractorInput extractorInput, long j) throws IOException {
            long position = extractorInput.getPosition();
            long m54729a = m54729a(extractorInput);
            long peekPosition = extractorInput.getPeekPosition();
            extractorInput.advancePeekPosition(Math.max(6, this.f73410a.minFrameSize));
            long m54729a2 = m54729a(extractorInput);
            return (m54729a > j || m54729a2 <= j) ? m54729a2 <= j ? BinarySearchSeeker.TimestampSearchResult.underestimatedResult(m54729a2, extractorInput.getPeekPosition()) : BinarySearchSeeker.TimestampSearchResult.overestimatedResult(m54729a, position) : BinarySearchSeeker.TimestampSearchResult.targetFoundResult(peekPosition);
        }

        public C13884b(FlacStreamMetadata flacStreamMetadata, int i) {
            this.f73410a = flacStreamMetadata;
            this.f73411b = i;
            this.f73412c = new FlacFrameReader.SampleNumberHolder();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ing(final FlacStreamMetadata flacStreamMetadata, int i, long j, long j2) {
        super(new BinarySearchSeeker.SeekTimestampConverter() { // from class: com.sunia.HTREnginev2.hng
            @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekTimestampConverter
            public final long timeUsToTargetTime(long j3) {
                return FlacStreamMetadata.this.getSampleNumber(j3);
            }
        }, new C13884b(flacStreamMetadata, i), flacStreamMetadata.getDurationUs(), 0L, flacStreamMetadata.totalSamples, j, j2, flacStreamMetadata.getApproxBytesPerFrame(), Math.max(6, flacStreamMetadata.minFrameSize));
        Objects.requireNonNull(flacStreamMetadata);
    }
}
