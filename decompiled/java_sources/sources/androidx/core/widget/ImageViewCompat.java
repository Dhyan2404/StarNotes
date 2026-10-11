package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.widget.ImageView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public class ImageViewCompat {

    @RequiresApi(21)
    /* renamed from: androidx.core.widget.ImageViewCompat$a */
    /* loaded from: classes3.dex */
    public static class C0864a {
        @DoNotInline
        /* renamed from: a */
        public static ColorStateList m3794a(ImageView imageView) {
            return imageView.getImageTintList();
        }

        @DoNotInline
        /* renamed from: b */
        public static PorterDuff.Mode m3795b(ImageView imageView) {
            return imageView.getImageTintMode();
        }

        @DoNotInline
        /* renamed from: c */
        public static void m3796c(ImageView imageView, ColorStateList colorStateList) {
            imageView.setImageTintList(colorStateList);
        }

        @DoNotInline
        /* renamed from: d */
        public static void m3797d(ImageView imageView, PorterDuff.Mode mode) {
            imageView.setImageTintMode(mode);
        }
    }

    @Nullable
    public static ColorStateList getImageTintList(@NonNull ImageView imageView) {
        return C0864a.m3794a(imageView);
    }

    @Nullable
    public static PorterDuff.Mode getImageTintMode(@NonNull ImageView imageView) {
        return C0864a.m3795b(imageView);
    }

    public static void setImageTintList(@NonNull ImageView imageView, @Nullable ColorStateList colorStateList) {
        C0864a.m3796c(imageView, colorStateList);
    }

    public static void setImageTintMode(@NonNull ImageView imageView, @Nullable PorterDuff.Mode mode) {
        C0864a.m3797d(imageView, mode);
    }
}
