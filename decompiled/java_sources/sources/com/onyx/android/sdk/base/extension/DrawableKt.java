package com.onyx.android.sdk.base.extension;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\f\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u0002\u001a\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u001e\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u0007¨\u0006\n"}, m61528d2 = {"animationStart", "", "Landroid/graphics/drawable/Drawable;", "animationStop", "toBitmap", "Landroid/graphics/Bitmap;", "color", "", "width", "height", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DrawableKt {
    public static final void animationStart(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "<this>");
        AnimationDrawable animationDrawable = drawable instanceof AnimationDrawable ? (AnimationDrawable) drawable : null;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    public static final void animationStop(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "<this>");
        AnimationDrawable animationDrawable = drawable instanceof AnimationDrawable ? (AnimationDrawable) drawable : null;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    @Nullable
    public static final Bitmap toBitmap(@NotNull Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "<this>");
        return toBitmap(drawable, 0);
    }

    public static /* synthetic */ Bitmap toBitmap$default(Drawable drawable, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = -1;
        }
        if ((i3 & 2) != 0) {
            i2 = -1;
        }
        return toBitmap(drawable, i, i2);
    }

    @Nullable
    public static final Bitmap toBitmap(@NotNull Drawable drawable, int i) {
        Intrinsics.checkNotNullParameter(drawable, "<this>");
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        boolean z = drawable instanceof BitmapDrawable;
        if (z) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() != null) {
                intrinsicWidth = bitmapDrawable.getBitmap().getWidth();
                intrinsicHeight = bitmapDrawable.getBitmap().getHeight();
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(i);
        if (z) {
            Rect rect = new Rect(0, 0, intrinsicWidth, intrinsicHeight);
            BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
            bitmapUtils.safelyDrawBitmap(canvas, createBitmap, rect, rect, bitmapUtils.createBitmapPaint());
        } else {
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
        }
        return createBitmap;
    }

    @NotNull
    public static final Bitmap toBitmap(@NotNull Drawable drawable, int i, int i2) {
        Intrinsics.checkNotNullParameter(drawable, "<this>");
        if (i <= 0) {
            i = drawable.getIntrinsicWidth();
        }
        if (i2 <= 0) {
            i2 = drawable.getIntrinsicHeight();
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }
}
