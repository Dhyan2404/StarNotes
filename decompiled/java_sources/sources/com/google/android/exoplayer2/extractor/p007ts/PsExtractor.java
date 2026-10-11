package com.google.android.exoplayer2.extractor.p007ts;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.alibaba.fastjson2.JSONB;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.p007ts.PsExtractor;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.s9l;
import com.sunia.HTREnginev2.t9l;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class PsExtractor implements Extractor {
    public static final int AUDIO_STREAM = 192;
    public static final int AUDIO_STREAM_MASK = 224;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.sunia.HTREnginev2.u9l
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            Extractor[] m19159b;
            m19159b = PsExtractor.m19159b();
            return m19159b;
        }
    };
    public static final int PRIVATE_STREAM_1 = 189;
    public static final int VIDEO_STREAM = 224;
    public static final int VIDEO_STREAM_MASK = 240;

    /* renamed from: l */
    public static final int f24603l = 442;

    /* renamed from: m */
    public static final int f24604m = 443;

    /* renamed from: n */
    public static final int f24605n = 1;

    /* renamed from: o */
    public static final int f24606o = 441;

    /* renamed from: p */
    public static final int f24607p = 256;

    /* renamed from: q */
    public static final long f24608q = 1048576;

    /* renamed from: r */
    public static final long f24609r = 8192;

    /* renamed from: a */
    public final TimestampAdjuster f24610a;

    /* renamed from: b */
    public final SparseArray<C4753a> f24611b;

    /* renamed from: c */
    public final ParsableByteArray f24612c;

    /* renamed from: d */
    public final t9l f24613d;

    /* renamed from: e */
    public boolean f24614e;

    /* renamed from: f */
    public boolean f24615f;

    /* renamed from: g */
    public boolean f24616g;

    /* renamed from: h */
    public long f24617h;

    /* renamed from: i */
    @Nullable
    public s9l f24618i;

    /* renamed from: j */
    public ExtractorOutput f24619j;

    /* renamed from: k */
    public boolean f24620k;

    /* renamed from: com.google.android.exoplayer2.extractor.ts.PsExtractor$a */
    /* loaded from: classes5.dex */
    public static final class C4753a {

        /* renamed from: i */
        public static final int f24621i = 64;

        /* renamed from: a */
        public final ElementaryStreamReader f24622a;

        /* renamed from: b */
        public final TimestampAdjuster f24623b;

        /* renamed from: c */
        public final ParsableBitArray f24624c = new ParsableBitArray(new byte[64]);

        /* renamed from: d */
        public boolean f24625d;

        /* renamed from: e */
        public boolean f24626e;

        /* renamed from: f */
        public boolean f24627f;

        /* renamed from: g */
        public int f24628g;

        /* renamed from: h */
        public long f24629h;

        public C4753a(ElementaryStreamReader elementaryStreamReader, TimestampAdjuster timestampAdjuster) {
            this.f24622a = elementaryStreamReader;
            this.f24623b = timestampAdjuster;
        }

        /* renamed from: a */
        public void m19161a(ParsableByteArray parsableByteArray) throws ParserException {
            parsableByteArray.readBytes(this.f24624c.data, 0, 3);
            this.f24624c.setPosition(0);
            m19162b();
            parsableByteArray.readBytes(this.f24624c.data, 0, this.f24628g);
            this.f24624c.setPosition(0);
            m19163c();
            this.f24622a.packetStarted(this.f24629h, 4);
            this.f24622a.consume(parsableByteArray);
            this.f24622a.packetFinished();
        }

        /* renamed from: b */
        public final void m19162b() {
            this.f24624c.skipBits(8);
            this.f24625d = this.f24624c.readBit();
            this.f24626e = this.f24624c.readBit();
            this.f24624c.skipBits(6);
            this.f24628g = this.f24624c.readBits(8);
        }

        /* renamed from: c */
        public final void m19163c() {
            this.f24629h = 0L;
            if (this.f24625d) {
                this.f24624c.skipBits(4);
                this.f24624c.skipBits(1);
                this.f24624c.skipBits(1);
                long readBits = (this.f24624c.readBits(3) << 30) | (this.f24624c.readBits(15) << 15) | this.f24624c.readBits(15);
                this.f24624c.skipBits(1);
                if (!this.f24627f && this.f24626e) {
                    this.f24624c.skipBits(4);
                    this.f24624c.skipBits(1);
                    this.f24624c.skipBits(1);
                    this.f24624c.skipBits(1);
                    this.f24623b.adjustTsTimestamp((this.f24624c.readBits(3) << 30) | (this.f24624c.readBits(15) << 15) | this.f24624c.readBits(15));
                    this.f24627f = true;
                }
                this.f24629h = this.f24623b.adjustTsTimestamp(readBits);
            }
        }

        /* renamed from: d */
        public void m19164d() {
            this.f24627f = false;
            this.f24622a.seek();
        }
    }

    public PsExtractor() {
        this(new TimestampAdjuster(0L));
    }

    /* renamed from: b */
    public static /* synthetic */ Extractor[] m19159b() {
        return new Extractor[]{new PsExtractor()};
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
    /* renamed from: c */
    public final void m19160c(long j) {
        if (this.f24620k) {
            return;
        }
        this.f24620k = true;
        if (this.f24613d.m57326c() == C4649C.TIME_UNSET) {
            this.f24619j.seekMap(new SeekMap.Unseekable(this.f24613d.m57326c()));
            return;
        }
        s9l s9lVar = new s9l(this.f24613d.m57327d(), this.f24613d.m57326c(), j);
        this.f24618i = s9lVar;
        this.f24619j.seekMap(s9lVar.getSeekMap());
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f24619j = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        ElementaryStreamReader elementaryStreamReader;
        Assertions.checkStateNotNull(this.f24619j);
        long length = extractorInput.getLength();
        if ((length != -1) && !this.f24613d.m57328e()) {
            return this.f24613d.m57330g(extractorInput, positionHolder);
        }
        m19160c(length);
        s9l s9lVar = this.f24618i;
        if (s9lVar != null && s9lVar.isSeeking()) {
            return this.f24618i.handlePendingSeek(extractorInput, positionHolder);
        }
        extractorInput.resetPeekPosition();
        long peekPosition = length != -1 ? length - extractorInput.getPeekPosition() : -1L;
        if ((peekPosition != -1 && peekPosition < 4) || !extractorInput.peekFully(this.f24612c.getData(), 0, 4, true)) {
            return -1;
        }
        this.f24612c.setPosition(0);
        int readInt = this.f24612c.readInt();
        if (readInt == 441) {
            return -1;
        }
        if (readInt == 442) {
            extractorInput.peekFully(this.f24612c.getData(), 0, 10);
            this.f24612c.setPosition(9);
            extractorInput.skipFully((this.f24612c.readUnsignedByte() & 7) + 14);
            return 0;
        }
        if (readInt == 443) {
            extractorInput.peekFully(this.f24612c.getData(), 0, 2);
            this.f24612c.setPosition(0);
            extractorInput.skipFully(this.f24612c.readUnsignedShort() + 6);
            return 0;
        }
        if (((readInt & (-256)) >> 8) != 1) {
            extractorInput.skipFully(1);
            return 0;
        }
        int i = readInt & 255;
        C4753a c4753a = this.f24611b.get(i);
        if (!this.f24614e) {
            if (c4753a == null) {
                if (i == 189) {
                    elementaryStreamReader = new Ac3Reader();
                    this.f24615f = true;
                    this.f24617h = extractorInput.getPosition();
                } else if ((i & 224) == 192) {
                    elementaryStreamReader = new MpegAudioReader();
                    this.f24615f = true;
                    this.f24617h = extractorInput.getPosition();
                } else if ((i & 240) == 224) {
                    elementaryStreamReader = new H262Reader();
                    this.f24616g = true;
                    this.f24617h = extractorInput.getPosition();
                } else {
                    elementaryStreamReader = null;
                }
                if (elementaryStreamReader != null) {
                    elementaryStreamReader.createTracks(this.f24619j, new TsPayloadReader.TrackIdGenerator(i, 256));
                    c4753a = new C4753a(elementaryStreamReader, this.f24610a);
                    this.f24611b.put(i, c4753a);
                }
            }
            if (extractorInput.getPosition() > ((this.f24615f && this.f24616g) ? this.f24617h + 8192 : 1048576L)) {
                this.f24614e = true;
                this.f24619j.endTracks();
            }
        }
        extractorInput.peekFully(this.f24612c.getData(), 0, 2);
        this.f24612c.setPosition(0);
        int readUnsignedShort = this.f24612c.readUnsignedShort() + 6;
        if (c4753a == null) {
            extractorInput.skipFully(readUnsignedShort);
        } else {
            this.f24612c.reset(readUnsignedShort);
            extractorInput.readFully(this.f24612c.getData(), 0, readUnsignedShort);
            this.f24612c.setPosition(6);
            c4753a.m19161a(this.f24612c);
            ParsableByteArray parsableByteArray = this.f24612c;
            parsableByteArray.setLimit(parsableByteArray.capacity());
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        boolean z = this.f24610a.getTimestampOffsetUs() == C4649C.TIME_UNSET;
        if (!z) {
            long firstSampleTimestampUs = this.f24610a.getFirstSampleTimestampUs();
            z = (firstSampleTimestampUs == C4649C.TIME_UNSET || firstSampleTimestampUs == 0 || firstSampleTimestampUs == j2) ? false : true;
        }
        if (z) {
            this.f24610a.reset(j2);
        }
        s9l s9lVar = this.f24618i;
        if (s9lVar != null) {
            s9lVar.setSeekTargetUs(j2);
        }
        for (int i = 0; i < this.f24611b.size(); i++) {
            this.f24611b.valueAt(i).m19164d();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        byte[] bArr = new byte[14];
        extractorInput.peekFully(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & JSONB.Constants.BC_INT64_SHORT_ZERO) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        extractorInput.advancePeekPosition(bArr[13] & 7);
        extractorInput.peekFully(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }

    public PsExtractor(TimestampAdjuster timestampAdjuster) {
        this.f24610a = timestampAdjuster;
        this.f24612c = new ParsableByteArray(4096);
        this.f24611b = new SparseArray<>();
        this.f24613d = new t9l();
    }
}
