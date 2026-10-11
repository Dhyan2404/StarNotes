package com.onyx.android.sdk.base.extension;

import android.R;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Size;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.utils.ResManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\n\u0010\u0006\u001a\u00020\u0007*\u00020\bJ\n\u0010\t\u001a\u00020\u0004*\u00020\nJ\n\u0010\u000b\u001a\u00020\b*\u00020\nJ\n\u0010\u000b\u001a\u00020\b*\u00020\bJ\n\u0010\f\u001a\u00020\b*\u00020\nJ\n\u0010\f\u001a\u00020\b*\u00020\bJ\n\u0010\r\u001a\u00020\u000e*\u00020\nJ\n\u0010\u000f\u001a\u00020\u0004*\u00020\nJ\n\u0010\u0010\u001a\u00020\u0004*\u00020\nJ\n\u0010\u0011\u001a\u00020\u000e*\u00020\nJ\u0012\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\b0\b*\u00020\bJ\n\u0010\u0014\u001a\u00020\u000e*\u00020\bJ\u0012\u0010\u0014\u001a\u00020\u000e*\u00020\b2\u0006\u0010\u0015\u001a\u00020\bJ\n\u0010\u0016\u001a\u00020\u0004*\u00020\bJ\n\u0010\u0017\u001a\u00020\u000e*\u00020\bJ\n\u0010\u0018\u001a\u00020\u000e*\u00020\bJ\n\u0010\u0019\u001a\u00020\u000e*\u00020\bJ\n\u0010\u001a\u001a\u00020\u000e*\u00020\bJ\n\u0010\u001b\u001a\u00020\u000e*\u00020\bJ\n\u0010\u001c\u001a\u00020\u001d*\u00020\bJ\n\u0010\u001e\u001a\u00020\u001d*\u00020\bJ\n\u0010\u001f\u001a\u00020\u001d*\u00020\bJ\n\u0010 \u001a\u00020\u001d*\u00020\bJ\n\u0010!\u001a\u00020\u001d*\u00020\b¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/base/extension/ViewLocator;", "", "()V", "getApplicationSize", "Landroid/util/Size;", "getScreenSize", "getActivity", "Landroid/app/Activity;", "Landroid/view/View;", "getActivityContentSize", "Landroid/content/Context;", "getActivityContentView", "getActivityDecorView", "getActivityOffset", "Lcom/onyx/android/sdk/base/data/WindowLocation;", "getActivityWindowSize", "getActivityWindowVisibleSize", "getContentOffset", "getWindowDecorView", "kotlin.jvm.PlatformType", "getWindowOffset", "anotherView", "getWindowSize", "locationInActivity", "locationInApplication", "locationInParent", "locationInWindow", "locationOnScreen", "rectInActivity", "Landroid/graphics/Rect;", "rectInParent", "rectInWindow", "rectOnScreen", "visibleRectToSelf", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ViewLocator {

    @NotNull
    public static final ViewLocator INSTANCE = new ViewLocator();

    @NotNull
    public final android.app.Activity getActivity(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return ContextKt.toActivitySafety(view.getContext());
    }

    @NotNull
    public final Size getActivityContentSize(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        View activityContentView = getActivityContentView(context);
        return new Size(activityContentView.getMeasuredWidth(), activityContentView.getMeasuredHeight());
    }

    @NotNull
    public final View getActivityContentView(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        View findViewById = ContextKt.toActivitySafety(context).findViewById(R.id.content);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        return findViewById;
    }

    @NotNull
    public final View getActivityDecorView(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        View decorView = ContextKt.toActivitySafety(context).getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        return decorView;
    }

    @NotNull
    public final WindowLocation getActivityOffset(@NotNull Context context) {
        WindowMetrics currentWindowMetrics;
        Rect bounds;
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (BuildKt.isApiLevelBelow(30)) {
            return new WindowLocation(0, 0, 0, 0, 0, null, null, 115, null);
        }
        currentWindowMetrics = ((WindowManager) context.getSystemService(WindowManager.class)).getCurrentWindowMetrics();
        bounds = currentWindowMetrics.getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
        WindowLocation locationOnScreen = locationOnScreen(getActivityDecorView(context));
        return new WindowLocation(0, 0, locationOnScreen.getX() - bounds.left, locationOnScreen.getY() - bounds.top, 0, null, null, 115, null);
    }

    @NotNull
    public final Size getActivityWindowSize(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        View activityDecorView = getActivityDecorView(context);
        return new Size(activityDecorView.getMeasuredWidth(), activityDecorView.getMeasuredHeight());
    }

    @NotNull
    public final Size getActivityWindowVisibleSize(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Rect rect = new Rect();
        getActivityDecorView(context).getWindowVisibleDisplayFrame(rect);
        return new Size(rect.width(), rect.height());
    }

    @NotNull
    public final Size getApplicationSize() {
        WindowMetrics currentWindowMetrics;
        Rect bounds;
        Context appContext = ResManager.INSTANCE.getAppContext();
        if (!BuildKt.isApiLevelAbove(30)) {
            DisplayMetrics displayMetrics = appContext.getResources().getDisplayMetrics();
            return new Size(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        currentWindowMetrics = ((WindowManager) appContext.getSystemService(WindowManager.class)).getCurrentWindowMetrics();
        bounds = currentWindowMetrics.getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
        return new Size(bounds.width(), bounds.height());
    }

    @NotNull
    public final WindowLocation getContentOffset(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return locationInWindow(getActivityContentView(context));
    }

    @NotNull
    public final Size getScreenSize() {
        WindowMetrics maximumWindowMetrics;
        Rect bounds;
        WindowManager windowManager = (WindowManager) ResManager.INSTANCE.getAppContext().getSystemService(WindowManager.class);
        if (!BuildKt.isApiLevelAbove(30)) {
            Point point = new Point(0, 0);
            windowManager.getDefaultDisplay().getRealSize(point);
            return new Size(point.x, point.y);
        }
        maximumWindowMetrics = windowManager.getMaximumWindowMetrics();
        bounds = maximumWindowMetrics.getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
        return new Size(bounds.width(), bounds.height());
    }

    public final View getWindowDecorView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return view.getRootView();
    }

    @NotNull
    public final WindowLocation getWindowOffset(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return getWindowOffset(view, getActivityDecorView(view));
    }

    @NotNull
    public final Size getWindowSize(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        View windowDecorView = getWindowDecorView(view);
        return new Size(windowDecorView.getMeasuredWidth(), windowDecorView.getMeasuredHeight());
    }

    @NotNull
    public final WindowLocation locationInActivity(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        WindowLocation locationInWindow = locationInWindow(view);
        WindowLocation windowOffset = getWindowOffset(view);
        return new WindowLocation(windowOffset.getDx() + locationInWindow.getX(), locationInWindow.getY() + windowOffset.getDy(), 0, 0, 0, null, null, 124, null);
    }

    @NotNull
    public final WindowLocation locationInApplication(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        WindowLocation locationInActivity = locationInActivity(view);
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        WindowLocation activityOffset = getActivityOffset(context);
        return new WindowLocation(activityOffset.getDx() + locationInActivity.getX(), locationInActivity.getY() + activityOffset.getDy(), 0, 0, 0, null, null, 124, null);
    }

    @NotNull
    public final WindowLocation locationInParent(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return new WindowLocation(view.getLeft(), view.getTop(), 0, 0, 0, null, null, 124, null);
    }

    @NotNull
    public final WindowLocation locationInWindow(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return new WindowLocation(iArr[0], iArr[1], 0, 0, 0, null, null, 124, null);
    }

    @NotNull
    public final WindowLocation locationOnScreen(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new WindowLocation(iArr[0], iArr[1], 0, 0, 0, null, null, 124, null);
    }

    @NotNull
    public final Rect rectInActivity(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        WindowLocation locationInActivity = locationInActivity(view);
        return new Rect(locationInActivity.getX(), locationInActivity.getY(), locationInActivity.getX() + view.getMeasuredWidth(), locationInActivity.getY() + view.getMeasuredHeight());
    }

    @NotNull
    public final Rect rectInParent(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        WindowLocation locationInParent = locationInParent(view);
        return new Rect(locationInParent.getX(), locationInParent.getY(), locationInParent.getX() + view.getMeasuredWidth(), locationInParent.getY() + view.getMeasuredHeight());
    }

    @NotNull
    public final Rect rectInWindow(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return rect;
    }

    @NotNull
    public final Rect rectOnScreen(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        WindowLocation locationOnScreen = locationOnScreen(view);
        return new Rect(locationOnScreen.getX(), locationOnScreen.getY(), locationOnScreen.getX() + view.getMeasuredWidth(), locationOnScreen.getY() + view.getMeasuredHeight());
    }

    @NotNull
    public final Rect visibleRectToSelf(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Rect rect = new Rect();
        view.getLocalVisibleRect(rect);
        return rect;
    }

    @NotNull
    public final View getActivityContentView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return getActivityContentView(context);
    }

    @NotNull
    public final View getActivityDecorView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return getActivityDecorView(context);
    }

    @NotNull
    public final WindowLocation getWindowOffset(@NotNull View view, @NotNull View anotherView) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(anotherView, "anotherView");
        View windowDecorView = getWindowDecorView(view);
        Intrinsics.checkNotNullExpressionValue(windowDecorView, "getWindowDecorView(...)");
        WindowLocation locationOnScreen = locationOnScreen(windowDecorView);
        View windowDecorView2 = getWindowDecorView(anotherView);
        Intrinsics.checkNotNullExpressionValue(windowDecorView2, "getWindowDecorView(...)");
        WindowLocation locationOnScreen2 = locationOnScreen(windowDecorView2);
        return new WindowLocation(0, 0, locationOnScreen.getX() - locationOnScreen2.getX(), locationOnScreen.getY() - locationOnScreen2.getY(), 0, null, null, 115, null);
    }
}
