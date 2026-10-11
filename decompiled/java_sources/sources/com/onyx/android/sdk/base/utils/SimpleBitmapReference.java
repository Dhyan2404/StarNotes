package com.onyx.android.sdk.base.utils;

import android.graphics.Bitmap;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0000J\u0006\u0010\f\u001a\u00020\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;", "", "()V", "bitmap", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "clearBitmap", "", "cloneBitmapReference", "isValid", "", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SimpleBitmapReference {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public Bitmap bitmap;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/base/utils/SimpleBitmapReference;", "bitmap", "Landroid/graphics/Bitmap;", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SimpleBitmapReference create(@NotNull Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            SimpleBitmapReference simpleBitmapReference = new SimpleBitmapReference();
            simpleBitmapReference.setBitmap(bitmap);
            return simpleBitmapReference;
        }

        public Companion() {
        }
    }

    public final void clearBitmap() {
        BitmapKt.clearBitmap(getBitmap());
    }

    @NotNull
    public final SimpleBitmapReference cloneBitmapReference() {
        SimpleBitmapReference simpleBitmapReference = new SimpleBitmapReference();
        simpleBitmapReference.setBitmap(getBitmap());
        return simpleBitmapReference;
    }

    @NotNull
    public final Bitmap getBitmap() {
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            return bitmap;
        }
        Intrinsics.throwUninitializedPropertyAccessException("bitmap");
        return null;
    }

    public final boolean isValid() {
        return BitmapKt.isValid(getBitmap());
    }

    public final void setBitmap(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<set-?>");
        this.bitmap = bitmap;
    }
}
