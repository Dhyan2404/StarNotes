package com.google.android.exoplayer2.extractor.mkv;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.alibaba.fastjson2.JSONB;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.TrueHdSampleRechunker;
import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.LongArray;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.common.xml.XmlEscapers;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.dvm;
import com.sunia.HTREnginev2.hze;
import com.sunia.HTREnginev2.m0o;
import com.sunia.HTREnginev2.mkf;
import com.sunia.HTREnginev2.rve;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public class MatroskaExtractor implements Extractor {

    /* renamed from: A0 */
    public static final String f23689A0 = "A_TRUEHD";

    /* renamed from: A1 */
    public static final int f23690A1 = 16871;

    /* renamed from: A2 */
    public static final int f23691A2 = 21972;

    /* renamed from: B0 */
    public static final String f23692B0 = "A_DTS";

    /* renamed from: B1 */
    public static final int f23693B1 = 16877;

    /* renamed from: B2 */
    public static final int f23694B2 = 21973;

    /* renamed from: C0 */
    public static final String f23695C0 = "A_DTS/EXPRESS";

    /* renamed from: C1 */
    public static final int f23696C1 = 21358;

    /* renamed from: C2 */
    public static final int f23697C2 = 21974;

    /* renamed from: D0 */
    public static final String f23698D0 = "A_DTS/LOSSLESS";

    /* renamed from: D1 */
    public static final int f23699D1 = 134;

    /* renamed from: D2 */
    public static final int f23700D2 = 21975;

    /* renamed from: E0 */
    public static final String f23701E0 = "A_FLAC";

    /* renamed from: E1 */
    public static final int f23702E1 = 25506;

    /* renamed from: E2 */
    public static final int f23703E2 = 21976;

    /* renamed from: F0 */
    public static final String f23704F0 = "A_MS/ACM";

    /* renamed from: F1 */
    public static final int f23705F1 = 22186;

    /* renamed from: F2 */
    public static final int f23706F2 = 21977;
    public static final int FLAG_DISABLE_SEEK_FOR_CUES = 1;

    /* renamed from: G0 */
    public static final String f23707G0 = "A_PCM/INT/LIT";

    /* renamed from: G1 */
    public static final int f23708G1 = 22203;

    /* renamed from: G2 */
    public static final int f23709G2 = 21978;

    /* renamed from: H0 */
    public static final String f23710H0 = "A_PCM/INT/BIG";

    /* renamed from: H1 */
    public static final int f23711H1 = 224;

    /* renamed from: H2 */
    public static final int f23712H2 = 4;

    /* renamed from: I0 */
    public static final String f23713I0 = "A_PCM/FLOAT/IEEE";

    /* renamed from: I1 */
    public static final int f23714I1 = 176;

    /* renamed from: I2 */
    public static final int f23715I2 = 1685480259;

    /* renamed from: J0 */
    public static final String f23716J0 = "S_TEXT/UTF8";

    /* renamed from: J1 */
    public static final int f23717J1 = 186;

    /* renamed from: J2 */
    public static final int f23718J2 = 1685485123;

    /* renamed from: K0 */
    public static final String f23719K0 = "S_TEXT/ASS";

    /* renamed from: K1 */
    public static final int f23720K1 = 21680;

    /* renamed from: K2 */
    public static final int f23721K2 = 0;

    /* renamed from: L0 */
    public static final String f23722L0 = "S_TEXT/WEBVTT";

    /* renamed from: L1 */
    public static final int f23723L1 = 21690;

    /* renamed from: L2 */
    public static final int f23724L2 = 1;

    /* renamed from: M0 */
    public static final String f23725M0 = "S_VOBSUB";

    /* renamed from: M1 */
    public static final int f23726M1 = 21682;

    /* renamed from: M2 */
    public static final int f23727M2 = 2;

    /* renamed from: N0 */
    public static final String f23728N0 = "S_HDMV/PGS";

    /* renamed from: N1 */
    public static final int f23729N1 = 225;

    /* renamed from: N2 */
    public static final int f23730N2 = 3;

    /* renamed from: O0 */
    public static final String f23731O0 = "S_DVBSUB";

    /* renamed from: O1 */
    public static final int f23732O1 = 159;

    /* renamed from: O2 */
    public static final int f23733O2 = 1482049860;

    /* renamed from: P0 */
    public static final int f23734P0 = 8192;

    /* renamed from: P1 */
    public static final int f23735P1 = 25188;

    /* renamed from: P2 */
    public static final int f23736P2 = 859189832;

    /* renamed from: Q0 */
    public static final int f23737Q0 = 5760;

    /* renamed from: Q1 */
    public static final int f23738Q1 = 181;

    /* renamed from: Q2 */
    public static final int f23739Q2 = 826496599;

    /* renamed from: R0 */
    public static final int f23740R0 = 8;

    /* renamed from: R1 */
    public static final int f23741R1 = 28032;

    /* renamed from: S0 */
    public static final int f23743S0 = 2;

    /* renamed from: S1 */
    public static final int f23744S1 = 25152;

    /* renamed from: S2 */
    public static final int f23745S2 = 19;

    /* renamed from: T0 */
    public static final int f23746T0 = 440786851;

    /* renamed from: T1 */
    public static final int f23747T1 = 20529;

    /* renamed from: T2 */
    public static final long f23748T2 = 1000;

    /* renamed from: U0 */
    public static final int f23749U0 = 17143;

    /* renamed from: U1 */
    public static final int f23750U1 = 20530;

    /* renamed from: U2 */
    public static final String f23751U2 = "%02d:%02d:%02d,%03d";

    /* renamed from: V0 */
    public static final int f23752V0 = 17026;

    /* renamed from: V1 */
    public static final int f23753V1 = 20532;

    /* renamed from: W0 */
    public static final int f23755W0 = 17029;

    /* renamed from: W1 */
    public static final int f23756W1 = 16980;

    /* renamed from: X0 */
    public static final int f23758X0 = 408125543;

    /* renamed from: X1 */
    public static final int f23759X1 = 16981;

    /* renamed from: X2 */
    public static final int f23760X2 = 21;

    /* renamed from: Y0 */
    public static final int f23761Y0 = 357149030;

    /* renamed from: Y1 */
    public static final int f23762Y1 = 20533;

    /* renamed from: Y2 */
    public static final long f23763Y2 = 10000;

    /* renamed from: Z0 */
    public static final int f23764Z0 = 290298740;

    /* renamed from: Z1 */
    public static final int f23765Z1 = 18401;

    /* renamed from: Z2 */
    public static final String f23766Z2 = "%01d:%02d:%02d:%02d";

    /* renamed from: a1 */
    public static final int f23767a1 = 19899;

    /* renamed from: a2 */
    public static final int f23768a2 = 18402;

    /* renamed from: b0 */
    public static final String f23770b0 = "MatroskaExtractor";

    /* renamed from: b1 */
    public static final int f23771b1 = 21419;

    /* renamed from: b2 */
    public static final int f23772b2 = 18407;

    /* renamed from: b3 */
    public static final int f23773b3 = 25;

    /* renamed from: c0 */
    public static final int f23774c0 = -1;

    /* renamed from: c1 */
    public static final int f23775c1 = 21420;

    /* renamed from: c2 */
    public static final int f23776c2 = 18408;

    /* renamed from: c3 */
    public static final long f23777c3 = 1000;

    /* renamed from: d0 */
    public static final int f23778d0 = 0;

    /* renamed from: d1 */
    public static final int f23779d1 = 357149030;

    /* renamed from: d2 */
    public static final int f23780d2 = 475249515;

    /* renamed from: d3 */
    public static final String f23781d3 = "%02d:%02d:%02d.%03d";

    /* renamed from: e0 */
    public static final int f23782e0 = 1;

    /* renamed from: e1 */
    public static final int f23783e1 = 2807729;

    /* renamed from: e2 */
    public static final int f23784e2 = 187;

    /* renamed from: e3 */
    public static final int f23785e3 = 18;

    /* renamed from: f0 */
    public static final int f23786f0 = 2;

    /* renamed from: f1 */
    public static final int f23787f1 = 17545;

    /* renamed from: f2 */
    public static final int f23788f2 = 179;

    /* renamed from: f3 */
    public static final int f23789f3 = 65534;

    /* renamed from: g0 */
    public static final String f23790g0 = "matroska";

    /* renamed from: g1 */
    public static final int f23791g1 = 524531317;

    /* renamed from: g2 */
    public static final int f23792g2 = 183;

    /* renamed from: g3 */
    public static final int f23793g3 = 1;

    /* renamed from: h0 */
    public static final String f23794h0 = "webm";

    /* renamed from: h1 */
    public static final int f23795h1 = 231;

    /* renamed from: h2 */
    public static final int f23796h2 = 241;

    /* renamed from: i0 */
    public static final String f23798i0 = "V_VP8";

    /* renamed from: i1 */
    public static final int f23799i1 = 163;

    /* renamed from: i2 */
    public static final int f23800i2 = 2274716;

    /* renamed from: i3 */
    public static final Map<String, Integer> f23801i3;

    /* renamed from: j0 */
    public static final String f23802j0 = "V_VP9";

    /* renamed from: j1 */
    public static final int f23803j1 = 160;

    /* renamed from: j2 */
    public static final int f23804j2 = 30320;

    /* renamed from: k0 */
    public static final String f23805k0 = "V_AV1";

    /* renamed from: k1 */
    public static final int f23806k1 = 161;

    /* renamed from: k2 */
    public static final int f23807k2 = 30321;

    /* renamed from: l0 */
    public static final String f23808l0 = "V_MPEG2";

    /* renamed from: l1 */
    public static final int f23809l1 = 155;

    /* renamed from: l2 */
    public static final int f23810l2 = 30322;

    /* renamed from: m0 */
    public static final String f23811m0 = "V_MPEG4/ISO/SP";

    /* renamed from: m1 */
    public static final int f23812m1 = 30113;

    /* renamed from: m2 */
    public static final int f23813m2 = 30323;

    /* renamed from: n0 */
    public static final String f23814n0 = "V_MPEG4/ISO/ASP";

    /* renamed from: n1 */
    public static final int f23815n1 = 166;

    /* renamed from: n2 */
    public static final int f23816n2 = 30324;

    /* renamed from: o0 */
    public static final String f23817o0 = "V_MPEG4/ISO/AP";

    /* renamed from: o1 */
    public static final int f23818o1 = 238;

    /* renamed from: o2 */
    public static final int f23819o2 = 30325;

    /* renamed from: p0 */
    public static final String f23820p0 = "V_MPEG4/ISO/AVC";

    /* renamed from: p1 */
    public static final int f23821p1 = 165;

    /* renamed from: p2 */
    public static final int f23822p2 = 21432;

    /* renamed from: q0 */
    public static final String f23823q0 = "V_MPEGH/ISO/HEVC";

    /* renamed from: q1 */
    public static final int f23824q1 = 251;

    /* renamed from: q2 */
    public static final int f23825q2 = 21936;

    /* renamed from: r0 */
    public static final String f23826r0 = "V_MS/VFW/FOURCC";

    /* renamed from: r1 */
    public static final int f23827r1 = 374648427;

    /* renamed from: r2 */
    public static final int f23828r2 = 21945;

    /* renamed from: s0 */
    public static final String f23829s0 = "V_THEORA";

    /* renamed from: s1 */
    public static final int f23830s1 = 174;

    /* renamed from: s2 */
    public static final int f23831s2 = 21946;

    /* renamed from: t0 */
    public static final String f23832t0 = "A_VORBIS";

    /* renamed from: t1 */
    public static final int f23833t1 = 215;

    /* renamed from: t2 */
    public static final int f23834t2 = 21947;

    /* renamed from: u0 */
    public static final String f23835u0 = "A_OPUS";

    /* renamed from: u1 */
    public static final int f23836u1 = 131;

    /* renamed from: u2 */
    public static final int f23837u2 = 21948;

    /* renamed from: v0 */
    public static final String f23838v0 = "A_AAC";

    /* renamed from: v1 */
    public static final int f23839v1 = 136;

    /* renamed from: v2 */
    public static final int f23840v2 = 21949;

    /* renamed from: w0 */
    public static final String f23841w0 = "A_MPEG/L2";

    /* renamed from: w1 */
    public static final int f23842w1 = 21930;

    /* renamed from: w2 */
    public static final int f23843w2 = 21968;

    /* renamed from: x0 */
    public static final String f23844x0 = "A_MPEG/L3";

    /* renamed from: x1 */
    public static final int f23845x1 = 2352003;

    /* renamed from: x2 */
    public static final int f23846x2 = 21969;

    /* renamed from: y0 */
    public static final String f23847y0 = "A_AC3";

    /* renamed from: y1 */
    public static final int f23848y1 = 21998;

    /* renamed from: y2 */
    public static final int f23849y2 = 21970;

    /* renamed from: z0 */
    public static final String f23850z0 = "A_EAC3";

    /* renamed from: z1 */
    public static final int f23851z1 = 16868;

    /* renamed from: z2 */
    public static final int f23852z2 = 21971;

    /* renamed from: A */
    public long f23853A;

    /* renamed from: B */
    public long f23854B;

    /* renamed from: C */
    @Nullable
    public LongArray f23855C;

    /* renamed from: D */
    @Nullable
    public LongArray f23856D;

    /* renamed from: E */
    public boolean f23857E;

    /* renamed from: F */
    public boolean f23858F;

    /* renamed from: G */
    public int f23859G;

    /* renamed from: H */
    public long f23860H;

    /* renamed from: I */
    public long f23861I;

    /* renamed from: J */
    public int f23862J;

    /* renamed from: K */
    public int f23863K;

    /* renamed from: L */
    public int[] f23864L;

    /* renamed from: M */
    public int f23865M;

    /* renamed from: N */
    public int f23866N;

    /* renamed from: O */
    public int f23867O;

    /* renamed from: P */
    public int f23868P;

    /* renamed from: Q */
    public boolean f23869Q;

    /* renamed from: R */
    public int f23870R;

    /* renamed from: S */
    public int f23871S;

    /* renamed from: T */
    public int f23872T;

    /* renamed from: U */
    public boolean f23873U;

    /* renamed from: V */
    public boolean f23874V;

    /* renamed from: W */
    public boolean f23875W;

    /* renamed from: X */
    public int f23876X;

    /* renamed from: Y */
    public byte f23877Y;

    /* renamed from: Z */
    public boolean f23878Z;

    /* renamed from: a */
    public final mkf f23879a;

    /* renamed from: a0 */
    public ExtractorOutput f23880a0;

    /* renamed from: b */
    public final m0o f23881b;

    /* renamed from: c */
    public final SparseArray<Track> f23882c;

    /* renamed from: d */
    public final boolean f23883d;

    /* renamed from: e */
    public final ParsableByteArray f23884e;

    /* renamed from: f */
    public final ParsableByteArray f23885f;

    /* renamed from: g */
    public final ParsableByteArray f23886g;

    /* renamed from: h */
    public final ParsableByteArray f23887h;

    /* renamed from: i */
    public final ParsableByteArray f23888i;

    /* renamed from: j */
    public final ParsableByteArray f23889j;

    /* renamed from: k */
    public final ParsableByteArray f23890k;

    /* renamed from: l */
    public final ParsableByteArray f23891l;

    /* renamed from: m */
    public final ParsableByteArray f23892m;

    /* renamed from: n */
    public final ParsableByteArray f23893n;

    /* renamed from: o */
    public ByteBuffer f23894o;

    /* renamed from: p */
    public long f23895p;

    /* renamed from: q */
    public long f23896q;

    /* renamed from: r */
    public long f23897r;

    /* renamed from: s */
    public long f23898s;

    /* renamed from: t */
    public long f23899t;

    /* renamed from: u */
    @Nullable
    public Track f23900u;

    /* renamed from: v */
    public boolean f23901v;

    /* renamed from: w */
    public int f23902w;

    /* renamed from: x */
    public long f23903x;

    /* renamed from: y */
    public boolean f23904y;

    /* renamed from: z */
    public long f23905z;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.sunia.HTREnginev2.qgj
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            Extractor[] m18883n;
            m18883n = MatroskaExtractor.m18883n();
            return m18883n;
        }
    };

    /* renamed from: R2 */
    public static final byte[] f23742R2 = {TarConstants.LF_LINK, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: V2 */
    public static final byte[] f23754V2 = Util.getUtf8Bytes("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: W2 */
    public static final byte[] f23757W2 = {JSONB.Constants.BC_INT32_SHORT_ZERO, JSONB.Constants.BC_STR_ASCII_FIX_32, 97, 108, 111, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, UTF8JsonGenerator.f21285e, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: a3 */
    public static final byte[] f23769a3 = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, Cea608Decoder.f26822e0, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, Cea608Decoder.f26822e0, 48, 48, 48, 10};

    /* renamed from: h3 */
    public static final UUID f23797h3 = new UUID(72057594037932032L, -9223371306706625679L);

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface Flags {
    }

    /* loaded from: classes5.dex */
    public static final class Track {

        /* renamed from: c */
        public static final int f23906c = 0;

        /* renamed from: d */
        public static final int f23907d = 50000;

        /* renamed from: e */
        public static final int f23908e = 1000;

        /* renamed from: f */
        public static final int f23909f = 200;

        /* renamed from: a */
        public int f23910a;
        public String codecId;
        public byte[] codecPrivate;
        public TrackOutput.CryptoData cryptoData;
        public int defaultSampleDurationNs;
        public byte[] dolbyVisionConfigBytes;
        public DrmInitData drmInitData;
        public boolean flagForced;
        public boolean hasContentEncryption;
        public int maxBlockAdditionId;
        public int nalUnitLengthFieldLength;
        public String name;
        public int number;
        public TrackOutput output;
        public byte[] sampleStrippedBytes;
        public TrueHdSampleRechunker trueHdSampleRechunker;
        public int type;
        public int width = -1;
        public int height = -1;
        public int displayWidth = -1;
        public int displayHeight = -1;
        public int displayUnit = 0;
        public int projectionType = -1;
        public float projectionPoseYaw = 0.0f;
        public float projectionPosePitch = 0.0f;
        public float projectionPoseRoll = 0.0f;
        public byte[] projectionData = null;
        public int stereoMode = -1;
        public boolean hasColorInfo = false;
        public int colorSpace = -1;
        public int colorTransfer = -1;
        public int colorRange = -1;
        public int maxContentLuminance = 1000;
        public int maxFrameAverageLuminance = 200;
        public float primaryRChromaticityX = -1.0f;
        public float primaryRChromaticityY = -1.0f;
        public float primaryGChromaticityX = -1.0f;
        public float primaryGChromaticityY = -1.0f;
        public float primaryBChromaticityX = -1.0f;
        public float primaryBChromaticityY = -1.0f;
        public float whitePointChromaticityX = -1.0f;
        public float whitePointChromaticityY = -1.0f;
        public float maxMasteringLuminance = -1.0f;
        public float minMasteringLuminance = -1.0f;
        public int channelCount = 1;
        public int audioBitDepth = -1;
        public int sampleRate = 8000;
        public long codecDelayNs = 0;
        public long seekPreRollNs = 0;
        public boolean flagDefault = true;

        /* renamed from: b */
        public String f23911b = "eng";

        /* renamed from: h */
        public static Pair<String, List<byte[]>> m18903h(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                parsableByteArray.skipBytes(16);
                long readLittleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
                if (readLittleEndianUnsignedInt == 1482049860) {
                    return new Pair<>(MimeTypes.VIDEO_DIVX, null);
                }
                if (readLittleEndianUnsignedInt == 859189832) {
                    return new Pair<>(MimeTypes.VIDEO_H263, null);
                }
                if (readLittleEndianUnsignedInt != 826496599) {
                    Log.m21493w(MatroskaExtractor.f23770b0, "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair<>(MimeTypes.VIDEO_UNKNOWN, null);
                }
                byte[] data = parsableByteArray.getData();
                for (int position = parsableByteArray.getPosition() + 20; position < data.length - 4; position++) {
                    if (data[position] == 0 && data[position + 1] == 0 && data[position + 2] == 1 && data[position + 3] == 15) {
                        return new Pair<>(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(data, position, data.length)));
                    }
                }
                throw ParserException.createForMalformedContainer("Failed to find FourCC VC1 initialization data", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing FourCC private data", null);
            }
        }

        /* renamed from: i */
        public static boolean m18904i(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                int readLittleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
                if (readLittleEndianUnsignedShort == 1) {
                    return true;
                }
                if (readLittleEndianUnsignedShort != 65534) {
                    return false;
                }
                parsableByteArray.setPosition(24);
                if (parsableByteArray.readLong() == MatroskaExtractor.f23797h3.getMostSignificantBits()) {
                    if (parsableByteArray.readLong() == MatroskaExtractor.f23797h3.getLeastSignificantBits()) {
                        return true;
                    }
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing MS/ACM codec private", null);
            }
        }

        /* renamed from: j */
        public static List<byte[]> m18905j(byte[] bArr) throws ParserException {
            int i;
            int i2;
            try {
                if (bArr[0] != 2) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i3 = 0;
                int i4 = 1;
                while (true) {
                    i = bArr[i4];
                    if ((i & 255) != 255) {
                        break;
                    }
                    i3 += 255;
                    i4++;
                }
                int i5 = i4 + 1;
                int i6 = i3 + (i & 255);
                int i7 = 0;
                while (true) {
                    i2 = bArr[i5];
                    if ((i2 & 255) != 255) {
                        break;
                    }
                    i7 += 255;
                    i5++;
                }
                int i8 = i5 + 1;
                int i9 = i7 + (i2 & 255);
                if (bArr[i8] != 1) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr2 = new byte[i6];
                System.arraycopy(bArr, i8, bArr2, 0, i6);
                int i10 = i8 + i6;
                if (bArr[i10] != 3) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i11 = i10 + i9;
                if (bArr[i11] != 5) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr3 = new byte[bArr.length - i11];
                System.arraycopy(bArr, i11, bArr3, 0, bArr.length - i11);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
            }
        }

        @EnsuresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
        /* renamed from: e */
        public final void m18906e() {
            Assertions.checkNotNull(this.output);
        }

        @EnsuresNonNull({"codecPrivate"})
        /* renamed from: f */
        public final byte[] m18907f(String str) throws ParserException {
            byte[] bArr = this.codecPrivate;
            if (bArr != null) {
                return bArr;
            }
            String valueOf = String.valueOf(str);
            throw ParserException.createForMalformedContainer(valueOf.length() != 0 ? "Missing CodecPrivate for codec ".concat(valueOf) : new String("Missing CodecPrivate for codec "), null);
        }

        @Nullable
        /* renamed from: g */
        public final byte[] m18908g() {
            if (this.primaryRChromaticityX == -1.0f || this.primaryRChromaticityY == -1.0f || this.primaryGChromaticityX == -1.0f || this.primaryGChromaticityY == -1.0f || this.primaryBChromaticityX == -1.0f || this.primaryBChromaticityY == -1.0f || this.whitePointChromaticityX == -1.0f || this.whitePointChromaticityY == -1.0f || this.maxMasteringLuminance == -1.0f || this.minMasteringLuminance == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            order.put((byte) 0);
            order.putShort((short) ((this.primaryRChromaticityX * 50000.0f) + 0.5f));
            order.putShort((short) ((this.primaryRChromaticityY * 50000.0f) + 0.5f));
            order.putShort((short) ((this.primaryGChromaticityX * 50000.0f) + 0.5f));
            order.putShort((short) ((this.primaryGChromaticityY * 50000.0f) + 0.5f));
            order.putShort((short) ((this.primaryBChromaticityX * 50000.0f) + 0.5f));
            order.putShort((short) ((this.primaryBChromaticityY * 50000.0f) + 0.5f));
            order.putShort((short) ((this.whitePointChromaticityX * 50000.0f) + 0.5f));
            order.putShort((short) ((this.whitePointChromaticityY * 50000.0f) + 0.5f));
            order.putShort((short) (this.maxMasteringLuminance + 0.5f));
            order.putShort((short) (this.minMasteringLuminance + 0.5f));
            order.putShort((short) this.maxContentLuminance);
            order.putShort((short) this.maxFrameAverageLuminance);
            return bArr;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x01df. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:14:0x042b  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0444  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0453  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x056f  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0465  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0446  */
        @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"this.output"})
        @org.checkerframework.checker.nullness.qual.RequiresNonNull({"codecId"})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void initializeOutput(com.google.android.exoplayer2.extractor.ExtractorOutput r20, int r21) throws com.google.android.exoplayer2.ParserException {
            /*
                Method dump skipped, instructions count: 1668
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.Track.initializeOutput(com.google.android.exoplayer2.extractor.ExtractorOutput, int):void");
        }

        @RequiresNonNull({Constants.ELEMNAME_OUTPUT_STRING})
        public void outputPendingSampleMetadata() {
            TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.outputPendingSampleMetadata(this.output, this.cryptoData);
            }
        }

        public void reset() {
            TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.reset();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor$b */
    /* loaded from: classes5.dex */
    public final class C4739b implements EbmlProcessor {
        public C4739b() {
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void binaryElement(int i, int i2, ExtractorInput extractorInput) throws IOException {
            MatroskaExtractor.this.binaryElement(i, i2, extractorInput);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void endMasterElement(int i) throws ParserException {
            MatroskaExtractor.this.endMasterElement(i);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void floatElement(int i, double d) throws ParserException {
            MatroskaExtractor.this.floatElement(i, d);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public int getElementType(int i) {
            return MatroskaExtractor.this.getElementType(i);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void integerElement(int i, long j) throws ParserException {
            MatroskaExtractor.this.integerElement(i, j);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public boolean isLevel1Element(int i) {
            return MatroskaExtractor.this.isLevel1Element(i);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void startMasterElement(int i, long j, long j2) throws ParserException {
            MatroskaExtractor.this.startMasterElement(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.extractor.mkv.EbmlProcessor
        public void stringElement(int i, String str) throws ParserException {
            MatroskaExtractor.this.stringElement(i, str);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        f23801i3 = Collections.unmodifiableMap(hashMap);
    }

    public MatroskaExtractor() {
        this(0);
    }

    /* renamed from: j */
    public static int[] m18880j(@Nullable int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    /* renamed from: l */
    public static byte[] m18881l(long j, String str, long j2) {
        Assertions.checkArgument(j != C4649C.TIME_UNSET);
        int i = (int) (j / 3600000000L);
        long j3 = j - ((i * 3600) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - ((i2 * 60) * 1000000);
        int i3 = (int) (j4 / 1000000);
        return Util.getUtf8Bytes(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2))));
    }

    /* renamed from: m */
    public static boolean m18882m(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2095576542:
                if (str.equals(f23817o0)) {
                    c = 0;
                    break;
                }
                break;
            case -2095575984:
                if (str.equals(f23811m0)) {
                    c = 1;
                    break;
                }
                break;
            case -1985379776:
                if (str.equals(f23704F0)) {
                    c = 2;
                    break;
                }
                break;
            case -1784763192:
                if (str.equals(f23689A0)) {
                    c = 3;
                    break;
                }
                break;
            case -1730367663:
                if (str.equals(f23832t0)) {
                    c = 4;
                    break;
                }
                break;
            case -1482641358:
                if (str.equals(f23841w0)) {
                    c = 5;
                    break;
                }
                break;
            case -1482641357:
                if (str.equals(f23844x0)) {
                    c = 6;
                    break;
                }
                break;
            case -1373388978:
                if (str.equals(f23826r0)) {
                    c = 7;
                    break;
                }
                break;
            case -933872740:
                if (str.equals(f23731O0)) {
                    c = '\b';
                    break;
                }
                break;
            case -538363189:
                if (str.equals(f23814n0)) {
                    c = '\t';
                    break;
                }
                break;
            case -538363109:
                if (str.equals(f23820p0)) {
                    c = '\n';
                    break;
                }
                break;
            case -425012669:
                if (str.equals(f23725M0)) {
                    c = 11;
                    break;
                }
                break;
            case -356037306:
                if (str.equals(f23698D0)) {
                    c = '\f';
                    break;
                }
                break;
            case 62923557:
                if (str.equals(f23838v0)) {
                    c = '\r';
                    break;
                }
                break;
            case 62923603:
                if (str.equals(f23847y0)) {
                    c = 14;
                    break;
                }
                break;
            case 62927045:
                if (str.equals(f23692B0)) {
                    c = 15;
                    break;
                }
                break;
            case 82318131:
                if (str.equals(f23805k0)) {
                    c = 16;
                    break;
                }
                break;
            case 82338133:
                if (str.equals(f23798i0)) {
                    c = 17;
                    break;
                }
                break;
            case 82338134:
                if (str.equals(f23802j0)) {
                    c = 18;
                    break;
                }
                break;
            case 99146302:
                if (str.equals(f23728N0)) {
                    c = 19;
                    break;
                }
                break;
            case 444813526:
                if (str.equals(f23829s0)) {
                    c = 20;
                    break;
                }
                break;
            case 542569478:
                if (str.equals(f23695C0)) {
                    c = 21;
                    break;
                }
                break;
            case 635596514:
                if (str.equals(f23713I0)) {
                    c = 22;
                    break;
                }
                break;
            case 725948237:
                if (str.equals(f23710H0)) {
                    c = 23;
                    break;
                }
                break;
            case 725957860:
                if (str.equals(f23707G0)) {
                    c = 24;
                    break;
                }
                break;
            case 738597099:
                if (str.equals(f23719K0)) {
                    c = 25;
                    break;
                }
                break;
            case 855502857:
                if (str.equals(f23823q0)) {
                    c = 26;
                    break;
                }
                break;
            case 1045209816:
                if (str.equals(f23722L0)) {
                    c = 27;
                    break;
                }
                break;
            case 1422270023:
                if (str.equals(f23716J0)) {
                    c = rve.f83545n;
                    break;
                }
                break;
            case 1809237540:
                if (str.equals(f23808l0)) {
                    c = rve.f83546o;
                    break;
                }
                break;
            case 1950749482:
                if (str.equals(f23850z0)) {
                    c = rve.f83547p;
                    break;
                }
                break;
            case 1950789798:
                if (str.equals(f23701E0)) {
                    c = XmlEscapers.f35498b;
                    break;
                }
                break;
            case 1951062397:
                if (str.equals(f23835u0)) {
                    c = ' ';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case ' ':
                return true;
            default:
                return false;
        }
    }

    /* renamed from: n */
    public static /* synthetic */ Extractor[] m18883n() {
        return new Extractor[]{new MatroskaExtractor()};
    }

    /* renamed from: s */
    public static void m18884s(String str, long j, byte[] bArr) {
        byte[] m18881l;
        int i;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 738597099:
                if (str.equals(f23719K0)) {
                    c = 0;
                    break;
                }
                break;
            case 1045209816:
                if (str.equals(f23722L0)) {
                    c = 1;
                    break;
                }
                break;
            case 1422270023:
                if (str.equals(f23716J0)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                m18881l = m18881l(j, f23766Z2, 10000L);
                i = 21;
                break;
            case 1:
                m18881l = m18881l(j, f23781d3, 1000L);
                i = 25;
                break;
            case 2:
                m18881l = m18881l(j, f23751U2, 1000L);
                i = 19;
                break;
            default:
                throw new IllegalArgumentException();
        }
        System.arraycopy(m18881l, 0, bArr, i, m18881l.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x0239, code lost:
    
        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("EBML lacing sample size out of range.", null);
     */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void binaryElement(int r23, int r24, com.google.android.exoplayer2.extractor.ExtractorInput r25) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 759
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.binaryElement(int, int, com.google.android.exoplayer2.extractor.ExtractorInput):void");
    }

    @EnsuresNonNull({"cueTimesUs", "cueClusterPositions"})
    /* renamed from: e */
    public final void m18885e(int i) throws ParserException {
        if (this.f23855C == null || this.f23856D == null) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Element ");
            sb.append(i);
            sb.append(" must be in a Cues");
            throw ParserException.createForMalformedContainer(sb.toString(), null);
        }
    }

    @CallSuper
    public void endMasterElement(int i) throws ParserException {
        m18887g();
        if (i == 160) {
            if (this.f23859G != 2) {
                return;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f23863K; i3++) {
                i2 += this.f23864L[i3];
            }
            Track track = this.f23882c.get(this.f23865M);
            track.m18906e();
            for (int i4 = 0; i4 < this.f23863K; i4++) {
                long j = ((track.defaultSampleDurationNs * i4) / 1000) + this.f23860H;
                int i5 = this.f23867O;
                if (i4 == 0 && !this.f23869Q) {
                    i5 |= 1;
                }
                int i6 = this.f23864L[i4];
                i2 -= i6;
                m18889i(track, j, i5, i6, i2);
            }
            this.f23859G = 0;
            return;
        }
        if (i == 174) {
            Track track2 = (Track) Assertions.checkStateNotNull(this.f23900u);
            String str = track2.codecId;
            if (str == null) {
                throw ParserException.createForMalformedContainer("CodecId is missing in TrackEntry element", null);
            }
            if (m18882m(str)) {
                track2.initializeOutput(this.f23880a0, track2.number);
                this.f23882c.put(track2.number, track2);
            }
            this.f23900u = null;
            return;
        }
        if (i == 19899) {
            int i7 = this.f23902w;
            if (i7 != -1) {
                long j2 = this.f23903x;
                if (j2 != -1) {
                    if (i7 == 475249515) {
                        this.f23905z = j2;
                        return;
                    }
                    return;
                }
            }
            throw ParserException.createForMalformedContainer("Mandatory element SeekID or SeekPosition not found", null);
        }
        if (i == 25152) {
            m18886f(i);
            Track track3 = this.f23900u;
            if (track3.hasContentEncryption) {
                if (track3.cryptoData == null) {
                    throw ParserException.createForMalformedContainer("Encrypted Track found but ContentEncKeyID was not found", null);
                }
                track3.drmInitData = new DrmInitData(new DrmInitData.SchemeData(C4649C.UUID_NIL, MimeTypes.VIDEO_WEBM, this.f23900u.cryptoData.encryptionKey));
                return;
            }
            return;
        }
        if (i == 28032) {
            m18886f(i);
            Track track4 = this.f23900u;
            if (track4.hasContentEncryption && track4.sampleStrippedBytes != null) {
                throw ParserException.createForMalformedContainer("Combining encryption and compression is not supported", null);
            }
            return;
        }
        if (i == 357149030) {
            if (this.f23897r == C4649C.TIME_UNSET) {
                this.f23897r = 1000000L;
            }
            long j3 = this.f23898s;
            if (j3 != C4649C.TIME_UNSET) {
                this.f23899t = m18894r(j3);
                return;
            }
            return;
        }
        if (i == 374648427) {
            if (this.f23882c.size() == 0) {
                throw ParserException.createForMalformedContainer("No valid tracks were found", null);
            }
            this.f23880a0.endTracks();
        } else {
            if (i != 475249515) {
                return;
            }
            if (!this.f23901v) {
                this.f23880a0.seekMap(m18888h(this.f23855C, this.f23856D));
                this.f23901v = true;
            }
            this.f23855C = null;
            this.f23856D = null;
        }
    }

    @EnsuresNonNull({"currentTrack"})
    /* renamed from: f */
    public final void m18886f(int i) throws ParserException {
        if (this.f23900u != null) {
            return;
        }
        StringBuilder sb = new StringBuilder(43);
        sb.append("Element ");
        sb.append(i);
        sb.append(" must be in a TrackEntry");
        throw ParserException.createForMalformedContainer(sb.toString(), null);
    }

    @CallSuper
    public void floatElement(int i, double d) throws ParserException {
        if (i == 181) {
            getCurrentTrack(i).sampleRate = (int) d;
            return;
        }
        if (i == 17545) {
            this.f23898s = (long) d;
            return;
        }
        switch (i) {
            case f23846x2 /* 21969 */:
                getCurrentTrack(i).primaryRChromaticityX = (float) d;
                return;
            case f23849y2 /* 21970 */:
                getCurrentTrack(i).primaryRChromaticityY = (float) d;
                return;
            case f23852z2 /* 21971 */:
                getCurrentTrack(i).primaryGChromaticityX = (float) d;
                return;
            case f23691A2 /* 21972 */:
                getCurrentTrack(i).primaryGChromaticityY = (float) d;
                return;
            case f23694B2 /* 21973 */:
                getCurrentTrack(i).primaryBChromaticityX = (float) d;
                return;
            case f23697C2 /* 21974 */:
                getCurrentTrack(i).primaryBChromaticityY = (float) d;
                return;
            case f23700D2 /* 21975 */:
                getCurrentTrack(i).whitePointChromaticityX = (float) d;
                return;
            case f23703E2 /* 21976 */:
                getCurrentTrack(i).whitePointChromaticityY = (float) d;
                return;
            case f23706F2 /* 21977 */:
                getCurrentTrack(i).maxMasteringLuminance = (float) d;
                return;
            case f23709G2 /* 21978 */:
                getCurrentTrack(i).minMasteringLuminance = (float) d;
                return;
            default:
                switch (i) {
                    case f23813m2 /* 30323 */:
                        getCurrentTrack(i).projectionPoseYaw = (float) d;
                        return;
                    case f23816n2 /* 30324 */:
                        getCurrentTrack(i).projectionPosePitch = (float) d;
                        return;
                    case f23819o2 /* 30325 */:
                        getCurrentTrack(i).projectionPoseRoll = (float) d;
                        return;
                    default:
                        return;
                }
        }
    }

    @EnsuresNonNull({"extractorOutput"})
    /* renamed from: g */
    public final void m18887g() {
        Assertions.checkStateNotNull(this.f23880a0);
    }

    public Track getCurrentTrack(int i) throws ParserException {
        m18886f(i);
        return this.f23900u;
    }

    @CallSuper
    public int getElementType(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 238:
            case 241:
            case 251:
            case f23690A1 /* 16871 */:
            case f23756W1 /* 16980 */:
            case f23755W0 /* 17029 */:
            case f23749U0 /* 17143 */:
            case f23765Z1 /* 18401 */:
            case f23776c2 /* 18408 */:
            case f23747T1 /* 20529 */:
            case f23750U1 /* 20530 */:
            case f23775c1 /* 21420 */:
            case f23822p2 /* 21432 */:
            case f23720K1 /* 21680 */:
            case f23726M1 /* 21682 */:
            case f23723L1 /* 21690 */:
            case f23842w1 /* 21930 */:
            case f23828r2 /* 21945 */:
            case f23831s2 /* 21946 */:
            case f23834t2 /* 21947 */:
            case f23837u2 /* 21948 */:
            case f23840v2 /* 21949 */:
            case f23848y1 /* 21998 */:
            case f23705F1 /* 22186 */:
            case f23708G1 /* 22203 */:
            case f23735P1 /* 25188 */:
            case f23807k2 /* 30321 */:
            case f23845x1 /* 2352003 */:
            case f23783e1 /* 2807729 */:
                return 2;
            case 134:
            case 17026:
            case f23696C1 /* 21358 */:
            case f23800i2 /* 2274716 */:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case f23851z1 /* 16868 */:
            case f23772b2 /* 18407 */:
            case f23767a1 /* 19899 */:
            case f23753V1 /* 20532 */:
            case f23762Y1 /* 20533 */:
            case f23825q2 /* 21936 */:
            case f23843w2 /* 21968 */:
            case f23744S1 /* 25152 */:
            case f23741R1 /* 28032 */:
            case f23812m1 /* 30113 */:
            case f23804j2 /* 30320 */:
            case f23764Z0 /* 290298740 */:
            case 357149030:
            case f23827r1 /* 374648427 */:
            case f23758X0 /* 408125543 */:
            case 440786851:
            case f23780d2 /* 475249515 */:
            case f23791g1 /* 524531317 */:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case f23759X1 /* 16981 */:
            case f23768a2 /* 18402 */:
            case f23771b1 /* 21419 */:
            case f23702E1 /* 25506 */:
            case f23810l2 /* 30322 */:
                return 4;
            case 181:
            case f23787f1 /* 17545 */:
            case f23846x2 /* 21969 */:
            case f23849y2 /* 21970 */:
            case f23852z2 /* 21971 */:
            case f23691A2 /* 21972 */:
            case f23694B2 /* 21973 */:
            case f23697C2 /* 21974 */:
            case f23700D2 /* 21975 */:
            case f23703E2 /* 21976 */:
            case f23706F2 /* 21977 */:
            case f23709G2 /* 21978 */:
            case f23813m2 /* 30323 */:
            case f23816n2 /* 30324 */:
            case f23819o2 /* 30325 */:
                return 5;
            default:
                return 0;
        }
    }

    /* renamed from: h */
    public final SeekMap m18888h(@Nullable LongArray longArray, @Nullable LongArray longArray2) {
        int i;
        if (this.f23896q == -1 || this.f23899t == C4649C.TIME_UNSET || longArray == null || longArray.size() == 0 || longArray2 == null || longArray2.size() != longArray.size()) {
            return new SeekMap.Unseekable(this.f23899t);
        }
        int size = longArray.size();
        int[] iArr = new int[size];
        long[] jArr = new long[size];
        long[] jArr2 = new long[size];
        long[] jArr3 = new long[size];
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            jArr3[i3] = longArray.get(i3);
            jArr[i3] = this.f23896q + longArray2.get(i3);
        }
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            int i4 = i2 + 1;
            iArr[i2] = (int) (jArr[i4] - jArr[i2]);
            jArr2[i2] = jArr3[i4] - jArr3[i2];
            i2 = i4;
        }
        iArr[i] = (int) ((this.f23896q + this.f23895p) - jArr[i]);
        long j = this.f23899t - jArr3[i];
        jArr2[i] = j;
        if (j <= 0) {
            StringBuilder sb = new StringBuilder(72);
            sb.append("Discarding last cue point with unexpected duration: ");
            sb.append(j);
            Log.m21493w(f23770b0, sb.toString());
            iArr = Arrays.copyOf(iArr, i);
            jArr = Arrays.copyOf(jArr, i);
            jArr2 = Arrays.copyOf(jArr2, i);
            jArr3 = Arrays.copyOf(jArr3, i);
        }
        return new ChunkIndex(iArr, jArr, jArr2, jArr3);
    }

    public void handleBlockAddIDExtraData(Track track, ExtractorInput extractorInput, int i) throws IOException {
        if (track.f23910a != 1685485123 && track.f23910a != 1685480259) {
            extractorInput.skipFully(i);
            return;
        }
        byte[] bArr = new byte[i];
        track.dolbyVisionConfigBytes = bArr;
        extractorInput.readFully(bArr, 0, i);
    }

    public void handleBlockAdditionalData(Track track, int i, ExtractorInput extractorInput, int i2) throws IOException {
        if (i != 4 || !f23802j0.equals(track.codecId)) {
            extractorInput.skipFully(i2);
        } else {
            this.f23893n.reset(i2);
            extractorInput.readFully(this.f23893n.getData(), 0, i2);
        }
    }

    @RequiresNonNull({"#1.output"})
    /* renamed from: i */
    public final void m18889i(Track track, long j, int i, int i2, int i3) {
        TrueHdSampleRechunker trueHdSampleRechunker = track.trueHdSampleRechunker;
        if (trueHdSampleRechunker != null) {
            trueHdSampleRechunker.sampleMetadata(track.output, j, i, i2, i3, track.cryptoData);
        } else {
            if (f23716J0.equals(track.codecId) || f23719K0.equals(track.codecId) || f23722L0.equals(track.codecId)) {
                if (this.f23863K > 1) {
                    Log.m21493w(f23770b0, "Skipping subtitle sample in laced block.");
                } else {
                    long j2 = this.f23861I;
                    if (j2 == C4649C.TIME_UNSET) {
                        Log.m21493w(f23770b0, "Skipping subtitle sample with no duration.");
                    } else {
                        m18884s(track.codecId, j2, this.f23890k.getData());
                        int position = this.f23890k.getPosition();
                        while (true) {
                            if (position >= this.f23890k.limit()) {
                                break;
                            }
                            if (this.f23890k.getData()[position] == 0) {
                                this.f23890k.setLimit(position);
                                break;
                            }
                            position++;
                        }
                        TrackOutput trackOutput = track.output;
                        ParsableByteArray parsableByteArray = this.f23890k;
                        trackOutput.sampleData(parsableByteArray, parsableByteArray.limit());
                        i2 += this.f23890k.limit();
                    }
                }
            }
            if ((268435456 & i) != 0) {
                if (this.f23863K > 1) {
                    i &= -268435457;
                } else {
                    int limit = this.f23893n.limit();
                    track.output.sampleData(this.f23893n, limit, 2);
                    i2 += limit;
                }
            }
            track.output.sampleMetadata(j, i, i2, i3, track.cryptoData);
        }
        this.f23858F = true;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public final void init(ExtractorOutput extractorOutput) {
        this.f23880a0 = extractorOutput;
    }

    @CallSuper
    public void integerElement(int i, long j) throws ParserException {
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder(55);
            sb.append("ContentEncodingOrder ");
            sb.append(j);
            sb.append(" not supported");
            throw ParserException.createForMalformedContainer(sb.toString(), null);
        }
        if (i == 20530) {
            if (j == 1) {
                return;
            }
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("ContentEncodingScope ");
            sb2.append(j);
            sb2.append(" not supported");
            throw ParserException.createForMalformedContainer(sb2.toString(), null);
        }
        switch (i) {
            case 131:
                getCurrentTrack(i).type = (int) j;
                return;
            case 136:
                getCurrentTrack(i).flagDefault = j == 1;
                return;
            case 155:
                this.f23861I = m18894r(j);
                return;
            case 159:
                getCurrentTrack(i).channelCount = (int) j;
                return;
            case 176:
                getCurrentTrack(i).width = (int) j;
                return;
            case 179:
                m18885e(i);
                this.f23855C.add(m18894r(j));
                return;
            case 186:
                getCurrentTrack(i).height = (int) j;
                return;
            case 215:
                getCurrentTrack(i).number = (int) j;
                return;
            case 231:
                this.f23854B = m18894r(j);
                return;
            case 238:
                this.f23868P = (int) j;
                return;
            case 241:
                if (this.f23857E) {
                    return;
                }
                m18885e(i);
                this.f23856D.add(j);
                this.f23857E = true;
                return;
            case 251:
                this.f23869Q = true;
                return;
            case f23690A1 /* 16871 */:
                getCurrentTrack(i).f23910a = (int) j;
                return;
            case f23756W1 /* 16980 */:
                if (j == 3) {
                    return;
                }
                StringBuilder sb3 = new StringBuilder(50);
                sb3.append("ContentCompAlgo ");
                sb3.append(j);
                sb3.append(" not supported");
                throw ParserException.createForMalformedContainer(sb3.toString(), null);
            case f23755W0 /* 17029 */:
                if (j < 1 || j > 2) {
                    StringBuilder sb4 = new StringBuilder(53);
                    sb4.append("DocTypeReadVersion ");
                    sb4.append(j);
                    sb4.append(" not supported");
                    throw ParserException.createForMalformedContainer(sb4.toString(), null);
                }
                return;
            case f23749U0 /* 17143 */:
                if (j == 1) {
                    return;
                }
                StringBuilder sb5 = new StringBuilder(50);
                sb5.append("EBMLReadVersion ");
                sb5.append(j);
                sb5.append(" not supported");
                throw ParserException.createForMalformedContainer(sb5.toString(), null);
            case f23765Z1 /* 18401 */:
                if (j == 5) {
                    return;
                }
                StringBuilder sb6 = new StringBuilder(49);
                sb6.append("ContentEncAlgo ");
                sb6.append(j);
                sb6.append(" not supported");
                throw ParserException.createForMalformedContainer(sb6.toString(), null);
            case f23776c2 /* 18408 */:
                if (j == 1) {
                    return;
                }
                StringBuilder sb7 = new StringBuilder(56);
                sb7.append("AESSettingsCipherMode ");
                sb7.append(j);
                sb7.append(" not supported");
                throw ParserException.createForMalformedContainer(sb7.toString(), null);
            case f23775c1 /* 21420 */:
                this.f23903x = j + this.f23896q;
                return;
            case f23822p2 /* 21432 */:
                int i2 = (int) j;
                m18886f(i);
                if (i2 == 0) {
                    this.f23900u.stereoMode = 0;
                    return;
                }
                if (i2 == 1) {
                    this.f23900u.stereoMode = 2;
                    return;
                } else if (i2 == 3) {
                    this.f23900u.stereoMode = 1;
                    return;
                } else {
                    if (i2 != 15) {
                        return;
                    }
                    this.f23900u.stereoMode = 3;
                    return;
                }
            case f23720K1 /* 21680 */:
                getCurrentTrack(i).displayWidth = (int) j;
                return;
            case f23726M1 /* 21682 */:
                getCurrentTrack(i).displayUnit = (int) j;
                return;
            case f23723L1 /* 21690 */:
                getCurrentTrack(i).displayHeight = (int) j;
                return;
            case f23842w1 /* 21930 */:
                getCurrentTrack(i).flagForced = j == 1;
                return;
            case f23848y1 /* 21998 */:
                getCurrentTrack(i).maxBlockAdditionId = (int) j;
                return;
            case f23705F1 /* 22186 */:
                getCurrentTrack(i).codecDelayNs = j;
                return;
            case f23708G1 /* 22203 */:
                getCurrentTrack(i).seekPreRollNs = j;
                return;
            case f23735P1 /* 25188 */:
                getCurrentTrack(i).audioBitDepth = (int) j;
                return;
            case f23807k2 /* 30321 */:
                m18886f(i);
                int i3 = (int) j;
                if (i3 == 0) {
                    this.f23900u.projectionType = 0;
                    return;
                }
                if (i3 == 1) {
                    this.f23900u.projectionType = 1;
                    return;
                } else if (i3 == 2) {
                    this.f23900u.projectionType = 2;
                    return;
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    this.f23900u.projectionType = 3;
                    return;
                }
            case f23845x1 /* 2352003 */:
                getCurrentTrack(i).defaultSampleDurationNs = (int) j;
                return;
            case f23783e1 /* 2807729 */:
                this.f23897r = j;
                return;
            default:
                switch (i) {
                    case f23828r2 /* 21945 */:
                        m18886f(i);
                        int i4 = (int) j;
                        if (i4 == 1) {
                            this.f23900u.colorRange = 2;
                            return;
                        } else {
                            if (i4 != 2) {
                                return;
                            }
                            this.f23900u.colorRange = 1;
                            return;
                        }
                    case f23831s2 /* 21946 */:
                        m18886f(i);
                        int isoTransferCharacteristicsToColorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer((int) j);
                        if (isoTransferCharacteristicsToColorTransfer != -1) {
                            this.f23900u.colorTransfer = isoTransferCharacteristicsToColorTransfer;
                            return;
                        }
                        return;
                    case f23834t2 /* 21947 */:
                        m18886f(i);
                        this.f23900u.hasColorInfo = true;
                        int isoColorPrimariesToColorSpace = ColorInfo.isoColorPrimariesToColorSpace((int) j);
                        if (isoColorPrimariesToColorSpace != -1) {
                            this.f23900u.colorSpace = isoColorPrimariesToColorSpace;
                            return;
                        }
                        return;
                    case f23837u2 /* 21948 */:
                        getCurrentTrack(i).maxContentLuminance = (int) j;
                        return;
                    case f23840v2 /* 21949 */:
                        getCurrentTrack(i).maxFrameAverageLuminance = (int) j;
                        return;
                    default:
                        return;
                }
        }
    }

    @CallSuper
    public boolean isLevel1Element(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    /* renamed from: k */
    public final int m18890k() {
        int i = this.f23871S;
        m18893q();
        return i;
    }

    /* renamed from: o */
    public final boolean m18891o(PositionHolder positionHolder, long j) {
        if (this.f23904y) {
            this.f23853A = j;
            positionHolder.position = this.f23905z;
            this.f23904y = false;
            return true;
        }
        if (this.f23901v) {
            long j2 = this.f23853A;
            if (j2 != -1) {
                positionHolder.position = j2;
                this.f23853A = -1L;
                return true;
            }
        }
        return false;
    }

    /* renamed from: p */
    public final void m18892p(ExtractorInput extractorInput, int i) throws IOException {
        if (this.f23886g.limit() >= i) {
            return;
        }
        if (this.f23886g.capacity() < i) {
            ParsableByteArray parsableByteArray = this.f23886g;
            parsableByteArray.ensureCapacity(Math.max(parsableByteArray.capacity() * 2, i));
        }
        extractorInput.readFully(this.f23886g.getData(), this.f23886g.limit(), i - this.f23886g.limit());
        this.f23886g.setLimit(i);
    }

    /* renamed from: q */
    public final void m18893q() {
        this.f23870R = 0;
        this.f23871S = 0;
        this.f23872T = 0;
        this.f23873U = false;
        this.f23874V = false;
        this.f23875W = false;
        this.f23876X = 0;
        this.f23877Y = (byte) 0;
        this.f23878Z = false;
        this.f23889j.reset(0);
    }

    /* renamed from: r */
    public final long m18894r(long j) throws ParserException {
        long j2 = this.f23897r;
        if (j2 != C4649C.TIME_UNSET) {
            return Util.scaleLargeTimestamp(j, j2, 1000L);
        }
        throw ParserException.createForMalformedContainer("Can't scale timecode prior to timecodeScale being set.", null);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public final int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        this.f23858F = false;
        boolean z = true;
        while (z && !this.f23858F) {
            z = this.f23879a.read(extractorInput);
            if (z && m18891o(positionHolder, extractorInput.getPosition())) {
                return 1;
            }
        }
        if (z) {
            return 0;
        }
        for (int i = 0; i < this.f23882c.size(); i++) {
            Track valueAt = this.f23882c.valueAt(i);
            valueAt.m18906e();
            valueAt.outputPendingSampleMetadata();
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public final void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    @CallSuper
    public void seek(long j, long j2) {
        this.f23854B = C4649C.TIME_UNSET;
        this.f23859G = 0;
        this.f23879a.reset();
        this.f23881b.m55541e();
        m18893q();
        for (int i = 0; i < this.f23882c.size(); i++) {
            this.f23882c.valueAt(i).reset();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public final boolean sniff(ExtractorInput extractorInput) throws IOException {
        return new dvm().m53845b(extractorInput);
    }

    @CallSuper
    public void startMasterElement(int i, long j, long j2) throws ParserException {
        m18887g();
        if (i == 160) {
            this.f23869Q = false;
            return;
        }
        if (i == 174) {
            this.f23900u = new Track();
            return;
        }
        if (i == 187) {
            this.f23857E = false;
            return;
        }
        if (i == 19899) {
            this.f23902w = -1;
            this.f23903x = -1L;
            return;
        }
        if (i == 20533) {
            getCurrentTrack(i).hasContentEncryption = true;
            return;
        }
        if (i == 21968) {
            getCurrentTrack(i).hasColorInfo = true;
            return;
        }
        if (i == 408125543) {
            long j3 = this.f23896q;
            if (j3 != -1 && j3 != j) {
                throw ParserException.createForMalformedContainer("Multiple Segment elements not supported", null);
            }
            this.f23896q = j;
            this.f23895p = j2;
            return;
        }
        if (i == 475249515) {
            this.f23855C = new LongArray();
            this.f23856D = new LongArray();
        } else if (i == 524531317 && !this.f23901v) {
            if (this.f23883d && this.f23905z != -1) {
                this.f23904y = true;
            } else {
                this.f23880a0.seekMap(new SeekMap.Unseekable(this.f23899t));
                this.f23901v = true;
            }
        }
    }

    @CallSuper
    public void stringElement(int i, String str) throws ParserException {
        if (i == 134) {
            getCurrentTrack(i).codecId = str;
            return;
        }
        if (i != 17026) {
            if (i == 21358) {
                getCurrentTrack(i).name = str;
                return;
            } else {
                if (i != 2274716) {
                    return;
                }
                getCurrentTrack(i).f23911b = str;
                return;
            }
        }
        if (f23794h0.equals(str) || f23790g0.equals(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
        sb.append("DocType ");
        sb.append(str);
        sb.append(" not supported");
        throw ParserException.createForMalformedContainer(sb.toString(), null);
    }

    @RequiresNonNull({"#2.output"})
    /* renamed from: t */
    public final int m18895t(ExtractorInput extractorInput, Track track, int i) throws IOException {
        int i2;
        if (f23716J0.equals(track.codecId)) {
            m18896u(extractorInput, f23742R2, i);
            return m18890k();
        }
        if (f23719K0.equals(track.codecId)) {
            m18896u(extractorInput, f23757W2, i);
            return m18890k();
        }
        if (f23722L0.equals(track.codecId)) {
            m18896u(extractorInput, f23769a3, i);
            return m18890k();
        }
        TrackOutput trackOutput = track.output;
        if (!this.f23873U) {
            if (track.hasContentEncryption) {
                this.f23867O &= -1073741825;
                if (!this.f23874V) {
                    extractorInput.readFully(this.f23886g.getData(), 0, 1);
                    this.f23870R++;
                    if ((this.f23886g.getData()[0] & 128) == 128) {
                        throw ParserException.createForMalformedContainer("Extension bit is set in signal byte", null);
                    }
                    this.f23877Y = this.f23886g.getData()[0];
                    this.f23874V = true;
                }
                byte b = this.f23877Y;
                if ((b & 1) == 1) {
                    boolean z = (b & 2) == 2;
                    this.f23867O |= 1073741824;
                    if (!this.f23878Z) {
                        extractorInput.readFully(this.f23891l.getData(), 0, 8);
                        this.f23870R += 8;
                        this.f23878Z = true;
                        this.f23886g.getData()[0] = (byte) ((z ? 128 : 0) | 8);
                        this.f23886g.setPosition(0);
                        trackOutput.sampleData(this.f23886g, 1, 1);
                        this.f23871S++;
                        this.f23891l.setPosition(0);
                        trackOutput.sampleData(this.f23891l, 8, 1);
                        this.f23871S += 8;
                    }
                    if (z) {
                        if (!this.f23875W) {
                            extractorInput.readFully(this.f23886g.getData(), 0, 1);
                            this.f23870R++;
                            this.f23886g.setPosition(0);
                            this.f23876X = this.f23886g.readUnsignedByte();
                            this.f23875W = true;
                        }
                        int i3 = this.f23876X * 4;
                        this.f23886g.reset(i3);
                        extractorInput.readFully(this.f23886g.getData(), 0, i3);
                        this.f23870R += i3;
                        short s = (short) ((this.f23876X / 2) + 1);
                        int i4 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.f23894o;
                        if (byteBuffer == null || byteBuffer.capacity() < i4) {
                            this.f23894o = ByteBuffer.allocate(i4);
                        }
                        this.f23894o.position(0);
                        this.f23894o.putShort(s);
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            i2 = this.f23876X;
                            if (i5 >= i2) {
                                break;
                            }
                            int readUnsignedIntToInt = this.f23886g.readUnsignedIntToInt();
                            if (i5 % 2 == 0) {
                                this.f23894o.putShort((short) (readUnsignedIntToInt - i6));
                            } else {
                                this.f23894o.putInt(readUnsignedIntToInt - i6);
                            }
                            i5++;
                            i6 = readUnsignedIntToInt;
                        }
                        int i7 = (i - this.f23870R) - i6;
                        if (i2 % 2 == 1) {
                            this.f23894o.putInt(i7);
                        } else {
                            this.f23894o.putShort((short) i7);
                            this.f23894o.putInt(0);
                        }
                        this.f23892m.reset(this.f23894o.array(), i4);
                        trackOutput.sampleData(this.f23892m, i4, 1);
                        this.f23871S += i4;
                    }
                }
            } else {
                byte[] bArr = track.sampleStrippedBytes;
                if (bArr != null) {
                    this.f23889j.reset(bArr, bArr.length);
                }
            }
            if (track.maxBlockAdditionId > 0) {
                this.f23867O |= 268435456;
                this.f23893n.reset(0);
                this.f23886g.reset(4);
                this.f23886g.getData()[0] = (byte) ((i >> 24) & 255);
                this.f23886g.getData()[1] = (byte) ((i >> 16) & 255);
                this.f23886g.getData()[2] = (byte) ((i >> 8) & 255);
                this.f23886g.getData()[3] = (byte) (i & 255);
                trackOutput.sampleData(this.f23886g, 4, 2);
                this.f23871S += 4;
            }
            this.f23873U = true;
        }
        int limit = i + this.f23889j.limit();
        if (!f23820p0.equals(track.codecId) && !f23823q0.equals(track.codecId)) {
            if (track.trueHdSampleRechunker != null) {
                Assertions.checkState(this.f23889j.limit() == 0);
                track.trueHdSampleRechunker.startSample(extractorInput);
            }
            while (true) {
                int i8 = this.f23870R;
                if (i8 >= limit) {
                    break;
                }
                int m18897v = m18897v(extractorInput, trackOutput, limit - i8);
                this.f23870R += m18897v;
                this.f23871S += m18897v;
            }
        } else {
            byte[] data = this.f23885f.getData();
            data[0] = 0;
            data[1] = 0;
            data[2] = 0;
            int i9 = track.nalUnitLengthFieldLength;
            int i10 = 4 - i9;
            while (this.f23870R < limit) {
                int i11 = this.f23872T;
                if (i11 == 0) {
                    m18898w(extractorInput, data, i10, i9);
                    this.f23870R += i9;
                    this.f23885f.setPosition(0);
                    this.f23872T = this.f23885f.readUnsignedIntToInt();
                    this.f23884e.setPosition(0);
                    trackOutput.sampleData(this.f23884e, 4);
                    this.f23871S += 4;
                } else {
                    int m18897v2 = m18897v(extractorInput, trackOutput, i11);
                    this.f23870R += m18897v2;
                    this.f23871S += m18897v2;
                    this.f23872T -= m18897v2;
                }
            }
        }
        if (f23832t0.equals(track.codecId)) {
            this.f23887h.setPosition(0);
            trackOutput.sampleData(this.f23887h, 4);
            this.f23871S += 4;
        }
        return m18890k();
    }

    /* renamed from: u */
    public final void m18896u(ExtractorInput extractorInput, byte[] bArr, int i) throws IOException {
        int length = bArr.length + i;
        if (this.f23890k.capacity() < length) {
            this.f23890k.reset(Arrays.copyOf(bArr, length + i));
        } else {
            System.arraycopy(bArr, 0, this.f23890k.getData(), 0, bArr.length);
        }
        extractorInput.readFully(this.f23890k.getData(), bArr.length, i);
        this.f23890k.setPosition(0);
        this.f23890k.setLimit(length);
    }

    /* renamed from: v */
    public final int m18897v(ExtractorInput extractorInput, TrackOutput trackOutput, int i) throws IOException {
        int bytesLeft = this.f23889j.bytesLeft();
        if (bytesLeft <= 0) {
            return trackOutput.sampleData((DataReader) extractorInput, i, false);
        }
        int min = Math.min(i, bytesLeft);
        trackOutput.sampleData(this.f23889j, min);
        return min;
    }

    /* renamed from: w */
    public final void m18898w(ExtractorInput extractorInput, byte[] bArr, int i, int i2) throws IOException {
        int min = Math.min(i2, this.f23889j.bytesLeft());
        extractorInput.readFully(bArr, i + min, i2 - min);
        if (min > 0) {
            this.f23889j.readBytes(bArr, i, min);
        }
    }

    public MatroskaExtractor(int i) {
        this(new hze(), i);
    }

    public MatroskaExtractor(mkf mkfVar, int i) {
        this.f23896q = -1L;
        this.f23897r = C4649C.TIME_UNSET;
        this.f23898s = C4649C.TIME_UNSET;
        this.f23899t = C4649C.TIME_UNSET;
        this.f23905z = -1L;
        this.f23853A = -1L;
        this.f23854B = C4649C.TIME_UNSET;
        this.f23879a = mkfVar;
        mkfVar.mo54653a(new C4739b());
        this.f23883d = (i & 1) == 0;
        this.f23881b = new m0o();
        this.f23882c = new SparseArray<>();
        this.f23886g = new ParsableByteArray(4);
        this.f23887h = new ParsableByteArray(ByteBuffer.allocate(4).putInt(-1).array());
        this.f23888i = new ParsableByteArray(4);
        this.f23884e = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.f23885f = new ParsableByteArray(4);
        this.f23889j = new ParsableByteArray();
        this.f23890k = new ParsableByteArray();
        this.f23891l = new ParsableByteArray(8);
        this.f23892m = new ParsableByteArray();
        this.f23893n = new ParsableByteArray();
        this.f23864L = new int[1];
    }
}
