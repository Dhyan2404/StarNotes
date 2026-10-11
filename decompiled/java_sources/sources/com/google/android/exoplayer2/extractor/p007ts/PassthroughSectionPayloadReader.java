package com.google.android.exoplayer2.extractor.p007ts;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import com.sun.org.apache.xalan.internal.templates.Constants;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* loaded from: classes5.dex */
public final class PassthroughSectionPayloadReader implements SectionPayloadReader {

    /* renamed from: a */
    public Format f24580a;

    /* renamed from: b */
    public TimestampAdjuster f24581b;

    /* renamed from: c */
    public TrackOutput f24582c;

    public PassthroughSectionPayloadReader(String str) {
        this.f24580a = new Format.Builder().setSampleMimeType(str).build();
    }

    @EnsuresNonNull({"timestampAdjuster", Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: a */
    public final void m19153a() {
        Assertions.checkStateNotNull(this.f24581b);
        Util.castNonNull(this.f24582c);
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.SectionPayloadReader
    public void consume(ParsableByteArray parsableByteArray) {
        m19153a();
        long lastAdjustedTimestampUs = this.f24581b.getLastAdjustedTimestampUs();
        long timestampOffsetUs = this.f24581b.getTimestampOffsetUs();
        if (lastAdjustedTimestampUs == C4649C.TIME_UNSET || timestampOffsetUs == C4649C.TIME_UNSET) {
            return;
        }
        Format format = this.f24580a;
        if (timestampOffsetUs != format.subsampleOffsetUs) {
            Format build = format.buildUpon().setSubsampleOffsetUs(timestampOffsetUs).build();
            this.f24580a = build;
            this.f24582c.format(build);
        }
        int bytesLeft = parsableByteArray.bytesLeft();
        this.f24582c.sampleData(parsableByteArray, bytesLeft);
        this.f24582c.sampleMetadata(lastAdjustedTimestampUs, 1, bytesLeft, 0, null);
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.SectionPayloadReader
    public void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.f24581b = timestampAdjuster;
        trackIdGenerator.generateNewId();
        TrackOutput track = extractorOutput.track(trackIdGenerator.getTrackId(), 5);
        this.f24582c = track;
        track.format(this.f24580a);
    }
}
