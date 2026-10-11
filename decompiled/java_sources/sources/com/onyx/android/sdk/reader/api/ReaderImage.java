package com.onyx.android.sdk.reader.api;

import android.graphics.Bitmap;
import android.graphics.RectF;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderImage;", "", "bitmap", "Landroid/graphics/Bitmap;", "position", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", UniversalShapeTypeConst.RECTANGLE, "Landroid/graphics/RectF;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderImage {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @Nullable
        public static Bitmap bitmap(@NotNull ReaderImage readerImage) {
            return null;
        }

        @NotNull
        public static ReaderPosition position(@NotNull ReaderImage readerImage) {
            return ReaderPositionImpl.INSTANCE.getDummy();
        }

        @NotNull
        public static RectF rectangle(@NotNull ReaderImage readerImage) {
            return new RectF();
        }
    }

    @Nullable
    Bitmap bitmap();

    @NotNull
    ReaderPosition position();

    @NotNull
    RectF rectangle();
}
