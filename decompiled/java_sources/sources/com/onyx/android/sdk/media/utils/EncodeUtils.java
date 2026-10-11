package com.onyx.android.sdk.media.utils;

import android.media.MediaFormat;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.google.android.exoplayer2.source.SilenceMediaSource;
import com.google.android.exoplayer2.video.spherical.C5033a;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.media.codec.encoder.DefaultAudioEncoder;
import com.onyx.android.sdk.media.codec.encoder.IAudioEncoder;
import com.onyx.android.sdk.media.codec.encoder.Mp3Encoder;
import com.onyx.android.sdk.media.config.FormatConfig;
import com.sun.org.apache.bcel.internal.Constants;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.mortbay.jetty.HttpHeaderValues;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u0017\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b!\u0010\"J \u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006J\u001e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006J\u0016\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0002R\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/media/utils/EncodeUtils;", "", "Landroid/media/MediaFormat;", "mediaFormat", "", "data", "", "length", "", "addADTStoPacket", "sampleRate", "audioFormat", "getAudioBufferSize", "channels", "getAudioByteSizePerSec", "getBytesPerSample", "", "sData", "size", "short2byte", HttpHeaderValues.BYTES, "byte2Short", "calculateMaxAmplitude", "Lcom/onyx/android/sdk/media/config/FormatConfig;", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;", "getEncoderByMine", "a", "", "F", "BUFFER_SIZE_IN_SECONDS", "AAC_PACKET_HEAD_LEN", "I", Constants.CONSTRUCTOR_NAME, "()V", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class EncodeUtils {
    public static final int AAC_PACKET_HEAD_LEN = 7;

    @NotNull
    public static final EncodeUtils INSTANCE = new EncodeUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final float BUFFER_SIZE_IN_SECONDS = 0.2f;

    /* renamed from: a */
    public final int m33537a(int sampleRate) {
        switch (sampleRate) {
            case 8000:
            default:
                return 11;
            case 11025:
                return 10;
            case CharsToNameCanonicalizer.f21320b /* 12000 */:
                return 9;
            case 16000:
                return 8;
            case 22050:
                return 7;
            case 24000:
                return 6;
            case C5033a.f28719h /* 32000 */:
                return 5;
            case SilenceMediaSource.f25365n /* 44100 */:
                return 4;
            case 48000:
                return 3;
            case 64000:
                return 2;
            case 88200:
                return 1;
            case 96000:
                return 0;
        }
    }

    public final void addADTStoPacket(@Nullable MediaFormat mediaFormat, @NotNull byte[] data, int length) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (mediaFormat == null) {
            return;
        }
        int integer = mediaFormat.getInteger("aac-profile");
        int m33537a = m33537a(mediaFormat.getInteger("sample-rate"));
        int integer2 = mediaFormat.getInteger("channel-count");
        data[0] = -1;
        data[1] = -15;
        data[2] = (byte) (((integer - 1) << 6) + (m33537a << 2) + (integer2 >> 2));
        data[3] = (byte) (((integer2 & 3) << 6) + (length >> 11));
        data[4] = (byte) ((length & 2047) >> 3);
        data[5] = (byte) (((length & 7) << 5) + 31);
        data[6] = -4;
    }

    @NotNull
    public final short[] byte2Short(@NotNull byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        short[] sArr = new short[bytes.length / 2];
        ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN).asShortBuffer().get(sArr);
        return sArr;
    }

    public final int calculateMaxAmplitude(@NotNull byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        double d = 0.0d;
        for (byte b : data) {
            d += b * b;
        }
        return (int) Math.sqrt(d / data.length);
    }

    public final int getAudioBufferSize(int sampleRate, int audioFormat) {
        int roundToInt;
        roundToInt = MathKt__MathJVMKt.roundToInt(sampleRate * 0.2f * getBytesPerSample(audioFormat));
        return roundToInt;
    }

    public final int getAudioByteSizePerSec(int sampleRate, int audioFormat, int channels) {
        return sampleRate * getBytesPerSample(audioFormat) * channels;
    }

    public final int getBytesPerSample(int audioFormat) {
        return audioFormat != 2 ? 1 : 2;
    }

    @NotNull
    public final IAudioEncoder getEncoderByMine(@NotNull FormatConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        return Intrinsics.areEqual(config.getAudioMime(), "audio/mpeg") ? new Mp3Encoder() : new DefaultAudioEncoder();
    }

    @NotNull
    public final byte[] short2byte(@NotNull short[] sData, int size) {
        Intrinsics.checkNotNullParameter(sData, "sData");
        if (size > sData.length) {
            Debug.INSTANCE.m32059w(EncodeUtils.class, "short2byte: too long short data array", new Object[0]);
        }
        byte[] bArr = new byte[size * 2];
        for (int i = 0; i < size; i++) {
            int i2 = i * 2;
            short s = sData[i];
            bArr[i2] = (byte) (s & 255);
            bArr[i2 + 1] = (byte) (s >> 8);
        }
        return bArr;
    }
}
