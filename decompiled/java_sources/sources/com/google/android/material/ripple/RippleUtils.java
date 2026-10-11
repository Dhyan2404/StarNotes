package com.google.android.material.ripple;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.StateSet;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.ColorInt;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.C5139R;
import com.google.android.material.color.MaterialColors;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class RippleUtils {

    @ChecksSdkIntAtLeast(api = 21)
    public static final boolean USE_FRAMEWORK_RIPPLE = true;

    /* renamed from: a */
    public static final int[] f32026a = {R.attr.state_pressed};

    /* renamed from: b */
    public static final int[] f32027b = {R.attr.state_hovered, R.attr.state_focused};

    /* renamed from: c */
    public static final int[] f32028c = {R.attr.state_focused};

    /* renamed from: d */
    public static final int[] f32029d = {R.attr.state_hovered};

    /* renamed from: e */
    public static final int[] f32030e = {R.attr.state_selected, R.attr.state_pressed};

    /* renamed from: f */
    public static final int[] f32031f = {R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};

    /* renamed from: g */
    public static final int[] f32032g = {R.attr.state_selected, R.attr.state_focused};

    /* renamed from: h */
    public static final int[] f32033h = {R.attr.state_selected, R.attr.state_hovered};

    /* renamed from: i */
    public static final int[] f32034i = {R.attr.state_selected};

    /* renamed from: j */
    public static final int[] f32035j = {R.attr.state_enabled, R.attr.state_pressed};

    /* renamed from: k */
    @VisibleForTesting
    public static final String f32036k = RippleUtils.class.getSimpleName();

    /* renamed from: l */
    @VisibleForTesting
    public static final String f32037l = "Use a non-transparent color for the default color as it will be used to finish ripple animations.";

    @RequiresApi(21)
    /* renamed from: com.google.android.material.ripple.RippleUtils$a */
    /* loaded from: classes6.dex */
    public static class C5360a {
        /* JADX INFO: Access modifiers changed from: private */
        @DoNotInline
        /* renamed from: b */
        public static Drawable m24540b(@NonNull Context context, @Px int i) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(-1);
            gradientDrawable.setShape(1);
            return new RippleDrawable(MaterialColors.getColorStateList(context, C5139R.attr.colorControlHighlight, ColorStateList.valueOf(0)), null, new InsetDrawable((Drawable) gradientDrawable, i, i, i, i));
        }
    }

    @ColorInt
    @TargetApi(21)
    /* renamed from: a */
    public static int m24537a(@ColorInt int i) {
        return ColorUtils.setAlphaComponent(i, Math.min(Color.alpha(i) * 2, 255));
    }

    @ColorInt
    /* renamed from: b */
    public static int m24538b(@Nullable ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return USE_FRAMEWORK_RIPPLE ? m24537a(colorForState) : colorForState;
    }

    @NonNull
    public static ColorStateList convertToRippleDrawableColor(@Nullable ColorStateList colorStateList) {
        if (USE_FRAMEWORK_RIPPLE) {
            int[] iArr = f32028c;
            return new ColorStateList(new int[][]{f32034i, iArr, StateSet.NOTHING}, new int[]{m24538b(colorStateList, f32030e), m24538b(colorStateList, iArr), m24538b(colorStateList, f32026a)});
        }
        int[] iArr2 = f32030e;
        int[] iArr3 = f32031f;
        int[] iArr4 = f32032g;
        int[] iArr5 = f32033h;
        int[] iArr6 = f32026a;
        int[] iArr7 = f32027b;
        int[] iArr8 = f32028c;
        int[] iArr9 = f32029d;
        return new ColorStateList(new int[][]{iArr2, iArr3, iArr4, iArr5, f32034i, iArr6, iArr7, iArr8, iArr9, StateSet.NOTHING}, new int[]{m24538b(colorStateList, iArr2), m24538b(colorStateList, iArr3), m24538b(colorStateList, iArr4), m24538b(colorStateList, iArr5), 0, m24538b(colorStateList, iArr6), m24538b(colorStateList, iArr7), m24538b(colorStateList, iArr8), m24538b(colorStateList, iArr9), 0});
    }

    @NonNull
    @RequiresApi(21)
    public static Drawable createOvalRippleLollipop(@NonNull Context context, @Px int i) {
        return C5360a.m24540b(context, i);
    }

    @NonNull
    public static ColorStateList sanitizeRippleDrawableColor(@Nullable ColorStateList colorStateList) {
        return colorStateList != null ? colorStateList : ColorStateList.valueOf(0);
    }

    public static boolean shouldDrawRippleCompat(@NonNull int[] iArr) {
        boolean z = false;
        boolean z2 = false;
        for (int i : iArr) {
            if (i == 16842910) {
                z = true;
            } else if (i == 16842908 || i == 16842919 || i == 16843623) {
                z2 = true;
            }
        }
        return z && z2;
    }
}
