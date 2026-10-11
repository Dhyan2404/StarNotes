package com.google.android.exoplayer2.extractor.p007ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.sunia.HTREnginev2.arj;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes5.dex */
public final class H263Reader implements ElementaryStreamReader {

    /* renamed from: l */
    public static final String f24390l = "H263Reader";

    /* renamed from: m */
    public static final int f24391m = 176;

    /* renamed from: n */
    public static final int f24392n = 178;

    /* renamed from: o */
    public static final int f24393o = 179;

    /* renamed from: p */
    public static final int f24394p = 181;

    /* renamed from: q */
    public static final int f24395q = 182;

    /* renamed from: r */
    public static final int f24396r = 31;

    /* renamed from: s */
    public static final int f24397s = -1;

    /* renamed from: t */
    public static final float[] f24398t = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* renamed from: u */
    public static final int f24399u = 0;

    /* renamed from: a */
    @Nullable
    public final C4756a f24400a;

    /* renamed from: b */
    @Nullable
    public final ParsableByteArray f24401b;

    /* renamed from: c */
    public final boolean[] f24402c;

    /* renamed from: d */
    public final C4748a f24403d;

    /* renamed from: e */
    @Nullable
    public final arj f24404e;

    /* renamed from: f */
    public C4749b f24405f;

    /* renamed from: g */
    public long f24406g;

    /* renamed from: h */
    public String f24407h;

    /* renamed from: i */
    public TrackOutput f24408i;

    /* renamed from: j */
    public boolean f24409j;

    /* renamed from: k */
    public long f24410k;

    /* renamed from: com.google.android.exoplayer2.extractor.ts.H263Reader$a */
    /* loaded from: classes5.dex */
    public static final class C4748a {

        /* renamed from: f */
        public static final byte[] f24411f = {0, 0, 1};

        /* renamed from: g */
        public static final int f24412g = 0;

        /* renamed from: h */
        public static final int f24413h = 1;

        /* renamed from: i */
        public static final int f24414i = 2;

        /* renamed from: j */
        public static final int f24415j = 3;

        /* renamed from: k */
        public static final int f24416k = 4;

        /* renamed from: a */
        public boolean f24417a;

        /* renamed from: b */
        public int f24418b;

        /* renamed from: c */
        public int f24419c;

        /* renamed from: d */
        public int f24420d;

        /* renamed from: e */
        public byte[] f24421e;

        public C4748a(int i) {
            this.f24421e = new byte[i];
        }

        /* renamed from: a */
        public void m19103a(byte[] bArr, int i, int i2) {
            if (this.f24417a) {
                int i3 = i2 - i;
                byte[] bArr2 = this.f24421e;
                int length = bArr2.length;
                int i4 = this.f24419c;
                if (length < i4 + i3) {
                    this.f24421e = Arrays.copyOf(bArr2, (i4 + i3) * 2);
                }
                System.arraycopy(bArr, i, this.f24421e, this.f24419c, i3);
                this.f24419c += i3;
            }
        }

        /* renamed from: b */
        public boolean m19104b(int i, int i2) {
            int i3 = this.f24418b;
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 != 4) {
                                throw new IllegalStateException();
                            }
                            if (i == 179 || i == 181) {
                                this.f24419c -= i2;
                                this.f24417a = false;
                                return true;
                            }
                        } else if ((i & 240) != 32) {
                            Log.m21493w(H263Reader.f24390l, "Unexpected start code value");
                            m19105c();
                        } else {
                            this.f24420d = this.f24419c;
                            this.f24418b = 4;
                        }
                    } else if (i > 31) {
                        Log.m21493w(H263Reader.f24390l, "Unexpected start code value");
                        m19105c();
                    } else {
                        this.f24418b = 3;
                    }
                } else if (i != 181) {
                    Log.m21493w(H263Reader.f24390l, "Unexpected start code value");
                    m19105c();
                } else {
                    this.f24418b = 2;
                }
            } else if (i == 176) {
                this.f24418b = 1;
                this.f24417a = true;
            }
            byte[] bArr = f24411f;
            m19103a(bArr, 0, bArr.length);
            return false;
        }

        /* renamed from: c */
        public void m19105c() {
            this.f24417a = false;
            this.f24419c = 0;
            this.f24418b = 0;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.ts.H263Reader$b */
    /* loaded from: classes5.dex */
    public static final class C4749b {

        /* renamed from: i */
        public static final int f24422i = 1;

        /* renamed from: j */
        public static final int f24423j = 0;

        /* renamed from: a */
        public final TrackOutput f24424a;

        /* renamed from: b */
        public boolean f24425b;

        /* renamed from: c */
        public boolean f24426c;

        /* renamed from: d */
        public boolean f24427d;

        /* renamed from: e */
        public int f24428e;

        /* renamed from: f */
        public int f24429f;

        /* renamed from: g */
        public long f24430g;

        /* renamed from: h */
        public long f24431h;

        public C4749b(TrackOutput trackOutput) {
            this.f24424a = trackOutput;
        }

        /* renamed from: a */
        public void m19106a(byte[] bArr, int i, int i2) {
            if (this.f24426c) {
                int i3 = this.f24429f;
                int i4 = (i + 1) - i3;
                if (i4 >= i2) {
                    this.f24429f = i3 + (i2 - i);
                } else {
                    this.f24427d = ((bArr[i4] & 192) >> 6) == 0;
                    this.f24426c = false;
                }
            }
        }

        /* renamed from: b */
        public void m19107b(long j, int i, boolean z) {
            if (this.f24428e == 182 && z && this.f24425b) {
                long j2 = this.f24431h;
                if (j2 != C4649C.TIME_UNSET) {
                    this.f24424a.sampleMetadata(j2, this.f24427d ? 1 : 0, (int) (j - this.f24430g), i, null);
                }
            }
            if (this.f24428e != 179) {
                this.f24430g = j;
            }
        }

        /* renamed from: c */
        public void m19108c(int i, long j) {
            this.f24428e = i;
            this.f24427d = false;
            this.f24425b = i == 182 || i == 179;
            this.f24426c = i == 182;
            this.f24429f = 0;
            this.f24431h = j;
        }

        /* renamed from: d */
        public void m19109d() {
            this.f24425b = false;
            this.f24426c = false;
            this.f24427d = false;
            this.f24428e = -1;
        }
    }

    public H263Reader() {
        this(null);
    }

    /* renamed from: a */
    public static Format m19102a(C4748a c4748a, int i, String str) {
        byte[] copyOf = Arrays.copyOf(c4748a.f24421e, c4748a.f24419c);
        ParsableBitArray parsableBitArray = new ParsableBitArray(copyOf);
        parsableBitArray.skipBytes(i);
        parsableBitArray.skipBytes(4);
        parsableBitArray.skipBit();
        parsableBitArray.skipBits(8);
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(4);
            parsableBitArray.skipBits(3);
        }
        int readBits = parsableBitArray.readBits(4);
        float f = 1.0f;
        if (readBits == 15) {
            int readBits2 = parsableBitArray.readBits(8);
            int readBits3 = parsableBitArray.readBits(8);
            if (readBits3 == 0) {
                Log.m21493w(f24390l, "Invalid aspect ratio");
            } else {
                f = readBits2 / readBits3;
            }
        } else {
            float[] fArr = f24398t;
            if (readBits < fArr.length) {
                f = fArr[readBits];
            } else {
                Log.m21493w(f24390l, "Invalid aspect ratio");
            }
        }
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(2);
            parsableBitArray.skipBits(1);
            if (parsableBitArray.readBit()) {
                parsableBitArray.skipBits(15);
                parsableBitArray.skipBit();
                parsableBitArray.skipBits(15);
                parsableBitArray.skipBit();
                parsableBitArray.skipBits(15);
                parsableBitArray.skipBit();
                parsableBitArray.skipBits(3);
                parsableBitArray.skipBits(11);
                parsableBitArray.skipBit();
                parsableBitArray.skipBits(15);
                parsableBitArray.skipBit();
            }
        }
        if (parsableBitArray.readBits(2) != 0) {
            Log.m21493w(f24390l, "Unhandled video object layer shape");
        }
        parsableBitArray.skipBit();
        int readBits4 = parsableBitArray.readBits(16);
        parsableBitArray.skipBit();
        if (parsableBitArray.readBit()) {
            if (readBits4 == 0) {
                Log.m21493w(f24390l, "Invalid vop_increment_time_resolution");
            } else {
                int i2 = 0;
                for (int i3 = readBits4 - 1; i3 > 0; i3 >>= 1) {
                    i2++;
                }
                parsableBitArray.skipBits(i2);
            }
        }
        parsableBitArray.skipBit();
        int readBits5 = parsableBitArray.readBits(13);
        parsableBitArray.skipBit();
        int readBits6 = parsableBitArray.readBits(13);
        parsableBitArray.skipBit();
        parsableBitArray.skipBit();
        return new Format.Builder().setId(str).setSampleMimeType(MimeTypes.VIDEO_MP4V).setWidth(readBits5).setHeight(readBits6).setPixelWidthHeightRatio(f).setInitializationData(Collections.singletonList(copyOf)).build();
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        Assertions.checkStateNotNull(this.f24405f);
        Assertions.checkStateNotNull(this.f24408i);
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        byte[] data = parsableByteArray.getData();
        this.f24406g += parsableByteArray.bytesLeft();
        this.f24408i.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
        while (true) {
            int findNalUnit = NalUnitUtil.findNalUnit(data, position, limit, this.f24402c);
            if (findNalUnit == limit) {
                break;
            }
            int i = findNalUnit + 3;
            int i2 = parsableByteArray.getData()[i] & 255;
            int i3 = findNalUnit - position;
            int i4 = 0;
            if (!this.f24409j) {
                if (i3 > 0) {
                    this.f24403d.m19103a(data, position, findNalUnit);
                }
                if (this.f24403d.m19104b(i2, i3 < 0 ? -i3 : 0)) {
                    TrackOutput trackOutput = this.f24408i;
                    C4748a c4748a = this.f24403d;
                    trackOutput.format(m19102a(c4748a, c4748a.f24420d, (String) Assertions.checkNotNull(this.f24407h)));
                    this.f24409j = true;
                }
            }
            this.f24405f.m19106a(data, position, findNalUnit);
            arj arjVar = this.f24404e;
            if (arjVar != null) {
                if (i3 > 0) {
                    arjVar.m53091a(data, position, findNalUnit);
                } else {
                    i4 = -i3;
                }
                if (this.f24404e.m53092b(i4)) {
                    arj arjVar2 = this.f24404e;
                    ((ParsableByteArray) Util.castNonNull(this.f24401b)).reset(this.f24404e.f65030d, NalUnitUtil.unescapeStream(arjVar2.f65030d, arjVar2.f65031e));
                    ((C4756a) Util.castNonNull(this.f24400a)).m19190a(this.f24410k, this.f24401b);
                }
                if (i2 == 178 && parsableByteArray.getData()[findNalUnit + 2] == 1) {
                    this.f24404e.m53095e(i2);
                }
            }
            int i5 = limit - findNalUnit;
            this.f24405f.m19107b(this.f24406g - i5, i5, this.f24409j);
            this.f24405f.m19108c(i2, this.f24410k);
            position = i;
        }
        if (!this.f24409j) {
            this.f24403d.m19103a(data, position, limit);
        }
        this.f24405f.m19106a(data, position, limit);
        arj arjVar3 = this.f24404e;
        if (arjVar3 != null) {
            arjVar3.m53091a(data, position, limit);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.f24407h = trackIdGenerator.getFormatId();
        TrackOutput track = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
        this.f24408i = track;
        this.f24405f = new C4749b(track);
        C4756a c4756a = this.f24400a;
        if (c4756a != null) {
            c4756a.m19191b(extractorOutput, trackIdGenerator);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if (j != C4649C.TIME_UNSET) {
            this.f24410k = j;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.ElementaryStreamReader
    public void seek() {
        NalUnitUtil.clearPrefixFlags(this.f24402c);
        this.f24403d.m19105c();
        C4749b c4749b = this.f24405f;
        if (c4749b != null) {
            c4749b.m19109d();
        }
        arj arjVar = this.f24404e;
        if (arjVar != null) {
            arjVar.m53094d();
        }
        this.f24406g = 0L;
        this.f24410k = C4649C.TIME_UNSET;
    }

    public H263Reader(@Nullable C4756a c4756a) {
        this.f24400a = c4756a;
        this.f24402c = new boolean[4];
        this.f24403d = new C4748a(128);
        this.f24410k = C4649C.TIME_UNSET;
        if (c4756a != null) {
            this.f24404e = new arj(178, 128);
            this.f24401b = new ParsableByteArray();
        } else {
            this.f24404e = null;
            this.f24401b = null;
        }
    }
}
