package com.google.android.exoplayer2.extractor.p007ts;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ConstantBitrateSeekMap;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.p007ts.AdtsExtractor;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.EOFException;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class AdtsExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.sunia.HTREnginev2.j9
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            Extractor[] m19069e;
            m19069e = AdtsExtractor.m19069e();
            return m19069e;
        }
    };
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS = 2;

    /* renamed from: m */
    public static final int f24286m = 2048;

    /* renamed from: n */
    public static final int f24287n = 8192;

    /* renamed from: o */
    public static final int f24288o = 1000;

    /* renamed from: a */
    public final int f24289a;

    /* renamed from: b */
    public final AdtsReader f24290b;

    /* renamed from: c */
    public final ParsableByteArray f24291c;

    /* renamed from: d */
    public final ParsableByteArray f24292d;

    /* renamed from: e */
    public final ParsableBitArray f24293e;

    /* renamed from: f */
    public ExtractorOutput f24294f;

    /* renamed from: g */
    public long f24295g;

    /* renamed from: h */
    public long f24296h;

    /* renamed from: i */
    public int f24297i;

    /* renamed from: j */
    public boolean f24298j;

    /* renamed from: k */
    public boolean f24299k;

    /* renamed from: l */
    public boolean f24300l;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Flags {
    }

    public AdtsExtractor() {
        this(0);
    }

    /* renamed from: c */
    public static int m19068c(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    /* renamed from: e */
    public static /* synthetic */ Extractor[] m19069e() {
        return new Extractor[]{new AdtsExtractor()};
    }

    /* renamed from: b */
    public final void m19070b(ExtractorInput extractorInput) throws IOException {
        if (this.f24298j) {
            return;
        }
        this.f24297i = -1;
        extractorInput.resetPeekPosition();
        long j = 0;
        if (extractorInput.getPosition() == 0) {
            m19073g(extractorInput);
        }
        int i = 0;
        int i2 = 0;
        while (extractorInput.peekFully(this.f24292d.getData(), 0, 2, true)) {
            try {
                this.f24292d.setPosition(0);
                if (!AdtsReader.isAdtsSyncWord(this.f24292d.readUnsignedShort())) {
                    break;
                }
                if (!extractorInput.peekFully(this.f24292d.getData(), 0, 4, true)) {
                    break;
                }
                this.f24293e.setPosition(14);
                int readBits = this.f24293e.readBits(13);
                if (readBits <= 6) {
                    this.f24298j = true;
                    throw ParserException.createForMalformedContainer("Malformed ADTS stream", null);
                }
                j += readBits;
                i2++;
                if (i2 != 1000 && extractorInput.advancePeekPosition(readBits - 6, true)) {
                }
                break;
            } catch (EOFException unused) {
            }
        }
        i = i2;
        extractorInput.resetPeekPosition();
        if (i > 0) {
            this.f24297i = (int) (j / i);
        } else {
            this.f24297i = -1;
        }
        this.f24298j = true;
    }

    /* renamed from: d */
    public final SeekMap m19071d(long j, boolean z) {
        return new ConstantBitrateSeekMap(j, this.f24296h, m19068c(this.f24297i, this.f24290b.getSampleDurationUs()), this.f24297i, z);
    }

    @RequiresNonNull({"extractorOutput"})
    /* renamed from: f */
    public final void m19072f(long j, boolean z) {
        if (this.f24300l) {
            return;
        }
        boolean z2 = (this.f24289a & 1) != 0 && this.f24297i > 0;
        if (z2 && this.f24290b.getSampleDurationUs() == C4649C.TIME_UNSET && !z) {
            return;
        }
        if (!z2 || this.f24290b.getSampleDurationUs() == C4649C.TIME_UNSET) {
            this.f24294f.seekMap(new SeekMap.Unseekable(C4649C.TIME_UNSET));
        } else {
            this.f24294f.seekMap(m19071d(j, (this.f24289a & 2) != 0));
        }
        this.f24300l = true;
    }

    /* renamed from: g */
    public final int m19073g(ExtractorInput extractorInput) throws IOException {
        int i = 0;
        while (true) {
            extractorInput.peekFully(this.f24292d.getData(), 0, 10);
            this.f24292d.setPosition(0);
            if (this.f24292d.readUnsignedInt24() != 4801587) {
                break;
            }
            this.f24292d.skipBytes(3);
            int readSynchSafeInt = this.f24292d.readSynchSafeInt();
            i += readSynchSafeInt + 10;
            extractorInput.advancePeekPosition(readSynchSafeInt);
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i);
        if (this.f24296h == -1) {
            this.f24296h = i;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f24294f = extractorOutput;
        this.f24290b.createTracks(extractorOutput, new TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        Assertions.checkStateNotNull(this.f24294f);
        long length = extractorInput.getLength();
        int i = this.f24289a;
        if (((i & 2) == 0 && ((i & 1) == 0 || length == -1)) ? false : true) {
            m19070b(extractorInput);
        }
        int read = extractorInput.read(this.f24291c.getData(), 0, 2048);
        boolean z = read == -1;
        m19072f(length, z);
        if (z) {
            return -1;
        }
        this.f24291c.setPosition(0);
        this.f24291c.setLimit(read);
        if (!this.f24299k) {
            this.f24290b.packetStarted(this.f24295g, 4);
            this.f24299k = true;
        }
        this.f24290b.consume(this.f24291c);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.f24299k = false;
        this.f24290b.seek();
        this.f24295g = j2;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        int m19073g = m19073g(extractorInput);
        int i = m19073g;
        int i2 = 0;
        int i3 = 0;
        do {
            extractorInput.peekFully(this.f24292d.getData(), 0, 2);
            this.f24292d.setPosition(0);
            if (AdtsReader.isAdtsSyncWord(this.f24292d.readUnsignedShort())) {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                extractorInput.peekFully(this.f24292d.getData(), 0, 4);
                this.f24293e.setPosition(14);
                int readBits = this.f24293e.readBits(13);
                if (readBits <= 6) {
                    i++;
                    extractorInput.resetPeekPosition();
                    extractorInput.advancePeekPosition(i);
                } else {
                    extractorInput.advancePeekPosition(readBits - 6);
                    i3 += readBits;
                }
            } else {
                i++;
                extractorInput.resetPeekPosition();
                extractorInput.advancePeekPosition(i);
            }
            i2 = 0;
            i3 = 0;
        } while (i - m19073g < 8192);
        return false;
    }

    public AdtsExtractor(int i) {
        this.f24289a = (i & 2) != 0 ? i | 1 : i;
        this.f24290b = new AdtsReader(true);
        this.f24291c = new ParsableByteArray(2048);
        this.f24297i = -1;
        this.f24296h = -1L;
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        this.f24292d = parsableByteArray;
        this.f24293e = new ParsableBitArray(parsableByteArray.getData());
    }
}
