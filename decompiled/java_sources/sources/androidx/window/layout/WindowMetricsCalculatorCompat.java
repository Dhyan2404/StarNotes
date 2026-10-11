package androidx.window.layout;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.ActivityChooserModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\u000b\u0010\tJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\r\u0010\tJ\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0001¢\u0006\u0004\b\u000f\u0010\tJ\u0017\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0007H\u0002J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0003R\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010!¨\u0006%"}, m61528d2 = {"Landroidx/window/layout/WindowMetricsCalculatorCompat;", "Landroidx/window/layout/WindowMetricsCalculator;", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "Landroidx/window/layout/WindowMetrics;", "computeCurrentWindowMetrics", "computeMaximumWindowMetrics", "Landroid/graphics/Rect;", "computeWindowBoundsQ$window_release", "(Landroid/app/Activity;)Landroid/graphics/Rect;", "computeWindowBoundsQ", "computeWindowBoundsP$window_release", "computeWindowBoundsP", "computeWindowBoundsN$window_release", "computeWindowBoundsN", "computeWindowBoundsIceCreamSandwich$window_release", "computeWindowBoundsIceCreamSandwich", "Landroid/view/Display;", "display", "Landroid/graphics/Point;", "getRealSizeForDisplay$window_release", "(Landroid/view/Display;)Landroid/graphics/Point;", "getRealSizeForDisplay", "bounds", "", "c", "Landroid/content/Context;", "context", "", "b", "Landroid/view/DisplayCutout;", "a", "", Constants.STRING_SIG, "TAG", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "window_release"}, m61529k = 1, m61530mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class WindowMetricsCalculatorCompat implements WindowMetricsCalculator {

    @NotNull
    public static final WindowMetricsCalculatorCompat INSTANCE = new WindowMetricsCalculatorCompat();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String TAG;

    static {
        String simpleName = WindowMetricsCalculatorCompat.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "WindowMetricsCalculatorC…at::class.java.simpleName");
        TAG = simpleName;
    }

    @RequiresApi(28)
    @SuppressLint({"BanUncheckedReflection"})
    /* renamed from: a */
    public final DisplayCutout m6947a(Display display) {
        try {
            Constructor<?> constructor = Class.forName("android.view.DisplayInfo").getConstructor(new Class[0]);
            constructor.setAccessible(true);
            Object newInstance = constructor.newInstance(new Object[0]);
            Method declaredMethod = display.getClass().getDeclaredMethod("getDisplayInfo", newInstance.getClass());
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(display, newInstance);
            Field declaredField = newInstance.getClass().getDeclaredField("displayCutout");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(newInstance);
            if (obj instanceof DisplayCutout) {
                return (DisplayCutout) obj;
            }
        } catch (ClassNotFoundException e) {
            Log.w(TAG, e);
        } catch (IllegalAccessException e2) {
            Log.w(TAG, e2);
        } catch (InstantiationException e3) {
            Log.w(TAG, e3);
        } catch (NoSuchFieldException e4) {
            Log.w(TAG, e4);
        } catch (NoSuchMethodException e5) {
            Log.w(TAG, e5);
        } catch (InvocationTargetException e6) {
            Log.w(TAG, e6);
        }
        return null;
    }

    /* renamed from: b */
    public final int m6948b(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: c */
    public final void m6949c(Activity activity, Rect bounds) {
        activity.getWindowManager().getDefaultDisplay().getRectSize(bounds);
    }

    @Override // androidx.window.layout.WindowMetricsCalculator
    @NotNull
    public WindowMetrics computeCurrentWindowMetrics(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return new WindowMetrics(Build.VERSION.SDK_INT >= 30 ? ActivityCompatHelperApi30.INSTANCE.currentWindowBounds(activity) : computeWindowBoundsQ$window_release(activity));
    }

    @Override // androidx.window.layout.WindowMetricsCalculator
    @NotNull
    public WindowMetrics computeMaximumWindowMetrics(@NotNull Activity activity) {
        Rect rect;
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (Build.VERSION.SDK_INT >= 30) {
            rect = ActivityCompatHelperApi30.INSTANCE.maximumWindowBounds(activity);
        } else {
            Display display = activity.getWindowManager().getDefaultDisplay();
            Intrinsics.checkNotNullExpressionValue(display, "display");
            Point realSizeForDisplay$window_release = getRealSizeForDisplay$window_release(display);
            rect = new Rect(0, 0, realSizeForDisplay$window_release.x, realSizeForDisplay$window_release.y);
        }
        return new WindowMetrics(rect);
    }

    @RequiresApi(14)
    @NotNull
    public final Rect computeWindowBoundsIceCreamSandwich$window_release(@NotNull Activity activity) {
        int i;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        Intrinsics.checkNotNullExpressionValue(defaultDisplay, "defaultDisplay");
        Point realSizeForDisplay$window_release = getRealSizeForDisplay$window_release(defaultDisplay);
        Rect rect = new Rect();
        int i2 = realSizeForDisplay$window_release.x;
        if (i2 == 0 || (i = realSizeForDisplay$window_release.y) == 0) {
            defaultDisplay.getRectSize(rect);
        } else {
            rect.right = i2;
            rect.bottom = i;
        }
        return rect;
    }

    @RequiresApi(24)
    @NotNull
    public final Rect computeWindowBoundsN$window_release(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Rect rect = new Rect();
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        defaultDisplay.getRectSize(rect);
        if (!ActivityCompatHelperApi24.INSTANCE.isInMultiWindowMode(activity)) {
            Intrinsics.checkNotNullExpressionValue(defaultDisplay, "defaultDisplay");
            Point realSizeForDisplay$window_release = getRealSizeForDisplay$window_release(defaultDisplay);
            int m6948b = m6948b(activity);
            int i = rect.bottom;
            if (i + m6948b == realSizeForDisplay$window_release.y) {
                rect.bottom = i + m6948b;
            } else {
                int i2 = rect.right;
                if (i2 + m6948b == realSizeForDisplay$window_release.x) {
                    rect.right = i2 + m6948b;
                }
            }
        }
        return rect;
    }

    @RequiresApi(28)
    @SuppressLint({"BanUncheckedReflection", "BlockedPrivateApi"})
    @NotNull
    public final Rect computeWindowBoundsP$window_release(@NotNull Activity activity) {
        DisplayCutout m6947a;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Rect rect = new Rect();
        Configuration configuration = activity.getResources().getConfiguration();
        try {
            Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(configuration);
            if (ActivityCompatHelperApi24.INSTANCE.isInMultiWindowMode(activity)) {
                Object invoke = obj.getClass().getDeclaredMethod("getBounds", new Class[0]).invoke(obj, new Object[0]);
                if (invoke == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.graphics.Rect");
                }
                rect.set((Rect) invoke);
            } else {
                Object invoke2 = obj.getClass().getDeclaredMethod("getAppBounds", new Class[0]).invoke(obj, new Object[0]);
                if (invoke2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.graphics.Rect");
                }
                rect.set((Rect) invoke2);
            }
        } catch (IllegalAccessException e) {
            Log.w(TAG, e);
            m6949c(activity, rect);
        } catch (NoSuchFieldException e2) {
            Log.w(TAG, e2);
            m6949c(activity, rect);
        } catch (NoSuchMethodException e3) {
            Log.w(TAG, e3);
            m6949c(activity, rect);
        } catch (InvocationTargetException e4) {
            Log.w(TAG, e4);
            m6949c(activity, rect);
        }
        Display currentDisplay = activity.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        DisplayCompatHelperApi17 displayCompatHelperApi17 = DisplayCompatHelperApi17.INSTANCE;
        Intrinsics.checkNotNullExpressionValue(currentDisplay, "currentDisplay");
        displayCompatHelperApi17.getRealSize(currentDisplay, point);
        ActivityCompatHelperApi24 activityCompatHelperApi24 = ActivityCompatHelperApi24.INSTANCE;
        if (!activityCompatHelperApi24.isInMultiWindowMode(activity)) {
            int m6948b = m6948b(activity);
            int i = rect.bottom;
            if (i + m6948b == point.y) {
                rect.bottom = i + m6948b;
            } else {
                int i2 = rect.right;
                if (i2 + m6948b == point.x) {
                    rect.right = i2 + m6948b;
                } else if (rect.left == m6948b) {
                    rect.left = 0;
                }
            }
        }
        if ((rect.width() < point.x || rect.height() < point.y) && !activityCompatHelperApi24.isInMultiWindowMode(activity) && (m6947a = m6947a(currentDisplay)) != null) {
            int i3 = rect.left;
            DisplayCompatHelperApi28 displayCompatHelperApi28 = DisplayCompatHelperApi28.INSTANCE;
            if (i3 == displayCompatHelperApi28.safeInsetLeft(m6947a)) {
                rect.left = 0;
            }
            if (point.x - rect.right == displayCompatHelperApi28.safeInsetRight(m6947a)) {
                rect.right += displayCompatHelperApi28.safeInsetRight(m6947a);
            }
            if (rect.top == displayCompatHelperApi28.safeInsetTop(m6947a)) {
                rect.top = 0;
            }
            if (point.y - rect.bottom == displayCompatHelperApi28.safeInsetBottom(m6947a)) {
                rect.bottom += displayCompatHelperApi28.safeInsetBottom(m6947a);
            }
        }
        return rect;
    }

    @RequiresApi(29)
    @SuppressLint({"BanUncheckedReflection", "BlockedPrivateApi"})
    @NotNull
    public final Rect computeWindowBoundsQ$window_release(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Configuration configuration = activity.getResources().getConfiguration();
        try {
            Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(configuration);
            Object invoke = obj.getClass().getDeclaredMethod("getBounds", new Class[0]).invoke(obj, new Object[0]);
            if (invoke != null) {
                return new Rect((Rect) invoke);
            }
            throw new NullPointerException("null cannot be cast to non-null type android.graphics.Rect");
        } catch (IllegalAccessException e) {
            Log.w(TAG, e);
            return computeWindowBoundsP$window_release(activity);
        } catch (NoSuchFieldException e2) {
            Log.w(TAG, e2);
            return computeWindowBoundsP$window_release(activity);
        } catch (NoSuchMethodException e3) {
            Log.w(TAG, e3);
            return computeWindowBoundsP$window_release(activity);
        } catch (InvocationTargetException e4) {
            Log.w(TAG, e4);
            return computeWindowBoundsP$window_release(activity);
        }
    }

    @RequiresApi(14)
    @VisibleForTesting
    @NotNull
    public final Point getRealSizeForDisplay$window_release(@NotNull Display display) {
        Intrinsics.checkNotNullParameter(display, "display");
        Point point = new Point();
        DisplayCompatHelperApi17.INSTANCE.getRealSize(display, point);
        return point;
    }
}
