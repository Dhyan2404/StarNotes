package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.core.content.IntentCompat;

@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes3.dex */
public class AppLaunchChecker {

    /* renamed from: a */
    public static final String f4767a = "android.support.AppLaunchChecker";

    /* renamed from: b */
    public static final String f4768b = "startedFromLauncher";

    @Deprecated
    public AppLaunchChecker() {
    }

    public static boolean hasStartedFromLauncher(@NonNull Context context) {
        return context.getSharedPreferences(f4767a, 0).getBoolean(f4768b, false);
    }

    public static void onActivityCreate(@NonNull Activity activity) {
        Intent intent;
        SharedPreferences sharedPreferences = activity.getSharedPreferences(f4767a, 0);
        if (sharedPreferences.getBoolean(f4768b, false) || (intent = activity.getIntent()) == null || !"android.intent.action.MAIN".equals(intent.getAction())) {
            return;
        }
        if (intent.hasCategory("android.intent.category.LAUNCHER") || intent.hasCategory(IntentCompat.CATEGORY_LEANBACK_LAUNCHER)) {
            sharedPreferences.edit().putBoolean(f4768b, true).apply();
        }
    }
}
