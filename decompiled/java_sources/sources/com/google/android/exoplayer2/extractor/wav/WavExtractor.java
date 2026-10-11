package com.google.android.exoplayer2.extractor.wav;

import android.util.Pair;
import com.fasterxml.jackson.core.JsonParser;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.WavUtil;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.wav.WavExtractor;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.o5o;
import com.sunia.HTREnginev2.p5o;
import com.sunia.HTREnginev2.q5o;
import java.io.IOException;
import net.p110sf.saxon.om.StandardNames;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class WavExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.sunia.HTREnginev2.n5o
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            Extractor[] m19193c;
            m19193c = WavExtractor.m19193c();
            return m19193c;
        }
    };

    /* renamed from: h */
    public static final String f24693h = "WavExtractor";

    /* renamed from: i */
    public static final int f24694i = 10;

    /* renamed from: j */
    public static final int f24695j = 0;

    /* renamed from: k */
    public static final int f24696k = 1;

    /* renamed from: l */
    public static final int f24697l = 2;

    /* renamed from: m */
    public static final int f24698m = 3;

    /* renamed from: n */
    public static final int f24699n = 4;

    /* renamed from: a */
    public ExtractorOutput f24700a;

    /* renamed from: b */
    public TrackOutput f24701b;

    /* renamed from: e */
    public InterfaceC4758b f24704e;

    /* renamed from: c */
    public int f24702c = 0;

    /* renamed from: d */
    public long f24703d = -1;

    /* renamed from: f */
    public int f24705f = -1;

    /* renamed from: g */
    public long f24706g = -1;

    /* renamed from: com.google.android.exoplayer2.extractor.wav.WavExtractor$a */
    /* loaded from: classes5.dex */
    public static final class C4757a implements InterfaceC4758b {

        /* renamed from: m */
        public static final int[] f24707m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* renamed from: n */
        public static final int[] f24708n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, 307, 337, 371, 408, 449, 494, StandardNames.XS_UNSIGNED_SHORT, StandardNames.XS_INCLUDE, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* renamed from: a */
        public final ExtractorOutput f24709a;

        /* renamed from: b */
        public final TrackOutput f24710b;

        /* renamed from: c */
        public final o5o f24711c;

        /* renamed from: d */
        public final int f24712d;

        /* renamed from: e */
        public final byte[] f24713e;

        /* renamed from: f */
        public final ParsableByteArray f24714f;

        /* renamed from: g */
        public final int f24715g;

        /* renamed from: h */
        public final Format f24716h;

        /* renamed from: i */
        public int f24717i;

        /* renamed from: j */
        public long f24718j;

        /* renamed from: k */
        public int f24719k;

        /* renamed from: l */
        public long f24720l;

        public C4757a(ExtractorOutput extractorOutput, TrackOutput trackOutput, o5o o5oVar) throws ParserException {
            this.f24709a = extractorOutput;
            this.f24710b = trackOutput;
            this.f24711c = o5oVar;
            int max = Math.max(1, o5oVar.f79360c / 10);
            this.f24715g = max;
            ParsableByteArray parsableByteArray = new ParsableByteArray(o5oVar.f79364g);
            parsableByteArray.readLittleEndianUnsignedShort();
            int readLittleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
            this.f24712d = readLittleEndianUnsignedShort;
            int i = o5oVar.f79359b;
            int i2 = (((o5oVar.f79362e - (i * 4)) * 8) / (o5oVar.f79363f * i)) + 1;
            if (readLittleEndianUnsignedShort == i2) {
                int ceilDivide = Util.ceilDivide(max, readLittleEndianUnsignedShort);
                this.f24713e = new byte[o5oVar.f79362e * ceilDivide];
                this.f24714f = new ParsableByteArray(ceilDivide * m19200h(readLittleEndianUnsignedShort, i));
                int i3 = ((o5oVar.f79360c * o5oVar.f79362e) * 8) / readLittleEndianUnsignedShort;
                this.f24716h = new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_RAW).setAverageBitrate(i3).setPeakBitrate(i3).setMaxInputSize(m19200h(max, i)).setChannelCount(o5oVar.f79359b).setSampleRate(o5oVar.f79360c).setPcmEncoding(2).build();
                return;
            }
            StringBuilder sb = new StringBuilder(56);
            sb.append("Expected frames per block: ");
            sb.append(i2);
            sb.append("; got: ");
            sb.append(readLittleEndianUnsignedShort);
            throw ParserException.createForMalformedContainer(sb.toString(), null);
        }

        /* renamed from: h */
        public static int m19200h(int i, int i2) {
            return i * 2 * i2;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:6:0x0020  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0035 -> B:3:0x001b). Please report as a decompilation issue!!! */
        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.InterfaceC4758b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo19201a(com.google.android.exoplayer2.extractor.ExtractorInput r7, long r8) throws java.io.IOException {
            /*
                r6 = this;
                int r0 = r6.f24715g
                int r1 = r6.f24719k
                int r1 = r6.m19206f(r1)
                int r0 = r0 - r1
                int r1 = r6.f24712d
                int r0 = com.google.android.exoplayer2.util.Util.ceilDivide(r0, r1)
                com.sunia.HTREnginev2.o5o r1 = r6.f24711c
                int r1 = r1.f79362e
                int r0 = r0 * r1
                r1 = 0
                int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                r2 = 1
                if (r1 != 0) goto L1d
            L1b:
                r1 = r2
                goto L1e
            L1d:
                r1 = 0
            L1e:
                if (r1 != 0) goto L3e
                int r3 = r6.f24717i
                if (r3 >= r0) goto L3e
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r3 = (int) r3
                byte[] r4 = r6.f24713e
                int r5 = r6.f24717i
                int r3 = r7.read(r4, r5, r3)
                r4 = -1
                if (r3 != r4) goto L38
                goto L1b
            L38:
                int r4 = r6.f24717i
                int r4 = r4 + r3
                r6.f24717i = r4
                goto L1e
            L3e:
                int r7 = r6.f24717i
                com.sunia.HTREnginev2.o5o r8 = r6.f24711c
                int r8 = r8.f79362e
                int r7 = r7 / r8
                if (r7 <= 0) goto L75
                byte[] r8 = r6.f24713e
                com.google.android.exoplayer2.util.ParsableByteArray r9 = r6.f24714f
                r6.m19204d(r8, r7, r9)
                int r8 = r6.f24717i
                com.sunia.HTREnginev2.o5o r9 = r6.f24711c
                int r9 = r9.f79362e
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.f24717i = r8
                com.google.android.exoplayer2.util.ParsableByteArray r7 = r6.f24714f
                int r7 = r7.limit()
                com.google.android.exoplayer2.extractor.TrackOutput r8 = r6.f24710b
                com.google.android.exoplayer2.util.ParsableByteArray r9 = r6.f24714f
                r8.sampleData(r9, r7)
                int r8 = r6.f24719k
                int r8 = r8 + r7
                r6.f24719k = r8
                int r7 = r6.m19206f(r8)
                int r8 = r6.f24715g
                if (r7 < r8) goto L75
                r6.m19208i(r8)
            L75:
                if (r1 == 0) goto L82
                int r7 = r6.f24719k
                int r7 = r6.m19206f(r7)
                if (r7 <= 0) goto L82
                r6.m19208i(r7)
            L82:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.wav.WavExtractor.C4757a.mo19201a(com.google.android.exoplayer2.extractor.ExtractorInput, long):boolean");
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.InterfaceC4758b
        /* renamed from: b */
        public void mo19202b(int i, long j) {
            this.f24709a.seekMap(new q5o(this.f24711c, this.f24712d, i, j));
            this.f24710b.format(this.f24716h);
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.InterfaceC4758b
        /* renamed from: c */
        public void mo19203c(long j) {
            this.f24717i = 0;
            this.f24718j = j;
            this.f24719k = 0;
            this.f24720l = 0L;
        }

        /* renamed from: d */
        public final void m19204d(byte[] bArr, int i, ParsableByteArray parsableByteArray) {
            for (int i2 = 0; i2 < i; i2++) {
                for (int i3 = 0; i3 < this.f24711c.f79359b; i3++) {
                    m19205e(bArr, i2, i3, parsableByteArray.getData());
                }
            }
            int m19207g = m19207g(this.f24712d * i);
            parsableByteArray.setPosition(0);
            parsableByteArray.setLimit(m19207g);
        }

        /* renamed from: e */
        public final void m19205e(byte[] bArr, int i, int i2, byte[] bArr2) {
            o5o o5oVar = this.f24711c;
            int i3 = o5oVar.f79362e;
            int i4 = o5oVar.f79359b;
            int i5 = (i * i3) + (i2 * 4);
            int i6 = (i4 * 4) + i5;
            int i7 = (i3 / i4) - 4;
            int i8 = (short) (((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255));
            int min = Math.min(bArr[i5 + 2] & 255, 88);
            int i9 = f24708n[min];
            int i10 = ((i * this.f24712d * i4) + i2) * 2;
            bArr2[i10] = (byte) (i8 & 255);
            bArr2[i10 + 1] = (byte) (i8 >> 8);
            for (int i11 = 0; i11 < i7 * 2; i11++) {
                int i12 = bArr[((i11 / 8) * i4 * 4) + i6 + ((i11 / 2) % 4)] & 255;
                int i13 = i11 % 2 == 0 ? i12 & 15 : i12 >> 4;
                int i14 = ((((i13 & 7) * 2) + 1) * i9) >> 3;
                if ((i13 & 8) != 0) {
                    i14 = -i14;
                }
                i8 = Util.constrainValue(i8 + i14, JsonParser.f21215g, 32767);
                i10 += i4 * 2;
                bArr2[i10] = (byte) (i8 & 255);
                bArr2[i10 + 1] = (byte) (i8 >> 8);
                int i15 = min + f24707m[i13];
                int[] iArr = f24708n;
                min = Util.constrainValue(i15, 0, iArr.length - 1);
                i9 = iArr[min];
            }
        }

        /* renamed from: f */
        public final int m19206f(int i) {
            return i / (this.f24711c.f79359b * 2);
        }

        /* renamed from: g */
        public final int m19207g(int i) {
            return m19200h(i, this.f24711c.f79359b);
        }

        /* renamed from: i */
        public final void m19208i(int i) {
            long scaleLargeTimestamp = this.f24718j + Util.scaleLargeTimestamp(this.f24720l, 1000000L, this.f24711c.f79360c);
            int m19207g = m19207g(i);
            this.f24710b.sampleMetadata(scaleLargeTimestamp, 1, m19207g, this.f24719k - m19207g, null);
            this.f24720l += i;
            this.f24719k -= m19207g;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.wav.WavExtractor$b */
    /* loaded from: classes5.dex */
    public interface InterfaceC4758b {
        /* renamed from: a */
        boolean mo19201a(ExtractorInput extractorInput, long j) throws IOException;

        /* renamed from: b */
        void mo19202b(int i, long j) throws ParserException;

        /* renamed from: c */
        void mo19203c(long j);
    }

    /* renamed from: com.google.android.exoplayer2.extractor.wav.WavExtractor$c */
    /* loaded from: classes5.dex */
    public static final class C4759c implements InterfaceC4758b {

        /* renamed from: a */
        public final ExtractorOutput f24721a;

        /* renamed from: b */
        public final TrackOutput f24722b;

        /* renamed from: c */
        public final o5o f24723c;

        /* renamed from: d */
        public final Format f24724d;

        /* renamed from: e */
        public final int f24725e;

        /* renamed from: f */
        public long f24726f;

        /* renamed from: g */
        public int f24727g;

        /* renamed from: h */
        public long f24728h;

        public C4759c(ExtractorOutput extractorOutput, TrackOutput trackOutput, o5o o5oVar, String str, int i) throws ParserException {
            this.f24721a = extractorOutput;
            this.f24722b = trackOutput;
            this.f24723c = o5oVar;
            int i2 = (o5oVar.f79359b * o5oVar.f79363f) / 8;
            int i3 = o5oVar.f79362e;
            if (i3 == i2) {
                int i4 = o5oVar.f79360c;
                int i5 = i4 * i2 * 8;
                int max = Math.max(i2, (i4 * i2) / 10);
                this.f24725e = max;
                this.f24724d = new Format.Builder().setSampleMimeType(str).setAverageBitrate(i5).setPeakBitrate(i5).setMaxInputSize(max).setChannelCount(o5oVar.f79359b).setSampleRate(o5oVar.f79360c).setPcmEncoding(i).build();
                return;
            }
            StringBuilder sb = new StringBuilder(50);
            sb.append("Expected block size: ");
            sb.append(i2);
            sb.append("; got: ");
            sb.append(i3);
            throw ParserException.createForMalformedContainer(sb.toString(), null);
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.InterfaceC4758b
        /* renamed from: a */
        public boolean mo19201a(ExtractorInput extractorInput, long j) throws IOException {
            int i;
            int i2;
            long j2 = j;
            while (j2 > 0 && (i = this.f24727g) < (i2 = this.f24725e)) {
                int sampleData = this.f24722b.sampleData((DataReader) extractorInput, (int) Math.min(i2 - i, j2), true);
                if (sampleData == -1) {
                    j2 = 0;
                } else {
                    this.f24727g += sampleData;
                    j2 -= sampleData;
                }
            }
            int i3 = this.f24723c.f79362e;
            int i4 = this.f24727g / i3;
            if (i4 > 0) {
                long scaleLargeTimestamp = this.f24726f + Util.scaleLargeTimestamp(this.f24728h, 1000000L, r1.f79360c);
                int i5 = i4 * i3;
                int i6 = this.f24727g - i5;
                this.f24722b.sampleMetadata(scaleLargeTimestamp, 1, i5, i6, null);
                this.f24728h += i4;
                this.f24727g = i6;
            }
            return j2 <= 0;
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.InterfaceC4758b
        /* renamed from: b */
        public void mo19202b(int i, long j) {
            this.f24721a.seekMap(new q5o(this.f24723c, 1, i, j));
            this.f24722b.format(this.f24724d);
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.InterfaceC4758b
        /* renamed from: c */
        public void mo19203c(long j) {
            this.f24726f = j;
            this.f24727g = 0;
            this.f24728h = 0L;
        }
    }

    /* renamed from: c */
    public static /* synthetic */ Extractor[] m19193c() {
        return new Extractor[]{new WavExtractor()};
    }

    @EnsuresNonNull({"extractorOutput", "trackOutput"})
    /* renamed from: b */
    public final void m19194b() {
        Assertions.checkStateNotNull(this.f24701b);
        Util.castNonNull(this.f24700a);
    }

    /* renamed from: d */
    public final void m19195d(ExtractorInput extractorInput) throws IOException {
        Assertions.checkState(extractorInput.getPosition() == 0);
        int i = this.f24705f;
        if (i != -1) {
            extractorInput.skipFully(i);
            this.f24702c = 4;
        } else {
            if (!p5o.m56223a(extractorInput)) {
                throw ParserException.createForMalformedContainer("Unsupported or unrecognized wav file type.", null);
            }
            extractorInput.skipFully((int) (extractorInput.getPeekPosition() - extractorInput.getPosition()));
            this.f24702c = 1;
        }
    }

    @RequiresNonNull({"extractorOutput", "trackOutput"})
    /* renamed from: e */
    public final void m19196e(ExtractorInput extractorInput) throws IOException {
        o5o m56224b = p5o.m56224b(extractorInput);
        int i = m56224b.f79358a;
        if (i == 17) {
            this.f24704e = new C4757a(this.f24700a, this.f24701b, m56224b);
        } else if (i == 6) {
            this.f24704e = new C4759c(this.f24700a, this.f24701b, m56224b, MimeTypes.AUDIO_ALAW, -1);
        } else if (i == 7) {
            this.f24704e = new C4759c(this.f24700a, this.f24701b, m56224b, MimeTypes.AUDIO_MLAW, -1);
        } else {
            int pcmEncodingForType = WavUtil.getPcmEncodingForType(i, m56224b.f79363f);
            if (pcmEncodingForType == 0) {
                int i2 = m56224b.f79358a;
                StringBuilder sb = new StringBuilder(40);
                sb.append("Unsupported WAV format type: ");
                sb.append(i2);
                throw ParserException.createForUnsupportedContainerFeature(sb.toString());
            }
            this.f24704e = new C4759c(this.f24700a, this.f24701b, m56224b, MimeTypes.AUDIO_RAW, pcmEncodingForType);
        }
        this.f24702c = 3;
    }

    /* renamed from: f */
    public final void m19197f(ExtractorInput extractorInput) throws IOException {
        this.f24703d = p5o.m56225c(extractorInput);
        this.f24702c = 2;
    }

    /* renamed from: g */
    public final int m19198g(ExtractorInput extractorInput) throws IOException {
        Assertions.checkState(this.f24706g != -1);
        return ((InterfaceC4758b) Assertions.checkNotNull(this.f24704e)).mo19201a(extractorInput, this.f24706g - extractorInput.getPosition()) ? -1 : 0;
    }

    /* renamed from: h */
    public final void m19199h(ExtractorInput extractorInput) throws IOException {
        Pair<Long, Long> m56227e = p5o.m56227e(extractorInput);
        this.f24705f = ((Long) m56227e.first).intValue();
        long longValue = ((Long) m56227e.second).longValue();
        long j = this.f24703d;
        if (j != -1 && longValue == 4294967295L) {
            longValue = j;
        }
        this.f24706g = this.f24705f + longValue;
        long length = extractorInput.getLength();
        if (length != -1) {
            long j2 = this.f24706g;
            if (j2 > length) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("Data exceeds input length: ");
                sb.append(j2);
                sb.append(", ");
                sb.append(length);
                Log.m21493w(f24693h, sb.toString());
                this.f24706g = length;
            }
        }
        ((InterfaceC4758b) Assertions.checkNotNull(this.f24704e)).mo19202b(this.f24705f, this.f24706g);
        this.f24702c = 4;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.f24700a = extractorOutput;
        this.f24701b = extractorOutput.track(0, 1);
        extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        m19194b();
        int i = this.f24702c;
        if (i == 0) {
            m19195d(extractorInput);
            return 0;
        }
        if (i == 1) {
            m19197f(extractorInput);
            return 0;
        }
        if (i == 2) {
            m19196e(extractorInput);
            return 0;
        }
        if (i == 3) {
            m19199h(extractorInput);
            return 0;
        }
        if (i == 4) {
            return m19198g(extractorInput);
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.f24702c = j == 0 ? 0 : 4;
        InterfaceC4758b interfaceC4758b = this.f24704e;
        if (interfaceC4758b != null) {
            interfaceC4758b.mo19203c(j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws IOException {
        return p5o.m56223a(extractorInput);
    }
}
