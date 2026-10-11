package com.onyx.android.sdk.extension;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.request.target.BitmapImageViewTarget;
import com.bumptech.glide.request.target.DrawableImageViewTarget;
import com.bumptech.glide.request.transition.Transition;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002¨\u0006\u0005"}, m61528d2 = {"bitmapViewTarget", "Lcom/bumptech/glide/request/target/BitmapImageViewTarget;", "Landroid/widget/ImageView;", "drawableViewTarget", "Lcom/bumptech/glide/request/target/DrawableImageViewTarget;", "sdk-uicommon_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ImageViewKt {
    @NotNull
    public static final BitmapImageViewTarget bitmapViewTarget(@NotNull final ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        return new BitmapImageViewTarget(imageView) { // from class: com.onyx.android.sdk.extension.ImageViewKt$bitmapViewTarget$1
            @Override // com.bumptech.glide.request.target.ImageViewTarget, com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
            public void onLoadFailed(@Nullable Drawable errorDrawable) {
                ((ImageView) this.view).setImageDrawable(errorDrawable);
            }

            @Override // com.bumptech.glide.request.target.ImageViewTarget, com.bumptech.glide.request.target.Target
            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, Transition transition) {
                onResourceReady((Bitmap) obj, (Transition<? super Bitmap>) transition);
            }

            public void onResourceReady(@NotNull Bitmap resource, @Nullable Transition<? super Bitmap> transition) {
                Intrinsics.checkNotNullParameter(resource, "resource");
                ((ImageView) this.view).setImageBitmap(resource);
            }
        };
    }

    @NotNull
    public static final DrawableImageViewTarget drawableViewTarget(@NotNull final ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        return new DrawableImageViewTarget(imageView) { // from class: com.onyx.android.sdk.extension.ImageViewKt$drawableViewTarget$1
            @Override // com.bumptech.glide.request.target.ImageViewTarget, com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
            public void onLoadFailed(@Nullable Drawable errorDrawable) {
                ((ImageView) this.view).setImageDrawable(errorDrawable);
            }

            @Override // com.bumptech.glide.request.target.ImageViewTarget, com.bumptech.glide.request.target.Target
            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, Transition transition) {
                onResourceReady((Drawable) obj, (Transition<? super Drawable>) transition);
            }

            public void onResourceReady(@NotNull Drawable resource, @Nullable Transition<? super Drawable> transition) {
                Intrinsics.checkNotNullParameter(resource, "resource");
                ((ImageView) this.view).setImageDrawable(resource);
            }
        };
    }
}
