package com.google.android.exoplayer2.extractor.amr;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.google.android.exoplayer2.extractor.ConstantBitrateSeekMap;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.amr.AmrExtractor;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class AmrExtractor implements Extractor {
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS = 2;

    /* renamed from: q */
    public static final int[] f23562q;

    /* renamed from: t */
    public static final int f23565t;

    /* renamed from: u */
    public static final int f23566u = 20;

    /* renamed from: v */
    public static final int f23567v = 16000;

    /* renamed from: w */
    public static final int f23568w = 8000;

    /* renamed from: x */
    public static final int f23569x = 20000;

    /* renamed from: a */
    public final byte[] f23570a;

    /* renamed from: b */
    public final int f23571b;

    /* renamed from: c */
    public boolean f23572c;

    /* renamed from: d */
    public long f23573d;

    /* renamed from: e */
    public int f23574e;

    /* renamed from: f */
    public int f23575f;

    /* renamed from: g */
    public boolean f23576g;

    /* renamed from: h */
    public long f23577h;

    /* renamed from: i */
    public int f23578i;

    /* renamed from: j */
    public int f23579j;

    /* renamed from: k */
    public long f23580k;

    /* renamed from: l */
    public ExtractorOutput f23581l;

    /* renamed from: m */
    public TrackOutput f23582m;

    /* renamed from: n */
    public SeekMap f23583n;

    /* renamed from: o */
    public boolean f23584o;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.sunia.HTREnginev2.ca
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            Extractor[] m18821m;
            m18821m = AmrExtractor.m18821m();
            return m18821m;
        }
    };

    /* renamed from: p */
    public static final int[] f23561p = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: r */
    public static final byte[] f23563r = Util.getUtf8Bytes("#!AMR\n");

    /* renamed from: s */
    public static final byte[] f23564s = Util.getUtf8Bytes("#!AMR-WB\n");

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Flags {
    }

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f23562q = iArr;
        f23565t = iArr[8];
    }

    public AmrExtractor() {
        this(0);
    }

    /* renamed from: b */
    public static byte[] m18816b() {
        byte[] bArr = f23563r;
        return Arrays.copyOf(bArr, bArr.length);
    }

    /* renamed from: c */
    public static byte[] m18817c() {
        byte[] bArr = f23564s;
        return Arrays.copyOf(bArr, bArr.length);
    }

    /* renamed from: e */
    public static int m18818e(int i) {
        return f23561p[i];
    }

    /* renamed from: f */
    public static int m18819f(int i) {
        return f23562q[i];
    }

    /* renamed from: g */
    public static int m18820g(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    /* renamed from: m */
    public static /* synthetic */ Extractor[] m18821m() {
        return new Extractor[]{new AmrExtractor()};
    }

    /* renamed from: p */
    public static boolean m18822p(ExtractorInput extractorInput, byte[] bArr) throws IOException {
        extractorInput.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        extractorInput.peekFully(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @EnsuresNonNull({"extractorOutput", "trackOutput"})
    /* renamed from: d */
    public final void m18823d() {
        Assertions.checkStateNotNull(this.f23582m);
        Util.castNonNull(this.f23581l);
    }

    /* renamed from: h */
    public final SeekMap m18824h(long j, boolean z) {
        return new ConstantBitrateSeekMap(j, this.f23577h, m18820g(this.f23578i, SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US), this.f23578i, z);
    }

    /* renamed from: i */
    public final int m18825i(int i) throws ParserException {
        if (m18827k(i)) {
            return this.f23572c ? f23562q[i] : f23561p[i];
        }
        String str = this.f23572c ? "WB" : "NB";
        StringBuilder sb = new StringBuilder(str.length() + 35);
        sb.append("Illegal AMR ");
        sb.append(str);
        sb.append(" frame type ");
        sb.append(i);
        throw ParserException.createForMalformedContainer(sb.toString(), null);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f23581l = extractorOutput;
        this.f23582m = extractorOutput.track(0, 1);
        extractorOutput.endTracks();
    }

    /* renamed from: j */
    public final boolean m18826j(int i) {
        return !this.f23572c && (i < 12 || i > 14);
    }

    /* renamed from: k */
    public final boolean m18827k(int i) {
        return i >= 0 && i <= 15 && (m18828l(i) || m18826j(i));
    }

    /* renamed from: l */
    public final boolean m18828l(int i) {
        return this.f23572c && (i < 10 || i > 13);
    }

    @RequiresNonNull({"trackOutput"})
    /* renamed from: n */
    public final void m18829n() {
        if (this.f23584o) {
            return;
        }
        this.f23584o = true;
        boolean z = this.f23572c;
        this.f23582m.format(new Format.Builder().setSampleMimeType(z ? MimeTypes.AUDIO_AMR_WB : MimeTypes.AUDIO_AMR_NB).setMaxInputSize(f23565t).setChannelCount(1).setSampleRate(z ? 16000 : 8000).build());
    }

    @RequiresNonNull({"extractorOutput"})
    /* renamed from: o */
    public final void m18830o(long j, int i) {
        int i2;
        if (this.f23576g) {
            return;
        }
        int i3 = this.f23571b;
        if ((i3 & 1) == 0 || j == -1 || !((i2 = this.f23578i) == -1 || i2 == this.f23574e)) {
            SeekMap.Unseekable unseekable = new SeekMap.Unseekable(C4649C.TIME_UNSET);
            this.f23583n = unseekable;
            this.f23581l.seekMap(unseekable);
            this.f23576g = true;
            return;
        }
        if (this.f23579j >= 20 || i == -1) {
            SeekMap m18824h = m18824h(j, (i3 & 2) != 0);
            this.f23583n = m18824h;
            this.f23581l.seekMap(m18824h);
            this.f23576g = true;
        }
    }

    /* renamed from: q */
    public final int m18831q(ExtractorInput extractorInput) throws IOException {
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.f23570a, 0, 1);
        byte b = this.f23570a[0];
        if ((b & 131) <= 0) {
            return m18825i((b >> 3) & 15);
        }
        StringBuilder sb = new StringBuilder(42);
        sb.append("Invalid padding bits for frame header ");
        sb.append((int) b);
        throw ParserException.createForMalformedContainer(sb.toString(), null);
    }

    /* renamed from: r */
    public final boolean m18832r(ExtractorInput extractorInput) throws IOException {
        byte[] bArr = f23563r;
        if (m18822p(extractorInput, bArr)) {
            this.f23572c = false;
            extractorInput.skipFully(bArr.length);
            return true;
        }
        byte[] bArr2 = f23564s;
        if (!m18822p(extractorInput, bArr2)) {
            return false;
        }
        this.f23572c = true;
        extractorInput.skipFully(bArr2.length);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        m18823d();
        if (extractorInput.getPosition() == 0 && !m18832r(extractorInput)) {
            throw ParserException.createForMalformedContainer("Could not find AMR header.", null);
        }
        m18829n();
        int m18833s = m18833s(extractorInput);
        m18830o(extractorInput.getLength(), m18833s);
        return m18833s;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @RequiresNonNull({"trackOutput"})
    /* renamed from: s */
    public final int m18833s(ExtractorInput extractorInput) throws IOException {
        if (this.f23575f == 0) {
            try {
                int m18831q = m18831q(extractorInput);
                this.f23574e = m18831q;
                this.f23575f = m18831q;
                if (this.f23578i == -1) {
                    this.f23577h = extractorInput.getPosition();
                    this.f23578i = this.f23574e;
                }
                if (this.f23578i == this.f23574e) {
                    this.f23579j++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int sampleData = this.f23582m.sampleData((DataReader) extractorInput, this.f23575f, true);
        if (sampleData == -1) {
            return -1;
        }
        int i = this.f23575f - sampleData;
        this.f23575f = i;
        if (i > 0) {
            return 0;
        }
        this.f23582m.sampleMetadata(this.f23580k + this.f23573d, 1, this.f23574e, 0, null);
        this.f23573d += SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US;
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.f23573d = 0L;
        this.f23574e = 0;
        this.f23575f = 0;
        if (j != 0) {
            SeekMap seekMap = this.f23583n;
            if (seekMap instanceof ConstantBitrateSeekMap) {
                this.f23580k = ((ConstantBitrateSeekMap) seekMap).getTimeUsAtPosition(j);
                return;
            }
        }
        this.f23580k = 0L;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        return m18832r(extractorInput);
    }

    public AmrExtractor(int i) {
        this.f23571b = (i & 2) != 0 ? i | 1 : i;
        this.f23570a = new byte[1];
        this.f23578i = -1;
    }
}
