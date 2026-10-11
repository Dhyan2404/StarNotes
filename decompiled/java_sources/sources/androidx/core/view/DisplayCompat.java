package androidx.core.view;

import android.annotation.SuppressLint;
import android.app.UiModeManager;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.view.Display;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;

/* loaded from: classes3.dex */
public final class DisplayCompat {

    /* renamed from: a */
    public static final int f5814a = 3840;

    /* renamed from: b */
    public static final int f5815b = 2160;

    @RequiresApi(23)
    /* renamed from: androidx.core.view.DisplayCompat$a */
    /* loaded from: classes3.dex */
    public static class C0765a {
        @NonNull
        /* renamed from: a */
        public static ModeCompat m3307a(@NonNull Context context, @NonNull Display display) {
            Display.Mode mode = display.getMode();
            Point m3297a = DisplayCompat.m3297a(context, display);
            return (m3297a == null || m3310d(mode, m3297a)) ? new ModeCompat(mode, true) : new ModeCompat(mode, m3297a);
        }

        @NonNull
        @SuppressLint({"ArrayReturn"})
        /* renamed from: b */
        public static ModeCompat[] m3308b(@NonNull Context context, @NonNull Display display) {
            Display.Mode[] supportedModes = display.getSupportedModes();
            ModeCompat[] modeCompatArr = new ModeCompat[supportedModes.length];
            Display.Mode mode = display.getMode();
            Point m3297a = DisplayCompat.m3297a(context, display);
            if (m3297a == null || m3310d(mode, m3297a)) {
                for (int i = 0; i < supportedModes.length; i++) {
                    modeCompatArr[i] = new ModeCompat(supportedModes[i], m3311e(supportedModes[i], mode));
                }
            } else {
                for (int i2 = 0; i2 < supportedModes.length; i2++) {
                    modeCompatArr[i2] = m3311e(supportedModes[i2], mode) ? new ModeCompat(supportedModes[i2], m3297a) : new ModeCompat(supportedModes[i2], false);
                }
            }
            return modeCompatArr;
        }

        /* renamed from: c */
        public static boolean m3309c(@NonNull Display display) {
            Display.Mode mode = display.getMode();
            for (Display.Mode mode2 : display.getSupportedModes()) {
                if (mode.getPhysicalHeight() < mode2.getPhysicalHeight() || mode.getPhysicalWidth() < mode2.getPhysicalWidth()) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: d */
        public static boolean m3310d(Display.Mode mode, Point point) {
            return (mode.getPhysicalWidth() == point.x && mode.getPhysicalHeight() == point.y) || (mode.getPhysicalWidth() == point.y && mode.getPhysicalHeight() == point.x);
        }

        /* renamed from: e */
        public static boolean m3311e(Display.Mode mode, Display.Mode mode2) {
            return mode.getPhysicalWidth() == mode2.getPhysicalWidth() && mode.getPhysicalHeight() == mode2.getPhysicalHeight();
        }
    }

    /* renamed from: a */
    public static Point m3297a(@NonNull Context context, @NonNull Display display) {
        Point m3304h = m3304h("vendor.display-size", display);
        if (m3304h != null) {
            return m3304h;
        }
        if (m3301e(context) && m3300d(display)) {
            return new Point(3840, f5815b);
        }
        return null;
    }

    @NonNull
    /* renamed from: b */
    public static Point m3298b(@NonNull Context context, @NonNull Display display) {
        Point m3297a = m3297a(context, display);
        if (m3297a != null) {
            return m3297a;
        }
        Point point = new Point();
        display.getRealSize(point);
        return point;
    }

    @Nullable
    /* renamed from: c */
    public static String m3299c(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: d */
    public static boolean m3300d(@NonNull Display display) {
        return C0765a.m3309c(display);
    }

    /* renamed from: e */
    public static boolean m3301e(@NonNull Context context) {
        return m3302f(context) && "Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd");
    }

    /* renamed from: f */
    public static boolean m3302f(@NonNull Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    /* renamed from: g */
    public static Point m3303g(@NonNull String str) throws NumberFormatException {
        String[] split = str.trim().split("x", -1);
        if (split.length == 2) {
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            if (parseInt > 0 && parseInt2 > 0) {
                return new Point(parseInt, parseInt2);
            }
        }
        throw new NumberFormatException();
    }

    @NonNull
    public static ModeCompat getMode(@NonNull Context context, @NonNull Display display) {
        return C0765a.m3307a(context, display);
    }

    @NonNull
    @SuppressLint({"ArrayReturn"})
    public static ModeCompat[] getSupportedModes(@NonNull Context context, @NonNull Display display) {
        return C0765a.m3308b(context, display);
    }

    @Nullable
    /* renamed from: h */
    public static Point m3304h(@NonNull String str, @NonNull Display display) {
        if (display.getDisplayId() != 0) {
            return null;
        }
        String m3299c = m3299c(str);
        if (!TextUtils.isEmpty(m3299c) && m3299c != null) {
            try {
                return m3303g(m3299c);
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    /* loaded from: classes3.dex */
    public static final class ModeCompat {

        /* renamed from: a */
        public final Display.Mode f5816a;

        /* renamed from: b */
        public final Point f5817b;

        /* renamed from: c */
        public final boolean f5818c;

        @RequiresApi(23)
        /* renamed from: androidx.core.view.DisplayCompat$ModeCompat$a */
        /* loaded from: classes3.dex */
        public static class C0764a {
            @DoNotInline
            /* renamed from: a */
            public static int m3305a(Display.Mode mode) {
                return mode.getPhysicalHeight();
            }

            @DoNotInline
            /* renamed from: b */
            public static int m3306b(Display.Mode mode) {
                return mode.getPhysicalWidth();
            }
        }

        public ModeCompat(@NonNull Point point) {
            Preconditions.checkNotNull(point, "physicalSize == null");
            this.f5817b = point;
            this.f5816a = null;
            this.f5818c = true;
        }

        public int getPhysicalHeight() {
            return this.f5817b.y;
        }

        public int getPhysicalWidth() {
            return this.f5817b.x;
        }

        @Deprecated
        public boolean isNative() {
            return this.f5818c;
        }

        @Nullable
        @RequiresApi(23)
        public Display.Mode toMode() {
            return this.f5816a;
        }

        @RequiresApi(23)
        public ModeCompat(@NonNull Display.Mode mode, boolean z) {
            Preconditions.checkNotNull(mode, "mode == null, can't wrap a null reference");
            this.f5817b = new Point(C0764a.m3306b(mode), C0764a.m3305a(mode));
            this.f5816a = mode;
            this.f5818c = z;
        }

        @RequiresApi(23)
        public ModeCompat(@NonNull Display.Mode mode, @NonNull Point point) {
            Preconditions.checkNotNull(mode, "mode == null, can't wrap a null reference");
            Preconditions.checkNotNull(point, "physicalSize == null");
            this.f5817b = point;
            this.f5816a = mode;
            this.f5818c = true;
        }
    }
}
