package com.google.android.exoplayer2.extractor.mp3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.MpegAudioUtil;
import com.google.android.exoplayer2.extractor.DummyTrackOutput;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.extractor.Id3Peeker;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.extractor.mp3.Seeker;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.ivo;
import com.sunia.HTREnginev2.n0o;
import com.sunia.HTREnginev2.ooj;
import com.sunia.HTREnginev2.t9e;
import com.sunia.HTREnginev2.vji;
import java.io.EOFException;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class Mp3Extractor implements Extractor {

    /* renamed from: A */
    public static final int f23913A = 1231971951;

    /* renamed from: B */
    public static final int f23914B = 1447187017;

    /* renamed from: C */
    public static final int f23915C = 0;
    public static final int FLAG_DISABLE_ID3_METADATA = 8;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS = 2;
    public static final int FLAG_ENABLE_INDEX_SEEKING = 4;

    /* renamed from: v */
    public static final int f23917v = 131072;

    /* renamed from: w */
    public static final int f23918w = 32768;

    /* renamed from: x */
    public static final int f23919x = 10;

    /* renamed from: y */
    public static final int f23920y = -128000;

    /* renamed from: z */
    public static final int f23921z = 1483304551;

    /* renamed from: a */
    public final int f23922a;

    /* renamed from: b */
    public final long f23923b;

    /* renamed from: c */
    public final ParsableByteArray f23924c;

    /* renamed from: d */
    public final MpegAudioUtil.Header f23925d;

    /* renamed from: e */
    public final GaplessInfoHolder f23926e;

    /* renamed from: f */
    public final Id3Peeker f23927f;

    /* renamed from: g */
    public final TrackOutput f23928g;

    /* renamed from: h */
    public ExtractorOutput f23929h;

    /* renamed from: i */
    public TrackOutput f23930i;

    /* renamed from: j */
    public TrackOutput f23931j;

    /* renamed from: k */
    public int f23932k;

    /* renamed from: l */
    @Nullable
    public Metadata f23933l;

    /* renamed from: m */
    public long f23934m;

    /* renamed from: n */
    public long f23935n;

    /* renamed from: o */
    public long f23936o;

    /* renamed from: p */
    public int f23937p;

    /* renamed from: q */
    public Seeker f23938q;

    /* renamed from: r */
    public boolean f23939r;

    /* renamed from: s */
    public boolean f23940s;

    /* renamed from: t */
    public long f23941t;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.sunia.HTREnginev2.jpj
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            Extractor[] m18914j;
            m18914j = Mp3Extractor.m18914j();
            return m18914j;
        }
    };

    /* renamed from: u */
    public static final Id3Decoder.FramePredicate f23916u = new Id3Decoder.FramePredicate() { // from class: com.sunia.HTREnginev2.kpj
        @Override // com.google.android.exoplayer2.metadata.id3.Id3Decoder.FramePredicate
        public final boolean evaluate(int i, int i2, int i3, int i4, int i5) {
            boolean m18915k;
            m18915k = Mp3Extractor.m18915k(i, i2, i3, i4, i5);
            return m18915k;
        }
    };

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Flags {
    }

    public Mp3Extractor() {
        this(0);
    }

    /* renamed from: g */
    public static long m18911g(@Nullable Metadata metadata) {
        if (metadata == null) {
            return C4649C.TIME_UNSET;
        }
        int length = metadata.length();
        for (int i = 0; i < length; i++) {
            Metadata.Entry entry = metadata.get(i);
            if (entry instanceof TextInformationFrame) {
                TextInformationFrame textInformationFrame = (TextInformationFrame) entry;
                if (textInformationFrame.f24902id.equals("TLEN")) {
                    return Util.msToUs(Long.parseLong(textInformationFrame.value));
                }
            }
        }
        return C4649C.TIME_UNSET;
    }

    /* renamed from: h */
    public static int m18912h(ParsableByteArray parsableByteArray, int i) {
        if (parsableByteArray.limit() >= i + 4) {
            parsableByteArray.setPosition(i);
            int readInt = parsableByteArray.readInt();
            if (readInt == 1483304551 || readInt == 1231971951) {
                return readInt;
            }
        }
        if (parsableByteArray.limit() < 40) {
            return 0;
        }
        parsableByteArray.setPosition(36);
        if (parsableByteArray.readInt() == 1447187017) {
            return f23914B;
        }
        return 0;
    }

    /* renamed from: i */
    public static boolean m18913i(int i, long j) {
        return ((long) (i & f23920y)) == (j & (-128000));
    }

    /* renamed from: j */
    public static /* synthetic */ Extractor[] m18914j() {
        return new Extractor[]{new Mp3Extractor()};
    }

    /* renamed from: k */
    public static /* synthetic */ boolean m18915k(int i, int i2, int i3, int i4, int i5) {
        return (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) || (i2 == 77 && i3 == 76 && i4 == 76 && (i5 == 84 || i == 2));
    }

    @Nullable
    /* renamed from: l */
    public static ooj m18916l(@Nullable Metadata metadata, long j) {
        if (metadata == null) {
            return null;
        }
        int length = metadata.length();
        for (int i = 0; i < length; i++) {
            Metadata.Entry entry = metadata.get(i);
            if (entry instanceof MlltFrame) {
                return ooj.m56135a(j, (MlltFrame) entry, m18911g(metadata));
            }
        }
        return null;
    }

    @EnsuresNonNull({"extractorOutput", "realTrackOutput"})
    /* renamed from: c */
    public final void m18917c() {
        Assertions.checkStateNotNull(this.f23930i);
        Util.castNonNull(this.f23929h);
    }

    /* renamed from: d */
    public final Seeker m18918d(ExtractorInput extractorInput) throws IOException {
        long m18911g;
        long j;
        Seeker m18921m = m18921m(extractorInput);
        ooj m18916l = m18916l(this.f23933l, extractorInput.getPosition());
        if (this.f23939r) {
            return new Seeker.UnseekableSeeker();
        }
        if ((this.f23922a & 4) != 0) {
            if (m18916l != null) {
                m18911g = m18916l.getDurationUs();
                j = m18916l.getDataEndPosition();
            } else if (m18921m != null) {
                m18911g = m18921m.getDurationUs();
                j = m18921m.getDataEndPosition();
            } else {
                m18911g = m18911g(this.f23933l);
                j = -1;
            }
            m18921m = new vji(m18911g, extractorInput.getPosition(), j);
        } else if (m18916l != null) {
            m18921m = m18916l;
        } else if (m18921m == null) {
            m18921m = null;
        }
        if (m18921m == null || !(m18921m.isSeekable() || (this.f23922a & 1) == 0)) {
            return m18920f(extractorInput, (this.f23922a & 2) != 0);
        }
        return m18921m;
    }

    public void disableSeeking() {
        this.f23939r = true;
    }

    /* renamed from: e */
    public final long m18919e(long j) {
        return this.f23934m + ((j * 1000000) / this.f23925d.sampleRate);
    }

    /* renamed from: f */
    public final Seeker m18920f(ExtractorInput extractorInput, boolean z) throws IOException {
        extractorInput.peekFully(this.f23924c.getData(), 0, 4);
        this.f23924c.setPosition(0);
        this.f23925d.setForHeaderData(this.f23924c.readInt());
        return new t9e(extractorInput.getLength(), extractorInput.getPosition(), this.f23925d, z);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f23929h = extractorOutput;
        TrackOutput track = extractorOutput.track(0, 1);
        this.f23930i = track;
        this.f23931j = track;
        this.f23929h.endTracks();
    }

    @Nullable
    /* renamed from: m */
    public final Seeker m18921m(ExtractorInput extractorInput) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(this.f23925d.frameSize);
        extractorInput.peekFully(parsableByteArray.getData(), 0, this.f23925d.frameSize);
        MpegAudioUtil.Header header = this.f23925d;
        int i = 21;
        if ((header.version & 1) != 0) {
            if (header.channels != 1) {
                i = 36;
            }
        } else if (header.channels == 1) {
            i = 13;
        }
        int i2 = i;
        int m18912h = m18912h(parsableByteArray, i2);
        if (m18912h != 1483304551 && m18912h != 1231971951) {
            if (m18912h != 1447187017) {
                extractorInput.resetPeekPosition();
                return null;
            }
            n0o m55702a = n0o.m55702a(extractorInput.getLength(), extractorInput.getPosition(), this.f23925d, parsableByteArray);
            extractorInput.skipFully(this.f23925d.frameSize);
            return m55702a;
        }
        ivo m54805a = ivo.m54805a(extractorInput.getLength(), extractorInput.getPosition(), this.f23925d, parsableByteArray);
        if (m54805a != null && !this.f23926e.hasGaplessInfo()) {
            extractorInput.resetPeekPosition();
            extractorInput.advancePeekPosition(i2 + 141);
            extractorInput.peekFully(this.f23924c.getData(), 0, 3);
            this.f23924c.setPosition(0);
            this.f23926e.setFromXingHeaderValue(this.f23924c.readUnsignedInt24());
        }
        extractorInput.skipFully(this.f23925d.frameSize);
        return (m54805a == null || m54805a.isSeekable() || m18912h != 1231971951) ? m54805a : m18920f(extractorInput, false);
    }

    /* renamed from: n */
    public final boolean m18922n(ExtractorInput extractorInput) throws IOException {
        Seeker seeker = this.f23938q;
        if (seeker != null) {
            long dataEndPosition = seeker.getDataEndPosition();
            if (dataEndPosition != -1 && extractorInput.getPeekPosition() > dataEndPosition - 4) {
                return true;
            }
        }
        try {
            return !extractorInput.peekFully(this.f23924c.getData(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    @RequiresNonNull({"extractorOutput", "realTrackOutput"})
    /* renamed from: o */
    public final int m18923o(ExtractorInput extractorInput) throws IOException {
        if (this.f23932k == 0) {
            try {
                m18925q(extractorInput, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.f23938q == null) {
            Seeker m18918d = m18918d(extractorInput);
            this.f23938q = m18918d;
            this.f23929h.seekMap(m18918d);
            this.f23931j.format(new Format.Builder().setSampleMimeType(this.f23925d.mimeType).setMaxInputSize(4096).setChannelCount(this.f23925d.channels).setSampleRate(this.f23925d.sampleRate).setEncoderDelay(this.f23926e.encoderDelay).setEncoderPadding(this.f23926e.encoderPadding).setMetadata((this.f23922a & 8) != 0 ? null : this.f23933l).build());
            this.f23936o = extractorInput.getPosition();
        } else if (this.f23936o != 0) {
            long position = extractorInput.getPosition();
            long j = this.f23936o;
            if (position < j) {
                extractorInput.skipFully((int) (j - position));
            }
        }
        return m18924p(extractorInput);
    }

    @RequiresNonNull({"realTrackOutput", "seeker"})
    /* renamed from: p */
    public final int m18924p(ExtractorInput extractorInput) throws IOException {
        if (this.f23937p == 0) {
            extractorInput.resetPeekPosition();
            if (m18922n(extractorInput)) {
                return -1;
            }
            this.f23924c.setPosition(0);
            int readInt = this.f23924c.readInt();
            if (!m18913i(readInt, this.f23932k) || MpegAudioUtil.getFrameSize(readInt) == -1) {
                extractorInput.skipFully(1);
                this.f23932k = 0;
                return 0;
            }
            this.f23925d.setForHeaderData(readInt);
            if (this.f23934m == C4649C.TIME_UNSET) {
                this.f23934m = this.f23938q.getTimeUs(extractorInput.getPosition());
                if (this.f23923b != C4649C.TIME_UNSET) {
                    this.f23934m += this.f23923b - this.f23938q.getTimeUs(0L);
                }
            }
            this.f23937p = this.f23925d.frameSize;
            Seeker seeker = this.f23938q;
            if (seeker instanceof vji) {
                vji vjiVar = (vji) seeker;
                vjiVar.m57806b(m18919e(this.f23935n + r0.samplesPerFrame), extractorInput.getPosition() + this.f23925d.frameSize);
                if (this.f23940s && vjiVar.m57805a(this.f23941t)) {
                    this.f23940s = false;
                    this.f23931j = this.f23930i;
                }
            }
        }
        int sampleData = this.f23931j.sampleData((DataReader) extractorInput, this.f23937p, true);
        if (sampleData == -1) {
            return -1;
        }
        int i = this.f23937p - sampleData;
        this.f23937p = i;
        if (i > 0) {
            return 0;
        }
        this.f23931j.sampleMetadata(m18919e(this.f23935n), 1, this.f23925d.frameSize, 0, null);
        this.f23935n += this.f23925d.samplesPerFrame;
        this.f23937p = 0;
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x009e, code lost:
    
        if (r13 == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a0, code lost:
    
        r12.skipFully(r1 + r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a8, code lost:
    
        r11.f23932k = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00aa, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a5, code lost:
    
        r12.resetPeekPosition();
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m18925q(com.google.android.exoplayer2.extractor.ExtractorInput r12, boolean r13) throws java.io.IOException {
        /*
            r11 = this;
            if (r13 == 0) goto L6
            r0 = 32768(0x8000, float:4.5918E-41)
            goto L8
        L6:
            r0 = 131072(0x20000, float:1.83671E-40)
        L8:
            r12.resetPeekPosition()
            long r1 = r12.getPosition()
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r2 = 0
            r3 = 1
            r4 = 0
            if (r1 != 0) goto L42
            int r1 = r11.f23922a
            r1 = r1 & 8
            if (r1 != 0) goto L20
            r1 = r3
            goto L21
        L20:
            r1 = r4
        L21:
            if (r1 == 0) goto L25
            r1 = r2
            goto L27
        L25:
            com.google.android.exoplayer2.metadata.id3.Id3Decoder$FramePredicate r1 = com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.f23916u
        L27:
            com.google.android.exoplayer2.extractor.Id3Peeker r5 = r11.f23927f
            com.google.android.exoplayer2.metadata.Metadata r1 = r5.peekId3Data(r12, r1)
            r11.f23933l = r1
            if (r1 == 0) goto L36
            com.google.android.exoplayer2.extractor.GaplessInfoHolder r5 = r11.f23926e
            r5.setFromMetadata(r1)
        L36:
            long r5 = r12.getPeekPosition()
            int r1 = (int) r5
            if (r13 != 0) goto L40
            r12.skipFully(r1)
        L40:
            r5 = r4
            goto L44
        L42:
            r1 = r4
            r5 = r1
        L44:
            r6 = r5
            r7 = r6
        L46:
            boolean r8 = r11.m18922n(r12)
            if (r8 == 0) goto L55
            if (r6 <= 0) goto L4f
            goto L9e
        L4f:
            java.io.EOFException r11 = new java.io.EOFException
            r11.<init>()
            throw r11
        L55:
            com.google.android.exoplayer2.util.ParsableByteArray r8 = r11.f23924c
            r8.setPosition(r4)
            com.google.android.exoplayer2.util.ParsableByteArray r8 = r11.f23924c
            int r8 = r8.readInt()
            if (r5 == 0) goto L69
            long r9 = (long) r5
            boolean r9 = m18913i(r8, r9)
            if (r9 == 0) goto L70
        L69:
            int r9 = com.google.android.exoplayer2.audio.MpegAudioUtil.getFrameSize(r8)
            r10 = -1
            if (r9 != r10) goto L90
        L70:
            int r5 = r7 + 1
            if (r7 != r0) goto L7e
            if (r13 == 0) goto L77
            return r4
        L77:
            java.lang.String r11 = "Searched too many bytes."
            com.google.android.exoplayer2.ParserException r11 = com.google.android.exoplayer2.ParserException.createForMalformedContainer(r11, r2)
            throw r11
        L7e:
            if (r13 == 0) goto L89
            r12.resetPeekPosition()
            int r6 = r1 + r5
            r12.advancePeekPosition(r6)
            goto L8c
        L89:
            r12.skipFully(r3)
        L8c:
            r6 = r4
            r7 = r5
            r5 = r6
            goto L46
        L90:
            int r6 = r6 + 1
            if (r6 != r3) goto L9b
            com.google.android.exoplayer2.audio.MpegAudioUtil$Header r5 = r11.f23925d
            r5.setForHeaderData(r8)
            r5 = r8
            goto Lab
        L9b:
            r8 = 4
            if (r6 != r8) goto Lab
        L9e:
            if (r13 == 0) goto La5
            int r1 = r1 + r7
            r12.skipFully(r1)
            goto La8
        La5:
            r12.resetPeekPosition()
        La8:
            r11.f23932k = r5
            return r3
        Lab:
            int r9 = r9 + (-4)
            r12.advancePeekPosition(r9)
            goto L46
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.m18925q(com.google.android.exoplayer2.extractor.ExtractorInput, boolean):boolean");
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        m18917c();
        int m18923o = m18923o(extractorInput);
        if (m18923o == -1 && (this.f23938q instanceof vji)) {
            long m18919e = m18919e(this.f23935n);
            if (this.f23938q.getDurationUs() != m18919e) {
                ((vji) this.f23938q).m57807c(m18919e);
                this.f23929h.seekMap(this.f23938q);
            }
        }
        return m18923o;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.f23932k = 0;
        this.f23934m = C4649C.TIME_UNSET;
        this.f23935n = 0L;
        this.f23937p = 0;
        this.f23941t = j2;
        Seeker seeker = this.f23938q;
        if (!(seeker instanceof vji) || ((vji) seeker).m57805a(j2)) {
            return;
        }
        this.f23940s = true;
        this.f23931j = this.f23928g;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        return m18925q(extractorInput, true);
    }

    public Mp3Extractor(int i) {
        this(i, C4649C.TIME_UNSET);
    }

    public Mp3Extractor(int i, long j) {
        this.f23922a = (i & 2) != 0 ? i | 1 : i;
        this.f23923b = j;
        this.f23924c = new ParsableByteArray(10);
        this.f23925d = new MpegAudioUtil.Header();
        this.f23926e = new GaplessInfoHolder();
        this.f23934m = C4649C.TIME_UNSET;
        this.f23927f = new Id3Peeker();
        DummyTrackOutput dummyTrackOutput = new DummyTrackOutput();
        this.f23928g = dummyTrackOutput;
        this.f23931j = dummyTrackOutput;
    }
}
