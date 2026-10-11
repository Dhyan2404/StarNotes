package com.onyx.android.sdk.base.utils;

import android.graphics.Bitmap;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0014J \u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\b\u001a\u00020\u0002H\u0014J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J\u001a\u0010\u0013\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0014¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/SimpleBitmapReferenceLruCache;", "Lcom/onyx/android/sdk/base/utils/BaseBitmapReferenceLruCache;", "Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;", "maxSize", "", "(I)V", "clearBitmap", "", "t", "cloneBitmapReference", BaiduYunConstant.CREATE, "width", "height", AbstractLogger.CONFIG, "Landroid/graphics/Bitmap$Config;", "getBitmap", "Landroid/graphics/Bitmap;", "isValid", "", "sizeOf", "key", "", "value", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SimpleBitmapReferenceLruCache extends BaseBitmapReferenceLruCache<SimpleBitmapReference> {
    public SimpleBitmapReferenceLruCache(int i) {
        super(i);
    }

    @Override // com.onyx.android.sdk.base.utils.BaseBitmapReferenceLruCache
    public void clearBitmap(@NotNull SimpleBitmapReference t) {
        Intrinsics.checkNotNullParameter(t, "t");
        t.clearBitmap();
    }

    @Override // com.onyx.android.sdk.base.utils.BaseBitmapReferenceLruCache
    @NotNull
    public SimpleBitmapReference cloneBitmapReference(@NotNull SimpleBitmapReference t) {
        Intrinsics.checkNotNullParameter(t, "t");
        return t.cloneBitmapReference();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.utils.BaseBitmapReferenceLruCache
    @NotNull
    public SimpleBitmapReference create(int width, int height, @NotNull Bitmap.Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        SimpleBitmapReference simpleBitmapReference = new SimpleBitmapReference();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, config);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        BitmapKt.clearBitmap(createBitmap);
        simpleBitmapReference.setBitmap(createBitmap);
        return simpleBitmapReference;
    }

    @Override // com.onyx.android.sdk.base.utils.BaseBitmapReferenceLruCache
    @Nullable
    public Bitmap getBitmap(@NotNull SimpleBitmapReference t) {
        Intrinsics.checkNotNullParameter(t, "t");
        return t.getBitmap();
    }

    @Override // com.onyx.android.sdk.base.utils.BaseBitmapReferenceLruCache
    public boolean isValid(@Nullable SimpleBitmapReference t) {
        if (t != null) {
            return t.isValid();
        }
        return false;
    }

    @Override // android.util.LruCache
    public int sizeOf(@Nullable String key, @NotNull SimpleBitmapReference value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.isValid()) {
            return value.getBitmap().getByteCount();
        }
        return 0;
    }
}
