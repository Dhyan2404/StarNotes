package com.onyx.android.sdk.base.extension;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.graphics.Point;
import android.os.LocaleList;
import android.view.Display;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Lifecycle;
import com.blankj.utilcode.util.ActivityUtils;
import com.blankj.utilcode.util.BarUtils;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\tJ\n\u0010\n\u001a\u00020\u000b*\u00020\fJ\n\u0010\r\u001a\u00020\u000e*\u00020\fJ\n\u0010\u000f\u001a\u00020\u000e*\u00020\fJ\u0012\u0010\u0010\u001a\u00020\u000b*\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u000eJ\u0014\u0010\u0012\u001a\u00020\u0013*\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/base/extension/Activity;", "", "()V", "findActivity", "Landroid/app/Activity;", "context", "Landroid/content/Context;", "getFrontActivity", "getTopContentView", "Landroid/view/View;", "hideNavigationBar", "", "Landroidx/appcompat/app/AppCompatActivity;", "isFront", "", "isNavBarVisible", "keepScreenOn", "enable", "updateOverrideConfigurationLocale", "Landroid/content/res/Configuration;", "overrideConfiguration", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Activity.kt\ncom/onyx/android/sdk/base/extension/Activity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1#2:85\n*E\n"})
/* loaded from: classes7.dex */
public final class Activity {

    @NotNull
    public static final Activity INSTANCE = new Activity();

    @Nullable
    public final android.app.Activity findActivity(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (context instanceof android.app.Activity) {
            return (android.app.Activity) context;
        }
        if (!(context instanceof ContextWrapper)) {
            return null;
        }
        Context baseContext = ((ContextWrapper) context).getBaseContext();
        Intrinsics.checkNotNullExpressionValue(baseContext, "getBaseContext(...)");
        return findActivity(baseContext);
    }

    @NotNull
    public final android.app.Activity getFrontActivity() {
        Object obj;
        List<android.app.Activity> activityList = ActivityUtils.getActivityList();
        Intrinsics.checkNotNull(activityList);
        Iterator<T> it2 = activityList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            android.app.Activity activity = (android.app.Activity) obj;
            if ((activity instanceof AppCompatActivity) && INSTANCE.isFront((AppCompatActivity) activity)) {
                break;
            }
        }
        android.app.Activity activity2 = (android.app.Activity) obj;
        if (activity2 != null) {
            return activity2;
        }
        android.app.Activity topActivity = ActivityUtils.getTopActivity();
        Intrinsics.checkNotNullExpressionValue(topActivity, "getTopActivity(...)");
        return topActivity;
    }

    @NotNull
    public final View getTopContentView() {
        return ViewLocator.INSTANCE.getActivityContentView(getFrontActivity());
    }

    public final void hideNavigationBar(@NotNull AppCompatActivity appCompatActivity) {
        WindowInsetsController windowInsetsController;
        int navigationBars;
        Intrinsics.checkNotNullParameter(appCompatActivity, "<this>");
        if (!BuildKt.isApiLevelAbove(30)) {
            BarUtils.setNavBarVisibility((android.app.Activity) appCompatActivity, false);
            return;
        }
        windowInsetsController = appCompatActivity.getWindow().getDecorView().getWindowInsetsController();
        if (windowInsetsController != null) {
            navigationBars = WindowInsets.Type.navigationBars();
            windowInsetsController.hide(navigationBars);
        }
    }

    public final boolean isFront(@NotNull AppCompatActivity appCompatActivity) {
        Intrinsics.checkNotNullParameter(appCompatActivity, "<this>");
        return appCompatActivity.getLifecycle().getState().isAtLeast(Lifecycle.State.RESUMED);
    }

    public final boolean isNavBarVisible(@NotNull AppCompatActivity appCompatActivity) {
        Intrinsics.checkNotNullParameter(appCompatActivity, "<this>");
        Point point = new Point();
        Point point2 = new Point();
        Display defaultDisplay = appCompatActivity.getWindowManager().getDefaultDisplay();
        defaultDisplay.getSize(point);
        defaultDisplay.getRealSize(point2);
        return point2.y != point.y;
    }

    public final void keepScreenOn(@NotNull android.app.Activity activity, boolean z) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        if (z) {
            activity.getWindow().addFlags(128);
        } else {
            activity.getWindow().clearFlags(128);
        }
    }

    @NotNull
    public final Configuration updateOverrideConfigurationLocale(@NotNull android.app.Activity activity, @Nullable Configuration configuration) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        if (configuration == null) {
            configuration = activity.getResources().getConfiguration();
        }
        Configuration configuration2 = new Configuration(configuration);
        Locale noteLanguageLocale = LocaleUtils.INSTANCE.getNoteLanguageLocale();
        configuration2.setLocale(noteLanguageLocale);
        configuration2.setLocales(new LocaleList(noteLanguageLocale));
        return configuration2;
    }
}
