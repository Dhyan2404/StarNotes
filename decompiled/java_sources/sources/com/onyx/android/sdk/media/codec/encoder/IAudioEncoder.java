package com.onyx.android.sdk.media.codec.encoder;

import com.onyx.android.sdk.media.bean.AudioDataBean;
import com.onyx.android.sdk.media.config.RecordingConfig;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\bH&J\b\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH&J\b\u0010\u000e\u001a\u00020\bH&J\b\u0010\u000f\u001a\u00020\bH&¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/media/codec/encoder/IAudioEncoder;", "", "encode", "", "Lcom/onyx/android/sdk/media/bean/AudioDataBean;", "data", "", "flush", "", "getRecordDuration", "", "init", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/media/config/RecordingConfig;", gon.f71290o0, "stop", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IAudioEncoder {
    @NotNull
    List<AudioDataBean> encode(@NotNull byte[] data);

    void flush();

    long getRecordDuration();

    void init(@NotNull RecordingConfig config);

    void start();

    void stop();
}
