package com.google.android.exoplayer2.mediacodec;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.CallSuper;
import androidx.annotation.CheckResult;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import com.alibaba.fastjson2.JSONB;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import com.google.android.exoplayer2.BaseRenderer;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.decoder.CryptoConfig;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.FrameworkCryptoConfig;
import com.google.android.exoplayer2.mediacodec.MediaCodecAdapter;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.text.cea.Cea608Decoder;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.TimedValueQueue;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.android.material.internal.ManufacturerUtils;
import com.sunia.HTREnginev2.C14204oo;
import com.sunia.HTREnginev2.C14522uv;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* loaded from: classes5.dex */
public abstract class MediaCodecRenderer extends BaseRenderer {

    /* renamed from: A1 */
    public static final int f24751A1 = 2;

    /* renamed from: B1 */
    public static final int f24752B1 = 0;

    /* renamed from: C1 */
    public static final int f24753C1 = 1;
    protected static final float CODEC_OPERATING_RATE_UNSET = -1.0f;

    /* renamed from: D1 */
    public static final int f24754D1 = 2;

    /* renamed from: E1 */
    public static final int f24755E1 = 0;

    /* renamed from: F1 */
    public static final int f24756F1 = 1;

    /* renamed from: G1 */
    public static final int f24757G1 = 2;

    /* renamed from: H1 */
    public static final int f24758H1 = 3;

    /* renamed from: I1 */
    public static final int f24759I1 = 0;

    /* renamed from: J1 */
    public static final int f24760J1 = 1;

    /* renamed from: K1 */
    public static final int f24761K1 = 2;

    /* renamed from: L1 */
    public static final byte[] f24762L1 = {0, 0, 1, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 66, -64, 11, ExifInterface.f7156F1, 37, JSONB.Constants.BC_CHAR, 0, 0, 1, 104, ExifInterface.f7150D1, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, ExifInterface.f7150D1, 113, 24, -96, 0, 47, -65, 28, TarConstants.LF_LINK, ExifInterface.f7264v1, Cea608Decoder.f26816Y, UTF8JsonGenerator.f21288h, 120};

    /* renamed from: M1 */
    public static final int f24763M1 = 32;

    /* renamed from: v1 */
    public static final String f24764v1 = "MediaCodecRenderer";

    /* renamed from: w1 */
    public static final long f24765w1 = 1000;

    /* renamed from: x1 */
    public static final int f24766x1 = 10;

    /* renamed from: y1 */
    public static final int f24767y1 = 0;

    /* renamed from: z1 */
    public static final int f24768z1 = 1;

    /* renamed from: A0 */
    public float f24769A0;

    /* renamed from: B0 */
    @Nullable
    public MediaCodecAdapter f24770B0;

    /* renamed from: C0 */
    @Nullable
    public Format f24771C0;

    /* renamed from: D0 */
    @Nullable
    public MediaFormat f24772D0;

    /* renamed from: E0 */
    public boolean f24773E0;

    /* renamed from: F0 */
    public float f24774F0;

    /* renamed from: G0 */
    @Nullable
    public ArrayDeque<MediaCodecInfo> f24775G0;

    /* renamed from: H0 */
    @Nullable
    public DecoderInitializationException f24776H0;

    /* renamed from: I0 */
    @Nullable
    public MediaCodecInfo f24777I0;

    /* renamed from: J */
    public final ArrayList<Long> f24778J;

    /* renamed from: J0 */
    public int f24779J0;

    /* renamed from: K0 */
    public boolean f24780K0;

    /* renamed from: L0 */
    public boolean f24781L0;

    /* renamed from: M0 */
    public boolean f24782M0;

    /* renamed from: N0 */
    public boolean f24783N0;

    /* renamed from: O */
    public final MediaCodec.BufferInfo f24784O;

    /* renamed from: O0 */
    public boolean f24785O0;

    /* renamed from: P0 */
    public boolean f24786P0;

    /* renamed from: Q */
    public final long[] f24787Q;

    /* renamed from: Q0 */
    public boolean f24788Q0;

    /* renamed from: R0 */
    public boolean f24789R0;

    /* renamed from: S0 */
    public boolean f24790S0;

    /* renamed from: T0 */
    public boolean f24791T0;

    /* renamed from: U0 */
    @Nullable
    public C14522uv f24792U0;

    /* renamed from: V0 */
    public long f24793V0;

    /* renamed from: W0 */
    public int f24794W0;

    /* renamed from: X0 */
    public int f24795X0;

    /* renamed from: Y0 */
    @Nullable
    public ByteBuffer f24796Y0;

    /* renamed from: Z */
    public final long[] f24797Z;

    /* renamed from: Z0 */
    public boolean f24798Z0;

    /* renamed from: a1 */
    public boolean f24799a1;

    /* renamed from: b1 */
    public boolean f24800b1;

    /* renamed from: c1 */
    public boolean f24801c1;

    /* renamed from: d1 */
    public boolean f24802d1;
    protected DecoderCounters decoderCounters;

    /* renamed from: e1 */
    public boolean f24803e1;

    /* renamed from: f1 */
    public int f24804f1;

    /* renamed from: g1 */
    public int f24805g1;

    /* renamed from: h1 */
    public int f24806h1;

    /* renamed from: i1 */
    public boolean f24807i1;

    /* renamed from: j1 */
    public boolean f24808j1;

    /* renamed from: k0 */
    public final long[] f24809k0;

    /* renamed from: k1 */
    public boolean f24810k1;

    /* renamed from: l1 */
    public long f24811l1;

    /* renamed from: m1 */
    public long f24812m1;

    /* renamed from: n1 */
    public boolean f24813n1;

    /* renamed from: o1 */
    public boolean f24814o1;

    /* renamed from: p1 */
    public boolean f24815p1;

    /* renamed from: q0 */
    @Nullable
    public Format f24816q0;

    /* renamed from: q1 */
    public boolean f24817q1;

    /* renamed from: r */
    public final MediaCodecAdapter.Factory f24818r;

    /* renamed from: r1 */
    @Nullable
    public ExoPlaybackException f24819r1;

    /* renamed from: s */
    public final MediaCodecSelector f24820s;

    /* renamed from: s1 */
    public long f24821s1;

    /* renamed from: t */
    public final boolean f24822t;

    /* renamed from: t0 */
    @Nullable
    public Format f24823t0;

    /* renamed from: t1 */
    public long f24824t1;

    /* renamed from: u */
    public final float f24825u;

    /* renamed from: u0 */
    @Nullable
    public DrmSession f24826u0;

    /* renamed from: u1 */
    public int f24827u1;

    /* renamed from: v */
    public final DecoderInputBuffer f24828v;

    /* renamed from: v0 */
    @Nullable
    public DrmSession f24829v0;

    /* renamed from: w */
    public final DecoderInputBuffer f24830w;

    /* renamed from: w0 */
    @Nullable
    public MediaCrypto f24831w0;

    /* renamed from: x */
    public final DecoderInputBuffer f24832x;

    /* renamed from: x0 */
    public boolean f24833x0;

    /* renamed from: y */
    public final C14204oo f24834y;

    /* renamed from: y0 */
    public long f24835y0;

    /* renamed from: z */
    public final TimedValueQueue<Format> f24836z;

    /* renamed from: z0 */
    public float f24837z0;

    @RequiresApi(31)
    /* renamed from: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$a */
    /* loaded from: classes5.dex */
    public static final class C4761a {
        @DoNotInline
        /* renamed from: a */
        public static void m19284a(MediaCodecAdapter.Configuration configuration, PlayerId playerId) {
            LogSessionId logSessionId;
            boolean equals;
            String stringId;
            LogSessionId logSessionId2 = playerId.getLogSessionId();
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            equals = logSessionId2.equals(logSessionId);
            if (equals) {
                return;
            }
            MediaFormat mediaFormat = configuration.mediaFormat;
            stringId = logSessionId2.getStringId();
            mediaFormat.setString("log-session-id", stringId);
        }
    }

    public MediaCodecRenderer(int i, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, boolean z, float f) {
        super(i);
        this.f24818r = factory;
        this.f24820s = (MediaCodecSelector) Assertions.checkNotNull(mediaCodecSelector);
        this.f24822t = z;
        this.f24825u = f;
        this.f24828v = DecoderInputBuffer.newNoDataInstance();
        this.f24830w = new DecoderInputBuffer(0);
        this.f24832x = new DecoderInputBuffer(2);
        C14204oo c14204oo = new C14204oo();
        this.f24834y = c14204oo;
        this.f24836z = new TimedValueQueue<>();
        this.f24778J = new ArrayList<>();
        this.f24784O = new MediaCodec.BufferInfo();
        this.f24837z0 = 1.0f;
        this.f24769A0 = 1.0f;
        this.f24835y0 = C4649C.TIME_UNSET;
        this.f24787Q = new long[10];
        this.f24797Z = new long[10];
        this.f24809k0 = new long[10];
        this.f24821s1 = C4649C.TIME_UNSET;
        this.f24824t1 = C4649C.TIME_UNSET;
        c14204oo.ensureSpaceForWrite(0);
        c14204oo.data.order(ByteOrder.nativeOrder());
        this.f24774F0 = -1.0f;
        this.f24779J0 = 0;
        this.f24804f1 = 0;
        this.f24794W0 = -1;
        this.f24795X0 = -1;
        this.f24793V0 = C4649C.TIME_UNSET;
        this.f24811l1 = C4649C.TIME_UNSET;
        this.f24812m1 = C4649C.TIME_UNSET;
        this.f24805g1 = 0;
        this.f24806h1 = 0;
    }

    /* renamed from: A */
    public static boolean m19244A(IllegalStateException illegalStateException) {
        if (Util.SDK_INT >= 21 && m19245B(illegalStateException)) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    @RequiresApi(21)
    /* renamed from: B */
    public static boolean m19245B(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    @RequiresApi(21)
    /* renamed from: C */
    public static boolean m19246C(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    @TargetApi(23)
    /* renamed from: E */
    private void m19247E() throws ExoPlaybackException {
        int i = this.f24806h1;
        if (i == 1) {
            m19277t();
            return;
        }
        if (i == 2) {
            m19277t();
            m19267O();
        } else if (i == 3) {
            m19261H();
        } else {
            this.f24814o1 = true;
            renderToEndOfStream();
        }
    }

    /* renamed from: L */
    private void m19248L(@Nullable DrmSession drmSession) {
        DrmSession.replaceSession(this.f24829v0, drmSession);
        this.f24829v0 = drmSession;
    }

    /* renamed from: e */
    public static boolean m19249e(String str, Format format) {
        return Util.SDK_INT < 21 && format.initializationData.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    /* renamed from: f */
    public static boolean m19250f(String str) {
        if (Util.SDK_INT < 21 && "OMX.SEC.mp3.dec".equals(str) && ManufacturerUtils.f31579b.equals(Util.MANUFACTURER)) {
            String str2 = Util.DEVICE;
            if (str2.startsWith("baffin") || str2.startsWith("grand") || str2.startsWith("fortuna") || str2.startsWith("gprimelte") || str2.startsWith("j2y18lte") || str2.startsWith("ms01")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public static boolean m19251g(String str) {
        int i = Util.SDK_INT;
        if (i > 23 || !"OMX.google.vorbis.decoder".equals(str)) {
            if (i <= 19) {
                String str2 = Util.DEVICE;
                if (("hb2000".equals(str2) || "stvm8".equals(str2)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    /* renamed from: h */
    public static boolean m19252h(String str) {
        return Util.SDK_INT == 21 && "OMX.google.aac.decoder".equals(str);
    }

    /* renamed from: i */
    public static boolean m19253i(MediaCodecInfo mediaCodecInfo) {
        String str = mediaCodecInfo.name;
        int i = Util.SDK_INT;
        return (i <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (i <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((i <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str))) || ("Amazon".equals(Util.MANUFACTURER) && "AFTS".equals(Util.MODEL) && mediaCodecInfo.secure));
    }

    /* renamed from: j */
    public static boolean m19254j(String str) {
        int i = Util.SDK_INT;
        return i < 18 || (i == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (i == 19 && Util.MODEL.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    /* renamed from: k */
    public static boolean m19255k(String str, Format format) {
        return Util.SDK_INT <= 18 && format.channelCount == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    /* renamed from: l */
    public static boolean m19256l(String str) {
        return Util.SDK_INT == 29 && "c2.android.aac.decoder".equals(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0, types: [com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer] */
    /* JADX WARN: Type inference failed for: r15v1, types: [com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer] */
    /* JADX WARN: Type inference failed for: r15v3, types: [com.google.android.exoplayer2.decoder.DecoderCounters] */
    /* renamed from: s */
    private boolean m19257s() throws ExoPlaybackException {
        int i;
        if (this.f24770B0 == null || (i = this.f24805g1) == 2 || this.f24813n1) {
            return false;
        }
        if (i == 0 && shouldReinitCodec()) {
            m19273o();
        }
        if (this.f24794W0 < 0) {
            int dequeueInputBufferIndex = this.f24770B0.dequeueInputBufferIndex();
            this.f24794W0 = dequeueInputBufferIndex;
            if (dequeueInputBufferIndex < 0) {
                return false;
            }
            this.f24830w.data = this.f24770B0.getInputBuffer(dequeueInputBufferIndex);
            this.f24830w.clear();
        }
        if (this.f24805g1 == 1) {
            if (!this.f24791T0) {
                this.f24808j1 = true;
                this.f24770B0.queueInputBuffer(this.f24794W0, 0, 0, 0L, 4);
                m19262I();
            }
            this.f24805g1 = 2;
            return false;
        }
        if (this.f24789R0) {
            this.f24789R0 = false;
            ByteBuffer byteBuffer = this.f24830w.data;
            byte[] bArr = f24762L1;
            byteBuffer.put(bArr);
            this.f24770B0.queueInputBuffer(this.f24794W0, 0, bArr.length, 0L, 0);
            m19262I();
            this.f24807i1 = true;
            return true;
        }
        if (this.f24804f1 == 1) {
            for (int i2 = 0; i2 < this.f24771C0.initializationData.size(); i2++) {
                this.f24830w.data.put(this.f24771C0.initializationData.get(i2));
            }
            this.f24804f1 = 2;
        }
        int position = this.f24830w.data.position();
        FormatHolder formatHolder = getFormatHolder();
        try {
            int readSource = readSource(formatHolder, this.f24830w, 0);
            if (hasReadStreamToEnd()) {
                this.f24812m1 = this.f24811l1;
            }
            if (readSource == -3) {
                return false;
            }
            if (readSource == -5) {
                if (this.f24804f1 == 2) {
                    this.f24830w.clear();
                    this.f24804f1 = 1;
                }
                onInputFormatChanged(formatHolder);
                return true;
            }
            if (this.f24830w.isEndOfStream()) {
                if (this.f24804f1 == 2) {
                    this.f24830w.clear();
                    this.f24804f1 = 1;
                }
                this.f24813n1 = true;
                if (!this.f24807i1) {
                    m19247E();
                    return false;
                }
                try {
                    if (!this.f24791T0) {
                        this.f24808j1 = true;
                        this.f24770B0.queueInputBuffer(this.f24794W0, 0, 0, 0L, 4);
                        m19262I();
                    }
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw createRendererException(e, this.f24816q0, Util.getErrorCodeForMediaDrmErrorCode(e.getErrorCode()));
                }
            }
            if (!this.f24807i1 && !this.f24830w.isKeyFrame()) {
                this.f24830w.clear();
                if (this.f24804f1 == 2) {
                    this.f24804f1 = 1;
                }
                return true;
            }
            boolean isEncrypted = this.f24830w.isEncrypted();
            if (isEncrypted) {
                this.f24830w.cryptoInfo.increaseClearDataFirstSubSampleBy(position);
            }
            if (this.f24780K0 && !isEncrypted) {
                NalUnitUtil.discardToSps(this.f24830w.data);
                if (this.f24830w.data.position() == 0) {
                    return true;
                }
                this.f24780K0 = false;
            }
            DecoderInputBuffer decoderInputBuffer = this.f24830w;
            long j = decoderInputBuffer.timeUs;
            C14522uv c14522uv = this.f24792U0;
            if (c14522uv != null) {
                j = c14522uv.m57662d(this.f24816q0, decoderInputBuffer);
                this.f24811l1 = Math.max(this.f24811l1, this.f24792U0.m57660b(this.f24816q0));
            }
            long j2 = j;
            if (this.f24830w.isDecodeOnly()) {
                this.f24778J.add(Long.valueOf(j2));
            }
            if (this.f24815p1) {
                this.f24836z.add(j2, this.f24816q0);
                this.f24815p1 = false;
            }
            this.f24811l1 = Math.max(this.f24811l1, j2);
            this.f24830w.flip();
            if (this.f24830w.hasSupplementalData()) {
                handleInputBufferSupplementalData(this.f24830w);
            }
            onQueueInputBuffer(this.f24830w);
            try {
                if (isEncrypted) {
                    this.f24770B0.queueSecureInputBuffer(this.f24794W0, 0, this.f24830w.cryptoInfo, j2, 0);
                } else {
                    this.f24770B0.queueInputBuffer(this.f24794W0, 0, this.f24830w.data.limit(), j2, 0);
                }
                m19262I();
                this.f24807i1 = true;
                this.f24804f1 = 0;
                this = this.decoderCounters;
                this.queuedInputBufferCount++;
                return true;
            } catch (MediaCodec.CryptoException e2) {
                throw this.createRendererException(e2, this.f24816q0, Util.getErrorCodeForMediaDrmErrorCode(e2.getErrorCode()));
            }
        } catch (DecoderInputBuffer.InsufficientCapacityException e3) {
            onCodecError(e3);
            m19260G(0);
            m19277t();
            return true;
        }
    }

    public static boolean supportsFormatDrm(Format format) {
        int i = format.cryptoType;
        return i == 0 || i == 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0049 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a9  */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m19258D(android.media.MediaCrypto r9, boolean r10) throws com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException {
        /*
            r8 = this;
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> r0 = r8.f24775G0
            r1 = 0
            if (r0 != 0) goto L39
            java.util.List r0 = r8.m19278u(r10)     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            java.util.ArrayDeque r2 = new java.util.ArrayDeque     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            r2.<init>()     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            r8.f24775G0 = r2     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            boolean r3 = r8.f24822t     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            if (r3 == 0) goto L18
            r2.addAll(r0)     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            goto L2a
        L18:
            boolean r2 = r0.isEmpty()     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            if (r2 != 0) goto L2a
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> r2 = r8.f24775G0     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            r3 = 0
            java.lang.Object r0 = r0.get(r3)     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            com.google.android.exoplayer2.mediacodec.MediaCodecInfo r0 = (com.google.android.exoplayer2.mediacodec.MediaCodecInfo) r0     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            r2.add(r0)     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
        L2a:
            r8.f24776H0 = r1     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            goto L39
        L2d:
            r9 = move-exception
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r0 = new com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException
            com.google.android.exoplayer2.Format r8 = r8.f24816q0
            r1 = -49998(0xffffffffffff3cb2, float:NaN)
            r0.<init>(r8, r9, r10, r1)
            throw r0
        L39:
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> r0 = r8.f24775G0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto Lbe
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> r0 = r8.f24775G0
            java.lang.Object r0 = r0.peekFirst()
            com.google.android.exoplayer2.mediacodec.MediaCodecInfo r0 = (com.google.android.exoplayer2.mediacodec.MediaCodecInfo) r0
        L49:
            com.google.android.exoplayer2.mediacodec.MediaCodecAdapter r2 = r8.f24770B0
            if (r2 != 0) goto Lbb
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> r2 = r8.f24775G0
            java.lang.Object r2 = r2.peekFirst()
            com.google.android.exoplayer2.mediacodec.MediaCodecInfo r2 = (com.google.android.exoplayer2.mediacodec.MediaCodecInfo) r2
            boolean r3 = r8.shouldInitCodec(r2)
            if (r3 != 0) goto L5c
            return
        L5c:
            r8.m19282y(r2, r9)     // Catch: java.lang.Exception -> L60
            goto L49
        L60:
            r3 = move-exception
            java.lang.String r4 = "MediaCodecRenderer"
            if (r2 != r0) goto L73
            java.lang.String r3 = "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."
            com.google.android.exoplayer2.util.Log.m21493w(r4, r3)     // Catch: java.lang.Exception -> L74
            r5 = 50
            java.lang.Thread.sleep(r5)     // Catch: java.lang.Exception -> L74
            r8.m19282y(r2, r9)     // Catch: java.lang.Exception -> L74
            goto L49
        L73:
            throw r3     // Catch: java.lang.Exception -> L74
        L74:
            r3 = move-exception
            java.lang.String r5 = java.lang.String.valueOf(r2)
            int r6 = r5.length()
            int r6 = r6 + 30
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r6)
            java.lang.String r6 = "Failed to initialize decoder: "
            r7.append(r6)
            r7.append(r5)
            java.lang.String r5 = r7.toString()
            com.google.android.exoplayer2.util.Log.m21494w(r4, r5, r3)
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> r4 = r8.f24775G0
            r4.removeFirst()
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r4 = new com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException
            com.google.android.exoplayer2.Format r5 = r8.f24816q0
            r4.<init>(r5, r3, r10, r2)
            r8.onCodecError(r4)
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r2 = r8.f24776H0
            if (r2 != 0) goto La9
            r8.f24776H0 = r4
            goto Laf
        La9:
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r2 = com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException.access$000(r2, r4)
            r8.f24776H0 = r2
        Laf:
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> r2 = r8.f24775G0
            boolean r2 = r2.isEmpty()
            if (r2 != 0) goto Lb8
            goto L49
        Lb8:
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r8 = r8.f24776H0
            throw r8
        Lbb:
            r8.f24775G0 = r1
            return
        Lbe:
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r9 = new com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException
            com.google.android.exoplayer2.Format r8 = r8.f24816q0
            r0 = -49999(0xffffffffffff3cb1, float:NaN)
            r9.<init>(r8, r1, r10, r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.m19258D(android.media.MediaCrypto, boolean):void");
    }

    /* renamed from: F */
    public final void m19259F() {
        this.f24810k1 = true;
        MediaFormat outputFormat = this.f24770B0.getOutputFormat();
        if (this.f24779J0 != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
            this.f24790S0 = true;
            return;
        }
        if (this.f24788Q0) {
            outputFormat.setInteger("channel-count", 1);
        }
        this.f24772D0 = outputFormat;
        this.f24773E0 = true;
    }

    /* renamed from: G */
    public final boolean m19260G(int i) throws ExoPlaybackException {
        FormatHolder formatHolder = getFormatHolder();
        this.f24828v.clear();
        int readSource = readSource(formatHolder, this.f24828v, i | 4);
        if (readSource == -5) {
            onInputFormatChanged(formatHolder);
            return true;
        }
        if (readSource != -4 || !this.f24828v.isEndOfStream()) {
            return false;
        }
        this.f24813n1 = true;
        m19247E();
        return false;
    }

    /* renamed from: H */
    public final void m19261H() throws ExoPlaybackException {
        releaseCodec();
        maybeInitCodecOrBypass();
    }

    /* renamed from: I */
    public final void m19262I() {
        this.f24794W0 = -1;
        this.f24830w.data = null;
    }

    /* renamed from: J */
    public final void m19263J() {
        this.f24795X0 = -1;
        this.f24796Y0 = null;
    }

    /* renamed from: K */
    public final void m19264K(@Nullable DrmSession drmSession) {
        DrmSession.replaceSession(this.f24826u0, drmSession);
        this.f24826u0 = drmSession;
    }

    /* renamed from: M */
    public final boolean m19265M(long j) {
        return this.f24835y0 == C4649C.TIME_UNSET || SystemClock.elapsedRealtime() - j < this.f24835y0;
    }

    /* renamed from: N */
    public final boolean m19266N(Format format) throws ExoPlaybackException {
        if (Util.SDK_INT >= 23 && this.f24770B0 != null && this.f24806h1 != 3 && getState() != 0) {
            float codecOperatingRateV23 = getCodecOperatingRateV23(this.f24769A0, format, getStreamFormats());
            float f = this.f24774F0;
            if (f == codecOperatingRateV23) {
                return true;
            }
            if (codecOperatingRateV23 == -1.0f) {
                m19273o();
                return false;
            }
            if (f == -1.0f && codecOperatingRateV23 <= this.f24825u) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", codecOperatingRateV23);
            this.f24770B0.setParameters(bundle);
            this.f24774F0 = codecOperatingRateV23;
        }
        return true;
    }

    @RequiresApi(23)
    /* renamed from: O */
    public final void m19267O() throws ExoPlaybackException {
        try {
            this.f24831w0.setMediaDrmSession(m19279v(this.f24829v0).sessionId);
            m19264K(this.f24829v0);
            this.f24805g1 = 0;
            this.f24806h1 = 0;
        } catch (MediaCryptoException e) {
            throw createRendererException(e, this.f24816q0, 6006);
        }
    }

    /* renamed from: b */
    public final void m19268b() throws ExoPlaybackException {
        Assertions.checkState(!this.f24813n1);
        FormatHolder formatHolder = getFormatHolder();
        this.f24832x.clear();
        do {
            this.f24832x.clear();
            int readSource = readSource(formatHolder, this.f24832x, 0);
            if (readSource == -5) {
                onInputFormatChanged(formatHolder);
                return;
            }
            if (readSource != -4) {
                if (readSource != -3) {
                    throw new IllegalStateException();
                }
                return;
            } else {
                if (this.f24832x.isEndOfStream()) {
                    this.f24813n1 = true;
                    return;
                }
                if (this.f24815p1) {
                    Format format = (Format) Assertions.checkNotNull(this.f24816q0);
                    this.f24823t0 = format;
                    onOutputFormatChanged(format, null);
                    this.f24815p1 = false;
                }
                this.f24832x.flip();
            }
        } while (this.f24834y.m56127b(this.f24832x));
        this.f24801c1 = true;
    }

    /* renamed from: c */
    public final boolean m19269c(long j, long j2) throws ExoPlaybackException {
        boolean z;
        Assertions.checkState(!this.f24814o1);
        if (this.f24834y.m56132g()) {
            C14204oo c14204oo = this.f24834y;
            if (!processOutputBuffer(j, j2, null, c14204oo.data, this.f24795X0, 0, c14204oo.m56131f(), this.f24834y.m56129d(), this.f24834y.isDecodeOnly(), this.f24834y.isEndOfStream(), this.f24823t0)) {
                return false;
            }
            onProcessedOutputBuffer(this.f24834y.m56130e());
            this.f24834y.clear();
            z = false;
        } else {
            z = false;
        }
        if (this.f24813n1) {
            this.f24814o1 = true;
            return z;
        }
        if (this.f24801c1) {
            Assertions.checkState(this.f24834y.m56127b(this.f24832x));
            this.f24801c1 = z;
        }
        if (this.f24802d1) {
            if (this.f24834y.m56132g()) {
                return true;
            }
            m19271m();
            this.f24802d1 = z;
            maybeInitCodecOrBypass();
            if (!this.f24800b1) {
                return z;
            }
        }
        m19268b();
        if (this.f24834y.m56132g()) {
            this.f24834y.flip();
        }
        if (this.f24834y.m56132g() || this.f24813n1 || this.f24802d1) {
            return true;
        }
        return z;
    }

    public DecoderReuseEvaluation canReuseCodec(MediaCodecInfo mediaCodecInfo, Format format, Format format2) {
        return new DecoderReuseEvaluation(mediaCodecInfo.name, format, format2, 0, 1);
    }

    public MediaCodecDecoderException createDecoderException(Throwable th, @Nullable MediaCodecInfo mediaCodecInfo) {
        return new MediaCodecDecoderException(th, mediaCodecInfo);
    }

    /* renamed from: d */
    public final int m19270d(String str) {
        int i = Util.SDK_INT;
        if (i <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = Util.MODEL;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i >= 24) {
            return 0;
        }
        if (!"OMX.Nvidia.h264.decode".equals(str) && !"OMX.Nvidia.h264.decode.secure".equals(str)) {
            return 0;
        }
        String str3 = Util.DEVICE;
        return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
    }

    public final boolean flushOrReinitializeCodec() throws ExoPlaybackException {
        boolean flushOrReleaseCodec = flushOrReleaseCodec();
        if (flushOrReleaseCodec) {
            maybeInitCodecOrBypass();
        }
        return flushOrReleaseCodec;
    }

    public boolean flushOrReleaseCodec() {
        if (this.f24770B0 == null) {
            return false;
        }
        if (this.f24806h1 == 3 || this.f24781L0 || ((this.f24782M0 && !this.f24810k1) || (this.f24783N0 && this.f24808j1))) {
            releaseCodec();
            return true;
        }
        m19277t();
        return false;
    }

    @Nullable
    public final MediaCodecAdapter getCodec() {
        return this.f24770B0;
    }

    @Nullable
    public final MediaCodecInfo getCodecInfo() {
        return this.f24777I0;
    }

    public boolean getCodecNeedsEosPropagation() {
        return false;
    }

    public float getCodecOperatingRate() {
        return this.f24774F0;
    }

    public float getCodecOperatingRateV23(float f, Format format, Format[] formatArr) {
        return -1.0f;
    }

    @Nullable
    public final MediaFormat getCodecOutputMediaFormat() {
        return this.f24772D0;
    }

    public abstract List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException;

    public abstract MediaCodecAdapter.Configuration getMediaCodecConfiguration(MediaCodecInfo mediaCodecInfo, Format format, @Nullable MediaCrypto mediaCrypto, float f);

    public final long getOutputStreamOffsetUs() {
        return this.f24824t1;
    }

    public float getPlaybackSpeed() {
        return this.f24837z0;
    }

    public void handleInputBufferSupplementalData(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return this.f24814o1;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        return this.f24816q0 != null && (isSourceReady() || m19280w() || (this.f24793V0 != C4649C.TIME_UNSET && SystemClock.elapsedRealtime() < this.f24793V0));
    }

    /* renamed from: m */
    public final void m19271m() {
        this.f24802d1 = false;
        this.f24834y.clear();
        this.f24832x.clear();
        this.f24801c1 = false;
        this.f24800b1 = false;
    }

    public final void maybeInitCodecOrBypass() throws ExoPlaybackException {
        Format format;
        if (this.f24770B0 != null || this.f24800b1 || (format = this.f24816q0) == null) {
            return;
        }
        if (this.f24829v0 == null && shouldUseBypass(format)) {
            m19281x(this.f24816q0);
            return;
        }
        m19264K(this.f24829v0);
        String str = this.f24816q0.sampleMimeType;
        DrmSession drmSession = this.f24826u0;
        if (drmSession != null) {
            if (this.f24831w0 == null) {
                FrameworkCryptoConfig m19279v = m19279v(drmSession);
                if (m19279v != null) {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(m19279v.uuid, m19279v.sessionId);
                        this.f24831w0 = mediaCrypto;
                        this.f24833x0 = !m19279v.forceAllowInsecureDecoderComponents && mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e) {
                        throw createRendererException(e, this.f24816q0, 6006);
                    }
                } else if (this.f24826u0.getError() == null) {
                    return;
                }
            }
            if (FrameworkCryptoConfig.WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC) {
                int state = this.f24826u0.getState();
                if (state == 1) {
                    DrmSession.DrmSessionException drmSessionException = (DrmSession.DrmSessionException) Assertions.checkNotNull(this.f24826u0.getError());
                    throw createRendererException(drmSessionException, this.f24816q0, drmSessionException.errorCode);
                }
                if (state != 4) {
                    return;
                }
            }
        }
        try {
            m19258D(this.f24831w0, this.f24833x0);
        } catch (DecoderInitializationException e2) {
            throw createRendererException(e2, this.f24816q0, 4001);
        }
    }

    /* renamed from: n */
    public final boolean m19272n() {
        if (this.f24807i1) {
            this.f24805g1 = 1;
            if (this.f24781L0 || this.f24783N0) {
                this.f24806h1 = 3;
                return false;
            }
            this.f24806h1 = 1;
        }
        return true;
    }

    /* renamed from: o */
    public final void m19273o() throws ExoPlaybackException {
        if (!this.f24807i1) {
            m19261H();
        } else {
            this.f24805g1 = 1;
            this.f24806h1 = 3;
        }
    }

    public void onCodecError(Exception exc) {
    }

    public void onCodecInitialized(String str, MediaCodecAdapter.Configuration configuration, long j, long j2) {
    }

    public void onCodecReleased(String str) {
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        this.f24816q0 = null;
        this.f24821s1 = C4649C.TIME_UNSET;
        this.f24824t1 = C4649C.TIME_UNSET;
        this.f24827u1 = 0;
        flushOrReleaseCodec();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onEnabled(boolean z, boolean z2) throws ExoPlaybackException {
        this.decoderCounters = new DecoderCounters();
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0080, code lost:
    
        if (m19274p() == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ce, code lost:
    
        r7 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00b2, code lost:
    
        if (m19274p() == false) goto L69;
     */
    @androidx.annotation.Nullable
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.decoder.DecoderReuseEvaluation onInputFormatChanged(com.google.android.exoplayer2.FormatHolder r12) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.onInputFormatChanged(com.google.android.exoplayer2.FormatHolder):com.google.android.exoplayer2.decoder.DecoderReuseEvaluation");
    }

    public void onOutputFormatChanged(Format format, @Nullable MediaFormat mediaFormat) throws ExoPlaybackException {
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
        this.f24813n1 = false;
        this.f24814o1 = false;
        this.f24817q1 = false;
        if (this.f24800b1) {
            this.f24834y.clear();
            this.f24832x.clear();
            this.f24801c1 = false;
        } else {
            flushOrReinitializeCodec();
        }
        if (this.f24836z.size() > 0) {
            this.f24815p1 = true;
        }
        this.f24836z.clear();
        int i = this.f24827u1;
        if (i != 0) {
            this.f24824t1 = this.f24797Z[i - 1];
            this.f24821s1 = this.f24787Q[i - 1];
            this.f24827u1 = 0;
        }
    }

    @CallSuper
    public void onProcessedOutputBuffer(long j) {
        while (true) {
            int i = this.f24827u1;
            if (i == 0 || j < this.f24809k0[0]) {
                return;
            }
            long[] jArr = this.f24787Q;
            this.f24821s1 = jArr[0];
            this.f24824t1 = this.f24797Z[0];
            int i2 = i - 1;
            this.f24827u1 = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.f24797Z;
            System.arraycopy(jArr2, 1, jArr2, 0, this.f24827u1);
            long[] jArr3 = this.f24809k0;
            System.arraycopy(jArr3, 1, jArr3, 0, this.f24827u1);
            onProcessedStreamChange();
        }
    }

    public void onProcessedStreamChange() {
    }

    public void onQueueInputBuffer(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onReset() {
        try {
            m19271m();
            releaseCodec();
        } finally {
            m19248L(null);
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStarted() {
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStopped() {
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStreamChanged(Format[] formatArr, long j, long j2) throws ExoPlaybackException {
        if (this.f24824t1 == C4649C.TIME_UNSET) {
            Assertions.checkState(this.f24821s1 == C4649C.TIME_UNSET);
            this.f24821s1 = j;
            this.f24824t1 = j2;
            return;
        }
        int i = this.f24827u1;
        long[] jArr = this.f24797Z;
        if (i == jArr.length) {
            long j3 = jArr[i - 1];
            StringBuilder sb = new StringBuilder(65);
            sb.append("Too many stream changes, so dropping offset: ");
            sb.append(j3);
            Log.m21493w(f24764v1, sb.toString());
        } else {
            this.f24827u1 = i + 1;
        }
        long[] jArr2 = this.f24787Q;
        int i2 = this.f24827u1;
        jArr2[i2 - 1] = j;
        this.f24797Z[i2 - 1] = j2;
        this.f24809k0[i2 - 1] = this.f24811l1;
    }

    @TargetApi(23)
    /* renamed from: p */
    public final boolean m19274p() throws ExoPlaybackException {
        if (this.f24807i1) {
            this.f24805g1 = 1;
            if (this.f24781L0 || this.f24783N0) {
                this.f24806h1 = 3;
                return false;
            }
            this.f24806h1 = 2;
        } else {
            m19267O();
        }
        return true;
    }

    public abstract boolean processOutputBuffer(long j, long j2, @Nullable MediaCodecAdapter mediaCodecAdapter, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format) throws ExoPlaybackException;

    /* renamed from: q */
    public final boolean m19275q(long j, long j2) throws ExoPlaybackException {
        boolean z;
        boolean processOutputBuffer;
        MediaCodecAdapter mediaCodecAdapter;
        ByteBuffer byteBuffer;
        int i;
        MediaCodec.BufferInfo bufferInfo;
        int dequeueOutputBufferIndex;
        if (!m19280w()) {
            if (this.f24785O0 && this.f24808j1) {
                try {
                    dequeueOutputBufferIndex = this.f24770B0.dequeueOutputBufferIndex(this.f24784O);
                } catch (IllegalStateException unused) {
                    m19247E();
                    if (this.f24814o1) {
                        releaseCodec();
                    }
                    return false;
                }
            } else {
                dequeueOutputBufferIndex = this.f24770B0.dequeueOutputBufferIndex(this.f24784O);
            }
            if (dequeueOutputBufferIndex < 0) {
                if (dequeueOutputBufferIndex == -2) {
                    m19259F();
                    return true;
                }
                if (this.f24791T0 && (this.f24813n1 || this.f24805g1 == 2)) {
                    m19247E();
                }
                return false;
            }
            if (this.f24790S0) {
                this.f24790S0 = false;
                this.f24770B0.releaseOutputBuffer(dequeueOutputBufferIndex, false);
                return true;
            }
            MediaCodec.BufferInfo bufferInfo2 = this.f24784O;
            if (bufferInfo2.size == 0 && (bufferInfo2.flags & 4) != 0) {
                m19247E();
                return false;
            }
            this.f24795X0 = dequeueOutputBufferIndex;
            ByteBuffer outputBuffer = this.f24770B0.getOutputBuffer(dequeueOutputBufferIndex);
            this.f24796Y0 = outputBuffer;
            if (outputBuffer != null) {
                outputBuffer.position(this.f24784O.offset);
                ByteBuffer byteBuffer2 = this.f24796Y0;
                MediaCodec.BufferInfo bufferInfo3 = this.f24784O;
                byteBuffer2.limit(bufferInfo3.offset + bufferInfo3.size);
            }
            if (this.f24786P0) {
                MediaCodec.BufferInfo bufferInfo4 = this.f24784O;
                if (bufferInfo4.presentationTimeUs == 0 && (bufferInfo4.flags & 4) != 0) {
                    long j3 = this.f24811l1;
                    if (j3 != C4649C.TIME_UNSET) {
                        bufferInfo4.presentationTimeUs = j3;
                    }
                }
            }
            this.f24798Z0 = m19283z(this.f24784O.presentationTimeUs);
            long j4 = this.f24812m1;
            long j5 = this.f24784O.presentationTimeUs;
            this.f24799a1 = j4 == j5;
            updateOutputFormatForTime(j5);
        }
        if (this.f24785O0 && this.f24808j1) {
            try {
                mediaCodecAdapter = this.f24770B0;
                byteBuffer = this.f24796Y0;
                i = this.f24795X0;
                bufferInfo = this.f24784O;
                z = false;
            } catch (IllegalStateException unused2) {
                z = false;
            }
            try {
                processOutputBuffer = processOutputBuffer(j, j2, mediaCodecAdapter, byteBuffer, i, bufferInfo.flags, 1, bufferInfo.presentationTimeUs, this.f24798Z0, this.f24799a1, this.f24823t0);
            } catch (IllegalStateException unused3) {
                m19247E();
                if (this.f24814o1) {
                    releaseCodec();
                }
                return z;
            }
        } else {
            z = false;
            MediaCodecAdapter mediaCodecAdapter2 = this.f24770B0;
            ByteBuffer byteBuffer3 = this.f24796Y0;
            int i2 = this.f24795X0;
            MediaCodec.BufferInfo bufferInfo5 = this.f24784O;
            processOutputBuffer = processOutputBuffer(j, j2, mediaCodecAdapter2, byteBuffer3, i2, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.f24798Z0, this.f24799a1, this.f24823t0);
        }
        if (processOutputBuffer) {
            onProcessedOutputBuffer(this.f24784O.presentationTimeUs);
            boolean z2 = (this.f24784O.flags & 4) != 0 ? true : z;
            m19263J();
            if (!z2) {
                return true;
            }
            m19247E();
        }
        return z;
    }

    /* renamed from: r */
    public final boolean m19276r(MediaCodecInfo mediaCodecInfo, Format format, @Nullable DrmSession drmSession, @Nullable DrmSession drmSession2) throws ExoPlaybackException {
        FrameworkCryptoConfig m19279v;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 == null || drmSession == null || Util.SDK_INT < 23) {
            return true;
        }
        UUID uuid = C4649C.PLAYREADY_UUID;
        if (uuid.equals(drmSession.getSchemeUuid()) || uuid.equals(drmSession2.getSchemeUuid()) || (m19279v = m19279v(drmSession2)) == null) {
            return true;
        }
        return !mediaCodecInfo.secure && (m19279v.forceAllowInsecureDecoderComponents ? false : drmSession2.requiresSecureDecoder(format.sampleMimeType));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void releaseCodec() {
        try {
            MediaCodecAdapter mediaCodecAdapter = this.f24770B0;
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.release();
                this.decoderCounters.decoderReleaseCount++;
                onCodecReleased(this.f24777I0.name);
            }
            this.f24770B0 = null;
            try {
                MediaCrypto mediaCrypto = this.f24831w0;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.f24770B0 = null;
            try {
                MediaCrypto mediaCrypto2 = this.f24831w0;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) throws ExoPlaybackException {
        boolean z = false;
        if (this.f24817q1) {
            this.f24817q1 = false;
            m19247E();
        }
        ExoPlaybackException exoPlaybackException = this.f24819r1;
        if (exoPlaybackException != null) {
            this.f24819r1 = null;
            throw exoPlaybackException;
        }
        try {
            if (this.f24814o1) {
                renderToEndOfStream();
                return;
            }
            if (this.f24816q0 != null || m19260G(2)) {
                maybeInitCodecOrBypass();
                if (this.f24800b1) {
                    TraceUtil.beginSection("bypassRender");
                    do {
                    } while (m19269c(j, j2));
                    TraceUtil.endSection();
                } else if (this.f24770B0 != null) {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    TraceUtil.beginSection("drainAndFeed");
                    while (m19275q(j, j2) && m19265M(elapsedRealtime)) {
                    }
                    while (m19257s() && m19265M(elapsedRealtime)) {
                    }
                    TraceUtil.endSection();
                } else {
                    this.decoderCounters.skippedInputBufferCount += skipSource(j);
                    m19260G(1);
                }
                this.decoderCounters.ensureUpdated();
            }
        } catch (IllegalStateException e) {
            if (!m19244A(e)) {
                throw e;
            }
            onCodecError(e);
            if (Util.SDK_INT >= 21 && m19246C(e)) {
                z = true;
            }
            if (z) {
                releaseCodec();
            }
            throw createRendererException(createDecoderException(e, getCodecInfo()), this.f24816q0, z, 4003);
        }
    }

    public void renderToEndOfStream() throws ExoPlaybackException {
    }

    @CallSuper
    public void resetCodecStateForFlush() {
        m19262I();
        m19263J();
        this.f24793V0 = C4649C.TIME_UNSET;
        this.f24808j1 = false;
        this.f24807i1 = false;
        this.f24789R0 = false;
        this.f24790S0 = false;
        this.f24798Z0 = false;
        this.f24799a1 = false;
        this.f24778J.clear();
        this.f24811l1 = C4649C.TIME_UNSET;
        this.f24812m1 = C4649C.TIME_UNSET;
        C14522uv c14522uv = this.f24792U0;
        if (c14522uv != null) {
            c14522uv.m57661c();
        }
        this.f24805g1 = 0;
        this.f24806h1 = 0;
        this.f24804f1 = this.f24803e1 ? 1 : 0;
    }

    @CallSuper
    public void resetCodecStateForRelease() {
        resetCodecStateForFlush();
        this.f24819r1 = null;
        this.f24792U0 = null;
        this.f24775G0 = null;
        this.f24777I0 = null;
        this.f24771C0 = null;
        this.f24772D0 = null;
        this.f24773E0 = false;
        this.f24810k1 = false;
        this.f24774F0 = -1.0f;
        this.f24779J0 = 0;
        this.f24780K0 = false;
        this.f24781L0 = false;
        this.f24782M0 = false;
        this.f24783N0 = false;
        this.f24785O0 = false;
        this.f24786P0 = false;
        this.f24788Q0 = false;
        this.f24791T0 = false;
        this.f24803e1 = false;
        this.f24804f1 = 0;
        this.f24833x0 = false;
    }

    public final void setPendingOutputEndOfStream() {
        this.f24817q1 = true;
    }

    public final void setPendingPlaybackException(ExoPlaybackException exoPlaybackException) {
        this.f24819r1 = exoPlaybackException;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void setPlaybackSpeed(float f, float f2) throws ExoPlaybackException {
        this.f24837z0 = f;
        this.f24769A0 = f2;
        m19266N(this.f24771C0);
    }

    public void setRenderTimeLimitMs(long j) {
        this.f24835y0 = j;
    }

    public boolean shouldInitCodec(MediaCodecInfo mediaCodecInfo) {
        return true;
    }

    public boolean shouldReinitCodec() {
        return false;
    }

    public boolean shouldUseBypass(Format format) {
        return false;
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public final int supportsFormat(Format format) throws ExoPlaybackException {
        try {
            return supportsFormat(this.f24820s, format);
        } catch (MediaCodecUtil.DecoderQueryException e) {
            throw this.createRendererException(e, format, 4002);
        }
    }

    public abstract int supportsFormat(MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException;

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.RendererCapabilities
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    /* renamed from: t */
    public final void m19277t() {
        try {
            this.f24770B0.flush();
        } finally {
            resetCodecStateForFlush();
        }
    }

    /* renamed from: u */
    public final List<MediaCodecInfo> m19278u(boolean z) throws MediaCodecUtil.DecoderQueryException {
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(this.f24820s, this.f24816q0, z);
        if (decoderInfos.isEmpty() && z) {
            decoderInfos = getDecoderInfos(this.f24820s, this.f24816q0, false);
            if (!decoderInfos.isEmpty()) {
                String str = this.f24816q0.sampleMimeType;
                String valueOf = String.valueOf(decoderInfos);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 99 + valueOf.length());
                sb.append("Drm session requires secure decoder for ");
                sb.append(str);
                sb.append(", but no secure decoder available. Trying to proceed with ");
                sb.append(valueOf);
                sb.append(".");
                Log.m21493w(f24764v1, sb.toString());
            }
        }
        return decoderInfos;
    }

    public final boolean updateCodecOperatingRate() throws ExoPlaybackException {
        return m19266N(this.f24771C0);
    }

    public final void updateOutputFormatForTime(long j) throws ExoPlaybackException {
        boolean z;
        Format pollFloor = this.f24836z.pollFloor(j);
        if (pollFloor == null && this.f24773E0) {
            pollFloor = this.f24836z.pollFirst();
        }
        if (pollFloor != null) {
            this.f24823t0 = pollFloor;
            z = true;
        } else {
            z = false;
        }
        if (z || (this.f24773E0 && this.f24823t0 != null)) {
            onOutputFormatChanged(this.f24823t0, this.f24772D0);
            this.f24773E0 = false;
        }
    }

    @Nullable
    /* renamed from: v */
    public final FrameworkCryptoConfig m19279v(DrmSession drmSession) throws ExoPlaybackException {
        CryptoConfig cryptoConfig = drmSession.getCryptoConfig();
        if (cryptoConfig == null || (cryptoConfig instanceof FrameworkCryptoConfig)) {
            return (FrameworkCryptoConfig) cryptoConfig;
        }
        String valueOf = String.valueOf(cryptoConfig);
        StringBuilder sb = new StringBuilder(valueOf.length() + 43);
        sb.append("Expecting FrameworkCryptoConfig but found: ");
        sb.append(valueOf);
        throw createRendererException(new IllegalArgumentException(sb.toString()), this.f24816q0, 6001);
    }

    /* renamed from: w */
    public final boolean m19280w() {
        return this.f24795X0 >= 0;
    }

    /* renamed from: x */
    public final void m19281x(Format format) {
        m19271m();
        String str = format.sampleMimeType;
        if (MimeTypes.AUDIO_AAC.equals(str) || "audio/mpeg".equals(str) || MimeTypes.AUDIO_OPUS.equals(str)) {
            this.f24834y.m56133h(32);
        } else {
            this.f24834y.m56133h(1);
        }
        this.f24800b1 = true;
    }

    /* renamed from: y */
    public final void m19282y(MediaCodecInfo mediaCodecInfo, MediaCrypto mediaCrypto) throws Exception {
        String str = mediaCodecInfo.name;
        int i = Util.SDK_INT;
        float codecOperatingRateV23 = i < 23 ? -1.0f : getCodecOperatingRateV23(this.f24769A0, this.f24816q0, getStreamFormats());
        float f = codecOperatingRateV23 > this.f24825u ? codecOperatingRateV23 : -1.0f;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        MediaCodecAdapter.Configuration mediaCodecConfiguration = getMediaCodecConfiguration(mediaCodecInfo, this.f24816q0, mediaCrypto, f);
        if (i >= 31) {
            C4761a.m19284a(mediaCodecConfiguration, getPlayerId());
        }
        try {
            String valueOf = String.valueOf(str);
            TraceUtil.beginSection(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
            this.f24770B0 = this.f24818r.createAdapter(mediaCodecConfiguration);
            TraceUtil.endSection();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            this.f24777I0 = mediaCodecInfo;
            this.f24774F0 = f;
            this.f24771C0 = this.f24816q0;
            this.f24779J0 = m19270d(str);
            this.f24780K0 = m19249e(str, this.f24771C0);
            this.f24781L0 = m19254j(str);
            this.f24782M0 = m19256l(str);
            this.f24783N0 = m19251g(str);
            this.f24785O0 = m19252h(str);
            this.f24786P0 = m19250f(str);
            this.f24788Q0 = m19255k(str, this.f24771C0);
            this.f24791T0 = m19253i(mediaCodecInfo) || getCodecNeedsEosPropagation();
            if (this.f24770B0.needsReconfiguration()) {
                this.f24803e1 = true;
                this.f24804f1 = 1;
                this.f24789R0 = this.f24779J0 != 0;
            }
            if ("c2.android.mp3.decoder".equals(mediaCodecInfo.name)) {
                this.f24792U0 = new C14522uv();
            }
            if (getState() == 2) {
                this.f24793V0 = SystemClock.elapsedRealtime() + 1000;
            }
            this.decoderCounters.decoderInitCount++;
            onCodecInitialized(str, mediaCodecConfiguration, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
        } catch (Throwable th) {
            TraceUtil.endSection();
            throw th;
        }
    }

    /* renamed from: z */
    public final boolean m19283z(long j) {
        int size = this.f24778J.size();
        for (int i = 0; i < size; i++) {
            if (this.f24778J.get(i).longValue() == j) {
                this.f24778J.remove(i);
                return true;
            }
        }
        return false;
    }

    /* loaded from: classes5.dex */
    public static class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;

        @Nullable
        public final MediaCodecInfo codecInfo;

        @Nullable
        public final String diagnosticInfo;

        @Nullable
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DecoderInitializationException(com.google.android.exoplayer2.Format r12, @androidx.annotation.Nullable java.lang.Throwable r13, boolean r14, int r15) {
            /*
                r11 = this;
                java.lang.String r0 = java.lang.String.valueOf(r12)
                int r1 = r0.length()
                int r1 = r1 + 36
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>(r1)
                java.lang.String r1 = "Decoder init failed: ["
                r2.append(r1)
                r2.append(r15)
                java.lang.String r1 = "], "
                r2.append(r1)
                r2.append(r0)
                java.lang.String r4 = r2.toString()
                java.lang.String r6 = r12.sampleMimeType
                r8 = 0
                java.lang.String r9 = buildCustomDiagnosticInfo(r15)
                r10 = 0
                r3 = r11
                r5 = r13
                r7 = r14
                r3.<init>(r4, r5, r6, r7, r8, r9, r10)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException.<init>(com.google.android.exoplayer2.Format, java.lang.Throwable, boolean, int):void");
        }

        private static String buildCustomDiagnosticInfo(int i) {
            String str = i < 0 ? "neg_" : "";
            int abs = Math.abs(i);
            StringBuilder sb = new StringBuilder(str.length() + 71);
            sb.append("com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_");
            sb.append(str);
            sb.append(abs);
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @CheckResult
        public DecoderInitializationException copyWithFallbackException(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }

        @Nullable
        @RequiresApi(21)
        private static String getDiagnosticInfoV21(@Nullable Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public DecoderInitializationException(com.google.android.exoplayer2.Format r9, @androidx.annotation.Nullable java.lang.Throwable r10, boolean r11, com.google.android.exoplayer2.mediacodec.MediaCodecInfo r12) {
            /*
                r8 = this;
                java.lang.String r0 = r12.name
                java.lang.String r1 = java.lang.String.valueOf(r9)
                java.lang.String r2 = java.lang.String.valueOf(r0)
                int r2 = r2.length()
                int r2 = r2 + 23
                int r3 = r1.length()
                int r2 = r2 + r3
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>(r2)
                java.lang.String r2 = "Decoder init failed: "
                r3.append(r2)
                r3.append(r0)
                java.lang.String r0 = ", "
                r3.append(r0)
                r3.append(r1)
                java.lang.String r1 = r3.toString()
                java.lang.String r3 = r9.sampleMimeType
                int r0 = com.google.android.exoplayer2.util.Util.SDK_INT
                r2 = 21
                if (r0 < r2) goto L3b
                java.lang.String r0 = getDiagnosticInfoV21(r10)
                goto L3c
            L3b:
                r0 = 0
            L3c:
                r6 = r0
                r7 = 0
                r0 = r8
                r2 = r10
                r4 = r11
                r5 = r12
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException.<init>(com.google.android.exoplayer2.Format, java.lang.Throwable, boolean, com.google.android.exoplayer2.mediacodec.MediaCodecInfo):void");
        }

        private DecoderInitializationException(String str, @Nullable Throwable th, String str2, boolean z, @Nullable MediaCodecInfo mediaCodecInfo, @Nullable String str3, @Nullable DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.mimeType = str2;
            this.secureDecoderRequired = z;
            this.codecInfo = mediaCodecInfo;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }
    }
}
