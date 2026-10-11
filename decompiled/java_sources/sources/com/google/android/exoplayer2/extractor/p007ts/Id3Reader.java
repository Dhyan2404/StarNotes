package com.google.android.exoplayer2.extractor.p007ts;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;

/* loaded from: classes5.dex */
public final class Id3Reader implements ElementaryStreamReader {

    /* renamed from: g */
    public static final String f24529g = "Id3Reader";

    /* renamed from: b */
    public TrackOutput f24531b;

    /* renamed from: c */
    public boolean f24532c;

    /* renamed from: e */
    public int f24534e;

    /* renamed from: f */
    public int f24535f;

    /* renamed from: a */
    public final ParsableByteArray f24530a = new ParsableByteArray(10);

    /* renamed from: d */
    public long f24533d = C4649C.TIME_UNSET;

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        Assertions.checkStateNotNull(this.f24531b);
        if (this.f24532c) {
            int bytesLeft = parsableByteArray.bytesLeft();
            int i = this.f24535f;
            if (i < 10) {
                int min = Math.min(bytesLeft, 10 - i);
                System.arraycopy(parsableByteArray.getData(), parsableByteArray.getPosition(), this.f24530a.getData(), this.f24535f, min);
                if (this.f24535f + min == 10) {
                    this.f24530a.setPosition(0);
                    if (73 != this.f24530a.readUnsignedByte() || 68 != this.f24530a.readUnsignedByte() || 51 != this.f24530a.readUnsignedByte()) {
                        Log.m21493w(f24529g, "Discarding invalid ID3 tag");
                        this.f24532c = false;
                        return;
                    } else {
                        this.f24530a.skipBytes(3);
                        this.f24534e = this.f24530a.readSynchSafeInt() + 10;
                    }
                }
            }
            int min2 = Math.min(bytesLeft, this.f24534e - this.f24535f);
            this.f24531b.sampleData(parsableByteArray, min2);
            this.f24535f += min2;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        TrackOutput track = extractorOutput.track(trackIdGenerator.getTrackId(), 5);
        this.f24531b = track;
        track.format(new Format.Builder().setId(trackIdGenerator.getFormatId()).setSampleMimeType(MimeTypes.APPLICATION_ID3).build());
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
        int i;
        Assertions.checkStateNotNull(this.f24531b);
        if (this.f24532c && (i = this.f24534e) != 0 && this.f24535f == i) {
            long j = this.f24533d;
            if (j != C4649C.TIME_UNSET) {
                this.f24531b.sampleMetadata(j, 1, i, 0, null);
            }
            this.f24532c = false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f24532c = true;
        if (j != C4649C.TIME_UNSET) {
            this.f24533d = j;
        }
        this.f24534e = 0;
        this.f24535f = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        this.f24532c = false;
        this.f24533d = C4649C.TIME_UNSET;
    }
}
