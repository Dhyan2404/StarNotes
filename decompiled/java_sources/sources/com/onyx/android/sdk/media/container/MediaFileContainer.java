package com.onyx.android.sdk.media.container;

import android.media.MediaCodec;
import android.media.MediaFormat;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.media.container.IMediaContainer;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.FileOutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J \u0010\u0010\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0018\u0010\u0013\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/media/container/MediaFileContainer;", "Lcom/onyx/android/sdk/media/container/IMediaContainer;", "", "outputPath", "", "appendMode", "", "onCreate", "Landroid/media/MediaFormat;", "mediaFormat", "onStart", "", "data", "", TypedValues.CycleType.S_WAVE_OFFSET, "length", "write", "Landroid/media/MediaCodec$BufferInfo;", PrivilegedApp.f6532i, "writeSampleData", "onRelease", "Ljava/io/FileOutputStream;", "a", "Ljava/io/FileOutputStream;", "fos", Constants.CONSTRUCTOR_NAME, "()V", "sdk-media_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class MediaFileContainer implements IMediaContainer {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public FileOutputStream fos;

    @Override // com.onyx.android.sdk.media.container.IMediaContainer
    public boolean isStarted() {
        return IMediaContainer.DefaultImpls.isStarted(this);
    }

    @Override // com.onyx.android.sdk.media.container.IMediaContainer
    public void onCreate(@NotNull String outputPath, boolean appendMode) {
        Intrinsics.checkNotNullParameter(outputPath, "outputPath");
        this.fos = new FileOutputStream(outputPath, appendMode);
    }

    @Override // com.onyx.android.sdk.media.container.IMediaContainer
    public void onRelease() {
        FileUtils.INSTANCE.closeQuietly(this.fos);
        this.fos = null;
    }

    @Override // com.onyx.android.sdk.media.container.IMediaContainer
    public void onStart(@NotNull MediaFormat mediaFormat) {
        Intrinsics.checkNotNullParameter(mediaFormat, "mediaFormat");
    }

    @Override // com.onyx.android.sdk.media.container.IMediaContainer
    public void write(@NotNull byte[] data, int offset, int length) {
        Intrinsics.checkNotNullParameter(data, "data");
        FileOutputStream fileOutputStream = this.fos;
        if (fileOutputStream != null) {
            fileOutputStream.write(data, offset, length);
        }
    }

    @Override // com.onyx.android.sdk.media.container.IMediaContainer
    public void writeSampleData(@NotNull byte[] data, @NotNull MediaCodec.BufferInfo info) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(info, "info");
        FileOutputStream fileOutputStream = this.fos;
        if (fileOutputStream != null) {
            fileOutputStream.write(data);
        }
    }
}
