package com.google.android.exoplayer2.extractor.flac;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.FlacFrameReader;
import com.google.android.exoplayer2.extractor.FlacMetadataReader;
import com.google.android.exoplayer2.extractor.FlacSeekTableSeekMap;
import com.google.android.exoplayer2.extractor.FlacStreamMetadata;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.flac.FlacExtractor;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.ing;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes5.dex */
public final class FlacExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.sunia.HTREnginev2.jng
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            Extractor[] m18835f;
            m18835f = FlacExtractor.m18835f();
            return m18835f;
        }
    };
    public static final int FLAG_DISABLE_ID3_METADATA = 1;

    /* renamed from: o */
    public static final int f23585o = 0;

    /* renamed from: p */
    public static final int f23586p = 1;

    /* renamed from: q */
    public static final int f23587q = 2;

    /* renamed from: r */
    public static final int f23588r = 3;

    /* renamed from: s */
    public static final int f23589s = 4;

    /* renamed from: t */
    public static final int f23590t = 5;

    /* renamed from: u */
    public static final int f23591u = 32768;

    /* renamed from: v */
    public static final int f23592v = -1;

    /* renamed from: a */
    public final byte[] f23593a;

    /* renamed from: b */
    public final ParsableByteArray f23594b;

    /* renamed from: c */
    public final boolean f23595c;

    /* renamed from: d */
    public final FlacFrameReader.SampleNumberHolder f23596d;

    /* renamed from: e */
    public ExtractorOutput f23597e;

    /* renamed from: f */
    public TrackOutput f23598f;

    /* renamed from: g */
    public int f23599g;

    /* renamed from: h */
    @Nullable
    public Metadata f23600h;

    /* renamed from: i */
    public FlacStreamMetadata f23601i;

    /* renamed from: j */
    public int f23602j;

    /* renamed from: k */
    public int f23603k;

    /* renamed from: l */
    public ing f23604l;

    /* renamed from: m */
    public int f23605m;

    /* renamed from: n */
    public long f23606n;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Flags {
    }

    public FlacExtractor() {
        this(0);
    }

    /* renamed from: f */
    public static /* synthetic */ Extractor[] m18835f() {
        return new Extractor[]{new FlacExtractor()};
    }

    /* renamed from: b */
    public final long m18836b(ParsableByteArray parsableByteArray, boolean z) {
        boolean z2;
        Assertions.checkNotNull(this.f23601i);
        int position = parsableByteArray.getPosition();
        while (position <= parsableByteArray.limit() - 16) {
            parsableByteArray.setPosition(position);
            if (FlacFrameReader.checkAndReadFrameHeader(parsableByteArray, this.f23601i, this.f23603k, this.f23596d)) {
                parsableByteArray.setPosition(position);
                return this.f23596d.sampleNumber;
            }
            position++;
        }
        if (!z) {
            parsableByteArray.setPosition(position);
            return -1L;
        }
        while (position <= parsableByteArray.limit() - this.f23602j) {
            parsableByteArray.setPosition(position);
            try {
                z2 = FlacFrameReader.checkAndReadFrameHeader(parsableByteArray, this.f23601i, this.f23603k, this.f23596d);
            } catch (IndexOutOfBoundsException unused) {
                z2 = false;
            }
            if (parsableByteArray.getPosition() <= parsableByteArray.limit() ? z2 : false) {
                parsableByteArray.setPosition(position);
                return this.f23596d.sampleNumber;
            }
            position++;
        }
        parsableByteArray.setPosition(parsableByteArray.limit());
        return -1L;
    }

    /* renamed from: c */
    public final void m18837c(ExtractorInput extractorInput) throws IOException {
        this.f23603k = FlacMetadataReader.getFrameStartMarker(extractorInput);
        ((ExtractorOutput) Util.castNonNull(this.f23597e)).seekMap(m18838d(extractorInput.getPosition(), extractorInput.getLength()));
        this.f23599g = 5;
    }

    /* renamed from: d */
    public final SeekMap m18838d(long j, long j2) {
        Assertions.checkNotNull(this.f23601i);
        FlacStreamMetadata flacStreamMetadata = this.f23601i;
        if (flacStreamMetadata.seekTable != null) {
            return new FlacSeekTableSeekMap(flacStreamMetadata, j);
        }
        if (j2 == -1 || flacStreamMetadata.totalSamples <= 0) {
            return new SeekMap.Unseekable(flacStreamMetadata.getDurationUs());
        }
        ing ingVar = new ing(flacStreamMetadata, this.f23603k, j, j2);
        this.f23604l = ingVar;
        return ingVar.getSeekMap();
    }

    /* renamed from: e */
    public final void m18839e(ExtractorInput extractorInput) throws IOException {
        byte[] bArr = this.f23593a;
        extractorInput.peekFully(bArr, 0, bArr.length);
        extractorInput.resetPeekPosition();
        this.f23599g = 2;
    }

    /* renamed from: g */
    public final void m18840g() {
        ((TrackOutput) Util.castNonNull(this.f23598f)).sampleMetadata((this.f23606n * 1000000) / ((FlacStreamMetadata) Util.castNonNull(this.f23601i)).sampleRate, 1, this.f23605m, 0, null);
    }

    /* renamed from: h */
    public final int m18841h(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        boolean z;
        Assertions.checkNotNull(this.f23598f);
        Assertions.checkNotNull(this.f23601i);
        ing ingVar = this.f23604l;
        if (ingVar != null && ingVar.isSeeking()) {
            return this.f23604l.handlePendingSeek(extractorInput, positionHolder);
        }
        if (this.f23606n == -1) {
            this.f23606n = FlacFrameReader.getFirstSampleNumber(extractorInput, this.f23601i);
            return 0;
        }
        int limit = this.f23594b.limit();
        if (limit < 32768) {
            int read = extractorInput.read(this.f23594b.getData(), limit, 32768 - limit);
            z = read == -1;
            if (!z) {
                this.f23594b.setLimit(limit + read);
            } else if (this.f23594b.bytesLeft() == 0) {
                m18840g();
                return -1;
            }
        } else {
            z = false;
        }
        int position = this.f23594b.getPosition();
        int i = this.f23605m;
        int i2 = this.f23602j;
        if (i < i2) {
            ParsableByteArray parsableByteArray = this.f23594b;
            parsableByteArray.skipBytes(Math.min(i2 - i, parsableByteArray.bytesLeft()));
        }
        long m18836b = m18836b(this.f23594b, z);
        int position2 = this.f23594b.getPosition() - position;
        this.f23594b.setPosition(position);
        this.f23598f.sampleData(this.f23594b, position2);
        this.f23605m += position2;
        if (m18836b != -1) {
            m18840g();
            this.f23605m = 0;
            this.f23606n = m18836b;
        }
        if (this.f23594b.bytesLeft() < 16) {
            int bytesLeft = this.f23594b.bytesLeft();
            System.arraycopy(this.f23594b.getData(), this.f23594b.getPosition(), this.f23594b.getData(), 0, bytesLeft);
            this.f23594b.setPosition(0);
            this.f23594b.setLimit(bytesLeft);
        }
        return 0;
    }

    /* renamed from: i */
    public final void m18842i(ExtractorInput extractorInput) throws IOException {
        this.f23600h = FlacMetadataReader.readId3Metadata(extractorInput, !this.f23595c);
        this.f23599g = 1;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f23597e = extractorOutput;
        this.f23598f = extractorOutput.track(0, 1);
        extractorOutput.endTracks();
    }

    /* renamed from: j */
    public final void m18843j(ExtractorInput extractorInput) throws IOException {
        FlacMetadataReader.FlacStreamMetadataHolder flacStreamMetadataHolder = new FlacMetadataReader.FlacStreamMetadataHolder(this.f23601i);
        boolean z = false;
        while (!z) {
            z = FlacMetadataReader.readMetadataBlock(extractorInput, flacStreamMetadataHolder);
            this.f23601i = (FlacStreamMetadata) Util.castNonNull(flacStreamMetadataHolder.flacStreamMetadata);
        }
        Assertions.checkNotNull(this.f23601i);
        this.f23602j = Math.max(this.f23601i.minFrameSize, 6);
        ((TrackOutput) Util.castNonNull(this.f23598f)).format(this.f23601i.getFormat(this.f23593a, this.f23600h));
        this.f23599g = 4;
    }

    /* renamed from: k */
    public final void m18844k(ExtractorInput extractorInput) throws IOException {
        FlacMetadataReader.readStreamMarker(extractorInput);
        this.f23599g = 3;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int i = this.f23599g;
        if (i == 0) {
            m18842i(extractorInput);
            return 0;
        }
        if (i == 1) {
            m18839e(extractorInput);
            return 0;
        }
        if (i == 2) {
            m18844k(extractorInput);
            return 0;
        }
        if (i == 3) {
            m18843j(extractorInput);
            return 0;
        }
        if (i == 4) {
            m18837c(extractorInput);
            return 0;
        }
        if (i == 5) {
            return m18841h(extractorInput, positionHolder);
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        if (j == 0) {
            this.f23599g = 0;
        } else {
            ing ingVar = this.f23604l;
            if (ingVar != null) {
                ingVar.setSeekTargetUs(j2);
            }
        }
        this.f23606n = j2 != 0 ? -1L : 0L;
        this.f23605m = 0;
        this.f23594b.reset(0);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        FlacMetadataReader.peekId3Metadata(extractorInput, false);
        return FlacMetadataReader.checkAndPeekStreamMarker(extractorInput);
    }

    public FlacExtractor(int i) {
        this.f23593a = new byte[42];
        this.f23594b = new ParsableByteArray(new byte[32768], 0);
        this.f23595c = (i & 1) != 0;
        this.f23596d = new FlacFrameReader.SampleNumberHolder();
        this.f23599g = 0;
    }
}
