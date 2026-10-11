package com.onyx.android.sdk.media.container;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.utils.Debug;
import com.sun.org.apache.bcel.internal.Constants;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J \u0010\u0010\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u0010\u0013\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/media/container/MediaMuxerContainer;", "Lcom/onyx/android/sdk/media/container/IMediaContainer;", "", "outputPath", "", "appendMode", "", "onCreate", "Landroid/media/MediaFormat;", "mediaFormat", "onStart", "", "data", "", TypedValues.CycleType.S_WAVE_OFFSET, "length", "write", "Landroid/media/MediaCodec$BufferInfo;", PrivilegedApp.f6532i, "writeSampleData", "onRelease", "isStarted", "Landroid/media/MediaMuxer;", "a", "Landroid/media/MediaMuxer;", "mediaMuxer", "b", "I", "audioTrackIndex", Constants.CONSTRUCTOR_NAME, "()V", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class MediaMuxerContainer implements IMediaContainer {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public MediaMuxer mediaMuxer;

    /* renamed from: b, reason: from kotlin metadata */
    public int audioTrackIndex = -1;

    @Override // com.onyx.android.sdk.media.container.IMediaContainer
    public boolean isStarted() {
        return (this.mediaMuxer == null || this.audioTrackIndex == -1) ? false : true;
    }

    @Override // com.onyx.android.sdk.media.container.IMediaContainer
    public void onCreate(@NotNull String outputPath, boolean appendMode) {
        Intrinsics.checkNotNullParameter(outputPath, "outputPath");
        this.mediaMuxer = new MediaMuxer(outputPath, 0);
    }

    @Override // com.onyx.android.sdk.media.container.IMediaContainer
    public void onRelease() {
        this.audioTrackIndex = -1;
        MediaMuxer mediaMuxer = this.mediaMuxer;
        if (mediaMuxer != null) {
            mediaMuxer.stop();
        }
        MediaMuxer mediaMuxer2 = this.mediaMuxer;
        if (mediaMuxer2 != null) {
            mediaMuxer2.release();
        }
        this.mediaMuxer = null;
    }

    @Override // com.onyx.android.sdk.media.container.IMediaContainer
    public void onStart(@NotNull MediaFormat mediaFormat) {
        Intrinsics.checkNotNullParameter(mediaFormat, "mediaFormat");
        if (this.audioTrackIndex == -1) {
            MediaMuxer mediaMuxer = this.mediaMuxer;
            this.audioTrackIndex = mediaMuxer != null ? mediaMuxer.addTrack(mediaFormat) : 0;
            MediaMuxer mediaMuxer2 = this.mediaMuxer;
            if (mediaMuxer2 != null) {
                mediaMuxer2.start();
            }
        }
    }

    @Override // com.onyx.android.sdk.media.container.IMediaContainer
    public void write(@NotNull byte[] data, int offset, int length) {
        Intrinsics.checkNotNullParameter(data, "data");
        Debug.INSTANCE.m32059w(MediaMuxerContainer.class, "unsupport function", new Object[0]);
    }

    @Override // com.onyx.android.sdk.media.container.IMediaContainer
    public void writeSampleData(@NotNull byte[] data, @NotNull MediaCodec.BufferInfo info) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(info, "info");
        MediaMuxer mediaMuxer = this.mediaMuxer;
        if (mediaMuxer != null) {
            mediaMuxer.writeSampleData(this.audioTrackIndex, ByteBuffer.wrap(data), info);
        }
    }
}
