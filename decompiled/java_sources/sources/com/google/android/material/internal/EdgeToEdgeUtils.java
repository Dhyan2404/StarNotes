package com.google.android.material.internal;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.view.Window;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.WindowCompat;
import com.google.android.material.color.MaterialColors;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class EdgeToEdgeUtils {

    /* renamed from: a */
    public static final int f31551a = 128;

    @TargetApi(21)
    /* renamed from: a */
    public static int m24228a(Context context, boolean z) {
        if (z) {
            return 0;
        }
        return MaterialColors.getColor(context, R.attr.navigationBarColor, -16777216);
    }

    public static void applyEdgeToEdge(@NonNull Window window, boolean z) {
        applyEdgeToEdge(window, z, null, null);
    }

    @TargetApi(21)
    /* renamed from: b */
    public static int m24229b(Context context, boolean z) {
        if (z) {
            return 0;
        }
        return MaterialColors.getColor(context, R.attr.statusBarColor, -16777216);
    }

    /* renamed from: c */
    public static boolean m24230c(int i, boolean z) {
        return MaterialColors.isColorLight(i) || (i == 0 && z);
    }

    public static void setLightNavigationBar(@NonNull Window window, boolean z) {
        WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightNavigationBars(z);
    }

    public static void setLightStatusBar(@NonNull Window window, boolean z) {
        WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightStatusBars(z);
    }

    public static void applyEdgeToEdge(@NonNull Window window, boolean z, @Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2) {
        boolean z2 = num == null || num.intValue() == 0;
        boolean z3 = num2 == null || num2.intValue() == 0;
        if (z2 || z3) {
            int color = MaterialColors.getColor(window.getContext(), R.attr.colorBackground, -16777216);
            if (z2) {
                num = Integer.valueOf(color);
            }
            if (z3) {
                num2 = Integer.valueOf(color);
            }
        }
        WindowCompat.setDecorFitsSystemWindows(window, !z);
        int m24229b = m24229b(window.getContext(), z);
        int m24228a = m24228a(window.getContext(), z);
        window.setStatusBarColor(m24229b);
        window.setNavigationBarColor(m24228a);
        setLightStatusBar(window, m24230c(m24229b, MaterialColors.isColorLight(num.intValue())));
        setLightNavigationBar(window, m24230c(m24228a, MaterialColors.isColorLight(num2.intValue())));
    }
}
