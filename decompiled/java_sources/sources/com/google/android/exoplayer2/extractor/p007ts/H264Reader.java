package com.google.android.exoplayer2.extractor.p007ts;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.ParsableNalUnitBitArray;
import com.google.android.exoplayer2.util.Util;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.arj;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class H264Reader implements ElementaryStreamReader {

    /* renamed from: p */
    public static final int f24432p = 6;

    /* renamed from: q */
    public static final int f24433q = 7;

    /* renamed from: r */
    public static final int f24434r = 8;

    /* renamed from: a */
    public final SeiReader f24435a;

    /* renamed from: b */
    public final boolean f24436b;

    /* renamed from: c */
    public final boolean f24437c;

    /* renamed from: g */
    public long f24441g;

    /* renamed from: i */
    public String f24443i;

    /* renamed from: j */
    public TrackOutput f24444j;

    /* renamed from: k */
    public C4751b f24445k;

    /* renamed from: l */
    public boolean f24446l;

    /* renamed from: n */
    public boolean f24448n;

    /* renamed from: h */
    public final boolean[] f24442h = new boolean[3];

    /* renamed from: d */
    public final arj f24438d = new arj(7, 128);

    /* renamed from: e */
    public final arj f24439e = new arj(8, 128);

    /* renamed from: f */
    public final arj f24440f = new arj(6, 128);

    /* renamed from: m */
    public long f24447m = C4649C.TIME_UNSET;

    /* renamed from: o */
    public final ParsableByteArray f24449o = new ParsableByteArray();

    /* renamed from: com.google.android.exoplayer2.extractor.ts.H264Reader$b */
    /* loaded from: classes5.dex */
    public static final class C4751b {

        /* renamed from: s */
        public static final int f24450s = 128;

        /* renamed from: t */
        public static final int f24451t = 1;

        /* renamed from: u */
        public static final int f24452u = 2;

        /* renamed from: v */
        public static final int f24453v = 5;

        /* renamed from: w */
        public static final int f24454w = 9;

        /* renamed from: a */
        public final TrackOutput f24455a;

        /* renamed from: b */
        public final boolean f24456b;

        /* renamed from: c */
        public final boolean f24457c;

        /* renamed from: d */
        public final SparseArray<NalUnitUtil.SpsData> f24458d = new SparseArray<>();

        /* renamed from: e */
        public final SparseArray<NalUnitUtil.PpsData> f24459e = new SparseArray<>();

        /* renamed from: f */
        public final ParsableNalUnitBitArray f24460f;

        /* renamed from: g */
        public byte[] f24461g;

        /* renamed from: h */
        public int f24462h;

        /* renamed from: i */
        public int f24463i;

        /* renamed from: j */
        public long f24464j;

        /* renamed from: k */
        public boolean f24465k;

        /* renamed from: l */
        public long f24466l;

        /* renamed from: m */
        public a f24467m;

        /* renamed from: n */
        public a f24468n;

        /* renamed from: o */
        public boolean f24469o;

        /* renamed from: p */
        public long f24470p;

        /* renamed from: q */
        public long f24471q;

        /* renamed from: r */
        public boolean f24472r;

        /* renamed from: com.google.android.exoplayer2.extractor.ts.H264Reader$b$a */
        /* loaded from: classes5.dex */
        public static final class a {

            /* renamed from: q */
            public static final int f24473q = 2;

            /* renamed from: r */
            public static final int f24474r = 7;

            /* renamed from: a */
            public boolean f24475a;

            /* renamed from: b */
            public boolean f24476b;

            /* renamed from: c */
            @Nullable
            public NalUnitUtil.SpsData f24477c;

            /* renamed from: d */
            public int f24478d;

            /* renamed from: e */
            public int f24479e;

            /* renamed from: f */
            public int f24480f;

            /* renamed from: g */
            public int f24481g;

            /* renamed from: h */
            public boolean f24482h;

            /* renamed from: i */
            public boolean f24483i;

            /* renamed from: j */
            public boolean f24484j;

            /* renamed from: k */
            public boolean f24485k;

            /* renamed from: l */
            public int f24486l;

            /* renamed from: m */
            public int f24487m;

            /* renamed from: n */
            public int f24488n;

            /* renamed from: o */
            public int f24489o;

            /* renamed from: p */
            public int f24490p;

            public a() {
            }

            /* renamed from: b */
            public void m19123b() {
                this.f24476b = false;
                this.f24475a = false;
            }

            /* renamed from: c */
            public final boolean m19124c(a aVar) {
                int i;
                int i2;
                int i3;
                boolean z;
                if (!this.f24475a) {
                    return false;
                }
                if (!aVar.f24475a) {
                    return true;
                }
                NalUnitUtil.SpsData spsData = (NalUnitUtil.SpsData) Assertions.checkStateNotNull(this.f24477c);
                NalUnitUtil.SpsData spsData2 = (NalUnitUtil.SpsData) Assertions.checkStateNotNull(aVar.f24477c);
                return (this.f24480f == aVar.f24480f && this.f24481g == aVar.f24481g && this.f24482h == aVar.f24482h && (!this.f24483i || !aVar.f24483i || this.f24484j == aVar.f24484j) && (((i = this.f24478d) == (i2 = aVar.f24478d) || (i != 0 && i2 != 0)) && (((i3 = spsData.picOrderCountType) != 0 || spsData2.picOrderCountType != 0 || (this.f24487m == aVar.f24487m && this.f24488n == aVar.f24488n)) && ((i3 != 1 || spsData2.picOrderCountType != 1 || (this.f24489o == aVar.f24489o && this.f24490p == aVar.f24490p)) && (z = this.f24485k) == aVar.f24485k && (!z || this.f24486l == aVar.f24486l))))) ? false : true;
            }

            /* renamed from: d */
            public boolean m19125d() {
                int i;
                return this.f24476b && ((i = this.f24479e) == 7 || i == 2);
            }

            /* renamed from: e */
            public void m19126e(NalUnitUtil.SpsData spsData, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.f24477c = spsData;
                this.f24478d = i;
                this.f24479e = i2;
                this.f24480f = i3;
                this.f24481g = i4;
                this.f24482h = z;
                this.f24483i = z2;
                this.f24484j = z3;
                this.f24485k = z4;
                this.f24486l = i5;
                this.f24487m = i6;
                this.f24488n = i7;
                this.f24489o = i8;
                this.f24490p = i9;
                this.f24475a = true;
                this.f24476b = true;
            }

            /* renamed from: f */
            public void m19127f(int i) {
                this.f24479e = i;
                this.f24476b = true;
            }
        }

        public C4751b(TrackOutput trackOutput, boolean z, boolean z2) {
            this.f24455a = trackOutput;
            this.f24456b = z;
            this.f24457c = z2;
            this.f24467m = new a();
            this.f24468n = new a();
            byte[] bArr = new byte[128];
            this.f24461g = bArr;
            this.f24460f = new ParsableNalUnitBitArray(bArr, 0, 0);
            m19120g();
        }

        /* JADX WARN: Removed duplicated region for block: B:50:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x011e  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0152  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x0102  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m19114a(byte[] r24, int r25, int r26) {
            /*
                Method dump skipped, instructions count: 414
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p007ts.H264Reader.C4751b.m19114a(byte[], int, int):void");
        }

        /* renamed from: b */
        public boolean m19115b(long j, int i, boolean z, boolean z2) {
            boolean z3 = false;
            if (this.f24463i == 9 || (this.f24457c && this.f24468n.m19124c(this.f24467m))) {
                if (z && this.f24469o) {
                    m19117d(i + ((int) (j - this.f24464j)));
                }
                this.f24470p = this.f24464j;
                this.f24471q = this.f24466l;
                this.f24472r = false;
                this.f24469o = true;
            }
            if (this.f24456b) {
                z2 = this.f24468n.m19125d();
            }
            boolean z4 = this.f24472r;
            int i2 = this.f24463i;
            if (i2 == 5 || (z2 && i2 == 1)) {
                z3 = true;
            }
            boolean z5 = z4 | z3;
            this.f24472r = z5;
            return z5;
        }

        /* renamed from: c */
        public boolean m19116c() {
            return this.f24457c;
        }

        /* renamed from: d */
        public final void m19117d(int i) {
            long j = this.f24471q;
            if (j == C4649C.TIME_UNSET) {
                return;
            }
            boolean z = this.f24472r;
            this.f24455a.sampleMetadata(j, z ? 1 : 0, (int) (this.f24464j - this.f24470p), i, null);
        }

        /* renamed from: e */
        public void m19118e(NalUnitUtil.PpsData ppsData) {
            this.f24459e.append(ppsData.picParameterSetId, ppsData);
        }

        /* renamed from: f */
        public void m19119f(NalUnitUtil.SpsData spsData) {
            this.f24458d.append(spsData.seqParameterSetId, spsData);
        }

        /* renamed from: g */
        public void m19120g() {
            this.f24465k = false;
            this.f24469o = false;
            this.f24468n.m19123b();
        }

        /* renamed from: h */
        public void m19121h(long j, int i, long j2) {
            this.f24463i = i;
            this.f24466l = j2;
            this.f24464j = j;
            if (!this.f24456b || i != 1) {
                if (!this.f24457c) {
                    return;
                }
                if (i != 5 && i != 1 && i != 2) {
                    return;
                }
            }
            a aVar = this.f24467m;
            this.f24467m = this.f24468n;
            this.f24468n = aVar;
            aVar.m19123b();
            this.f24462h = 0;
            this.f24465k = true;
        }
    }

    public H264Reader(SeiReader seiReader, boolean z, boolean z2) {
        this.f24435a = seiReader;
        this.f24436b = z;
        this.f24437c = z2;
    }

    @EnsuresNonNull({Constants.ELEMNAME_OUTPUT_STRING, "sampleReader"})
    /* renamed from: a */
    public final void m19110a() {
        Assertions.checkStateNotNull(this.f24444j);
        Util.castNonNull(this.f24445k);
    }

    @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING, "sampleReader"})
    /* renamed from: b */
    public final void m19111b(long j, int i, int i2, long j2) {
        if (!this.f24446l || this.f24445k.m19116c()) {
            this.f24438d.m53092b(i2);
            this.f24439e.m53092b(i2);
            if (this.f24446l) {
                if (this.f24438d.m53093c()) {
                    arj arjVar = this.f24438d;
                    this.f24445k.m19119f(NalUnitUtil.parseSpsNalUnit(arjVar.f65030d, 3, arjVar.f65031e));
                    this.f24438d.m53094d();
                } else if (this.f24439e.m53093c()) {
                    arj arjVar2 = this.f24439e;
                    this.f24445k.m19118e(NalUnitUtil.parsePpsNalUnit(arjVar2.f65030d, 3, arjVar2.f65031e));
                    this.f24439e.m53094d();
                }
            } else if (this.f24438d.m53093c() && this.f24439e.m53093c()) {
                ArrayList arrayList = new ArrayList();
                arj arjVar3 = this.f24438d;
                arrayList.add(Arrays.copyOf(arjVar3.f65030d, arjVar3.f65031e));
                arj arjVar4 = this.f24439e;
                arrayList.add(Arrays.copyOf(arjVar4.f65030d, arjVar4.f65031e));
                arj arjVar5 = this.f24438d;
                NalUnitUtil.SpsData parseSpsNalUnit = NalUnitUtil.parseSpsNalUnit(arjVar5.f65030d, 3, arjVar5.f65031e);
                arj arjVar6 = this.f24439e;
                NalUnitUtil.PpsData parsePpsNalUnit = NalUnitUtil.parsePpsNalUnit(arjVar6.f65030d, 3, arjVar6.f65031e);
                this.f24444j.format(new Format.Builder().setId(this.f24443i).setSampleMimeType(MimeTypes.VIDEO_H264).setCodecs(CodecSpecificDataUtil.buildAvcCodecString(parseSpsNalUnit.profileIdc, parseSpsNalUnit.constraintsFlagsAndReservedZero2Bits, parseSpsNalUnit.levelIdc)).setWidth(parseSpsNalUnit.width).setHeight(parseSpsNalUnit.height).setPixelWidthHeightRatio(parseSpsNalUnit.pixelWidthHeightRatio).setInitializationData(arrayList).build());
                this.f24446l = true;
                this.f24445k.m19119f(parseSpsNalUnit);
                this.f24445k.m19118e(parsePpsNalUnit);
                this.f24438d.m53094d();
                this.f24439e.m53094d();
            }
        }
        if (this.f24440f.m53092b(i2)) {
            arj arjVar7 = this.f24440f;
            this.f24449o.reset(this.f24440f.f65030d, NalUnitUtil.unescapeStream(arjVar7.f65030d, arjVar7.f65031e));
            this.f24449o.setPosition(4);
            this.f24435a.consume(j2, this.f24449o);
        }
        if (this.f24445k.m19115b(j, i, this.f24446l, this.f24448n)) {
            this.f24448n = false;
        }
    }

    @RequiresNonNull({"sampleReader"})
    /* renamed from: c */
    public final void m19112c(byte[] bArr, int i, int i2) {
        if (!this.f24446l || this.f24445k.m19116c()) {
            this.f24438d.m53091a(bArr, i, i2);
            this.f24439e.m53091a(bArr, i, i2);
        }
        this.f24440f.m53091a(bArr, i, i2);
        this.f24445k.m19114a(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        m19110a();
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        byte[] data = parsableByteArray.getData();
        this.f24441g += parsableByteArray.bytesLeft();
        this.f24444j.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
        while (true) {
            int findNalUnit = NalUnitUtil.findNalUnit(data, position, limit, this.f24442h);
            if (findNalUnit == limit) {
                m19112c(data, position, limit);
                return;
            }
            int nalUnitType = NalUnitUtil.getNalUnitType(data, findNalUnit);
            int i = findNalUnit - position;
            if (i > 0) {
                m19112c(data, position, findNalUnit);
            }
            int i2 = limit - findNalUnit;
            long j = this.f24441g - i2;
            m19111b(j, i2, i < 0 ? -i : 0, this.f24447m);
            m19113d(j, nalUnitType, this.f24447m);
            position = findNalUnit + 3;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.f24443i = trackIdGenerator.getFormatId();
        TrackOutput track = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
        this.f24444j = track;
        this.f24445k = new C4751b(track, this.f24436b, this.f24437c);
        this.f24435a.createTracks(extractorOutput, trackIdGenerator);
    }

    @RequiresNonNull({"sampleReader"})
    /* renamed from: d */
    public final void m19113d(long j, int i, long j2) {
        if (!this.f24446l || this.f24445k.m19116c()) {
            this.f24438d.m53095e(i);
            this.f24439e.m53095e(i);
        }
        this.f24440f.m53095e(i);
        this.f24445k.m19121h(j, i, j2);
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if (j != C4649C.TIME_UNSET) {
            this.f24447m = j;
        }
        this.f24448n |= (i & 2) != 0;
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        this.f24441g = 0L;
        this.f24448n = false;
        this.f24447m = C4649C.TIME_UNSET;
        NalUnitUtil.clearPrefixFlags(this.f24442h);
        this.f24438d.m53094d();
        this.f24439e.m53094d();
        this.f24440f.m53094d();
        C4751b c4751b = this.f24445k;
        if (c4751b != null) {
            c4751b.m19120g();
        }
    }
}
