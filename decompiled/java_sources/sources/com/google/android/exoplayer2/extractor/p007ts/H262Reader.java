package com.google.android.exoplayer2.extractor.p007ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.sunia.HTREnginev2.arj;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class H262Reader implements ElementaryStreamReader {

    /* renamed from: q */
    public static final int f24363q = 0;

    /* renamed from: r */
    public static final int f24364r = 179;

    /* renamed from: s */
    public static final int f24365s = 181;

    /* renamed from: t */
    public static final int f24366t = 184;

    /* renamed from: u */
    public static final int f24367u = 178;

    /* renamed from: v */
    public static final double[] f24368v = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a */
    public String f24369a;

    /* renamed from: b */
    public TrackOutput f24370b;

    /* renamed from: c */
    @Nullable
    public final C4756a f24371c;

    /* renamed from: d */
    @Nullable
    public final ParsableByteArray f24372d;

    /* renamed from: e */
    @Nullable
    public final arj f24373e;

    /* renamed from: f */
    public final boolean[] f24374f;

    /* renamed from: g */
    public final C4747a f24375g;

    /* renamed from: h */
    public long f24376h;

    /* renamed from: i */
    public boolean f24377i;

    /* renamed from: j */
    public boolean f24378j;

    /* renamed from: k */
    public long f24379k;

    /* renamed from: l */
    public long f24380l;

    /* renamed from: m */
    public long f24381m;

    /* renamed from: n */
    public long f24382n;

    /* renamed from: o */
    public boolean f24383o;

    /* renamed from: p */
    public boolean f24384p;

    /* renamed from: com.google.android.exoplayer2.extractor.ts.H262Reader$a */
    /* loaded from: classes5.dex */
    public static final class C4747a {

        /* renamed from: e */
        public static final byte[] f24385e = {0, 0, 1};

        /* renamed from: a */
        public boolean f24386a;

        /* renamed from: b */
        public int f24387b;

        /* renamed from: c */
        public int f24388c;

        /* renamed from: d */
        public byte[] f24389d;

        public C4747a(int i) {
            this.f24389d = new byte[i];
        }

        /* renamed from: a */
        public void m19099a(byte[] bArr, int i, int i2) {
            if (this.f24386a) {
                int i3 = i2 - i;
                byte[] bArr2 = this.f24389d;
                int length = bArr2.length;
                int i4 = this.f24387b;
                if (length < i4 + i3) {
                    this.f24389d = Arrays.copyOf(bArr2, (i4 + i3) * 2);
                }
                System.arraycopy(bArr, i, this.f24389d, this.f24387b, i3);
                this.f24387b += i3;
            }
        }

        /* renamed from: b */
        public boolean m19100b(int i, int i2) {
            if (this.f24386a) {
                int i3 = this.f24387b - i2;
                this.f24387b = i3;
                if (this.f24388c != 0 || i != 181) {
                    this.f24386a = false;
                    return true;
                }
                this.f24388c = i3;
            } else if (i == 179) {
                this.f24386a = true;
            }
            byte[] bArr = f24385e;
            m19099a(bArr, 0, bArr.length);
            return false;
        }

        /* renamed from: c */
        public void m19101c() {
            this.f24386a = false;
            this.f24387b = 0;
            this.f24388c = 0;
        }
    }

    public H262Reader() {
        this(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0073  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<com.google.android.exoplayer2.Format, java.lang.Long> m19098a(com.google.android.exoplayer2.extractor.p007ts.H262Reader.C4747a r8, java.lang.String r9) {
        /*
            byte[] r0 = r8.f24389d
            int r1 = r8.f24387b
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            r1 = 4
            r2 = r0[r1]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r3 = 5
            r4 = r0[r3]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r5 = 6
            r5 = r0[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r1
            int r6 = r4 >> 4
            r2 = r2 | r6
            r4 = r4 & 15
            int r4 = r4 << 8
            r4 = r4 | r5
            r5 = 7
            r6 = r0[r5]
            r6 = r6 & 240(0xf0, float:3.36E-43)
            int r6 = r6 >> r1
            r7 = 2
            if (r6 == r7) goto L3d
            r7 = 3
            if (r6 == r7) goto L37
            if (r6 == r1) goto L31
            r1 = 1065353216(0x3f800000, float:1.0)
            goto L44
        L31:
            int r1 = r4 * 121
            float r1 = (float) r1
            int r6 = r2 * 100
            goto L42
        L37:
            int r1 = r4 * 16
            float r1 = (float) r1
            int r6 = r2 * 9
            goto L42
        L3d:
            int r1 = r4 * 4
            float r1 = (float) r1
            int r6 = r2 * 3
        L42:
            float r6 = (float) r6
            float r1 = r1 / r6
        L44:
            com.google.android.exoplayer2.Format$Builder r6 = new com.google.android.exoplayer2.Format$Builder
            r6.<init>()
            com.google.android.exoplayer2.Format$Builder r9 = r6.setId(r9)
            java.lang.String r6 = "video/mpeg2"
            com.google.android.exoplayer2.Format$Builder r9 = r9.setSampleMimeType(r6)
            com.google.android.exoplayer2.Format$Builder r9 = r9.setWidth(r2)
            com.google.android.exoplayer2.Format$Builder r9 = r9.setHeight(r4)
            com.google.android.exoplayer2.Format$Builder r9 = r9.setPixelWidthHeightRatio(r1)
            java.util.List r1 = java.util.Collections.singletonList(r0)
            com.google.android.exoplayer2.Format$Builder r9 = r9.setInitializationData(r1)
            com.google.android.exoplayer2.Format r9 = r9.build()
            r1 = r0[r5]
            r1 = r1 & 15
            int r1 = r1 + (-1)
            if (r1 < 0) goto L98
            double[] r2 = com.google.android.exoplayer2.extractor.p007ts.H262Reader.f24368v
            int r4 = r2.length
            if (r1 >= r4) goto L98
            r1 = r2[r1]
            int r8 = r8.f24388c
            int r8 = r8 + 9
            r8 = r0[r8]
            r0 = r8 & 96
            int r0 = r0 >> r3
            r8 = r8 & 31
            if (r0 == r8) goto L90
            double r3 = (double) r0
            r5 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r3 = r3 + r5
            int r8 = r8 + 1
            double r5 = (double) r8
            double r3 = r3 / r5
            double r1 = r1 * r3
        L90:
            r3 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r3 = r3 / r1
            long r0 = (long) r3
            goto L9a
        L98:
            r0 = 0
        L9a:
            java.lang.Long r8 = java.lang.Long.valueOf(r0)
            android.util.Pair r8 = android.util.Pair.create(r9, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p007ts.H262Reader.m19098a(com.google.android.exoplayer2.extractor.ts.H262Reader$a, java.lang.String):android.util.Pair");
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012c  */
    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void consume(com.google.android.exoplayer2.util.ParsableByteArray r21) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p007ts.H262Reader.consume(com.google.android.exoplayer2.util.ParsableByteArray):void");
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.f24369a = trackIdGenerator.getFormatId();
        this.f24370b = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
        C4756a c4756a = this.f24371c;
        if (c4756a != null) {
            c4756a.m19191b(extractorOutput, trackIdGenerator);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        this.f24380l = j;
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        NalUnitUtil.clearPrefixFlags(this.f24374f);
        this.f24375g.m19101c();
        arj arjVar = this.f24373e;
        if (arjVar != null) {
            arjVar.m53094d();
        }
        this.f24376h = 0L;
        this.f24377i = false;
        this.f24380l = C4649C.TIME_UNSET;
        this.f24382n = C4649C.TIME_UNSET;
    }

    public H262Reader(@Nullable C4756a c4756a) {
        this.f24371c = c4756a;
        this.f24374f = new boolean[4];
        this.f24375g = new C4747a(128);
        if (c4756a != null) {
            this.f24373e = new arj(178, 128);
            this.f24372d = new ParsableByteArray();
        } else {
            this.f24373e = null;
            this.f24372d = null;
        }
        this.f24380l = C4649C.TIME_UNSET;
        this.f24382n = C4649C.TIME_UNSET;
    }
}
