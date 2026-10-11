package com.google.android.exoplayer2.extractor.p007ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.ParsableNalUnitBitArray;
import com.google.android.exoplayer2.util.Util;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.arj;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class H265Reader implements ElementaryStreamReader {

    /* renamed from: o */
    public static final String f24491o = "H265Reader";

    /* renamed from: p */
    public static final int f24492p = 9;

    /* renamed from: q */
    public static final int f24493q = 16;

    /* renamed from: r */
    public static final int f24494r = 21;

    /* renamed from: s */
    public static final int f24495s = 32;

    /* renamed from: t */
    public static final int f24496t = 33;

    /* renamed from: u */
    public static final int f24497u = 34;

    /* renamed from: v */
    public static final int f24498v = 35;

    /* renamed from: w */
    public static final int f24499w = 39;

    /* renamed from: x */
    public static final int f24500x = 40;

    /* renamed from: a */
    public final SeiReader f24501a;

    /* renamed from: b */
    public String f24502b;

    /* renamed from: c */
    public TrackOutput f24503c;

    /* renamed from: d */
    public C4752a f24504d;

    /* renamed from: e */
    public boolean f24505e;

    /* renamed from: l */
    public long f24512l;

    /* renamed from: f */
    public final boolean[] f24506f = new boolean[3];

    /* renamed from: g */
    public final arj f24507g = new arj(32, 128);

    /* renamed from: h */
    public final arj f24508h = new arj(33, 128);

    /* renamed from: i */
    public final arj f24509i = new arj(34, 128);

    /* renamed from: j */
    public final arj f24510j = new arj(39, 128);

    /* renamed from: k */
    public final arj f24511k = new arj(40, 128);

    /* renamed from: m */
    public long f24513m = C4649C.TIME_UNSET;

    /* renamed from: n */
    public final ParsableByteArray f24514n = new ParsableByteArray();

    /* renamed from: com.google.android.exoplayer2.extractor.ts.H265Reader$a */
    /* loaded from: classes5.dex */
    public static final class C4752a {

        /* renamed from: n */
        public static final int f24515n = 2;

        /* renamed from: a */
        public final TrackOutput f24516a;

        /* renamed from: b */
        public long f24517b;

        /* renamed from: c */
        public boolean f24518c;

        /* renamed from: d */
        public int f24519d;

        /* renamed from: e */
        public long f24520e;

        /* renamed from: f */
        public boolean f24521f;

        /* renamed from: g */
        public boolean f24522g;

        /* renamed from: h */
        public boolean f24523h;

        /* renamed from: i */
        public boolean f24524i;

        /* renamed from: j */
        public boolean f24525j;

        /* renamed from: k */
        public long f24526k;

        /* renamed from: l */
        public long f24527l;

        /* renamed from: m */
        public boolean f24528m;

        public C4752a(TrackOutput trackOutput) {
            this.f24516a = trackOutput;
        }

        /* renamed from: b */
        public static boolean m19135b(int i) {
            return (32 <= i && i <= 35) || i == 39;
        }

        /* renamed from: c */
        public static boolean m19136c(int i) {
            return i < 32 || i == 40;
        }

        /* renamed from: a */
        public void m19137a(long j, int i, boolean z) {
            if (this.f24525j && this.f24522g) {
                this.f24528m = this.f24518c;
                this.f24525j = false;
            } else if (this.f24523h || this.f24522g) {
                if (z && this.f24524i) {
                    m19138d(i + ((int) (j - this.f24517b)));
                }
                this.f24526k = this.f24517b;
                this.f24527l = this.f24520e;
                this.f24528m = this.f24518c;
                this.f24524i = true;
            }
        }

        /* renamed from: d */
        public final void m19138d(int i) {
            long j = this.f24527l;
            if (j == C4649C.TIME_UNSET) {
                return;
            }
            boolean z = this.f24528m;
            this.f24516a.sampleMetadata(j, z ? 1 : 0, (int) (this.f24517b - this.f24526k), i, null);
        }

        /* renamed from: e */
        public void m19139e(byte[] bArr, int i, int i2) {
            if (this.f24521f) {
                int i3 = this.f24519d;
                int i4 = (i + 2) - i3;
                if (i4 >= i2) {
                    this.f24519d = i3 + (i2 - i);
                } else {
                    this.f24522g = (bArr[i4] & 128) != 0;
                    this.f24521f = false;
                }
            }
        }

        /* renamed from: f */
        public void m19140f() {
            this.f24521f = false;
            this.f24522g = false;
            this.f24523h = false;
            this.f24524i = false;
            this.f24525j = false;
        }

        /* renamed from: g */
        public void m19141g(long j, int i, int i2, long j2, boolean z) {
            this.f24522g = false;
            this.f24523h = false;
            this.f24520e = j2;
            this.f24519d = 0;
            this.f24517b = j;
            if (!m19136c(i2)) {
                if (this.f24524i && !this.f24525j) {
                    if (z) {
                        m19138d(i);
                    }
                    this.f24524i = false;
                }
                if (m19135b(i2)) {
                    this.f24523h = !this.f24525j;
                    this.f24525j = true;
                }
            }
            boolean z2 = i2 >= 16 && i2 <= 21;
            this.f24518c = z2;
            this.f24521f = z2 || i2 <= 9;
        }
    }

    public H265Reader(SeiReader seiReader) {
        this.f24501a = seiReader;
    }

    /* renamed from: d */
    public static Format m19128d(@Nullable String str, arj arjVar, arj arjVar2, arj arjVar3) {
        int i = arjVar.f65031e;
        byte[] bArr = new byte[arjVar2.f65031e + i + arjVar3.f65031e];
        System.arraycopy(arjVar.f65030d, 0, bArr, 0, i);
        System.arraycopy(arjVar2.f65030d, 0, bArr, arjVar.f65031e, arjVar2.f65031e);
        System.arraycopy(arjVar3.f65030d, 0, bArr, arjVar.f65031e + arjVar2.f65031e, arjVar3.f65031e);
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(arjVar2.f65030d, 0, arjVar2.f65031e);
        parsableNalUnitBitArray.skipBits(44);
        int readBits = parsableNalUnitBitArray.readBits(3);
        parsableNalUnitBitArray.skipBit();
        int readBits2 = parsableNalUnitBitArray.readBits(2);
        boolean readBit = parsableNalUnitBitArray.readBit();
        int readBits3 = parsableNalUnitBitArray.readBits(5);
        int i2 = 0;
        for (int i3 = 0; i3 < 32; i3++) {
            if (parsableNalUnitBitArray.readBit()) {
                i2 |= 1 << i3;
            }
        }
        int[] iArr = new int[6];
        for (int i4 = 0; i4 < 6; i4++) {
            iArr[i4] = parsableNalUnitBitArray.readBits(8);
        }
        int readBits4 = parsableNalUnitBitArray.readBits(8);
        int i5 = 0;
        for (int i6 = 0; i6 < readBits; i6++) {
            if (parsableNalUnitBitArray.readBit()) {
                i5 += 89;
            }
            if (parsableNalUnitBitArray.readBit()) {
                i5 += 8;
            }
        }
        parsableNalUnitBitArray.skipBits(i5);
        if (readBits > 0) {
            parsableNalUnitBitArray.skipBits((8 - readBits) * 2);
        }
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int readUnsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        if (readUnsignedExpGolombCodedInt == 3) {
            parsableNalUnitBitArray.skipBit();
        }
        int readUnsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int readUnsignedExpGolombCodedInt3 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        if (parsableNalUnitBitArray.readBit()) {
            int readUnsignedExpGolombCodedInt4 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int readUnsignedExpGolombCodedInt5 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int readUnsignedExpGolombCodedInt6 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int readUnsignedExpGolombCodedInt7 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            readUnsignedExpGolombCodedInt2 -= ((readUnsignedExpGolombCodedInt == 1 || readUnsignedExpGolombCodedInt == 2) ? 2 : 1) * (readUnsignedExpGolombCodedInt4 + readUnsignedExpGolombCodedInt5);
            readUnsignedExpGolombCodedInt3 -= (readUnsignedExpGolombCodedInt == 1 ? 2 : 1) * (readUnsignedExpGolombCodedInt6 + readUnsignedExpGolombCodedInt7);
        }
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int readUnsignedExpGolombCodedInt8 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        for (int i7 = parsableNalUnitBitArray.readBit() ? 0 : readBits; i7 <= readBits; i7++) {
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        }
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        if (parsableNalUnitBitArray.readBit() && parsableNalUnitBitArray.readBit()) {
            m19129e(parsableNalUnitBitArray);
        }
        parsableNalUnitBitArray.skipBits(2);
        if (parsableNalUnitBitArray.readBit()) {
            parsableNalUnitBitArray.skipBits(8);
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.skipBit();
        }
        m19130f(parsableNalUnitBitArray);
        if (parsableNalUnitBitArray.readBit()) {
            for (int i8 = 0; i8 < parsableNalUnitBitArray.readUnsignedExpGolombCodedInt(); i8++) {
                parsableNalUnitBitArray.skipBits(readUnsignedExpGolombCodedInt8 + 4 + 1);
            }
        }
        parsableNalUnitBitArray.skipBits(2);
        float f = 1.0f;
        if (parsableNalUnitBitArray.readBit()) {
            if (parsableNalUnitBitArray.readBit()) {
                int readBits5 = parsableNalUnitBitArray.readBits(8);
                if (readBits5 == 255) {
                    int readBits6 = parsableNalUnitBitArray.readBits(16);
                    int readBits7 = parsableNalUnitBitArray.readBits(16);
                    if (readBits6 != 0 && readBits7 != 0) {
                        f = readBits6 / readBits7;
                    }
                } else {
                    float[] fArr = NalUnitUtil.ASPECT_RATIO_IDC_VALUES;
                    if (readBits5 < fArr.length) {
                        f = fArr[readBits5];
                    } else {
                        StringBuilder sb = new StringBuilder(46);
                        sb.append("Unexpected aspect_ratio_idc value: ");
                        sb.append(readBits5);
                        Log.m21493w(f24491o, sb.toString());
                    }
                }
            }
            if (parsableNalUnitBitArray.readBit()) {
                parsableNalUnitBitArray.skipBit();
            }
            if (parsableNalUnitBitArray.readBit()) {
                parsableNalUnitBitArray.skipBits(4);
                if (parsableNalUnitBitArray.readBit()) {
                    parsableNalUnitBitArray.skipBits(24);
                }
            }
            if (parsableNalUnitBitArray.readBit()) {
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            }
            parsableNalUnitBitArray.skipBit();
            if (parsableNalUnitBitArray.readBit()) {
                readUnsignedExpGolombCodedInt3 *= 2;
            }
        }
        return new Format.Builder().setId(str).setSampleMimeType(MimeTypes.VIDEO_H265).setCodecs(CodecSpecificDataUtil.buildHevcCodecString(readBits2, readBit, readBits3, i2, iArr, readBits4)).setWidth(readUnsignedExpGolombCodedInt2).setHeight(readUnsignedExpGolombCodedInt3).setPixelWidthHeightRatio(f).setInitializationData(Collections.singletonList(bArr)).build();
    }

    /* renamed from: e */
    public static void m19129e(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (i2 < 6) {
                int i3 = 1;
                if (parsableNalUnitBitArray.readBit()) {
                    int min = Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        parsableNalUnitBitArray.readSignedExpGolombCodedInt();
                    }
                    for (int i4 = 0; i4 < min; i4++) {
                        parsableNalUnitBitArray.readSignedExpGolombCodedInt();
                    }
                } else {
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                }
                if (i == 3) {
                    i3 = 3;
                }
                i2 += i3;
            }
        }
    }

    /* renamed from: f */
    public static void m19130f(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        int readUnsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        boolean z = false;
        int i = 0;
        for (int i2 = 0; i2 < readUnsignedExpGolombCodedInt; i2++) {
            if (i2 != 0) {
                z = parsableNalUnitBitArray.readBit();
            }
            if (z) {
                parsableNalUnitBitArray.skipBit();
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                for (int i3 = 0; i3 <= i; i3++) {
                    if (parsableNalUnitBitArray.readBit()) {
                        parsableNalUnitBitArray.skipBit();
                    }
                }
            } else {
                int readUnsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int readUnsignedExpGolombCodedInt3 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int i4 = readUnsignedExpGolombCodedInt2 + readUnsignedExpGolombCodedInt3;
                for (int i5 = 0; i5 < readUnsignedExpGolombCodedInt2; i5++) {
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                    parsableNalUnitBitArray.skipBit();
                }
                for (int i6 = 0; i6 < readUnsignedExpGolombCodedInt3; i6++) {
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                    parsableNalUnitBitArray.skipBit();
                }
                i = i4;
            }
        }
    }

    @EnsuresNonNull({Constants.ELEMNAME_OUTPUT_STRING, "sampleReader"})
    /* renamed from: a */
    public final void m19131a() {
        Assertions.checkStateNotNull(this.f24503c);
        Util.castNonNull(this.f24504d);
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING, "sampleReader"})
    /* renamed from: b */
    public final void m19132b(long j, int i, int i2, long j2) {
        this.f24504d.m19137a(j, i, this.f24505e);
        if (!this.f24505e) {
            this.f24507g.m53092b(i2);
            this.f24508h.m53092b(i2);
            this.f24509i.m53092b(i2);
            if (this.f24507g.m53093c() && this.f24508h.m53093c() && this.f24509i.m53093c()) {
                this.f24503c.format(m19128d(this.f24502b, this.f24507g, this.f24508h, this.f24509i));
                this.f24505e = true;
            }
        }
        if (this.f24510j.m53092b(i2)) {
            arj arjVar = this.f24510j;
            this.f24514n.reset(this.f24510j.f65030d, NalUnitUtil.unescapeStream(arjVar.f65030d, arjVar.f65031e));
            this.f24514n.skipBytes(5);
            this.f24501a.consume(j2, this.f24514n);
        }
        if (this.f24511k.m53092b(i2)) {
            arj arjVar2 = this.f24511k;
            this.f24514n.reset(this.f24511k.f65030d, NalUnitUtil.unescapeStream(arjVar2.f65030d, arjVar2.f65031e));
            this.f24514n.skipBytes(5);
            this.f24501a.consume(j2, this.f24514n);
        }
    }

    @RequiresNonNull({"sampleReader"})
    /* renamed from: c */
    public final void m19133c(byte[] bArr, int i, int i2) {
        this.f24504d.m19139e(bArr, i, i2);
        if (!this.f24505e) {
            this.f24507g.m53091a(bArr, i, i2);
            this.f24508h.m53091a(bArr, i, i2);
            this.f24509i.m53091a(bArr, i, i2);
        }
        this.f24510j.m53091a(bArr, i, i2);
        this.f24511k.m53091a(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        m19131a();
        while (parsableByteArray.bytesLeft() > 0) {
            int position = parsableByteArray.getPosition();
            int limit = parsableByteArray.limit();
            byte[] data = parsableByteArray.getData();
            this.f24512l += parsableByteArray.bytesLeft();
            this.f24503c.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
            while (position < limit) {
                int findNalUnit = NalUnitUtil.findNalUnit(data, position, limit, this.f24506f);
                if (findNalUnit == limit) {
                    m19133c(data, position, limit);
                    return;
                }
                int h265NalUnitType = NalUnitUtil.getH265NalUnitType(data, findNalUnit);
                int i = findNalUnit - position;
                if (i > 0) {
                    m19133c(data, position, findNalUnit);
                }
                int i2 = limit - findNalUnit;
                long j = this.f24512l - i2;
                m19132b(j, i2, i < 0 ? -i : 0, this.f24513m);
                m19134g(j, i2, h265NalUnitType, this.f24513m);
                position = findNalUnit + 3;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.f24502b = trackIdGenerator.getFormatId();
        TrackOutput track = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
        this.f24503c = track;
        this.f24504d = new C4752a(track);
        this.f24501a.createTracks(extractorOutput, trackIdGenerator);
    }

    @RequiresNonNull({"sampleReader"})
    /* renamed from: g */
    public final void m19134g(long j, int i, int i2, long j2) {
        this.f24504d.m19141g(j, i, i2, j2, this.f24505e);
        if (!this.f24505e) {
            this.f24507g.m53095e(i2);
            this.f24508h.m53095e(i2);
            this.f24509i.m53095e(i2);
        }
        this.f24510j.m53095e(i2);
        this.f24511k.m53095e(i2);
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if (j != C4649C.TIME_UNSET) {
            this.f24513m = j;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        this.f24512l = 0L;
        this.f24513m = C4649C.TIME_UNSET;
        NalUnitUtil.clearPrefixFlags(this.f24506f);
        this.f24507g.m53094d();
        this.f24508h.m53094d();
        this.f24509i.m53094d();
        this.f24510j.m53094d();
        this.f24511k.m53094d();
        C4752a c4752a = this.f24504d;
        if (c4752a != null) {
            c4752a.m19140f();
        }
    }
}
