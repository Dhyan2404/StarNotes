package com.onyx.android.sdk.media.container;

import android.media.MediaCodec;
import android.media.MediaFormat;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.credentials.provider.utils.PrivilegedApp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H&J\b\u0010\t\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH&J \u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H&J\u0018\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015H&¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/media/container/IMediaContainer;", "", "isStarted", "", "onCreate", "", "outputPath", "", "appendMode", "onRelease", "onStart", "mediaFormat", "Landroid/media/MediaFormat;", "write", "data", "", TypedValues.CycleType.S_WAVE_OFFSET, "", "length", "writeSampleData", PrivilegedApp.f6532i, "Landroid/media/MediaCodec$BufferInfo;", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IMediaContainer {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static boolean isStarted(@NotNull IMediaContainer iMediaContainer) {
            return true;
        }
    }

    boolean isStarted();

    void onCreate(@NotNull String outputPath, boolean appendMode);

    void onRelease();

    void onStart(@NotNull MediaFormat mediaFormat);

    void write(@NotNull byte[] data, int offset, int length);

    void writeSampleData(@NotNull byte[] data, @NotNull MediaCodec.BufferInfo info);
}
