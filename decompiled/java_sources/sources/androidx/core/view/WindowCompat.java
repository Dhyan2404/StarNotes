package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.annotation.DoNotInline;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public final class WindowCompat {
    public static final int FEATURE_ACTION_BAR = 8;
    public static final int FEATURE_ACTION_BAR_OVERLAY = 9;
    public static final int FEATURE_ACTION_MODE_OVERLAY = 10;

    /* renamed from: androidx.core.view.WindowCompat$a */
    /* loaded from: classes3.dex */
    public static class C0805a {
        /* renamed from: a */
        public static void m3545a(@NonNull Window window, boolean z) {
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.view.WindowCompat$b */
    /* loaded from: classes3.dex */
    public static class C0806b {
        @DoNotInline
        /* renamed from: a */
        public static <T> T m3546a(Window window, int i) {
            return (T) window.requireViewById(i);
        }
    }

    @RequiresApi(30)
    /* renamed from: androidx.core.view.WindowCompat$c */
    /* loaded from: classes3.dex */
    public static class C0807c {
        @DoNotInline
        /* renamed from: a */
        public static void m3547a(@NonNull Window window, boolean z) {
            window.setDecorFitsSystemWindows(z);
        }
    }

    @NonNull
    public static WindowInsetsControllerCompat getInsetsController(@NonNull Window window, @NonNull View view) {
        return new WindowInsetsControllerCompat(window, view);
    }

    @NonNull
    public static <T extends View> T requireViewById(@NonNull Window window, @IdRes int i) {
        return (T) C0806b.m3546a(window, i);
    }

    public static void setDecorFitsSystemWindows(@NonNull Window window, boolean z) {
        if (Build.VERSION.SDK_INT >= 30) {
            C0807c.m3547a(window, z);
        } else {
            C0805a.m3545a(window, z);
        }
    }
}
