package com.google.android.exoplayer2.extractor.p007ts;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
public final class DvbSubtitleReader implements ElementaryStreamReader {

    /* renamed from: a */
    public final List<TsPayloadReader.DvbSubtitleInfo> f24357a;

    /* renamed from: b */
    public final TrackOutput[] f24358b;

    /* renamed from: c */
    public boolean f24359c;

    /* renamed from: d */
    public int f24360d;

    /* renamed from: e */
    public int f24361e;

    /* renamed from: f */
    public long f24362f = C4649C.TIME_UNSET;

    public DvbSubtitleReader(List<TsPayloadReader.DvbSubtitleInfo> list) {
        this.f24357a = list;
        this.f24358b = new TrackOutput[list.size()];
    }

    /* renamed from: a */
    public final boolean m19097a(ParsableByteArray parsableByteArray, int i) {
        if (parsableByteArray.bytesLeft() == 0) {
            return false;
        }
        if (parsableByteArray.readUnsignedByte() != i) {
            this.f24359c = false;
        }
        this.f24360d--;
        return this.f24359c;
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        if (this.f24359c) {
            if (this.f24360d != 2 || m19097a(parsableByteArray, 32)) {
                if (this.f24360d != 1 || m19097a(parsableByteArray, 0)) {
                    int position = parsableByteArray.getPosition();
                    int bytesLeft = parsableByteArray.bytesLeft();
                    for (TrackOutput trackOutput : this.f24358b) {
                        parsableByteArray.setPosition(position);
                        trackOutput.sampleData(parsableByteArray, bytesLeft);
                    }
                    this.f24361e += bytesLeft;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        for (int i = 0; i < this.f24358b.length; i++) {
            TsPayloadReader.DvbSubtitleInfo dvbSubtitleInfo = this.f24357a.get(i);
            trackIdGenerator.generateNewId();
            TrackOutput track = extractorOutput.track(trackIdGenerator.getTrackId(), 3);
            track.format(new Format.Builder().setId(trackIdGenerator.getFormatId()).setSampleMimeType(MimeTypes.APPLICATION_DVBSUBS).setInitializationData(Collections.singletonList(dvbSubtitleInfo.initializationData)).setLanguage(dvbSubtitleInfo.language).build());
            this.f24358b[i] = track;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
        if (this.f24359c) {
            if (this.f24362f != C4649C.TIME_UNSET) {
                for (TrackOutput trackOutput : this.f24358b) {
                    trackOutput.sampleMetadata(this.f24362f, 1, this.f24361e, 0, null);
                }
            }
            this.f24359c = false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f24359c = true;
        if (j != C4649C.TIME_UNSET) {
            this.f24362f = j;
        }
        this.f24361e = 0;
        this.f24360d = 2;
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        this.f24359c = false;
        this.f24362f = C4649C.TIME_UNSET;
    }
}
