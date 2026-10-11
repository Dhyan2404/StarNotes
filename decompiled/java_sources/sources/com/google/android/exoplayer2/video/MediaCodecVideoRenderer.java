package com.google.android.exoplayer2.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.mediacodec.MediaCodecAdapter;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecInfo;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecSelector;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MediaFormatUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import com.google.android.gms.common.Scopes;
import com.google.common.collect.ImmutableList;
import com.onyx.android.sdk.matisse.internal.utils.PhotoMetadataUtils;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;
import net.p110sf.saxon.ma.json.JsonParser;
import net.p110sf.saxon.om.StandardNames;
import org.apache.poi.convert.hwpf.HWPFWordToHtmlUtils;

/* loaded from: classes5.dex */
public class MediaCodecVideoRenderer extends MediaCodecRenderer {

    /* renamed from: A2 */
    public static final String f28540A2 = "crop-top";

    /* renamed from: B2 */
    public static final int[] f28541B2 = {1920, PhotoMetadataUtils.f42836b, 1440, 1280, HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT, 854, StandardNames.XSI, StandardNames.XS_NON_NEGATIVE_INTEGER, JsonParser.DUPLICATES_SPECIFIED};

    /* renamed from: C2 */
    public static final float f28542C2 = 1.5f;

    /* renamed from: D2 */
    public static final long f28543D2 = Long.MAX_VALUE;

    /* renamed from: E2 */
    public static boolean f28544E2 = false;

    /* renamed from: F2 */
    public static boolean f28545F2 = false;

    /* renamed from: w2 */
    public static final String f28546w2 = "MediaCodecVideoRenderer";

    /* renamed from: x2 */
    public static final String f28547x2 = "crop-left";

    /* renamed from: y2 */
    public static final String f28548y2 = "crop-right";

    /* renamed from: z2 */
    public static final String f28549z2 = "crop-bottom";

    /* renamed from: N1 */
    public final Context f28550N1;

    /* renamed from: O1 */
    public final VideoFrameReleaseHelper f28551O1;

    /* renamed from: P1 */
    public final VideoRendererEventListener.EventDispatcher f28552P1;

    /* renamed from: Q1 */
    public final long f28553Q1;

    /* renamed from: R1 */
    public final int f28554R1;

    /* renamed from: S1 */
    public final boolean f28555S1;

    /* renamed from: T1 */
    public CodecMaxValues f28556T1;

    /* renamed from: U1 */
    public boolean f28557U1;

    /* renamed from: V1 */
    public boolean f28558V1;

    /* renamed from: W1 */
    @Nullable
    public Surface f28559W1;

    /* renamed from: X1 */
    @Nullable
    public DummySurface f28560X1;

    /* renamed from: Y1 */
    public boolean f28561Y1;

    /* renamed from: Z1 */
    public int f28562Z1;

    /* renamed from: a2 */
    public boolean f28563a2;

    /* renamed from: b2 */
    public boolean f28564b2;

    /* renamed from: c2 */
    public boolean f28565c2;

    /* renamed from: d2 */
    public long f28566d2;

    /* renamed from: e2 */
    public long f28567e2;

    /* renamed from: f2 */
    public long f28568f2;

    /* renamed from: g2 */
    public int f28569g2;

    /* renamed from: h2 */
    public int f28570h2;

    /* renamed from: i2 */
    public int f28571i2;

    /* renamed from: j2 */
    public long f28572j2;

    /* renamed from: k2 */
    public long f28573k2;

    /* renamed from: l2 */
    public long f28574l2;

    /* renamed from: m2 */
    public int f28575m2;

    /* renamed from: n2 */
    public int f28576n2;

    /* renamed from: o2 */
    public int f28577o2;

    /* renamed from: p2 */
    public int f28578p2;

    /* renamed from: q2 */
    public float f28579q2;

    /* renamed from: r2 */
    @Nullable
    public VideoSize f28580r2;

    /* renamed from: s2 */
    public boolean f28581s2;

    /* renamed from: t2 */
    public int f28582t2;

    /* renamed from: u2 */
    @Nullable
    public C5026a f28583u2;

    /* renamed from: v2 */
    @Nullable
    public VideoFrameMetadataListener f28584v2;

    /* loaded from: classes5.dex */
    public static final class CodecMaxValues {
        public final int height;
        public final int inputSize;
        public final int width;

        public CodecMaxValues(int i, int i2, int i3) {
            this.width = i;
            this.height = i2;
            this.inputSize = i3;
        }
    }

    @RequiresApi(23)
    /* renamed from: com.google.android.exoplayer2.video.MediaCodecVideoRenderer$a */
    /* loaded from: classes5.dex */
    public final class C5026a implements MediaCodecAdapter.OnFrameRenderedListener, Handler.Callback {

        /* renamed from: g */
        public static final int f28585g = 0;

        /* renamed from: e */
        public final Handler f28586e;

        public C5026a(MediaCodecAdapter mediaCodecAdapter) {
            Handler createHandlerForCurrentLooper = Util.createHandlerForCurrentLooper(this);
            this.f28586e = createHandlerForCurrentLooper;
            mediaCodecAdapter.setOnFrameRenderedListener(this, createHandlerForCurrentLooper);
        }

        /* renamed from: a */
        public final void m21616a(long j) {
            MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
            if (this != mediaCodecVideoRenderer.f28583u2) {
                return;
            }
            if (j == Long.MAX_VALUE) {
                mediaCodecVideoRenderer.m21612i0();
                return;
            }
            try {
                mediaCodecVideoRenderer.onProcessedTunneledBuffer(j);
            } catch (ExoPlaybackException e) {
                MediaCodecVideoRenderer.this.setPendingPlaybackException(e);
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            m21616a(Util.toLong(message.arg1, message.arg2));
            return true;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.OnFrameRenderedListener
        public void onFrameRendered(MediaCodecAdapter mediaCodecAdapter, long j, long j2) {
            if (Util.SDK_INT >= 30) {
                m21616a(j);
            } else {
                this.f28586e.sendMessageAtFrontOfQueue(Message.obtain(this.f28586e, 0, (int) (j >> 32), (int) j));
            }
        }
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector) {
        this(context, mediaCodecSelector, 0L);
    }

    @RequiresApi(21)
    /* renamed from: T */
    public static void m21594T(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i);
    }

    /* renamed from: U */
    public static boolean m21595U() {
        return "NVIDIA".equals(Util.MANUFACTURER);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x07ce, code lost:
    
        if (r0.equals("PGN528") == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x083c, code lost:
    
        if (r0.equals("AFTN") == false) goto L614;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x0825. Please report as an issue. */
    /* renamed from: V */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m21596V() {
        /*
            Method dump skipped, instructions count: 3062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.MediaCodecVideoRenderer.m21596V():boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0070, code lost:
    
        if (r3.equals(com.google.android.exoplayer2.util.MimeTypes.VIDEO_H265) == false) goto L18;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x007d. Please report as an issue. */
    /* renamed from: W */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m21597W(com.google.android.exoplayer2.mediacodec.MediaCodecInfo r10, com.google.android.exoplayer2.Format r11) {
        /*
            int r0 = r11.width
            int r1 = r11.height
            r2 = -1
            if (r0 == r2) goto Lc2
            if (r1 != r2) goto Lb
            goto Lc2
        Lb:
            java.lang.String r3 = r11.sampleMimeType
            java.lang.String r4 = "video/dolby-vision"
            boolean r4 = r4.equals(r3)
            java.lang.String r5 = "video/avc"
            r6 = 1
            java.lang.String r7 = "video/hevc"
            r8 = 2
            if (r4 == 0) goto L34
            android.util.Pair r11 = com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getCodecProfileAndLevel(r11)
            if (r11 == 0) goto L33
            java.lang.Object r11 = r11.first
            java.lang.Integer r11 = (java.lang.Integer) r11
            int r11 = r11.intValue()
            r3 = 512(0x200, float:7.175E-43)
            if (r11 == r3) goto L31
            if (r11 == r6) goto L31
            if (r11 != r8) goto L33
        L31:
            r3 = r5
            goto L34
        L33:
            r3 = r7
        L34:
            r3.hashCode()
            int r11 = r3.hashCode()
            r4 = 4
            r9 = 3
            switch(r11) {
                case -1664118616: goto L73;
                case -1662541442: goto L6c;
                case 1187890754: goto L61;
                case 1331836730: goto L58;
                case 1599127256: goto L4d;
                case 1599127257: goto L42;
                default: goto L40;
            }
        L40:
            r6 = r2
            goto L7d
        L42:
            java.lang.String r11 = "video/x-vnd.on2.vp9"
            boolean r11 = r3.equals(r11)
            if (r11 != 0) goto L4b
            goto L40
        L4b:
            r6 = 5
            goto L7d
        L4d:
            java.lang.String r11 = "video/x-vnd.on2.vp8"
            boolean r11 = r3.equals(r11)
            if (r11 != 0) goto L56
            goto L40
        L56:
            r6 = r4
            goto L7d
        L58:
            boolean r11 = r3.equals(r5)
            if (r11 != 0) goto L5f
            goto L40
        L5f:
            r6 = r9
            goto L7d
        L61:
            java.lang.String r11 = "video/mp4v-es"
            boolean r11 = r3.equals(r11)
            if (r11 != 0) goto L6a
            goto L40
        L6a:
            r6 = r8
            goto L7d
        L6c:
            boolean r11 = r3.equals(r7)
            if (r11 != 0) goto L7d
            goto L40
        L73:
            java.lang.String r11 = "video/3gpp"
            boolean r11 = r3.equals(r11)
            if (r11 != 0) goto L7c
            goto L40
        L7c:
            r6 = 0
        L7d:
            switch(r6) {
                case 0: goto Lbc;
                case 1: goto Lba;
                case 2: goto Lbc;
                case 3: goto L81;
                case 4: goto Lbc;
                case 5: goto Lba;
                default: goto L80;
            }
        L80:
            return r2
        L81:
            java.lang.String r11 = com.google.android.exoplayer2.util.Util.MODEL
            java.lang.String r3 = "BRAVIA 4K 2015"
            boolean r3 = r3.equals(r11)
            if (r3 != 0) goto Lb9
            java.lang.String r3 = "Amazon"
            java.lang.String r4 = com.google.android.exoplayer2.util.Util.MANUFACTURER
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto Laa
            java.lang.String r3 = "KFSOWI"
            boolean r3 = r3.equals(r11)
            if (r3 != 0) goto Lb9
            java.lang.String r3 = "AFTS"
            boolean r11 = r3.equals(r11)
            if (r11 == 0) goto Laa
            boolean r10 = r10.secure
            if (r10 == 0) goto Laa
            goto Lb9
        Laa:
            r10 = 16
            int r11 = com.google.android.exoplayer2.util.Util.ceilDivide(r0, r10)
            int r0 = com.google.android.exoplayer2.util.Util.ceilDivide(r1, r10)
            int r11 = r11 * r0
            int r11 = r11 * r10
            int r0 = r11 * 16
            goto Lbd
        Lb9:
            return r2
        Lba:
            int r0 = r0 * r1
            goto Lbe
        Lbc:
            int r0 = r0 * r1
        Lbd:
            r4 = r8
        Lbe:
            int r0 = r0 * r9
            int r4 = r4 * r8
            int r0 = r0 / r4
            return r0
        Lc2:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.MediaCodecVideoRenderer.m21597W(com.google.android.exoplayer2.mediacodec.MediaCodecInfo, com.google.android.exoplayer2.Format):int");
    }

    /* renamed from: X */
    public static Point m21598X(MediaCodecInfo mediaCodecInfo, Format format) {
        int i = format.height;
        int i2 = format.width;
        boolean z = i > i2;
        int i3 = z ? i : i2;
        if (z) {
            i = i2;
        }
        float f = i / i3;
        for (int i4 : f28541B2) {
            int i5 = (int) (i4 * f);
            if (i4 <= i3 || i5 <= i) {
                break;
            }
            if (Util.SDK_INT >= 21) {
                int i6 = z ? i5 : i4;
                if (!z) {
                    i4 = i5;
                }
                Point alignVideoSizeV21 = mediaCodecInfo.alignVideoSizeV21(i6, i4);
                if (mediaCodecInfo.isVideoSizeAndRateSupportedV21(alignVideoSizeV21.x, alignVideoSizeV21.y, format.frameRate)) {
                    return alignVideoSizeV21;
                }
            } else {
                try {
                    int ceilDivide = Util.ceilDivide(i4, 16) * 16;
                    int ceilDivide2 = Util.ceilDivide(i5, 16) * 16;
                    if (ceilDivide * ceilDivide2 <= MediaCodecUtil.maxH264DecodableFrameSize()) {
                        int i7 = z ? ceilDivide2 : ceilDivide;
                        if (!z) {
                            ceilDivide = ceilDivide2;
                        }
                        return new Point(i7, ceilDivide);
                    }
                } catch (MediaCodecUtil.DecoderQueryException unused) {
                }
            }
        }
        return null;
    }

    /* renamed from: Y */
    public static List<MediaCodecInfo> m21599Y(MediaCodecSelector mediaCodecSelector, Format format, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException {
        String str = format.sampleMimeType;
        if (str == null) {
            return ImmutableList.m26161of();
        }
        List<MediaCodecInfo> decoderInfos = mediaCodecSelector.getDecoderInfos(str, z, z2);
        String alternativeCodecMimeType = MediaCodecUtil.getAlternativeCodecMimeType(format);
        if (alternativeCodecMimeType == null) {
            return ImmutableList.copyOf((Collection) decoderInfos);
        }
        return ImmutableList.builder().addAll((Iterable) decoderInfos).addAll((Iterable) mediaCodecSelector.getDecoderInfos(alternativeCodecMimeType, z, z2)).build();
    }

    /* renamed from: Z */
    public static boolean m21600Z(long j) {
        return j < -30000;
    }

    /* renamed from: a0 */
    public static boolean m21601a0(long j) {
        return j < -500000;
    }

    public static int getMaxInputSize(MediaCodecInfo mediaCodecInfo, Format format) {
        if (format.maxInputSize == -1) {
            return m21597W(mediaCodecInfo, format);
        }
        int size = format.initializationData.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += format.initializationData.get(i2).length;
        }
        return format.maxInputSize + i;
    }

    @RequiresApi(29)
    /* renamed from: k0 */
    public static void m21602k0(MediaCodecAdapter mediaCodecAdapter, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        mediaCodecAdapter.setParameters(bundle);
    }

    /* renamed from: R */
    public final void m21603R() {
        MediaCodecAdapter codec;
        this.f28563a2 = false;
        if (Util.SDK_INT < 23 || !this.f28581s2 || (codec = getCodec()) == null) {
            return;
        }
        this.f28583u2 = new C5026a(codec);
    }

    /* renamed from: S */
    public final void m21604S() {
        this.f28580r2 = null;
    }

    /* renamed from: b0 */
    public final void m21605b0() {
        if (this.f28569g2 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f28552P1.droppedFrames(this.f28569g2, elapsedRealtime - this.f28568f2);
            this.f28569g2 = 0;
            this.f28568f2 = elapsedRealtime;
        }
    }

    /* renamed from: c0 */
    public void m21606c0() {
        this.f28565c2 = true;
        if (this.f28563a2) {
            return;
        }
        this.f28563a2 = true;
        this.f28552P1.renderedFirstFrame(this.f28559W1);
        this.f28561Y1 = true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public DecoderReuseEvaluation canReuseCodec(MediaCodecInfo mediaCodecInfo, Format format, Format format2) {
        DecoderReuseEvaluation canReuseCodec = mediaCodecInfo.canReuseCodec(format, format2);
        int i = canReuseCodec.discardReasons;
        int i2 = format2.width;
        CodecMaxValues codecMaxValues = this.f28556T1;
        if (i2 > codecMaxValues.width || format2.height > codecMaxValues.height) {
            i |= 256;
        }
        if (getMaxInputSize(mediaCodecInfo, format2) > this.f28556T1.inputSize) {
            i |= 64;
        }
        int i3 = i;
        return new DecoderReuseEvaluation(mediaCodecInfo.name, format, format2, i3 != 0 ? 0 : canReuseCodec.result, i3);
    }

    public boolean codecNeedsSetOutputSurfaceWorkaround(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (MediaCodecVideoRenderer.class) {
            if (!f28544E2) {
                f28545F2 = m21596V();
                f28544E2 = true;
            }
        }
        return f28545F2;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public MediaCodecDecoderException createDecoderException(Throwable th, @Nullable MediaCodecInfo mediaCodecInfo) {
        return new MediaCodecVideoDecoderException(th, mediaCodecInfo, this.f28559W1);
    }

    /* renamed from: d0 */
    public final void m21607d0() {
        int i = this.f28575m2;
        if (i != 0) {
            this.f28552P1.reportVideoFrameProcessingOffset(this.f28574l2, i);
            this.f28574l2 = 0L;
            this.f28575m2 = 0;
        }
    }

    public void dropOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        TraceUtil.beginSection("dropVideoBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, false);
        TraceUtil.endSection();
        updateDroppedBufferCounters(0, 1);
    }

    /* renamed from: e0 */
    public final void m21608e0() {
        int i = this.f28576n2;
        if (i == -1 && this.f28577o2 == -1) {
            return;
        }
        VideoSize videoSize = this.f28580r2;
        if (videoSize != null && videoSize.width == i && videoSize.height == this.f28577o2 && videoSize.unappliedRotationDegrees == this.f28578p2 && videoSize.pixelWidthHeightRatio == this.f28579q2) {
            return;
        }
        VideoSize videoSize2 = new VideoSize(this.f28576n2, this.f28577o2, this.f28578p2, this.f28579q2);
        this.f28580r2 = videoSize2;
        this.f28552P1.videoSizeChanged(videoSize2);
    }

    /* renamed from: f0 */
    public final void m21609f0() {
        if (this.f28561Y1) {
            this.f28552P1.renderedFirstFrame(this.f28559W1);
        }
    }

    /* renamed from: g0 */
    public final void m21610g0() {
        VideoSize videoSize = this.f28580r2;
        if (videoSize != null) {
            this.f28552P1.videoSizeChanged(videoSize);
        }
    }

    public CodecMaxValues getCodecMaxValues(MediaCodecInfo mediaCodecInfo, Format format, Format[] formatArr) {
        int m21597W;
        int i = format.width;
        int i2 = format.height;
        int maxInputSize = getMaxInputSize(mediaCodecInfo, format);
        if (formatArr.length == 1) {
            if (maxInputSize != -1 && (m21597W = m21597W(mediaCodecInfo, format)) != -1) {
                maxInputSize = Math.min((int) (maxInputSize * 1.5f), m21597W);
            }
            return new CodecMaxValues(i, i2, maxInputSize);
        }
        int length = formatArr.length;
        boolean z = false;
        for (int i3 = 0; i3 < length; i3++) {
            Format format2 = formatArr[i3];
            if (format.colorInfo != null && format2.colorInfo == null) {
                format2 = format2.buildUpon().setColorInfo(format.colorInfo).build();
            }
            if (mediaCodecInfo.canReuseCodec(format, format2).result != 0) {
                int i4 = format2.width;
                z |= i4 == -1 || format2.height == -1;
                i = Math.max(i, i4);
                i2 = Math.max(i2, format2.height);
                maxInputSize = Math.max(maxInputSize, getMaxInputSize(mediaCodecInfo, format2));
            }
        }
        if (z) {
            StringBuilder sb = new StringBuilder(66);
            sb.append("Resolutions unknown. Codec max resolution: ");
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            Log.m21493w(f28546w2, sb.toString());
            Point m21598X = m21598X(mediaCodecInfo, format);
            if (m21598X != null) {
                i = Math.max(i, m21598X.x);
                i2 = Math.max(i2, m21598X.y);
                maxInputSize = Math.max(maxInputSize, m21597W(mediaCodecInfo, format.buildUpon().setWidth(i).setHeight(i2).build()));
                StringBuilder sb2 = new StringBuilder(57);
                sb2.append("Codec max resolution adjusted to: ");
                sb2.append(i);
                sb2.append("x");
                sb2.append(i2);
                Log.m21493w(f28546w2, sb2.toString());
            }
        }
        return new CodecMaxValues(i, i2, maxInputSize);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public boolean getCodecNeedsEosPropagation() {
        return this.f28581s2 && Util.SDK_INT < 23;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public float getCodecOperatingRateV23(float f, Format format, Format[] formatArr) {
        float f2 = -1.0f;
        for (Format format2 : formatArr) {
            float f3 = format2.frameRate;
            if (f3 != -1.0f) {
                f2 = Math.max(f2, f3);
            }
        }
        if (f2 == -1.0f) {
            return -1.0f;
        }
        return f2 * f;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.getDecoderInfosSortedByFormatSupport(m21599Y(mediaCodecSelector, format, z, this.f28581s2), format);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @TargetApi(17)
    public MediaCodecAdapter.Configuration getMediaCodecConfiguration(MediaCodecInfo mediaCodecInfo, Format format, @Nullable MediaCrypto mediaCrypto, float f) {
        DummySurface dummySurface = this.f28560X1;
        if (dummySurface != null && dummySurface.secure != mediaCodecInfo.secure) {
            m21613j0();
        }
        String str = mediaCodecInfo.codecMimeType;
        CodecMaxValues codecMaxValues = getCodecMaxValues(mediaCodecInfo, format, getStreamFormats());
        this.f28556T1 = codecMaxValues;
        MediaFormat mediaFormat = getMediaFormat(format, str, codecMaxValues, f, this.f28555S1, this.f28581s2 ? this.f28582t2 : 0);
        if (this.f28559W1 == null) {
            if (!m21615m0(mediaCodecInfo)) {
                throw new IllegalStateException();
            }
            if (this.f28560X1 == null) {
                this.f28560X1 = DummySurface.newInstanceV17(this.f28550N1, mediaCodecInfo.secure);
            }
            this.f28559W1 = this.f28560X1;
        }
        return MediaCodecAdapter.Configuration.createForVideoDecoding(mediaCodecInfo, mediaFormat, format, this.f28559W1, mediaCrypto);
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(21)
    public MediaFormat getMediaFormat(Format format, String str, CodecMaxValues codecMaxValues, float f, boolean z, int i) {
        Pair<Integer, Integer> codecProfileAndLevel;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", format.width);
        mediaFormat.setInteger("height", format.height);
        MediaFormatUtil.setCsdBuffers(mediaFormat, format.initializationData);
        MediaFormatUtil.maybeSetFloat(mediaFormat, "frame-rate", format.frameRate);
        MediaFormatUtil.maybeSetInteger(mediaFormat, "rotation-degrees", format.rotationDegrees);
        MediaFormatUtil.maybeSetColorInfo(mediaFormat, format.colorInfo);
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(format.sampleMimeType) && (codecProfileAndLevel = MediaCodecUtil.getCodecProfileAndLevel(format)) != null) {
            MediaFormatUtil.maybeSetInteger(mediaFormat, Scopes.PROFILE, ((Integer) codecProfileAndLevel.first).intValue());
        }
        mediaFormat.setInteger("max-width", codecMaxValues.width);
        mediaFormat.setInteger("max-height", codecMaxValues.height);
        MediaFormatUtil.maybeSetInteger(mediaFormat, "max-input-size", codecMaxValues.inputSize);
        if (Util.SDK_INT >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i != 0) {
            m21594T(mediaFormat, i);
        }
        return mediaFormat;
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public String getName() {
        return f28546w2;
    }

    public Surface getSurface() {
        return this.f28559W1;
    }

    /* renamed from: h0 */
    public final void m21611h0(long j, long j2, Format format) {
        VideoFrameMetadataListener videoFrameMetadataListener = this.f28584v2;
        if (videoFrameMetadataListener != null) {
            videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j, j2, format, getCodecOutputMediaFormat());
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @TargetApi(29)
    public void handleInputBufferSupplementalData(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        if (this.f28558V1) {
            ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(decoderInputBuffer.supplementalData);
            if (byteBuffer.remaining() >= 7) {
                byte b = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byteBuffer.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4 && b3 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    m21602k0(getCodec(), bArr);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, @Nullable Object obj) throws ExoPlaybackException {
        if (i == 1) {
            setOutput(obj);
            return;
        }
        if (i == 7) {
            this.f28584v2 = (VideoFrameMetadataListener) obj;
            return;
        }
        if (i == 10) {
            int intValue = ((Integer) obj).intValue();
            if (this.f28582t2 != intValue) {
                this.f28582t2 = intValue;
                if (this.f28581s2) {
                    releaseCodec();
                    return;
                }
                return;
            }
            return;
        }
        if (i != 4) {
            if (i != 5) {
                super.handleMessage(i, obj);
                return;
            } else {
                this.f28551O1.setChangeFrameRateStrategy(((Integer) obj).intValue());
                return;
            }
        }
        this.f28562Z1 = ((Integer) obj).intValue();
        MediaCodecAdapter codec = getCodec();
        if (codec != null) {
            codec.setVideoScalingMode(this.f28562Z1);
        }
    }

    /* renamed from: i0 */
    public final void m21612i0() {
        setPendingOutputEndOfStream();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        DummySurface dummySurface;
        if (super.isReady() && (this.f28563a2 || (((dummySurface = this.f28560X1) != null && this.f28559W1 == dummySurface) || getCodec() == null || this.f28581s2))) {
            this.f28567e2 = C4649C.TIME_UNSET;
            return true;
        }
        if (this.f28567e2 == C4649C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.f28567e2) {
            return true;
        }
        this.f28567e2 = C4649C.TIME_UNSET;
        return false;
    }

    @RequiresApi(17)
    /* renamed from: j0 */
    public final void m21613j0() {
        Surface surface = this.f28559W1;
        DummySurface dummySurface = this.f28560X1;
        if (surface == dummySurface) {
            this.f28559W1 = null;
        }
        dummySurface.release();
        this.f28560X1 = null;
    }

    /* renamed from: l0 */
    public final void m21614l0() {
        this.f28567e2 = this.f28553Q1 > 0 ? SystemClock.elapsedRealtime() + this.f28553Q1 : C4649C.TIME_UNSET;
    }

    /* renamed from: m0 */
    public final boolean m21615m0(MediaCodecInfo mediaCodecInfo) {
        return Util.SDK_INT >= 23 && !this.f28581s2 && !codecNeedsSetOutputSurfaceWorkaround(mediaCodecInfo.name) && (!mediaCodecInfo.secure || DummySurface.isSecureSupported(this.f28550N1));
    }

    public boolean maybeDropBuffersToKeyframe(long j, boolean z) throws ExoPlaybackException {
        int skipSource = skipSource(j);
        if (skipSource == 0) {
            return false;
        }
        if (z) {
            DecoderCounters decoderCounters = this.decoderCounters;
            decoderCounters.skippedInputBufferCount += skipSource;
            decoderCounters.skippedOutputBufferCount += this.f28571i2;
        } else {
            this.decoderCounters.droppedToKeyframeCount++;
            updateDroppedBufferCounters(skipSource, this.f28571i2);
        }
        flushOrReinitializeCodec();
        return true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onCodecError(Exception exc) {
        Log.m21490e(f28546w2, "Video codec error", exc);
        this.f28552P1.videoCodecError(exc);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onCodecInitialized(String str, MediaCodecAdapter.Configuration configuration, long j, long j2) {
        this.f28552P1.decoderInitialized(str, j, j2);
        this.f28557U1 = codecNeedsSetOutputSurfaceWorkaround(str);
        this.f28558V1 = ((MediaCodecInfo) Assertions.checkNotNull(getCodecInfo())).isHdr10PlusOutOfBandMetadataSupported();
        if (Util.SDK_INT < 23 || !this.f28581s2) {
            return;
        }
        this.f28583u2 = new C5026a((MediaCodecAdapter) Assertions.checkNotNull(getCodec()));
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onCodecReleased(String str) {
        this.f28552P1.decoderReleased(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        m21604S();
        m21603R();
        this.f28561Y1 = false;
        this.f28583u2 = null;
        try {
            super.onDisabled();
        } finally {
            this.f28552P1.disabled(this.decoderCounters);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onEnabled(boolean z, boolean z2) throws ExoPlaybackException {
        super.onEnabled(z, z2);
        boolean z3 = getConfiguration().tunneling;
        Assertions.checkState((z3 && this.f28582t2 == 0) ? false : true);
        if (this.f28581s2 != z3) {
            this.f28581s2 = z3;
            releaseCodec();
        }
        this.f28552P1.enabled(this.decoderCounters);
        this.f28564b2 = z2;
        this.f28565c2 = false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @Nullable
    public DecoderReuseEvaluation onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
        DecoderReuseEvaluation onInputFormatChanged = super.onInputFormatChanged(formatHolder);
        this.f28552P1.inputFormatChanged(formatHolder.format, onInputFormatChanged);
        return onInputFormatChanged;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onOutputFormatChanged(Format format, @Nullable MediaFormat mediaFormat) {
        MediaCodecAdapter codec = getCodec();
        if (codec != null) {
            codec.setVideoScalingMode(this.f28562Z1);
        }
        if (this.f28581s2) {
            this.f28576n2 = format.width;
            this.f28577o2 = format.height;
        } else {
            Assertions.checkNotNull(mediaFormat);
            boolean z = mediaFormat.containsKey(f28548y2) && mediaFormat.containsKey(f28547x2) && mediaFormat.containsKey(f28549z2) && mediaFormat.containsKey(f28540A2);
            this.f28576n2 = z ? (mediaFormat.getInteger(f28548y2) - mediaFormat.getInteger(f28547x2)) + 1 : mediaFormat.getInteger("width");
            this.f28577o2 = z ? (mediaFormat.getInteger(f28549z2) - mediaFormat.getInteger(f28540A2)) + 1 : mediaFormat.getInteger("height");
        }
        float f = format.pixelWidthHeightRatio;
        this.f28579q2 = f;
        if (Util.SDK_INT >= 21) {
            int i = format.rotationDegrees;
            if (i == 90 || i == 270) {
                int i2 = this.f28576n2;
                this.f28576n2 = this.f28577o2;
                this.f28577o2 = i2;
                this.f28579q2 = 1.0f / f;
            }
        } else {
            this.f28578p2 = format.rotationDegrees;
        }
        this.f28551O1.onFormatChanged(format.frameRate);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
        super.onPositionReset(j, z);
        m21603R();
        this.f28551O1.onPositionReset();
        this.f28572j2 = C4649C.TIME_UNSET;
        this.f28566d2 = C4649C.TIME_UNSET;
        this.f28570h2 = 0;
        if (z) {
            m21614l0();
        } else {
            this.f28567e2 = C4649C.TIME_UNSET;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @CallSuper
    public void onProcessedOutputBuffer(long j) {
        super.onProcessedOutputBuffer(j);
        if (this.f28581s2) {
            return;
        }
        this.f28571i2--;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onProcessedStreamChange() {
        super.onProcessedStreamChange();
        m21603R();
    }

    public void onProcessedTunneledBuffer(long j) throws ExoPlaybackException {
        updateOutputFormatForTime(j);
        m21608e0();
        this.decoderCounters.renderedOutputBufferCount++;
        m21606c0();
        onProcessedOutputBuffer(j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @CallSuper
    public void onQueueInputBuffer(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        boolean z = this.f28581s2;
        if (!z) {
            this.f28571i2++;
        }
        if (Util.SDK_INT >= 23 || !z) {
            return;
        }
        onProcessedTunneledBuffer(decoderInputBuffer.timeUs);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    @TargetApi(17)
    public void onReset() {
        try {
            super.onReset();
        } finally {
            if (this.f28560X1 != null) {
                m21613j0();
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onStarted() {
        super.onStarted();
        this.f28569g2 = 0;
        this.f28568f2 = SystemClock.elapsedRealtime();
        this.f28573k2 = SystemClock.elapsedRealtime() * 1000;
        this.f28574l2 = 0L;
        this.f28575m2 = 0;
        this.f28551O1.onStarted();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onStopped() {
        this.f28567e2 = C4649C.TIME_UNSET;
        m21605b0();
        m21607d0();
        this.f28551O1.onStopped();
        super.onStopped();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public boolean processOutputBuffer(long j, long j2, @Nullable MediaCodecAdapter mediaCodecAdapter, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format) throws ExoPlaybackException {
        boolean z3;
        long j4;
        Assertions.checkNotNull(mediaCodecAdapter);
        if (this.f28566d2 == C4649C.TIME_UNSET) {
            this.f28566d2 = j;
        }
        if (j3 != this.f28572j2) {
            this.f28551O1.onNextFrame(j3);
            this.f28572j2 = j3;
        }
        long outputStreamOffsetUs = getOutputStreamOffsetUs();
        long j5 = j3 - outputStreamOffsetUs;
        if (z && !z2) {
            skipOutputBuffer(mediaCodecAdapter, i, j5);
            return true;
        }
        double playbackSpeed = getPlaybackSpeed();
        boolean z4 = getState() == 2;
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j6 = (long) ((j3 - j) / playbackSpeed);
        if (z4) {
            j6 -= elapsedRealtime - j2;
        }
        if (this.f28559W1 == this.f28560X1) {
            if (!m21600Z(j6)) {
                return false;
            }
            skipOutputBuffer(mediaCodecAdapter, i, j5);
            updateVideoFrameProcessingOffsetCounters(j6);
            return true;
        }
        long j7 = elapsedRealtime - this.f28573k2;
        if (this.f28565c2 ? this.f28563a2 : !(z4 || this.f28564b2)) {
            j4 = j7;
            z3 = false;
        } else {
            z3 = true;
            j4 = j7;
        }
        if (this.f28567e2 == C4649C.TIME_UNSET && j >= outputStreamOffsetUs && (z3 || (z4 && shouldForceRenderOutputBuffer(j6, j4)))) {
            long nanoTime = System.nanoTime();
            m21611h0(j5, nanoTime, format);
            if (Util.SDK_INT >= 21) {
                renderOutputBufferV21(mediaCodecAdapter, i, j5, nanoTime);
            } else {
                renderOutputBuffer(mediaCodecAdapter, i, j5);
            }
            updateVideoFrameProcessingOffsetCounters(j6);
            return true;
        }
        if (z4 && j != this.f28566d2) {
            long nanoTime2 = System.nanoTime();
            long adjustReleaseTime = this.f28551O1.adjustReleaseTime((j6 * 1000) + nanoTime2);
            long j8 = (adjustReleaseTime - nanoTime2) / 1000;
            boolean z5 = this.f28567e2 != C4649C.TIME_UNSET;
            if (shouldDropBuffersToKeyframe(j8, j2, z2) && maybeDropBuffersToKeyframe(j, z5)) {
                return false;
            }
            if (shouldDropOutputBuffer(j8, j2, z2)) {
                if (z5) {
                    skipOutputBuffer(mediaCodecAdapter, i, j5);
                } else {
                    dropOutputBuffer(mediaCodecAdapter, i, j5);
                }
                updateVideoFrameProcessingOffsetCounters(j8);
                return true;
            }
            if (Util.SDK_INT >= 21) {
                if (j8 < 50000) {
                    m21611h0(j5, adjustReleaseTime, format);
                    renderOutputBufferV21(mediaCodecAdapter, i, j5, adjustReleaseTime);
                    updateVideoFrameProcessingOffsetCounters(j8);
                    return true;
                }
            } else if (j8 < 30000) {
                if (j8 > 11000) {
                    try {
                        Thread.sleep((j8 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                m21611h0(j5, adjustReleaseTime, format);
                renderOutputBuffer(mediaCodecAdapter, i, j5);
                updateVideoFrameProcessingOffsetCounters(j8);
                return true;
            }
        }
        return false;
    }

    public void renderOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        m21608e0();
        TraceUtil.beginSection("releaseOutputBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, true);
        TraceUtil.endSection();
        this.f28573k2 = SystemClock.elapsedRealtime() * 1000;
        this.decoderCounters.renderedOutputBufferCount++;
        this.f28570h2 = 0;
        m21606c0();
    }

    @RequiresApi(21)
    public void renderOutputBufferV21(MediaCodecAdapter mediaCodecAdapter, int i, long j, long j2) {
        m21608e0();
        TraceUtil.beginSection("releaseOutputBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, j2);
        TraceUtil.endSection();
        this.f28573k2 = SystemClock.elapsedRealtime() * 1000;
        this.decoderCounters.renderedOutputBufferCount++;
        this.f28570h2 = 0;
        m21606c0();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @CallSuper
    public void resetCodecStateForFlush() {
        super.resetCodecStateForFlush();
        this.f28571i2 = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.video.MediaCodecVideoRenderer] */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.view.Surface] */
    public final void setOutput(@Nullable Object obj) throws ExoPlaybackException {
        DummySurface dummySurface = obj instanceof Surface ? (Surface) obj : null;
        if (dummySurface == null) {
            DummySurface dummySurface2 = this.f28560X1;
            if (dummySurface2 != null) {
                dummySurface = dummySurface2;
            } else {
                MediaCodecInfo codecInfo = getCodecInfo();
                if (codecInfo != null && m21615m0(codecInfo)) {
                    dummySurface = DummySurface.newInstanceV17(this.f28550N1, codecInfo.secure);
                    this.f28560X1 = dummySurface;
                }
            }
        }
        if (this.f28559W1 == dummySurface) {
            if (dummySurface == null || dummySurface == this.f28560X1) {
                return;
            }
            m21610g0();
            m21609f0();
            return;
        }
        this.f28559W1 = dummySurface;
        this.f28551O1.onSurfaceChanged(dummySurface);
        this.f28561Y1 = false;
        int state = getState();
        MediaCodecAdapter codec = getCodec();
        if (codec != null) {
            if (Util.SDK_INT < 23 || dummySurface == null || this.f28557U1) {
                releaseCodec();
                maybeInitCodecOrBypass();
            } else {
                setOutputSurfaceV23(codec, dummySurface);
            }
        }
        if (dummySurface == null || dummySurface == this.f28560X1) {
            m21604S();
            m21603R();
            return;
        }
        m21610g0();
        m21603R();
        if (state == 2) {
            m21614l0();
        }
    }

    @RequiresApi(23)
    public void setOutputSurfaceV23(MediaCodecAdapter mediaCodecAdapter, Surface surface) {
        mediaCodecAdapter.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.Renderer
    public void setPlaybackSpeed(float f, float f2) throws ExoPlaybackException {
        super.setPlaybackSpeed(f, f2);
        this.f28551O1.onPlaybackSpeed(f);
    }

    public boolean shouldDropBuffersToKeyframe(long j, long j2, boolean z) {
        return m21601a0(j) && !z;
    }

    public boolean shouldDropOutputBuffer(long j, long j2, boolean z) {
        return m21600Z(j) && !z;
    }

    public boolean shouldForceRenderOutputBuffer(long j, long j2) {
        return m21600Z(j) && j2 > 100000;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public boolean shouldInitCodec(MediaCodecInfo mediaCodecInfo) {
        return this.f28559W1 != null || m21615m0(mediaCodecInfo);
    }

    public void skipOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        TraceUtil.beginSection("skipVideoBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, false);
        TraceUtil.endSection();
        this.decoderCounters.skippedOutputBufferCount++;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public int supportsFormat(MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException {
        boolean z;
        int i = 0;
        if (!MimeTypes.isVideo(format.sampleMimeType)) {
            return RendererCapabilities.create(0);
        }
        boolean z2 = format.drmInitData != null;
        List<MediaCodecInfo> m21599Y = m21599Y(mediaCodecSelector, format, z2, false);
        if (z2 && m21599Y.isEmpty()) {
            m21599Y = m21599Y(mediaCodecSelector, format, false, false);
        }
        if (m21599Y.isEmpty()) {
            return RendererCapabilities.create(1);
        }
        if (!MediaCodecRenderer.supportsFormatDrm(format)) {
            return RendererCapabilities.create(2);
        }
        MediaCodecInfo mediaCodecInfo = m21599Y.get(0);
        boolean isFormatSupported = mediaCodecInfo.isFormatSupported(format);
        if (!isFormatSupported) {
            for (int i2 = 1; i2 < m21599Y.size(); i2++) {
                MediaCodecInfo mediaCodecInfo2 = m21599Y.get(i2);
                if (mediaCodecInfo2.isFormatSupported(format)) {
                    z = false;
                    isFormatSupported = true;
                    mediaCodecInfo = mediaCodecInfo2;
                    break;
                }
            }
        }
        z = true;
        int i3 = isFormatSupported ? 4 : 3;
        int i4 = mediaCodecInfo.isSeamlessAdaptationSupported(format) ? 16 : 8;
        int i5 = mediaCodecInfo.hardwareAccelerated ? 64 : 0;
        int i6 = z ? 128 : 0;
        if (isFormatSupported) {
            List<MediaCodecInfo> m21599Y2 = m21599Y(mediaCodecSelector, format, z2, true);
            if (!m21599Y2.isEmpty()) {
                MediaCodecInfo mediaCodecInfo3 = MediaCodecUtil.getDecoderInfosSortedByFormatSupport(m21599Y2, format).get(0);
                if (mediaCodecInfo3.isFormatSupported(format) && mediaCodecInfo3.isSeamlessAdaptationSupported(format)) {
                    i = 32;
                }
            }
        }
        return RendererCapabilities.create(i3, i4, i, i5, i6);
    }

    public void updateDroppedBufferCounters(int i, int i2) {
        DecoderCounters decoderCounters = this.decoderCounters;
        decoderCounters.droppedInputBufferCount += i;
        int i3 = i + i2;
        decoderCounters.droppedBufferCount += i3;
        this.f28569g2 += i3;
        int i4 = this.f28570h2 + i3;
        this.f28570h2 = i4;
        decoderCounters.maxConsecutiveDroppedBufferCount = Math.max(i4, decoderCounters.maxConsecutiveDroppedBufferCount);
        int i5 = this.f28554R1;
        if (i5 <= 0 || this.f28569g2 < i5) {
            return;
        }
        m21605b0();
    }

    public void updateVideoFrameProcessingOffsetCounters(long j) {
        this.decoderCounters.addVideoFrameProcessingOffset(j);
        this.f28574l2 += j;
        this.f28575m2++;
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j) {
        this(context, mediaCodecSelector, j, null, null, 0);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j, @Nullable Handler handler, @Nullable VideoRendererEventListener videoRendererEventListener, int i) {
        this(context, MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, j, false, handler, videoRendererEventListener, i, 30.0f);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j, boolean z, @Nullable Handler handler, @Nullable VideoRendererEventListener videoRendererEventListener, int i) {
        this(context, MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, j, z, handler, videoRendererEventListener, i, 30.0f);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j, boolean z, @Nullable Handler handler, @Nullable VideoRendererEventListener videoRendererEventListener, int i) {
        this(context, factory, mediaCodecSelector, j, z, handler, videoRendererEventListener, i, 30.0f);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j, boolean z, @Nullable Handler handler, @Nullable VideoRendererEventListener videoRendererEventListener, int i, float f) {
        super(2, factory, mediaCodecSelector, z, f);
        this.f28553Q1 = j;
        this.f28554R1 = i;
        Context applicationContext = context.getApplicationContext();
        this.f28550N1 = applicationContext;
        this.f28551O1 = new VideoFrameReleaseHelper(applicationContext);
        this.f28552P1 = new VideoRendererEventListener.EventDispatcher(handler, videoRendererEventListener);
        this.f28555S1 = m21595U();
        this.f28567e2 = C4649C.TIME_UNSET;
        this.f28576n2 = -1;
        this.f28577o2 = -1;
        this.f28579q2 = -1.0f;
        this.f28562Z1 = 1;
        this.f28582t2 = 0;
        m21604S();
    }
}
