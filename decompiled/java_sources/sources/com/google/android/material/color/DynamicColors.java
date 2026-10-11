package com.google.android.material.color;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.app.UiModeManager;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.core.os.BuildCompat;
import com.google.android.material.C5139R;
import com.google.android.material.color.DynamicColorsOptions;
import com.google.android.material.color.utilities.Hct;
import com.google.android.material.color.utilities.SchemeContent;
import com.google.android.material.internal.ManufacturerUtils;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.galaxy.note.message.handler.NotificationDisplayHandler;
import com.oplus.ocs.ipemanager.sdk.PencilManagerUnitClient;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes6.dex */
public class DynamicColors {

    /* renamed from: a */
    public static final int[] f30871a = {C5139R.attr.dynamicColorThemeOverlay};

    /* renamed from: b */
    public static final InterfaceC5217c f30872b;

    /* renamed from: c */
    @SuppressLint({"PrivateApi"})
    public static final InterfaceC5217c f30873c;

    /* renamed from: d */
    public static final Map<String, InterfaceC5217c> f30874d;

    /* renamed from: e */
    public static final Map<String, InterfaceC5217c> f30875e;

    /* renamed from: f */
    public static final int f30876f = 0;

    /* renamed from: g */
    public static final String f30877g;

    /* loaded from: classes6.dex */
    public interface OnAppliedCallback {
        void onApplied(@NonNull Activity activity);
    }

    /* loaded from: classes6.dex */
    public interface Precondition {
        boolean shouldApplyDynamicColors(@NonNull Activity activity, @StyleRes int i);
    }

    /* renamed from: com.google.android.material.color.DynamicColors$a */
    /* loaded from: classes6.dex */
    public class C5215a implements InterfaceC5217c {
        @Override // com.google.android.material.color.DynamicColors.InterfaceC5217c
        public boolean isSupported() {
            return true;
        }
    }

    /* renamed from: com.google.android.material.color.DynamicColors$b */
    /* loaded from: classes6.dex */
    public class C5216b implements InterfaceC5217c {

        /* renamed from: a */
        public Long f30878a;

        @Override // com.google.android.material.color.DynamicColors.InterfaceC5217c
        public boolean isSupported() {
            if (this.f30878a == null) {
                try {
                    Method declaredMethod = Build.class.getDeclaredMethod("getLong", String.class);
                    declaredMethod.setAccessible(true);
                    this.f30878a = Long.valueOf(((Long) declaredMethod.invoke(null, "ro.build.version.oneui")).longValue());
                } catch (Exception unused) {
                    this.f30878a = -1L;
                }
            }
            return this.f30878a.longValue() >= 40100;
        }
    }

    /* renamed from: com.google.android.material.color.DynamicColors$c */
    /* loaded from: classes6.dex */
    public interface InterfaceC5217c {
        boolean isSupported();
    }

    /* renamed from: com.google.android.material.color.DynamicColors$d */
    /* loaded from: classes6.dex */
    public static class C5218d implements Application.ActivityLifecycleCallbacks {

        /* renamed from: e */
        public final DynamicColorsOptions f30879e;

        public C5218d(@NonNull DynamicColorsOptions dynamicColorsOptions) {
            this.f30879e = dynamicColorsOptions;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
            DynamicColors.applyToActivityIfAvailable(activity, this.f30879e);
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

    static {
        C5215a c5215a = new C5215a();
        f30872b = c5215a;
        C5216b c5216b = new C5216b();
        f30873c = c5216b;
        HashMap hashMap = new HashMap();
        hashMap.put("fcnt", c5215a);
        hashMap.put(LoginAuthConst.GOOGLE_AUTH, c5215a);
        hashMap.put("hmd global", c5215a);
        hashMap.put("infinix", c5215a);
        hashMap.put("infinix mobility limited", c5215a);
        hashMap.put("itel", c5215a);
        hashMap.put("kyocera", c5215a);
        hashMap.put("lenovo", c5215a);
        hashMap.put(ManufacturerUtils.f31578a, c5215a);
        hashMap.put(ManufacturerUtils.f31580c, c5215a);
        hashMap.put("motorola", c5215a);
        hashMap.put(NotificationDisplayHandler.STRATEGY_NOTHING, c5215a);
        hashMap.put(PencilManagerUnitClient.f63165m, c5215a);
        hashMap.put("oppo", c5215a);
        hashMap.put(PencilManagerUnitClient.f63164l, c5215a);
        hashMap.put("robolectric", c5215a);
        hashMap.put(ManufacturerUtils.f31579b, c5216b);
        hashMap.put("sharp", c5215a);
        hashMap.put("shift", c5215a);
        hashMap.put("sony", c5215a);
        hashMap.put("tcl", c5215a);
        hashMap.put("tecno", c5215a);
        hashMap.put("tecno mobile limited", c5215a);
        hashMap.put("vivo", c5215a);
        hashMap.put("wingtech", c5215a);
        hashMap.put("xiaomi", c5215a);
        f30874d = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("asus", c5215a);
        hashMap2.put("jio", c5215a);
        f30875e = Collections.unmodifiableMap(hashMap2);
        f30877g = DynamicColors.class.getSimpleName();
    }

    /* renamed from: a */
    public static int m23508a(@NonNull Context context, int[] iArr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    @Deprecated
    public static void applyIfAvailable(@NonNull Activity activity) {
        applyToActivityIfAvailable(activity);
    }

    public static void applyToActivitiesIfAvailable(@NonNull Application application) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().build());
    }

    public static void applyToActivityIfAvailable(@NonNull Activity activity) {
        applyToActivityIfAvailable(activity, new DynamicColorsOptions.Builder().build());
    }

    /* renamed from: b */
    public static float m23509b(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        if (uiModeManager == null || Build.VERSION.SDK_INT < 34) {
            return 0.0f;
        }
        return uiModeManager.getContrast();
    }

    @ChecksSdkIntAtLeast(api = 31)
    @SuppressLint({"DefaultLocale"})
    public static boolean isDynamicColorAvailable() {
        if (Build.VERSION.SDK_INT < 31) {
            return false;
        }
        if (BuildCompat.isAtLeastT()) {
            return true;
        }
        Map<String, InterfaceC5217c> map = f30874d;
        String str = Build.MANUFACTURER;
        Locale locale = Locale.ROOT;
        InterfaceC5217c interfaceC5217c = map.get(str.toLowerCase(locale));
        if (interfaceC5217c == null) {
            interfaceC5217c = f30875e.get(Build.BRAND.toLowerCase(locale));
        }
        return interfaceC5217c != null && interfaceC5217c.isSupported();
    }

    @NonNull
    public static Context wrapContextIfAvailable(@NonNull Context context) {
        return wrapContextIfAvailable(context, 0);
    }

    @Deprecated
    public static void applyIfAvailable(@NonNull Activity activity, @StyleRes int i) {
        applyToActivityIfAvailable(activity, new DynamicColorsOptions.Builder().setThemeOverlay(i).build());
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(@NonNull Application application, @StyleRes int i) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().setThemeOverlay(i).build());
    }

    public static void applyToActivityIfAvailable(@NonNull Activity activity, @NonNull DynamicColorsOptions dynamicColorsOptions) {
        int i;
        if (isDynamicColorAvailable()) {
            if (dynamicColorsOptions.getContentBasedSeedColor() != null) {
                i = 0;
            } else if (dynamicColorsOptions.getThemeOverlay() == 0) {
                i = m23508a(activity, f30871a);
            } else {
                i = dynamicColorsOptions.getThemeOverlay();
            }
            if (dynamicColorsOptions.getPrecondition().shouldApplyDynamicColors(activity, i)) {
                if (dynamicColorsOptions.getContentBasedSeedColor() != null) {
                    SchemeContent schemeContent = new SchemeContent(Hct.fromInt(dynamicColorsOptions.getContentBasedSeedColor().intValue()), !MaterialColors.m23526c(activity), m23509b(activity));
                    ColorResourcesOverride colorResourcesOverride = ColorResourcesOverride.getInstance();
                    if (colorResourcesOverride == null || !colorResourcesOverride.applyIfPossible(activity, MaterialColorUtilitiesHelper.createColorResourcesIdsToColorValues(schemeContent))) {
                        return;
                    }
                } else {
                    ThemeUtils.applyThemeOverlay(activity, i);
                }
                dynamicColorsOptions.getOnAppliedCallback().onApplied(activity);
            }
        }
    }

    @NonNull
    public static Context wrapContextIfAvailable(@NonNull Context context, @StyleRes int i) {
        return wrapContextIfAvailable(context, new DynamicColorsOptions.Builder().setThemeOverlay(i).build());
    }

    @Deprecated
    public static void applyIfAvailable(@NonNull Activity activity, @NonNull Precondition precondition) {
        applyToActivityIfAvailable(activity, new DynamicColorsOptions.Builder().setPrecondition(precondition).build());
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(@NonNull Application application, @NonNull Precondition precondition) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().setPrecondition(precondition).build());
    }

    @NonNull
    public static Context wrapContextIfAvailable(@NonNull Context context, @NonNull DynamicColorsOptions dynamicColorsOptions) {
        if (!isDynamicColorAvailable()) {
            return context;
        }
        int themeOverlay = dynamicColorsOptions.getThemeOverlay();
        if (themeOverlay == 0) {
            themeOverlay = m23508a(context, f30871a);
        }
        if (themeOverlay == 0) {
            return context;
        }
        if (dynamicColorsOptions.getContentBasedSeedColor() != null) {
            SchemeContent schemeContent = new SchemeContent(Hct.fromInt(dynamicColorsOptions.getContentBasedSeedColor().intValue()), !MaterialColors.m23526c(context), m23509b(context));
            ColorResourcesOverride colorResourcesOverride = ColorResourcesOverride.getInstance();
            if (colorResourcesOverride != null) {
                return colorResourcesOverride.wrapContextIfPossible(context, MaterialColorUtilitiesHelper.createColorResourcesIdsToColorValues(schemeContent));
            }
        }
        return new ContextThemeWrapper(context, themeOverlay);
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(@NonNull Application application, @StyleRes int i, @NonNull Precondition precondition) {
        applyToActivitiesIfAvailable(application, new DynamicColorsOptions.Builder().setThemeOverlay(i).setPrecondition(precondition).build());
    }

    public static void applyToActivitiesIfAvailable(@NonNull Application application, @NonNull DynamicColorsOptions dynamicColorsOptions) {
        application.registerActivityLifecycleCallbacks(new C5218d(dynamicColorsOptions));
    }
}
