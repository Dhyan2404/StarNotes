package com.onyx.android.sdk.media.codec.encoder;

import android.media.MediaCodec;
import android.media.MediaFormat;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.media.AudioBufferExtKt;
import com.onyx.android.sdk.media.bean.AudioDataBean;
import com.onyx.android.sdk.media.config.FormatConfig;
import com.onyx.android.sdk.media.config.RecordingConfig;
import com.onyx.android.sdk.media.container.IMediaContainer;
import com.onyx.android.sdk.media.container.MediaFileContainer;
import com.onyx.android.sdk.media.container.MediaMuxerContainer;
import com.onyx.android.sdk.media.utils.EncodeUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b=\u0010>J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\tJ\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\fH\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0016\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J,\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0!2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001bH\u0002J&\u0010'\u001a\u00020\u00042\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00160#2\u0006\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\u001bH\u0002J\b\u0010(\u001a\u00020\u0010H\u0002J\u000e\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J\b\u0010*\u001a\u00020\u0004H\u0002J&\u0010.\u001a\u00020\u00042\u0006\u0010,\u001a\u00020+2\u0006\u0010%\u001a\u00020\u001b2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00160#H\u0002J\u0010\u0010/\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u001bH\u0002R\u0018\u00102\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u00101R\u0018\u00105\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u00104R\u0018\u00108\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u00107R\u0016\u0010:\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u00109R\u0016\u0010<\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010;¨\u0006?"}, m61528d2 = {"Lcom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder;", "Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;", "Lcom/onyx/android/sdk/media/config/FormatConfig;", AbstractLogger.CONFIG, "", "createAudioFormat", "createMediaCodec", "", "outputPath", "", "appendMode", "createAudioContainer", "Lcom/onyx/android/sdk/media/config/RecordingConfig;", "init", gon.f71290o0, "stop", "", "getRecordDuration", "flush", "", "data", "", "Lcom/onyx/android/sdk/media/bean/AudioDataBean;", "encode", C4921e.f26537n, C6998g.f39679a, C6999h.f39688c, "", "dataSize", "j", "c", TypedValues.CycleType.S_WAVE_OFFSET, "length", "Lkotlin/Pair;", C6997f.f39671c, "", "list", FirebaseAnalytics.Param.INDEX, "limit", "a", "d", "b", "i", "Landroid/media/MediaCodec$BufferInfo;", PrivilegedApp.f6532i, "encodeDataList", "l", "e", "Landroid/media/MediaCodec;", "Landroid/media/MediaCodec;", "mediaCodec", "Landroid/media/MediaFormat;", "Landroid/media/MediaFormat;", "audioFormat", "Lcom/onyx/android/sdk/media/container/IMediaContainer;", "Lcom/onyx/android/sdk/media/container/IMediaContainer;", "audioContainer", "I", "bytePerSec", "J", "recordTimeDurationInUs", Constants.CONSTRUCTOR_NAME, "()V", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDefaultAudioEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultAudioEncoder.kt\ncom/onyx/android/sdk/media/codec/encoder/DefaultAudioEncoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,223:1\n1#2:224\n*E\n"})
/* loaded from: classes7.dex */
public final class DefaultAudioEncoder implements IAudioEncoder {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public MediaCodec mediaCodec;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public MediaFormat audioFormat;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public IMediaContainer audioContainer;

    /* renamed from: d, reason: from kotlin metadata */
    public int bytePerSec;

    /* renamed from: e, reason: from kotlin metadata */
    public long recordTimeDurationInUs;

    public static /* synthetic */ void createAudioContainer$default(DefaultAudioEncoder defaultAudioEncoder, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        defaultAudioEncoder.createAudioContainer(str, z);
    }

    /* renamed from: a */
    public final void m33486a(List<AudioDataBean> list, int index, int limit) {
        MediaCodec mediaCodec = this.mediaCodec;
        if (mediaCodec != null) {
            mediaCodec.queueInputBuffer(index, 0, limit, getRecordTimeDurationInUs(), 0);
        }
        list.addAll(m33487b());
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0017, code lost:
    
        r2 = -1;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.onyx.android.sdk.media.bean.AudioDataBean> m33487b() {
        /*
            r8 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            android.media.MediaCodec$BufferInfo r1 = new android.media.MediaCodec$BufferInfo
            r1.<init>()
            android.media.MediaCodec r2 = r8.mediaCodec
            r3 = 0
            r5 = -1
            if (r2 == 0) goto L16
            int r2 = r2.dequeueOutputBuffer(r1, r3)
            goto L17
        L16:
            r2 = r5
        L17:
            if (r2 < 0) goto L4c
            r8.m33494i()
            r8.m33497l(r1, r2, r0)
            boolean r6 = com.onyx.android.sdk.media.AudioBufferExtKt.isEndOfStream(r1)
            if (r6 == 0) goto L43
            com.onyx.android.sdk.base.utils.Debug r3 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.Class<com.onyx.android.sdk.media.codec.encoder.DefaultAudioEncoder> r4 = com.onyx.android.sdk.media.codec.encoder.DefaultAudioEncoder.class
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "write last frame, time: "
            r5.append(r6)
            long r6 = r1.presentationTimeUs
            r5.append(r6)
            java.lang.String r1 = r5.toString()
            r5 = 0
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r3.m32052i(r4, r1, r5)
            goto L4c
        L43:
            android.media.MediaCodec r2 = r8.mediaCodec
            if (r2 == 0) goto L16
            int r2 = r2.dequeueOutputBuffer(r1, r3)
            goto L17
        L4c:
            r8.m33490e(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.media.codec.encoder.DefaultAudioEncoder.m33487b():java.util.List");
    }

    /* renamed from: c */
    public final List<AudioDataBean> m33488c(byte[] data) {
        int length = data.length;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < length) {
            Pair<Integer, Integer> m33491f = m33491f(data, i, length);
            int intValue = m33491f.component1().intValue();
            int intValue2 = m33491f.component2().intValue();
            if (intValue < 0 || intValue2 <= 0) {
                Debug.INSTANCE.m32044e(DefaultAudioEncoder.class, "dequeueInputBuffer, illegal index: " + intValue + ", limit: " + intValue2, new Object[0]);
                break;
            }
            m33486a(arrayList, intValue, intValue2);
            m33495j(intValue2);
            i += intValue2;
        }
        return arrayList;
    }

    public final void createAudioContainer(@NotNull String outputPath, boolean appendMode) {
        Intrinsics.checkNotNullParameter(outputPath, "outputPath");
        if (this.audioContainer != null) {
            throw new RuntimeException("illegal operation, last audio container is not null released!");
        }
        m33496k(outputPath);
        IMediaContainer mediaMuxerContainer = AudioBufferExtKt.isAACEncode(this.audioFormat) ? new MediaMuxerContainer() : new MediaFileContainer();
        this.audioContainer = mediaMuxerContainer;
        mediaMuxerContainer.onCreate(outputPath, appendMode);
    }

    public final void createAudioFormat(@NotNull FormatConfig config) {
        boolean isBlank;
        MediaFormat mediaFormat;
        Intrinsics.checkNotNullParameter(config, "config");
        String audioMime = config.getAudioMime();
        isBlank = StringsKt__StringsJVMKt.isBlank(audioMime);
        if (!isBlank) {
            this.audioFormat = MediaFormat.createAudioFormat(audioMime, config.getSampleRate(), config.getChannels());
        }
        if (AudioBufferExtKt.isAACEncode(this.audioFormat) && (mediaFormat = this.audioFormat) != null) {
            mediaFormat.setInteger("aac-profile", 2);
        }
        MediaFormat mediaFormat2 = this.audioFormat;
        if (mediaFormat2 != null) {
            mediaFormat2.setInteger("bitrate", config.getBitRate());
        }
        this.bytePerSec = EncodeUtils.INSTANCE.getAudioByteSizePerSec(config.getSampleRate(), config.getAudioFormat(), config.getChannels());
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x000d, code lost:
    
        if (r0 == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void createMediaCodec() {
        /*
            r3 = this;
            android.media.MediaFormat r0 = r3.audioFormat
            if (r0 != 0) goto L5
            return
        L5:
            if (r0 == 0) goto Lf
            java.lang.String r1 = "mime"
            java.lang.String r0 = r0.getString(r1)     // Catch: java.io.IOException -> L21
            if (r0 != 0) goto L11
        Lf:
            java.lang.String r0 = ""
        L11:
            android.media.MediaCodec r0 = android.media.MediaCodec.createEncoderByType(r0)     // Catch: java.io.IOException -> L21
            r3.mediaCodec = r0     // Catch: java.io.IOException -> L21
            if (r0 == 0) goto L29
            android.media.MediaFormat r3 = r3.audioFormat     // Catch: java.io.IOException -> L21
            r1 = 1
            r2 = 0
            r0.configure(r3, r2, r2, r1)     // Catch: java.io.IOException -> L21
            goto L29
        L21:
            r3 = move-exception
            com.onyx.android.sdk.base.utils.Debug r0 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.Class<com.onyx.android.sdk.media.codec.encoder.DefaultAudioEncoder> r1 = com.onyx.android.sdk.media.codec.encoder.DefaultAudioEncoder.class
            r0.m32045e(r1, r3)
        L29:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.media.codec.encoder.DefaultAudioEncoder.createMediaCodec():void");
    }

    /* renamed from: d, reason: from getter */
    public final long getRecordTimeDurationInUs() {
        return this.recordTimeDurationInUs;
    }

    /* renamed from: e */
    public final void m33490e(int index) {
        if (index == -2) {
            Debug.INSTANCE.m32052i(DefaultAudioEncoder.class, "encoding: INFO_OUTPUT_FORMAT_CHANGED", new Object[0]);
        } else {
            if (index != -1) {
                return;
            }
            Debug.INSTANCE.m32035d(DefaultAudioEncoder.class, "encoding: INFO_TRY_AGAIN_LATER", new Object[0]);
        }
    }

    @Override // com.onyx.android.sdk.media.codec.encoder.IAudioEncoder
    @NotNull
    public List<AudioDataBean> encode(@NotNull byte[] data) {
        List<AudioDataBean> listOf;
        Intrinsics.checkNotNullParameter(data, "data");
        if (this.mediaCodec != null) {
            return m33488c(data);
        }
        m33495j(data.length);
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new AudioDataBean(data, System.currentTimeMillis()));
        return listOf;
    }

    /* renamed from: f */
    public final Pair<Integer, Integer> m33491f(byte[] data, int offset, int length) {
        ByteBuffer inputBuffer;
        MediaCodec mediaCodec = this.mediaCodec;
        int dequeueInputBuffer = mediaCodec != null ? mediaCodec.dequeueInputBuffer(-1L) : -1;
        if (dequeueInputBuffer < 0) {
            return new Pair<>(-1, -1);
        }
        MediaCodec mediaCodec2 = this.mediaCodec;
        if (mediaCodec2 == null || (inputBuffer = mediaCodec2.getInputBuffer(dequeueInputBuffer)) == null) {
            return new Pair<>(-1, -1);
        }
        int min = Math.min(inputBuffer.remaining(), length - offset);
        inputBuffer.clear();
        inputBuffer.put(data, offset, min);
        return new Pair<>(Integer.valueOf(dequeueInputBuffer), Integer.valueOf(min));
    }

    @Override // com.onyx.android.sdk.media.codec.encoder.IAudioEncoder
    public void flush() {
        int intValue = m33491f(new byte[0], 0, 0).component1().intValue();
        if (intValue >= 0) {
            MediaCodec mediaCodec = this.mediaCodec;
            if (mediaCodec != null) {
                mediaCodec.queueInputBuffer(intValue, 0, 0, getRecordTimeDurationInUs(), 4);
            }
            m33487b();
            Debug.INSTANCE.m32035d(DefaultAudioEncoder.class, "write end of stream success, total time: " + this.recordTimeDurationInUs, new Object[0]);
        }
    }

    /* renamed from: g */
    public final void m33492g() {
        MediaCodec mediaCodec = this.mediaCodec;
        if (mediaCodec != null) {
            mediaCodec.stop();
        }
        MediaCodec mediaCodec2 = this.mediaCodec;
        if (mediaCodec2 != null) {
            mediaCodec2.release();
        }
        this.mediaCodec = null;
    }

    @Override // com.onyx.android.sdk.media.codec.encoder.IAudioEncoder
    /* renamed from: getRecordDuration */
    public long getRecordTimeDurationInMs() {
        return this.recordTimeDurationInUs / 1000;
    }

    /* renamed from: h */
    public final void m33493h() {
        IMediaContainer iMediaContainer = this.audioContainer;
        if (iMediaContainer != null) {
            iMediaContainer.onRelease();
        }
        this.audioContainer = null;
    }

    /* renamed from: i */
    public final void m33494i() {
        IMediaContainer iMediaContainer;
        IMediaContainer iMediaContainer2 = this.audioContainer;
        if ((iMediaContainer2 != null ? iMediaContainer2.isStarted() : false) || (iMediaContainer = this.audioContainer) == null) {
            return;
        }
        MediaCodec mediaCodec = this.mediaCodec;
        Intrinsics.checkNotNull(mediaCodec);
        MediaFormat outputFormat = mediaCodec.getOutputFormat();
        Intrinsics.checkNotNullExpressionValue(outputFormat, "getOutputFormat(...)");
        iMediaContainer.onStart(outputFormat);
    }

    @Override // com.onyx.android.sdk.media.codec.encoder.IAudioEncoder
    public void init(@NotNull RecordingConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        createAudioFormat(config.getFormatConfig());
        createAudioContainer(config.getFilePath(), config.getAppendMode());
        createMediaCodec();
    }

    /* renamed from: j */
    public final void m33495j(int dataSize) {
        this.recordTimeDurationInUs += ((dataSize * 1000) / this.bytePerSec) * 1000;
    }

    /* renamed from: k */
    public final void m33496k(String outputPath) {
        if (!(outputPath.length() > 0)) {
            throw new IllegalArgumentException("File path must be provided!".toString());
        }
        FileUtils.INSTANCE.ensureFileExists(outputPath);
    }

    /* renamed from: l */
    public final void m33497l(MediaCodec.BufferInfo info, int index, List<AudioDataBean> encodeDataList) {
        ByteBuffer outputBuffer;
        if ((info.flags & 2) != 0) {
            Debug.INSTANCE.m32052i(DefaultAudioEncoder.class, "audio encoder: codec config buffer. flags " + info.flags, new Object[0]);
            MediaCodec mediaCodec = this.mediaCodec;
            if (mediaCodec != null) {
                mediaCodec.releaseOutputBuffer(index, false);
                return;
            }
            return;
        }
        MediaCodec mediaCodec2 = this.mediaCodec;
        if (mediaCodec2 == null || (outputBuffer = mediaCodec2.getOutputBuffer(index)) == null) {
            return;
        }
        outputBuffer.position(info.offset);
        if (AudioBufferExtKt.isCodecFirstFrame(info)) {
            MediaCodec mediaCodec3 = this.mediaCodec;
            if (mediaCodec3 != null) {
                mediaCodec3.releaseOutputBuffer(index, false);
                return;
            }
            return;
        }
        int i = info.size;
        byte[] bArr = new byte[i];
        outputBuffer.get(bArr, 0, i);
        IMediaContainer iMediaContainer = this.audioContainer;
        if (iMediaContainer != null) {
            iMediaContainer.writeSampleData(bArr, info);
        }
        encodeDataList.add(new AudioDataBean(bArr, System.currentTimeMillis()));
        MediaCodec mediaCodec4 = this.mediaCodec;
        if (mediaCodec4 != null) {
            mediaCodec4.releaseOutputBuffer(index, false);
        }
    }

    @Override // com.onyx.android.sdk.media.codec.encoder.IAudioEncoder
    public void start() {
        MediaCodec mediaCodec = this.mediaCodec;
        if (mediaCodec != null) {
            mediaCodec.start();
        }
        this.recordTimeDurationInUs = 0L;
    }

    @Override // com.onyx.android.sdk.media.codec.encoder.IAudioEncoder
    public void stop() {
        m33492g();
        m33493h();
        this.audioFormat = null;
    }
}
