package com.google.android.exoplayer2.extractor.rawcc;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class RawCcExtractor implements Extractor {

    /* renamed from: i */
    public static final int f24226i = 9;

    /* renamed from: j */
    public static final int f24227j = 8;

    /* renamed from: k */
    public static final int f24228k = 1380139777;

    /* renamed from: l */
    public static final int f24229l = 4;

    /* renamed from: m */
    public static final int f24230m = 8;

    /* renamed from: n */
    public static final int f24231n = 0;

    /* renamed from: o */
    public static final int f24232o = 1;

    /* renamed from: p */
    public static final int f24233p = 2;

    /* renamed from: a */
    public final Format f24234a;

    /* renamed from: c */
    public TrackOutput f24236c;

    /* renamed from: e */
    public int f24238e;

    /* renamed from: f */
    public long f24239f;

    /* renamed from: g */
    public int f24240g;

    /* renamed from: h */
    public int f24241h;

    /* renamed from: b */
    public final ParsableByteArray f24235b = new ParsableByteArray(9);

    /* renamed from: d */
    public int f24237d = 0;

    public RawCcExtractor(Format format) {
        this.f24234a = format;
    }

    /* renamed from: a */
    public final boolean m19054a(ExtractorInput extractorInput) throws IOException {
        this.f24235b.reset(8);
        if (!extractorInput.readFully(this.f24235b.getData(), 0, 8, true)) {
            return false;
        }
        if (this.f24235b.readInt() != 1380139777) {
            throw new IOException("Input not RawCC");
        }
        this.f24238e = this.f24235b.readUnsignedByte();
        return true;
    }

    @RequiresNonNull({"trackOutput"})
    /* renamed from: b */
    public final void m19055b(ExtractorInput extractorInput) throws IOException {
        while (this.f24240g > 0) {
            this.f24235b.reset(3);
            extractorInput.readFully(this.f24235b.getData(), 0, 3);
            this.f24236c.sampleData(this.f24235b, 3);
            this.f24241h += 3;
            this.f24240g--;
        }
        int i = this.f24241h;
        if (i > 0) {
            this.f24236c.sampleMetadata(this.f24239f, 1, i, 0, null);
        }
    }

    /* renamed from: c */
    public final boolean m19056c(ExtractorInput extractorInput) throws IOException {
        int i = this.f24238e;
        if (i == 0) {
            this.f24235b.reset(5);
            if (!extractorInput.readFully(this.f24235b.getData(), 0, 5, true)) {
                return false;
            }
            this.f24239f = (this.f24235b.readUnsignedInt() * 1000) / 45;
        } else {
            if (i != 1) {
                StringBuilder sb = new StringBuilder(39);
                sb.append("Unsupported version number: ");
                sb.append(i);
                throw ParserException.createForMalformedContainer(sb.toString(), null);
            }
            this.f24235b.reset(9);
            if (!extractorInput.readFully(this.f24235b.getData(), 0, 9, true)) {
                return false;
            }
            this.f24239f = this.f24235b.readLong();
        }
        this.f24240g = this.f24235b.readUnsignedByte();
        this.f24241h = 0;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        extractorOutput.seekMap(new SeekMap.Unseekable(C4649C.TIME_UNSET));
        TrackOutput track = extractorOutput.track(0, 3);
        this.f24236c = track;
        track.format(this.f24234a);
        extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        Assertions.checkStateNotNull(this.f24236c);
        while (true) {
            int i = this.f24237d;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException();
                    }
                    m19055b(extractorInput);
                    this.f24237d = 1;
                    return 0;
                }
                if (!m19056c(extractorInput)) {
                    this.f24237d = 0;
                    return -1;
                }
                this.f24237d = 2;
            } else {
                if (!m19054a(extractorInput)) {
                    return -1;
                }
                this.f24237d = 1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.f24237d = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        this.f24235b.reset(8);
        extractorInput.peekFully(this.f24235b.getData(), 0, 8);
        return this.f24235b.readInt() == 1380139777;
    }
}
