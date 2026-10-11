package com.onyx.android.sdk.media;

import android.media.MediaCodec;
import android.media.MediaFormat;
import com.google.android.exoplayer2.util.MimeTypes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0004¨\u0006\u0006"}, m61528d2 = {"isAACEncode", "", "Landroid/media/MediaFormat;", "isCodecFirstFrame", "Landroid/media/MediaCodec$BufferInfo;", "isEndOfStream", "sdk-media_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AudioBufferExtKt {
    public static final boolean isAACEncode(@Nullable MediaFormat mediaFormat) {
        return Intrinsics.areEqual(mediaFormat != null ? mediaFormat.getString("mime") : null, MimeTypes.AUDIO_AAC);
    }

    public static final boolean isCodecFirstFrame(@NotNull MediaCodec.BufferInfo bufferInfo) {
        Intrinsics.checkNotNullParameter(bufferInfo, "<this>");
        return bufferInfo.presentationTimeUs == 0 && bufferInfo.size == 2;
    }

    public static final boolean isEndOfStream(@NotNull MediaCodec.BufferInfo bufferInfo) {
        Intrinsics.checkNotNullParameter(bufferInfo, "<this>");
        return (bufferInfo.flags & 4) != 0;
    }
}
