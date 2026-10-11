package com.google.android.material.color;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.C5139R;
import com.google.android.material.color.utilities.Blend;
import com.google.android.material.color.utilities.Hct;
import com.google.android.material.resources.MaterialAttributes;

/* loaded from: classes6.dex */
public class MaterialColors {
    public static final float ALPHA_DISABLED = 0.38f;
    public static final float ALPHA_DISABLED_LOW = 0.12f;
    public static final float ALPHA_FULL = 1.0f;
    public static final float ALPHA_LOW = 0.32f;
    public static final float ALPHA_MEDIUM = 0.54f;

    /* renamed from: a */
    public static final int f30903a = 40;

    /* renamed from: b */
    public static final int f30904b = 100;

    /* renamed from: c */
    public static final int f30905c = 90;

    /* renamed from: d */
    public static final int f30906d = 10;

    /* renamed from: e */
    public static final int f30907e = 94;

    /* renamed from: f */
    public static final int f30908f = 92;

    /* renamed from: g */
    public static final int f30909g = 80;

    /* renamed from: h */
    public static final int f30910h = 20;

    /* renamed from: i */
    public static final int f30911i = 30;

    /* renamed from: j */
    public static final int f30912j = 90;

    /* renamed from: k */
    public static final int f30913k = 12;

    /* renamed from: l */
    public static final int f30914l = 17;

    /* renamed from: m */
    public static final int f30915m = 6;

    @ColorInt
    /* renamed from: a */
    public static int m23524a(@ColorInt int i, @IntRange(from = 0, m281to = 100) int i2) {
        Hct fromInt = Hct.fromInt(i);
        fromInt.setTone(i2);
        return fromInt.toInt();
    }

    @ColorInt
    /* renamed from: b */
    public static int m23525b(@ColorInt int i, @IntRange(from = 0, m281to = 100) int i2, int i3) {
        Hct fromInt = Hct.fromInt(m23524a(i, i2));
        fromInt.setChroma(i3);
        return fromInt.toInt();
    }

    /* renamed from: c */
    public static boolean m23526c(@NonNull Context context) {
        return MaterialAttributes.resolveBoolean(context, C5139R.attr.isLightTheme, true);
    }

    @ColorInt
    public static int compositeARGBWithAlpha(@ColorInt int i, @IntRange(from = 0, m281to = 255) int i2) {
        return ColorUtils.setAlphaComponent(i, (Color.alpha(i) * i2) / 255);
    }

    /* renamed from: d */
    public static int m23527d(@NonNull Context context, @NonNull TypedValue typedValue) {
        int i = typedValue.resourceId;
        return i != 0 ? ContextCompat.getColor(context, i) : typedValue.data;
    }

    /* renamed from: e */
    public static ColorStateList m23528e(@NonNull Context context, @NonNull TypedValue typedValue) {
        int i = typedValue.resourceId;
        return i != 0 ? ContextCompat.getColorStateList(context, i) : ColorStateList.valueOf(typedValue.data);
    }

    @ColorInt
    public static int getColor(@NonNull View view, @AttrRes int i) {
        return m23527d(view.getContext(), MaterialAttributes.resolveTypedValueOrThrow(view, i));
    }

    @Nullable
    @ColorInt
    public static Integer getColorOrNull(@NonNull Context context, @AttrRes int i) {
        TypedValue resolve = MaterialAttributes.resolve(context, i);
        if (resolve != null) {
            return Integer.valueOf(m23527d(context, resolve));
        }
        return null;
    }

    @NonNull
    public static ColorRoles getColorRoles(@NonNull Context context, @ColorInt int i) {
        return getColorRoles(i, m23526c(context));
    }

    @NonNull
    public static ColorStateList getColorStateList(@NonNull Context context, @AttrRes int i, @NonNull ColorStateList colorStateList) {
        TypedValue resolve = MaterialAttributes.resolve(context, i);
        ColorStateList m23528e = resolve != null ? m23528e(context, resolve) : null;
        return m23528e == null ? colorStateList : m23528e;
    }

    @Nullable
    public static ColorStateList getColorStateListOrNull(@NonNull Context context, @AttrRes int i) {
        TypedValue resolve = MaterialAttributes.resolve(context, i);
        if (resolve == null) {
            return null;
        }
        int i2 = resolve.resourceId;
        if (i2 != 0) {
            return ContextCompat.getColorStateList(context, i2);
        }
        int i3 = resolve.data;
        if (i3 != 0) {
            return ColorStateList.valueOf(i3);
        }
        return null;
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static int getSurfaceContainerFromSeed(@NonNull Context context, @ColorInt int i) {
        return m23525b(i, m23526c(context) ? 94 : 12, 6);
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static int getSurfaceContainerHighFromSeed(@NonNull Context context, @ColorInt int i) {
        return m23525b(i, m23526c(context) ? 92 : 17, 6);
    }

    @ColorInt
    public static int harmonize(@ColorInt int i, @ColorInt int i2) {
        return Blend.harmonize(i, i2);
    }

    @ColorInt
    public static int harmonizeWithPrimary(@NonNull Context context, @ColorInt int i) {
        return harmonize(i, getColor(context, C5139R.attr.colorPrimary, MaterialColors.class.getCanonicalName()));
    }

    public static boolean isColorLight(@ColorInt int i) {
        return i != 0 && ColorUtils.calculateLuminance(i) > 0.5d;
    }

    @ColorInt
    public static int layer(@NonNull View view, @AttrRes int i, @AttrRes int i2) {
        return layer(view, i, i2, 1.0f);
    }

    @NonNull
    public static ColorRoles getColorRoles(@ColorInt int i, boolean z) {
        if (z) {
            return new ColorRoles(m23524a(i, 40), m23524a(i, 100), m23524a(i, 90), m23524a(i, 10));
        }
        return new ColorRoles(m23524a(i, 80), m23524a(i, 20), m23524a(i, 30), m23524a(i, 90));
    }

    @ColorInt
    public static int layer(@NonNull View view, @AttrRes int i, @AttrRes int i2, @FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        return layer(getColor(view, i), getColor(view, i2), f);
    }

    @ColorInt
    public static int getColor(Context context, @AttrRes int i, String str) {
        return m23527d(context, MaterialAttributes.resolveTypedValueOrThrow(context, i, str));
    }

    @ColorInt
    public static int layer(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, m280to = 1.0d) float f) {
        return layer(i, ColorUtils.setAlphaComponent(i2, Math.round(Color.alpha(i2) * f)));
    }

    @ColorInt
    public static int getColor(@NonNull View view, @AttrRes int i, @ColorInt int i2) {
        return getColor(view.getContext(), i, i2);
    }

    @ColorInt
    public static int getColor(@NonNull Context context, @AttrRes int i, @ColorInt int i2) {
        Integer colorOrNull = getColorOrNull(context, i);
        return colorOrNull != null ? colorOrNull.intValue() : i2;
    }

    @ColorInt
    public static int layer(@ColorInt int i, @ColorInt int i2) {
        return ColorUtils.compositeColors(i2, i);
    }
}
