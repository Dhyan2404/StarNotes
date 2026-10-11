package com.onyx.android.sdk.geometry.data;

import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.utils.BitmapLruCacheConfig;
import com.onyx.android.sdk.matisse.internal.utils.PhotoMetadataUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\f\u001a\u00020\u0005J\u0006\u0010\r\u001a\u00020\u0005R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/SizeConfig;", "", "viewportSize", "Lcom/onyx/android/sdk/base/data/Size;", "maxViewportCount", "", "(Lcom/onyx/android/sdk/base/data/Size;I)V", "BYTE_PER_PIXEL", "getMaxViewportCount", "()I", "getViewportSize", "()Lcom/onyx/android/sdk/base/data/Size;", "bitmapCacheMaxByteCount", "getBytePerViewport", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SizeConfig {
    private final int BYTE_PER_PIXEL;
    private final int maxViewportCount;

    @NotNull
    private final Size viewportSize;

    /* JADX WARN: Multi-variable type inference failed */
    public SizeConfig() {
        this(null, 0, 3, 0 == true ? 1 : 0);
    }

    public final int bitmapCacheMaxByteCount() {
        int bytePerViewport = this.maxViewportCount * getBytePerViewport();
        if (bytePerViewport <= 0) {
            bytePerViewport = BitmapLruCacheConfig.bitmapCacheMaxByteCount$default(BitmapLruCacheConfig.INSTANCE, 0, 1, null);
        }
        if (bytePerViewport <= 0) {
            return 1048576;
        }
        return bytePerViewport;
    }

    public final int getBytePerViewport() {
        int width = this.viewportSize.getWidth() * this.viewportSize.getHeight() * this.BYTE_PER_PIXEL;
        if (width <= 0) {
            return 1048576;
        }
        return width;
    }

    public final int getMaxViewportCount() {
        return this.maxViewportCount;
    }

    @NotNull
    public final Size getViewportSize() {
        return this.viewportSize;
    }

    public SizeConfig(@NotNull Size viewportSize, int i) {
        Intrinsics.checkNotNullParameter(viewportSize, "viewportSize");
        this.viewportSize = viewportSize;
        this.maxViewportCount = i;
        this.BYTE_PER_PIXEL = 4;
    }

    public /* synthetic */ SizeConfig(Size size, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new Size(PhotoMetadataUtils.f42836b, 2560) : size, (i2 & 2) != 0 ? 12 : i);
    }
}
