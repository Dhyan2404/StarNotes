package com.onyx.android.sdk.media.codec.encoder;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.media.bean.AudioDataBean;
import com.onyx.android.sdk.media.config.FormatConfig;
import com.onyx.android.sdk.media.config.RecordingConfig;
import com.onyx.android.sdk.media.container.IMediaContainer;
import com.onyx.android.sdk.media.container.MediaFileContainer;
import com.onyx.android.sdk.media.lame.LameBuilder;
import com.onyx.android.sdk.media.lame.OnyxLame;
import com.onyx.android.sdk.media.utils.EncodeUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 )2\u00020\u0001:\u0001)B\u0007¢\u0006\u0004\b'\u0010(J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\f\u001a\u00020\u0004H\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0002R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010#\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010 R\u0016\u0010&\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/media/codec/encoder/Mp3Encoder;", "Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;", "Lcom/onyx/android/sdk/media/config/RecordingConfig;", AbstractLogger.CONFIG, "", "init", gon.f71290o0, "", "data", "", "Lcom/onyx/android/sdk/media/bean/AudioDataBean;", "encode", "flush", "stop", "", "getRecordDuration", "", "outputPath", "a", "", "dataSize", "b", "Lcom/onyx/android/sdk/media/lame/OnyxLame;", "Lcom/onyx/android/sdk/media/lame/OnyxLame;", "androidLame", "Lcom/onyx/android/sdk/media/container/IMediaContainer;", "Lcom/onyx/android/sdk/media/container/IMediaContainer;", "audioContainer", "c", "[B", "mp3Buffer", "d", "I", "channelCount", "e", "bytePerSec", C6997f.f39671c, "J", "recordTimeDurationInMs", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMp3Encoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mp3Encoder.kt\ncom/onyx/android/sdk/media/codec/encoder/Mp3Encoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"})
/* loaded from: classes7.dex */
public final class Mp3Encoder implements IAudioEncoder {

    /* renamed from: g */
    public static final int f42868g = 7200;

    /* renamed from: h */
    public static final int f42869h = 32;

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public OnyxLame androidLame;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public IMediaContainer audioContainer;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public byte[] mp3Buffer;

    /* renamed from: d, reason: from kotlin metadata */
    public int channelCount = 1;

    /* renamed from: e, reason: from kotlin metadata */
    public int bytePerSec;

    /* renamed from: f, reason: from kotlin metadata */
    public long recordTimeDurationInMs;

    /* renamed from: a */
    public final void m33498a(String outputPath) {
        if (this.audioContainer != null) {
            throw new RuntimeException("illegal operation, last audio container is not null released!");
        }
        if (!(outputPath.length() > 0)) {
            throw new IllegalArgumentException("File path must be provided!".toString());
        }
        FileUtils.INSTANCE.ensureFileExists(outputPath);
        MediaFileContainer mediaFileContainer = new MediaFileContainer();
        this.audioContainer = mediaFileContainer;
        mediaFileContainer.onCreate(outputPath, false);
    }

    /* renamed from: b */
    public final void m33499b(int dataSize) {
        this.recordTimeDurationInMs += (dataSize * 1000) / this.bytePerSec;
    }

    @Override // com.onyx.android.sdk.media.codec.encoder.IAudioEncoder
    @NotNull
    public List<AudioDataBean> encode(@NotNull byte[] data) {
        int encodeBufferInterLeaved;
        List<AudioDataBean> listOf;
        List<AudioDataBean> emptyList;
        Intrinsics.checkNotNullParameter(data, "data");
        byte[] bArr = this.mp3Buffer;
        if (bArr == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        m33499b(data.length);
        short[] byte2Short = EncodeUtils.INSTANCE.byte2Short(data);
        if (this.channelCount == 1) {
            OnyxLame onyxLame = this.androidLame;
            if (onyxLame != null) {
                encodeBufferInterLeaved = onyxLame.encode(byte2Short, byte2Short, byte2Short.length, bArr);
            }
            encodeBufferInterLeaved = 0;
        } else {
            OnyxLame onyxLame2 = this.androidLame;
            if (onyxLame2 != null) {
                encodeBufferInterLeaved = onyxLame2.encodeBufferInterLeaved(byte2Short, byte2Short.length, bArr);
            }
            encodeBufferInterLeaved = 0;
        }
        if (encodeBufferInterLeaved <= 0) {
            Debug.INSTANCE.m32044e(Mp3Encoder.class, "mp3 encode failed, ret: " + encodeBufferInterLeaved, new Object[0]);
        } else {
            IMediaContainer iMediaContainer = this.audioContainer;
            if (iMediaContainer != null) {
                iMediaContainer.write(bArr, 0, encodeBufferInterLeaved);
            }
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new AudioDataBean(data, System.currentTimeMillis()));
        return listOf;
    }

    @Override // com.onyx.android.sdk.media.codec.encoder.IAudioEncoder
    public void flush() {
        byte[] bArr = this.mp3Buffer;
        if (bArr == null) {
            return;
        }
        OnyxLame onyxLame = this.androidLame;
        int flush = onyxLame != null ? onyxLame.flush(bArr) : 0;
        if (flush > 0) {
            IMediaContainer iMediaContainer = this.audioContainer;
            if (iMediaContainer != null) {
                iMediaContainer.write(bArr, 0, flush);
                return;
            }
            return;
        }
        Debug.INSTANCE.m32044e(Mp3Encoder.class, "mp3 flush failed, ret: " + flush, new Object[0]);
    }

    @Override // com.onyx.android.sdk.media.codec.encoder.IAudioEncoder
    /* renamed from: getRecordDuration, reason: from getter */
    public long getRecordTimeDurationInMs() {
        return this.recordTimeDurationInMs;
    }

    @Override // com.onyx.android.sdk.media.codec.encoder.IAudioEncoder
    public void init(@NotNull RecordingConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        FormatConfig formatConfig = config.getFormatConfig();
        OnyxLame onyxLame = this.androidLame;
        if (onyxLame != null) {
            onyxLame.close();
        }
        this.androidLame = new LameBuilder().setInSampleRate(formatConfig.getSampleRate()).setOutSampleRate(formatConfig.getSampleRate()).setOutChannels(formatConfig.getChannels()).setOutBitrate(32).build();
        EncodeUtils encodeUtils = EncodeUtils.INSTANCE;
        int audioBufferSize = encodeUtils.getAudioBufferSize(formatConfig.getSampleRate(), formatConfig.getAudioFormat());
        this.channelCount = formatConfig.getChannels();
        this.mp3Buffer = new byte[(int) (f42868g + (audioBufferSize * 2 * 1.25d))];
        this.bytePerSec = encodeUtils.getAudioByteSizePerSec(formatConfig.getSampleRate(), formatConfig.getAudioFormat(), formatConfig.getChannels());
        m33498a(config.getFilePath());
    }

    @Override // com.onyx.android.sdk.media.codec.encoder.IAudioEncoder
    public void start() {
        this.recordTimeDurationInMs = 0L;
    }

    @Override // com.onyx.android.sdk.media.codec.encoder.IAudioEncoder
    public void stop() {
        flush();
        OnyxLame onyxLame = this.androidLame;
        if (onyxLame != null) {
            onyxLame.close();
        }
        this.androidLame = null;
    }
}
