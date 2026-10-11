package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.ogg.OggExtractor;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.sunia.HTREnginev2.afk;
import com.sunia.HTREnginev2.e0n;
import com.sunia.HTREnginev2.h5o;
import com.sunia.HTREnginev2.kng;
import com.sunia.HTREnginev2.rhk;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* loaded from: classes5.dex */
public class OggExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.sunia.HTREnginev2.yek
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            Extractor[] m19051b;
            m19051b = OggExtractor.m19051b();
            return m19051b;
        }
    };

    /* renamed from: d */
    public static final int f24222d = 8;

    /* renamed from: a */
    public ExtractorOutput f24223a;

    /* renamed from: b */
    public e0n f24224b;

    /* renamed from: c */
    public boolean f24225c;

    /* renamed from: b */
    public static /* synthetic */ Extractor[] m19051b() {
        return new Extractor[]{new OggExtractor()};
    }

    /* renamed from: c */
    public static ParsableByteArray m19052c(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(0);
        return parsableByteArray;
    }

    @EnsuresNonNullIf(expression = {"streamReader"}, result = true)
    /* renamed from: d */
    public final boolean m19053d(ExtractorInput extractorInput) throws IOException {
        afk afkVar = new afk();
        if (afkVar.m53010a(extractorInput, true) && (afkVar.f64647b & 2) == 2) {
            int min = Math.min(afkVar.f64654i, 8);
            ParsableByteArray parsableByteArray = new ParsableByteArray(min);
            extractorInput.peekFully(parsableByteArray.getData(), 0, min);
            if (kng.m55247p(m19052c(parsableByteArray))) {
                this.f24224b = new kng();
            } else if (h5o.m54411r(m19052c(parsableByteArray))) {
                this.f24224b = new h5o();
            } else if (rhk.m56952p(m19052c(parsableByteArray))) {
                this.f24224b = new rhk();
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f24223a = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        Assertions.checkStateNotNull(this.f24223a);
        if (this.f24224b == null) {
            if (!m19053d(extractorInput)) {
                throw ParserException.createForMalformedContainer("Failed to determine bitstream type", null);
            }
            extractorInput.resetPeekPosition();
        }
        if (!this.f24225c) {
            TrackOutput track = this.f24223a.track(0, 1);
            this.f24223a.endTracks();
            this.f24224b.m53889d(this.f24223a, track);
            this.f24225c = true;
        }
        return this.f24224b.m53892g(extractorInput, positionHolder);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        e0n e0nVar = this.f24224b;
        if (e0nVar != null) {
            e0nVar.m53898m(j, j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        try {
            return m19053d(extractorInput);
        } catch (ParserException unused) {
            return false;
        }
    }
}
