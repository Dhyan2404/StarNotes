package com.onyx.android.sdk.media.recorder;

import android.annotation.SuppressLint;
import android.media.AudioRecord;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.account.bean.AccountQuotas;
import com.onyx.android.sdk.media.config.FormatConfig;
import com.onyx.android.sdk.media.utils.EncodeUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\f\u001a\u00020\u000bJ\b\u0010\r\u001a\u00020\u0006H\u0002J\b\u0010\u000e\u001a\u00020\u0006H\u0002R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0013\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/media/recorder/AudioRecorder;", "", "Lcom/onyx/android/sdk/media/config/FormatConfig;", AbstractLogger.CONFIG, "", "createAudioRecord", "", "readAudioChunk", "startRecording", "stopRecording", "releaseRecord", "", "isOpen", "b", "a", "Landroid/media/AudioRecord;", "Landroid/media/AudioRecord;", AccountQuotas.KEY_QUOTAS_AUDIO_RECORD, "", "I", "audioFormat", "c", "bufferSize", "d", "getMaxAmplitude", "()I", "setMaxAmplitude", "(I)V", "maxAmplitude", Constants.CONSTRUCTOR_NAME, "()V", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AudioRecorder {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public AudioRecord audioRecord;

    /* renamed from: b, reason: from kotlin metadata */
    public int audioFormat = 2;

    /* renamed from: c, reason: from kotlin metadata */
    public int bufferSize;

    /* renamed from: d, reason: from kotlin metadata */
    public int maxAmplitude;

    /* renamed from: a */
    public final byte[] m33535a() {
        byte[] bArr = new byte[this.bufferSize];
        AudioRecord audioRecord = this.audioRecord;
        Intrinsics.checkNotNull(audioRecord);
        int read = audioRecord.read(bArr, 0, this.bufferSize);
        if (read > 0) {
            this.maxAmplitude = EncodeUtils.INSTANCE.calculateMaxAmplitude(bArr);
            return bArr;
        }
        Debug.INSTANCE.m32044e(AudioRecorder.class, "record read: " + read, new Object[0]);
        return new byte[0];
    }

    /* renamed from: b */
    public final byte[] m33536b() {
        int i = this.bufferSize / 2;
        short[] sArr = new short[i];
        AudioRecord audioRecord = this.audioRecord;
        Intrinsics.checkNotNull(audioRecord);
        int read = audioRecord.read(sArr, 0, i);
        if (read > 0) {
            EncodeUtils encodeUtils = EncodeUtils.INSTANCE;
            byte[] short2byte = encodeUtils.short2byte(sArr, read);
            this.maxAmplitude = encodeUtils.calculateMaxAmplitude(short2byte);
            return short2byte;
        }
        Debug.INSTANCE.m32044e(AudioRecorder.class, "record read: " + read, new Object[0]);
        return new byte[0];
    }

    @SuppressLint({"MissingPermission"})
    public final void createAudioRecord(@NotNull FormatConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (this.audioRecord != null) {
            throw new IllegalStateException("illegal operation, audio record is running");
        }
        int i = config.getChannels() == 1 ? 16 : 12;
        this.audioFormat = config.getAudioFormat();
        this.bufferSize = EncodeUtils.INSTANCE.getAudioBufferSize(config.getSampleRate(), config.getAudioFormat());
        this.audioRecord = new AudioRecord(config.getAudioSource(), config.getSampleRate(), i, config.getAudioFormat(), AudioRecord.getMinBufferSize(config.getSampleRate(), i, config.getAudioFormat()) * 10);
    }

    public final int getMaxAmplitude() {
        return this.maxAmplitude;
    }

    public final boolean isOpen() {
        return this.audioRecord != null;
    }

    @NotNull
    public final byte[] readAudioChunk() {
        return this.audioFormat == 2 ? m33536b() : m33535a();
    }

    public final void releaseRecord() {
        AudioRecord audioRecord = this.audioRecord;
        if (audioRecord != null) {
            audioRecord.stop();
        }
        AudioRecord audioRecord2 = this.audioRecord;
        if (audioRecord2 != null) {
            audioRecord2.release();
        }
        this.audioRecord = null;
    }

    public final void setMaxAmplitude(int i) {
        this.maxAmplitude = i;
    }

    public final void startRecording() {
        AudioRecord audioRecord = this.audioRecord;
        if (audioRecord != null) {
            audioRecord.startRecording();
        }
    }

    public final void stopRecording() {
        AudioRecord audioRecord = this.audioRecord;
        if (audioRecord != null) {
            audioRecord.stop();
        }
    }
}
