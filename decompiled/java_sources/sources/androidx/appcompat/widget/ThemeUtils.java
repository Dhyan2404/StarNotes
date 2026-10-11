package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.core.graphics.ColorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class ThemeUtils {

    /* renamed from: a */
    public static final String f1994a = "ThemeUtils";

    /* renamed from: b */
    public static final ThreadLocal<TypedValue> f1995b = new ThreadLocal<>();

    /* renamed from: c */
    public static final int[] f1996c = {-16842910};

    /* renamed from: d */
    public static final int[] f1997d = {R.attr.state_focused};

    /* renamed from: e */
    public static final int[] f1998e = {R.attr.state_activated};

    /* renamed from: f */
    public static final int[] f1999f = {R.attr.state_pressed};

    /* renamed from: g */
    public static final int[] f2000g = {R.attr.state_checked};

    /* renamed from: h */
    public static final int[] f2001h = {R.attr.state_selected};

    /* renamed from: i */
    public static final int[] f2002i = {-16842919, -16842908};

    /* renamed from: j */
    public static final int[] f2003j = new int[0];

    /* renamed from: k */
    public static final int[] f2004k = new int[1];

    /* renamed from: a */
    public static int m931a(@NonNull Context context, int i, float f) {
        return ColorUtils.setAlphaComponent(getThemeAttrColor(context, i), Math.round(Color.alpha(r0) * f));
    }

    /* renamed from: b */
    public static TypedValue m932b() {
        ThreadLocal<TypedValue> threadLocal = f1995b;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    public static void checkAppCompatTheme(@NonNull View view, @NonNull Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(C0118R.styleable.AppCompatTheme);
        try {
            if (!obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatTheme_windowActionBar)) {
                Log.e(f1994a, "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @NonNull
    public static ColorStateList createDisabledStateList(int i, int i2) {
        return new ColorStateList(new int[][]{f1996c, f2003j}, new int[]{i2, i});
    }

    public static int getDisabledThemeAttrColor(@NonNull Context context, int i) {
        ColorStateList themeAttrColorStateList = getThemeAttrColorStateList(context, i);
        if (themeAttrColorStateList != null && themeAttrColorStateList.isStateful()) {
            return themeAttrColorStateList.getColorForState(f1996c, themeAttrColorStateList.getDefaultColor());
        }
        TypedValue m932b = m932b();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, m932b, true);
        return m931a(context, i, m932b.getFloat());
    }

    public static int getThemeAttrColor(@NonNull Context context, int i) {
        int[] iArr = f2004k;
        iArr[0] = i;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, (AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Nullable
    public static ColorStateList getThemeAttrColorStateList(@NonNull Context context, int i) {
        int[] iArr = f2004k;
        iArr[0] = i;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, (AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColorStateList(0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
