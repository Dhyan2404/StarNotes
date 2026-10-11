package androidx.core.view;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.TypedValue;
import android.view.InputDevice;
import android.view.ViewConfiguration;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.util.Supplier;
import java.lang.reflect.Method;
import java.util.Objects;

/* loaded from: classes3.dex */
public final class ViewConfigurationCompat {

    /* renamed from: a */
    public static final String f5894a = "ViewConfigCompat";

    /* renamed from: b */
    public static final int f5895b = Integer.MAX_VALUE;

    /* renamed from: c */
    public static final int f5896c = Integer.MIN_VALUE;

    /* renamed from: d */
    public static final int f5897d = 0;

    /* renamed from: e */
    public static final int f5898e = -1;

    /* renamed from: f */
    public static Method f5899f;

    @RequiresApi(26)
    /* renamed from: androidx.core.view.ViewConfigurationCompat$a */
    /* loaded from: classes3.dex */
    public static class C0797a {
        @DoNotInline
        /* renamed from: a */
        public static float m3512a(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledHorizontalScrollFactor();
        }

        @DoNotInline
        /* renamed from: b */
        public static float m3513b(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledVerticalScrollFactor();
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.view.ViewConfigurationCompat$b */
    /* loaded from: classes3.dex */
    public static class C0798b {
        @DoNotInline
        /* renamed from: a */
        public static int m3514a(ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledHoverSlop();
        }

        @DoNotInline
        /* renamed from: b */
        public static boolean m3515b(ViewConfiguration viewConfiguration) {
            return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.core.view.ViewConfigurationCompat$c */
    /* loaded from: classes3.dex */
    public static class C0799c {
        @DoNotInline
        /* renamed from: a */
        public static int m3516a(@NonNull ViewConfiguration viewConfiguration, int i, int i2, int i3) {
            return viewConfiguration.getScaledMaximumFlingVelocity(i, i2, i3);
        }

        @DoNotInline
        /* renamed from: b */
        public static int m3517b(@NonNull ViewConfiguration viewConfiguration, int i, int i2, int i3) {
            return viewConfiguration.getScaledMinimumFlingVelocity(i, i2, i3);
        }
    }

    /* renamed from: a */
    public static int m3506a(Resources resources, int i, Supplier<Integer> supplier, int i2) {
        int dimensionPixelSize;
        return i != -1 ? (i == 0 || (dimensionPixelSize = resources.getDimensionPixelSize(i)) < 0) ? i2 : dimensionPixelSize : supplier.get().intValue();
    }

    /* renamed from: b */
    public static float m3507b(ViewConfiguration viewConfiguration, Context context) {
        if (f5899f != null) {
            try {
                return ((Integer) r0.invoke(viewConfiguration, new Object[0])).intValue();
            } catch (Exception unused) {
                Log.i(f5894a, "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
            return typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return 0.0f;
    }

    /* renamed from: c */
    public static int m3508c(Resources resources, String str, String str2) {
        return resources.getIdentifier(str, str2, "android");
    }

    /* renamed from: d */
    public static int m3509d(Resources resources, int i, int i2) {
        if (i == 4194304 && i2 == 26) {
            return m3508c(resources, "config_viewMaxRotaryEncoderFlingVelocity", "dimen");
        }
        return -1;
    }

    /* renamed from: e */
    public static int m3510e(Resources resources, int i, int i2) {
        if (i == 4194304 && i2 == 26) {
            return m3508c(resources, "config_viewMinRotaryEncoderFlingVelocity", "dimen");
        }
        return -1;
    }

    /* renamed from: f */
    public static boolean m3511f(int i, int i2, int i3) {
        InputDevice device = InputDevice.getDevice(i);
        return (device == null || device.getMotionRange(i2, i3) == null) ? false : true;
    }

    public static float getScaledHorizontalScrollFactor(@NonNull ViewConfiguration viewConfiguration, @NonNull Context context) {
        return C0797a.m3512a(viewConfiguration);
    }

    public static int getScaledHoverSlop(@NonNull ViewConfiguration viewConfiguration) {
        return C0798b.m3514a(viewConfiguration);
    }

    public static int getScaledMaximumFlingVelocity(@NonNull Context context, @NonNull final ViewConfiguration viewConfiguration, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 34) {
            return C0799c.m3516a(viewConfiguration, i, i2, i3);
        }
        if (!m3511f(i, i2, i3)) {
            return Integer.MIN_VALUE;
        }
        Resources resources = context.getResources();
        int m3509d = m3509d(resources, i3, i2);
        Objects.requireNonNull(viewConfiguration);
        return m3506a(resources, m3509d, new Supplier() { // from class: com.sunia.HTREnginev2.c2o
            @Override // androidx.core.util.Supplier
            public final Object get() {
                return Integer.valueOf(viewConfiguration.getScaledMaximumFlingVelocity());
            }
        }, Integer.MIN_VALUE);
    }

    public static int getScaledMinimumFlingVelocity(@NonNull Context context, @NonNull final ViewConfiguration viewConfiguration, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 34) {
            return C0799c.m3517b(viewConfiguration, i, i2, i3);
        }
        if (!m3511f(i, i2, i3)) {
            return Integer.MAX_VALUE;
        }
        Resources resources = context.getResources();
        int m3510e = m3510e(resources, i3, i2);
        Objects.requireNonNull(viewConfiguration);
        return m3506a(resources, m3510e, new Supplier() { // from class: com.sunia.HTREnginev2.b2o
            @Override // androidx.core.util.Supplier
            public final Object get() {
                return Integer.valueOf(viewConfiguration.getScaledMinimumFlingVelocity());
            }
        }, Integer.MAX_VALUE);
    }

    @Deprecated
    public static int getScaledPagingTouchSlop(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledPagingTouchSlop();
    }

    public static float getScaledVerticalScrollFactor(@NonNull ViewConfiguration viewConfiguration, @NonNull Context context) {
        return C0797a.m3513b(viewConfiguration);
    }

    @Deprecated
    public static boolean hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
        return viewConfiguration.hasPermanentMenuKey();
    }

    public static boolean shouldShowMenuShortcutsWhenKeyboardPresent(@NonNull ViewConfiguration viewConfiguration, @NonNull Context context) {
        return C0798b.m3515b(viewConfiguration);
    }
}
