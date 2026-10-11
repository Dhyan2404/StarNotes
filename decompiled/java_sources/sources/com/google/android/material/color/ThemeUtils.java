package com.google.android.material.color;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class ThemeUtils {
    @Nullable
    /* renamed from: a */
    public static Resources.Theme m23529a(@NonNull Activity activity) {
        View peekDecorView;
        Context context;
        Window window = activity.getWindow();
        if (window == null || (peekDecorView = window.peekDecorView()) == null || (context = peekDecorView.getContext()) == null) {
            return null;
        }
        return context.getTheme();
    }

    public static void applyThemeOverlay(@NonNull Context context, @StyleRes int i) {
        Resources.Theme m23529a;
        context.getTheme().applyStyle(i, true);
        if (!(context instanceof Activity) || (m23529a = m23529a((Activity) context)) == null) {
            return;
        }
        m23529a.applyStyle(i, true);
    }
}
