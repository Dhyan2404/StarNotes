package com.onyx.android.sdk.extension;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.WindowInsets;
import android.view.WindowManager;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.blankj.utilcode.util.ActivityUtils;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.p039ui.IFullScreenStyle;
import com.onyx.android.sdk.theme.utils.SkinType;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0005\u001a\n\u0010\b\u001a\u00020\u0007*\u00020\u0005\u001a\f\u0010\t\u001a\u00020\u0001*\u00020\u0005H\u0007\u001a\u0012\u0010\n\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u001a\f\u0010\u000b\u001a\u00020\u0001*\u00020\u0005H\u0007¨\u0006\f"}, m61528d2 = {"updateFullScreenStyle", "", "hideStatusBar", "", "applyNotchDisplay", "Landroid/app/Activity;", "getNavigationBarHeight", "", "getStatusBarHeight", "hideAllBars", "setFullScreenStyle", "showStatusBarOnly", "sdk-ui_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nActivityExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityExt.kt\ncom/onyx/android/sdk/extension/ActivityExtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1855#2,2:88\n*S KotlinDebug\n*F\n+ 1 ActivityExt.kt\ncom/onyx/android/sdk/extension/ActivityExtKt\n*L\n63#1:88,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ActivityExtKt {
    public static final void applyNotchDisplay(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        WindowCompat.setDecorFitsSystemWindows(activity.getWindow(), false);
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.layoutInDisplayCutoutMode = 1;
        activity.getWindow().setAttributes(attributes);
    }

    public static final int getNavigationBarHeight(@NotNull Activity activity) {
        Insets insets;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(activity.getWindow().getDecorView());
        if (rootWindowInsets == null || (insets = rootWindowInsets.getInsets(WindowInsetsCompat.Type.systemBars())) == null) {
            return 0;
        }
        return insets.bottom;
    }

    public static final int getStatusBarHeight(@NotNull Activity activity) {
        Insets insets;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(activity.getWindow().getDecorView());
        if (rootWindowInsets == null || (insets = rootWindowInsets.getInsets(WindowInsetsCompat.Type.systemBars())) == null) {
            return 0;
        }
        return insets.top;
    }

    @SuppressLint({"WrongConstant"})
    public static final void hideAllBars(@NotNull Activity activity) {
        int statusBars;
        int navigationBars;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        if (!BuildKt.isApiLevelAbove(30)) {
            activity.getWindow().getDecorView().setSystemUiVisibility(5894);
            return;
        }
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(activity.getWindow(), activity.getWindow().getDecorView());
        statusBars = WindowInsets.Type.statusBars();
        navigationBars = WindowInsets.Type.navigationBars();
        windowInsetsControllerCompat.hide(statusBars | navigationBars);
        windowInsetsControllerCompat.setSystemBarsBehavior(2);
    }

    public static final void setFullScreenStyle(@NotNull Activity activity, boolean z) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        if (z) {
            hideAllBars(activity);
        } else {
            showStatusBarOnly(activity);
        }
    }

    @SuppressLint({"WrongConstant"})
    public static final void showStatusBarOnly(@NotNull Activity activity) {
        int statusBars;
        int navigationBars;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        if (!BuildKt.isApiLevelAbove(30)) {
            activity.getWindow().getDecorView().setSystemUiVisibility(1280);
            return;
        }
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(activity.getWindow(), activity.getWindow().getDecorView());
        statusBars = WindowInsets.Type.statusBars();
        navigationBars = WindowInsets.Type.navigationBars();
        windowInsetsControllerCompat.show(statusBars | navigationBars);
        windowInsetsControllerCompat.setAppearanceLightStatusBars(SkinType.INSTANCE.isLightTheme(ThemeUtils.getTheme().getThemeType()));
    }

    public static final void updateFullScreenStyle(boolean z) {
        List<Activity> activityList = ActivityUtils.getActivityList();
        Intrinsics.checkNotNullExpressionValue(activityList, "getActivityList(...)");
        for (Activity activity : activityList) {
            if (activity instanceof IFullScreenStyle) {
                setFullScreenStyle(activity, z);
            }
        }
    }
}
