package com.blankj.utilcode.util;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.drawerlayout.widget.DrawerLayout;

/* loaded from: classes3.dex */
public final class BarUtils {

    /* renamed from: a */
    public static final String f13629a = "TAG_STATUS_BAR";

    /* renamed from: b */
    public static final String f13630b = "TAG_OFFSET";

    /* renamed from: c */
    public static final int f13631c = -123;

    public BarUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static void m7967a(@NonNull Window window) {
        View findViewWithTag = window.getDecorView().findViewWithTag(f13630b);
        if (findViewWithTag == null) {
            return;
        }
        addMarginTopEqualStatusBarHeight(findViewWithTag);
    }

    public static void addMarginTopEqualStatusBarHeight(@NonNull View view) {
        view.setTag(f13630b);
        Object tag = view.getTag(f13631c);
        if (tag == null || !((Boolean) tag).booleanValue()) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin + getStatusBarHeight(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            view.setTag(f13631c, Boolean.TRUE);
        }
    }

    /* renamed from: b */
    public static View m7968b(@NonNull Activity activity, int i, boolean z) {
        return m7969c(activity.getWindow(), i, z);
    }

    /* renamed from: c */
    public static View m7969c(@NonNull Window window, int i, boolean z) {
        ViewGroup viewGroup = z ? (ViewGroup) window.getDecorView() : (ViewGroup) window.findViewById(R.id.content);
        View findViewWithTag = viewGroup.findViewWithTag(f13629a);
        if (findViewWithTag == null) {
            View m7970d = m7970d(window.getContext(), i);
            viewGroup.addView(m7970d);
            return m7970d;
        }
        if (findViewWithTag.getVisibility() == 8) {
            findViewWithTag.setVisibility(0);
        }
        findViewWithTag.setBackgroundColor(i);
        return findViewWithTag;
    }

    /* renamed from: d */
    public static View m7970d(@NonNull Context context, int i) {
        View view = new View(context);
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, getStatusBarHeight()));
        view.setBackgroundColor(i);
        view.setTag(f13629a);
        return view;
    }

    /* renamed from: e */
    public static String m7971e(int i) {
        try {
            return Utils.getApp().getResources().getResourceEntryName(i);
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: f */
    public static void m7972f(@NonNull Activity activity) {
        m7973g(activity.getWindow());
    }

    /* renamed from: g */
    public static void m7973g(@NonNull Window window) {
        View findViewWithTag = ((ViewGroup) window.getDecorView()).findViewWithTag(f13629a);
        if (findViewWithTag == null) {
            return;
        }
        findViewWithTag.setVisibility(8);
    }

    public static int getActionBarHeight() {
        TypedValue typedValue = new TypedValue();
        if (Utils.getApp().getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true)) {
            return TypedValue.complexToDimensionPixelSize(typedValue.data, Utils.getApp().getResources().getDisplayMetrics());
        }
        return 0;
    }

    @RequiresApi(21)
    public static int getNavBarColor(@NonNull Activity activity) {
        return getNavBarColor(activity.getWindow());
    }

    public static int getNavBarHeight() {
        Resources resources = Utils.getApp().getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier != 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int getStatusBarHeight() {
        Resources resources = Utils.getApp().getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
    }

    /* renamed from: h */
    public static void m7974h(String str) {
        try {
            Class.forName("android.app.StatusBarManager").getMethod(str, new Class[0]).invoke(Utils.getApp().getSystemService("statusbar"), new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i */
    public static void m7975i(@NonNull Window window) {
        View findViewWithTag = ((ViewGroup) window.getDecorView()).findViewWithTag(f13629a);
        if (findViewWithTag == null) {
            return;
        }
        findViewWithTag.setVisibility(0);
    }

    public static boolean isNavBarLightMode(@NonNull Activity activity) {
        return isNavBarLightMode(activity.getWindow());
    }

    public static boolean isNavBarVisible(@NonNull Activity activity) {
        return isNavBarVisible(activity.getWindow());
    }

    public static boolean isStatusBarLightMode(@NonNull Activity activity) {
        return isStatusBarLightMode(activity.getWindow());
    }

    public static boolean isStatusBarVisible(@NonNull Activity activity) {
        return (activity.getWindow().getAttributes().flags & 1024) == 0;
    }

    public static boolean isSupportNavBar() {
        WindowManager windowManager = (WindowManager) Utils.getApp().getSystemService("window");
        if (windowManager == null) {
            return false;
        }
        Display defaultDisplay = windowManager.getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getSize(point);
        defaultDisplay.getRealSize(point2);
        return (point2.y == point.y && point2.x == point.x) ? false : true;
    }

    /* renamed from: j */
    public static void m7976j(@NonNull Window window) {
        View findViewWithTag = window.getDecorView().findViewWithTag(f13630b);
        if (findViewWithTag == null) {
            return;
        }
        subtractMarginTopEqualStatusBarHeight(findViewWithTag);
    }

    @RequiresApi(21)
    public static void setNavBarColor(@NonNull Activity activity, @ColorInt int i) {
        setNavBarColor(activity.getWindow(), i);
    }

    public static void setNavBarLightMode(@NonNull Activity activity, boolean z) {
        setNavBarLightMode(activity.getWindow(), z);
    }

    public static void setNavBarVisibility(@NonNull Activity activity, boolean z) {
        setNavBarVisibility(activity.getWindow(), z);
    }

    @RequiresPermission("android.permission.EXPAND_STATUS_BAR")
    public static void setNotificationBarVisibility(boolean z) {
        m7974h(z ? "expandNotificationsPanel" : "collapsePanels");
    }

    public static View setStatusBarColor(@NonNull Activity activity, @ColorInt int i) {
        return setStatusBarColor(activity, i, false);
    }

    public static void setStatusBarColor4Drawer(@NonNull DrawerLayout drawerLayout, @NonNull View view, @ColorInt int i) {
        setStatusBarColor4Drawer(drawerLayout, view, i, false);
    }

    public static void setStatusBarCustom(@NonNull View view) {
        Activity m8447I = C1887b.m8447I(view.getContext());
        if (m8447I == null) {
            return;
        }
        transparentStatusBar(m8447I);
        view.setVisibility(0);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            view.setLayoutParams(new ViewGroup.LayoutParams(-1, getStatusBarHeight()));
        } else {
            layoutParams.width = -1;
            layoutParams.height = getStatusBarHeight();
        }
    }

    public static void setStatusBarLightMode(@NonNull Activity activity, boolean z) {
        setStatusBarLightMode(activity.getWindow(), z);
    }

    public static void setStatusBarVisibility(@NonNull Activity activity, boolean z) {
        setStatusBarVisibility(activity.getWindow(), z);
    }

    public static void subtractMarginTopEqualStatusBarHeight(@NonNull View view) {
        Object tag = view.getTag(f13631c);
        if (tag == null || !((Boolean) tag).booleanValue()) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin - getStatusBarHeight(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        view.setTag(f13631c, Boolean.FALSE);
    }

    public static void transparentStatusBar(@NonNull Activity activity) {
        transparentStatusBar(activity.getWindow());
    }

    @RequiresApi(21)
    public static int getNavBarColor(@NonNull Window window) {
        return window.getNavigationBarColor();
    }

    public static boolean isNavBarLightMode(@NonNull Window window) {
        return (window.getDecorView().getSystemUiVisibility() & 16) != 0;
    }

    public static boolean isNavBarVisible(@NonNull Window window) {
        boolean z;
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        int childCount = viewGroup.getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                z = false;
                break;
            }
            View childAt = viewGroup.getChildAt(i);
            int id = childAt.getId();
            if (id != -1 && "navigationBarBackground".equals(m7971e(id)) && childAt.getVisibility() == 0) {
                z = true;
                break;
            }
            i++;
        }
        if (!z) {
            return z;
        }
        C1887b.m8434B0();
        return (viewGroup.getSystemUiVisibility() & 2) == 0;
    }

    public static boolean isStatusBarLightMode(@NonNull Window window) {
        return (window.getDecorView().getSystemUiVisibility() & 8192) != 0;
    }

    @RequiresApi(21)
    public static void setNavBarColor(@NonNull Window window, @ColorInt int i) {
        window.addFlags(Integer.MIN_VALUE);
        window.setNavigationBarColor(i);
    }

    public static void setNavBarLightMode(@NonNull Window window, boolean z) {
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        decorView.setSystemUiVisibility(z ? systemUiVisibility | 16 : systemUiVisibility & (-17));
    }

    public static void setNavBarVisibility(@NonNull Window window, boolean z) {
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            int id = childAt.getId();
            if (id != -1 && "navigationBarBackground".equals(m7971e(id))) {
                childAt.setVisibility(z ? 0 : 4);
            }
        }
        if (z) {
            viewGroup.setSystemUiVisibility(viewGroup.getSystemUiVisibility() & (-4611));
        } else {
            viewGroup.setSystemUiVisibility(viewGroup.getSystemUiVisibility() | 4610);
        }
    }

    public static View setStatusBarColor(@NonNull Activity activity, @ColorInt int i, boolean z) {
        transparentStatusBar(activity);
        return m7968b(activity, i, z);
    }

    public static void setStatusBarColor4Drawer(@NonNull DrawerLayout drawerLayout, @NonNull View view, @ColorInt int i, boolean z) {
        Activity m8447I = C1887b.m8447I(view.getContext());
        if (m8447I == null) {
            return;
        }
        transparentStatusBar(m8447I);
        drawerLayout.setFitsSystemWindows(false);
        setStatusBarColor(view, i);
        int childCount = drawerLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            drawerLayout.getChildAt(i2).setFitsSystemWindows(false);
        }
        if (z) {
            m7972f(m8447I);
        } else {
            setStatusBarColor(m8447I, i, false);
        }
    }

    public static void setStatusBarLightMode(@NonNull Window window, boolean z) {
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        decorView.setSystemUiVisibility(z ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
    }

    public static void setStatusBarVisibility(@NonNull Window window, boolean z) {
        if (z) {
            window.clearFlags(1024);
            m7975i(window);
            m7967a(window);
        } else {
            window.addFlags(1024);
            m7973g(window);
            m7976j(window);
        }
    }

    public static void transparentStatusBar(@NonNull Window window) {
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 1280);
        window.setStatusBarColor(0);
    }

    public static View setStatusBarColor(@NonNull Window window, @ColorInt int i) {
        return setStatusBarColor(window, i, false);
    }

    public static View setStatusBarColor(@NonNull Window window, @ColorInt int i, boolean z) {
        transparentStatusBar(window);
        return m7969c(window, i, z);
    }

    public static void setStatusBarColor(@NonNull View view, @ColorInt int i) {
        Activity m8447I = C1887b.m8447I(view.getContext());
        if (m8447I == null) {
            return;
        }
        transparentStatusBar(m8447I);
        view.setVisibility(0);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = getStatusBarHeight();
        view.setBackgroundColor(i);
    }
}
