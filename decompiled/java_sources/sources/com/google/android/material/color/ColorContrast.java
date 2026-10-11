package com.google.android.material.color;

import android.app.Activity;
import android.app.Application;
import android.app.UiModeManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes6.dex */
public class ColorContrast {

    /* renamed from: a */
    public static final float f30857a = 0.33333334f;

    /* renamed from: b */
    public static final float f30858b = 0.6666667f;

    @RequiresApi(34)
    /* renamed from: com.google.android.material.color.ColorContrast$a */
    /* loaded from: classes6.dex */
    public static class C5213a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: e */
        public final Set<Activity> f30859e = new LinkedHashSet();

        /* renamed from: f */
        public final ColorContrastOptions f30860f;

        /* renamed from: g */
        @Nullable
        public UiModeManager.ContrastChangeListener f30861g;

        /* renamed from: com.google.android.material.color.ColorContrast$a$a */
        /* loaded from: classes6.dex */
        public class a implements UiModeManager.ContrastChangeListener {
            public a() {
            }

            @Override // android.app.UiModeManager.ContrastChangeListener
            public void onContrastChanged(float f) {
                Iterator it2 = C5213a.this.f30859e.iterator();
                while (it2.hasNext()) {
                    ((Activity) it2.next()).recreate();
                }
            }
        }

        public C5213a(ColorContrastOptions colorContrastOptions) {
            this.f30860f = colorContrastOptions;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NonNull Activity activity) {
            this.f30859e.remove(activity);
            UiModeManager uiModeManager = (UiModeManager) activity.getSystemService("uimode");
            if (uiModeManager == null || this.f30861g == null || !this.f30859e.isEmpty()) {
                return;
            }
            uiModeManager.removeContrastChangeListener(this.f30861g);
            this.f30861g = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
            UiModeManager uiModeManager = (UiModeManager) activity.getSystemService("uimode");
            if (uiModeManager != null && this.f30859e.isEmpty() && this.f30861g == null) {
                this.f30861g = new a();
                uiModeManager.addContrastChangeListener(ContextCompat.getMainExecutor(activity.getApplicationContext()), this.f30861g);
            }
            this.f30859e.add(activity);
            if (uiModeManager != null) {
                ColorContrast.applyToActivityIfAvailable(activity, this.f30860f);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NonNull Activity activity) {
        }
    }

    /* renamed from: a */
    public static int m23504a(Context context, ColorContrastOptions colorContrastOptions) {
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        if (isContrastAvailable() && uiModeManager != null) {
            float contrast = uiModeManager.getContrast();
            int mediumContrastThemeOverlay = colorContrastOptions.getMediumContrastThemeOverlay();
            int highContrastThemeOverlay = colorContrastOptions.getHighContrastThemeOverlay();
            if (contrast >= 0.6666667f) {
                return highContrastThemeOverlay == 0 ? mediumContrastThemeOverlay : highContrastThemeOverlay;
            }
            if (contrast >= 0.33333334f) {
                return mediumContrastThemeOverlay == 0 ? highContrastThemeOverlay : mediumContrastThemeOverlay;
            }
        }
        return 0;
    }

    public static void applyToActivitiesIfAvailable(@NonNull Application application, @NonNull ColorContrastOptions colorContrastOptions) {
        if (isContrastAvailable()) {
            application.registerActivityLifecycleCallbacks(new C5213a(colorContrastOptions));
        }
    }

    public static void applyToActivityIfAvailable(@NonNull Activity activity, @NonNull ColorContrastOptions colorContrastOptions) {
        int m23504a;
        if (isContrastAvailable() && (m23504a = m23504a(activity, colorContrastOptions)) != 0) {
            ThemeUtils.applyThemeOverlay(activity, m23504a);
        }
    }

    @ChecksSdkIntAtLeast(api = 34)
    public static boolean isContrastAvailable() {
        return Build.VERSION.SDK_INT >= 34;
    }

    @NonNull
    public static Context wrapContextIfAvailable(@NonNull Context context, @NonNull ColorContrastOptions colorContrastOptions) {
        int m23504a;
        return (isContrastAvailable() && (m23504a = m23504a(context, colorContrastOptions)) != 0) ? new ContextThemeWrapper(context, m23504a) : context;
    }
}
