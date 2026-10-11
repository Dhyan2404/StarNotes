package com.onyx.android.sdk.base.data.bitmap;

import android.graphics.Bitmap;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\u0000J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0000J\u0006\u0010\r\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\u000fR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;", "", "()V", "bitmap", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "copyBitmap", "equal", "", "another", "isValid", "removeBitmap", "", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SafeBitmap {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private Bitmap bitmap;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;", "bitmap", "Landroid/graphics/Bitmap;", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SafeBitmap create(@Nullable Bitmap bitmap) {
            SafeBitmap safeBitmap = new SafeBitmap();
            safeBitmap.setBitmap(bitmap);
            return safeBitmap;
        }

        private Companion() {
        }
    }

    @NotNull
    public final SafeBitmap copyBitmap() {
        SafeBitmap safeBitmap = new SafeBitmap();
        safeBitmap.bitmap = BitmapKt.copy(this.bitmap);
        return safeBitmap;
    }

    public final boolean equal(@NotNull SafeBitmap another) {
        Intrinsics.checkNotNullParameter(another, "another");
        return Intrinsics.areEqual(this.bitmap, another.bitmap);
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    public final boolean isValid() {
        return BitmapKt.isValid(this.bitmap);
    }

    public final void removeBitmap() {
        this.bitmap = null;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }
}
