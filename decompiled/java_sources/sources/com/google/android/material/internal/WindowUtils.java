package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.view.WindowMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class WindowUtils {

    /* renamed from: a */
    public static final String f31713a = "WindowUtils";

    /* renamed from: com.google.android.material.internal.WindowUtils$a */
    /* loaded from: classes6.dex */
    public static class C5320a {
        @NonNull
        /* renamed from: a */
        public static Rect m24316a(@NonNull WindowManager windowManager) {
            int i;
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point m24317b = m24317b(defaultDisplay);
            Rect rect = new Rect();
            int i2 = m24317b.x;
            if (i2 == 0 || (i = m24317b.y) == 0) {
                defaultDisplay.getRectSize(rect);
            } else {
                rect.right = i2;
                rect.bottom = i;
            }
            return rect;
        }

        /* renamed from: b */
        public static Point m24317b(Display display) {
            Point point = new Point();
            try {
                Method declaredMethod = Display.class.getDeclaredMethod("getRealSize", Point.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(display, point);
            } catch (IllegalAccessException e) {
                Log.w(WindowUtils.f31713a, e);
            } catch (NoSuchMethodException e2) {
                Log.w(WindowUtils.f31713a, e2);
            } catch (InvocationTargetException e3) {
                Log.w(WindowUtils.f31713a, e3);
            }
            return point;
        }
    }

    @RequiresApi(api = 17)
    /* renamed from: com.google.android.material.internal.WindowUtils$b */
    /* loaded from: classes6.dex */
    public static class C5321b {
        @NonNull
        /* renamed from: a */
        public static Rect m24318a(@NonNull WindowManager windowManager) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            Rect rect = new Rect();
            rect.right = point.x;
            rect.bottom = point.y;
            return rect;
        }
    }

    @RequiresApi(api = 30)
    /* renamed from: com.google.android.material.internal.WindowUtils$c */
    /* loaded from: classes6.dex */
    public static class C5322c {
        @NonNull
        /* renamed from: a */
        public static Rect m24319a(@NonNull WindowManager windowManager) {
            WindowMetrics currentWindowMetrics;
            Rect bounds;
            currentWindowMetrics = windowManager.getCurrentWindowMetrics();
            bounds = currentWindowMetrics.getBounds();
            return bounds;
        }
    }

    @NonNull
    public static Rect getCurrentWindowBounds(@NonNull Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        return Build.VERSION.SDK_INT >= 30 ? C5322c.m24319a(windowManager) : C5321b.m24318a(windowManager);
    }
}
