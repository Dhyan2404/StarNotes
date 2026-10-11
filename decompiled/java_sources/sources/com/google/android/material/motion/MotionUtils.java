package com.google.android.material.motion;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.TypedValue;
import android.view.animation.AnimationUtils;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.core.graphics.PathParser;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.google.android.material.resources.MaterialAttributes;

/* loaded from: classes6.dex */
public class MotionUtils {

    /* renamed from: a */
    public static final String f31759a = "cubic-bezier";

    /* renamed from: b */
    public static final String f31760b = "path";

    /* renamed from: c */
    public static final String f31761c = "(";

    /* renamed from: d */
    public static final String f31762d = ")";

    /* renamed from: a */
    public static float m24342a(String[] strArr, int i) {
        float parseFloat = Float.parseFloat(strArr[i]);
        if (parseFloat >= 0.0f && parseFloat <= 1.0f) {
            return parseFloat;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + parseFloat);
    }

    /* renamed from: b */
    public static String m24343b(String str, String str2) {
        return str.substring(str2.length() + 1, str.length() - 1);
    }

    /* renamed from: c */
    public static TimeInterpolator m24344c(String str) {
        if (!m24346e(str, f31759a)) {
            if (m24346e(str, "path")) {
                return PathInterpolatorCompat.create(PathParser.createPathFromPathData(m24343b(str, "path")));
            }
            throw new IllegalArgumentException("Invalid motion easing type: " + str);
        }
        String[] split = m24343b(str, f31759a).split(",");
        if (split.length == 4) {
            return PathInterpolatorCompat.create(m24342a(split, 0), m24342a(split, 1), m24342a(split, 2), m24342a(split, 3));
        }
        throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + split.length);
    }

    /* renamed from: d */
    public static boolean m24345d(String str) {
        return m24346e(str, f31759a) || m24346e(str, "path");
    }

    /* renamed from: e */
    public static boolean m24346e(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(f31761c);
        return str.startsWith(sb.toString()) && str.endsWith(f31762d);
    }

    public static int resolveThemeDuration(@NonNull Context context, @AttrRes int i, int i2) {
        return MaterialAttributes.resolveInteger(context, i, i2);
    }

    @NonNull
    public static TimeInterpolator resolveThemeInterpolator(@NonNull Context context, @AttrRes int i, @NonNull TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
        }
        String valueOf = String.valueOf(typedValue.string);
        return m24345d(valueOf) ? m24344c(valueOf) : AnimationUtils.loadInterpolator(context, typedValue.resourceId);
    }
}
