package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public final class CompoundButtonCompat {

    /* renamed from: a */
    public static final String f6145a = "CompoundButtonCompat";

    /* renamed from: b */
    public static Field f6146b;

    /* renamed from: c */
    public static boolean f6147c;

    @RequiresApi(21)
    /* renamed from: androidx.core.widget.CompoundButtonCompat$a */
    /* loaded from: classes3.dex */
    public static class C0860a {
        @DoNotInline
        /* renamed from: a */
        public static ColorStateList m3776a(CompoundButton compoundButton) {
            return compoundButton.getButtonTintList();
        }

        @DoNotInline
        /* renamed from: b */
        public static PorterDuff.Mode m3777b(CompoundButton compoundButton) {
            return compoundButton.getButtonTintMode();
        }

        @DoNotInline
        /* renamed from: c */
        public static void m3778c(CompoundButton compoundButton, ColorStateList colorStateList) {
            compoundButton.setButtonTintList(colorStateList);
        }

        @DoNotInline
        /* renamed from: d */
        public static void m3779d(CompoundButton compoundButton, PorterDuff.Mode mode) {
            compoundButton.setButtonTintMode(mode);
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.widget.CompoundButtonCompat$b */
    /* loaded from: classes3.dex */
    public static class C0861b {
        @DoNotInline
        /* renamed from: a */
        public static Drawable m3780a(CompoundButton compoundButton) {
            return compoundButton.getButtonDrawable();
        }
    }

    @Nullable
    public static Drawable getButtonDrawable(@NonNull CompoundButton compoundButton) {
        return C0861b.m3780a(compoundButton);
    }

    @Nullable
    public static ColorStateList getButtonTintList(@NonNull CompoundButton compoundButton) {
        return C0860a.m3776a(compoundButton);
    }

    @Nullable
    public static PorterDuff.Mode getButtonTintMode(@NonNull CompoundButton compoundButton) {
        return C0860a.m3777b(compoundButton);
    }

    public static void setButtonTintList(@NonNull CompoundButton compoundButton, @Nullable ColorStateList colorStateList) {
        C0860a.m3778c(compoundButton, colorStateList);
    }

    public static void setButtonTintMode(@NonNull CompoundButton compoundButton, @Nullable PorterDuff.Mode mode) {
        C0860a.m3779d(compoundButton, mode);
    }
}
