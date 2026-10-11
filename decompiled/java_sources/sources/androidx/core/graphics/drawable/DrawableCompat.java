package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public final class DrawableCompat {

    /* renamed from: a */
    public static final String f5420a = "DrawableCompat";

    /* renamed from: b */
    public static Method f5421b;

    /* renamed from: c */
    public static boolean f5422c;

    /* renamed from: d */
    public static Method f5423d;

    /* renamed from: e */
    public static boolean f5424e;

    @RequiresApi(21)
    /* renamed from: androidx.core.graphics.drawable.DrawableCompat$a */
    /* loaded from: classes3.dex */
    public static class C0667a {
        @DoNotInline
        /* renamed from: a */
        public static void m2947a(Drawable drawable, Resources.Theme theme) {
            drawable.applyTheme(theme);
        }

        @DoNotInline
        /* renamed from: b */
        public static boolean m2948b(Drawable drawable) {
            return drawable.canApplyTheme();
        }

        @DoNotInline
        /* renamed from: c */
        public static ColorFilter m2949c(Drawable drawable) {
            return drawable.getColorFilter();
        }

        @DoNotInline
        /* renamed from: d */
        public static void m2950d(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        }

        @DoNotInline
        /* renamed from: e */
        public static void m2951e(Drawable drawable, float f, float f2) {
            drawable.setHotspot(f, f2);
        }

        @DoNotInline
        /* renamed from: f */
        public static void m2952f(Drawable drawable, int i, int i2, int i3, int i4) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }

        @DoNotInline
        /* renamed from: g */
        public static void m2953g(Drawable drawable, int i) {
            drawable.setTint(i);
        }

        @DoNotInline
        /* renamed from: h */
        public static void m2954h(Drawable drawable, ColorStateList colorStateList) {
            drawable.setTintList(colorStateList);
        }

        @DoNotInline
        /* renamed from: i */
        public static void m2955i(Drawable drawable, PorterDuff.Mode mode) {
            drawable.setTintMode(mode);
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.graphics.drawable.DrawableCompat$b */
    /* loaded from: classes3.dex */
    public static class C0668b {
        @DoNotInline
        /* renamed from: a */
        public static int m2956a(Drawable drawable) {
            return drawable.getLayoutDirection();
        }

        @DoNotInline
        /* renamed from: b */
        public static boolean m2957b(Drawable drawable, int i) {
            return drawable.setLayoutDirection(i);
        }
    }

    public static void applyTheme(@NonNull Drawable drawable, @NonNull Resources.Theme theme) {
        C0667a.m2947a(drawable, theme);
    }

    public static boolean canApplyTheme(@NonNull Drawable drawable) {
        return C0667a.m2948b(drawable);
    }

    public static void clearColorFilter(@NonNull Drawable drawable) {
        drawable.clearColorFilter();
    }

    public static int getAlpha(@NonNull Drawable drawable) {
        return drawable.getAlpha();
    }

    @Nullable
    public static ColorFilter getColorFilter(@NonNull Drawable drawable) {
        return C0667a.m2949c(drawable);
    }

    public static int getLayoutDirection(@NonNull Drawable drawable) {
        return C0668b.m2956a(drawable);
    }

    public static void inflate(@NonNull Drawable drawable, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        C0667a.m2950d(drawable, resources, xmlPullParser, attributeSet, theme);
    }

    public static boolean isAutoMirrored(@NonNull Drawable drawable) {
        return drawable.isAutoMirrored();
    }

    @Deprecated
    public static void jumpToCurrentState(@NonNull Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    public static void setAutoMirrored(@NonNull Drawable drawable, boolean z) {
        drawable.setAutoMirrored(z);
    }

    public static void setHotspot(@NonNull Drawable drawable, float f, float f2) {
        C0667a.m2951e(drawable, f, f2);
    }

    public static void setHotspotBounds(@NonNull Drawable drawable, int i, int i2, int i3, int i4) {
        C0667a.m2952f(drawable, i, i2, i3, i4);
    }

    public static boolean setLayoutDirection(@NonNull Drawable drawable, int i) {
        return C0668b.m2957b(drawable, i);
    }

    public static void setTint(@NonNull Drawable drawable, @ColorInt int i) {
        C0667a.m2953g(drawable, i);
    }

    public static void setTintList(@NonNull Drawable drawable, @Nullable ColorStateList colorStateList) {
        C0667a.m2954h(drawable, colorStateList);
    }

    public static void setTintMode(@NonNull Drawable drawable, @Nullable PorterDuff.Mode mode) {
        C0667a.m2955i(drawable, mode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Drawable> T unwrap(@NonNull Drawable drawable) {
        return drawable instanceof WrappedDrawable ? (T) ((WrappedDrawable) drawable).getWrappedDrawable() : drawable;
    }

    @NonNull
    public static Drawable wrap(@NonNull Drawable drawable) {
        return drawable;
    }
}
