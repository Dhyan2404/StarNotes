package androidx.appcompat.widget;

import android.R;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class DrawableUtils {

    /* renamed from: a */
    public static final int[] f1676a = {R.attr.state_checked};

    /* renamed from: b */
    public static final int[] f1677b = new int[0];
    public static final Rect INSETS_NONE = new Rect();

    /* renamed from: androidx.appcompat.widget.DrawableUtils$a */
    /* loaded from: classes3.dex */
    public static class C0244a {

        /* renamed from: a */
        public static final boolean f1678a;

        /* renamed from: b */
        public static final Method f1679b;

        /* renamed from: c */
        public static final Field f1680c;

        /* renamed from: d */
        public static final Field f1681d;

        /* renamed from: e */
        public static final Field f1682e;

        /* renamed from: f */
        public static final Field f1683f;

        /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
        static {
            /*
                r0 = 1
                r1 = 0
                r2 = 0
                java.lang.String r3 = "android.graphics.Insets"
                java.lang.Class r3 = java.lang.Class.forName(r3)     // Catch: java.lang.NoSuchFieldException -> L3b java.lang.ClassNotFoundException -> L3f java.lang.NoSuchMethodException -> L43
                java.lang.Class<android.graphics.drawable.Drawable> r4 = android.graphics.drawable.Drawable.class
                java.lang.String r5 = "getOpticalInsets"
                java.lang.Class[] r6 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchFieldException -> L3b java.lang.ClassNotFoundException -> L3f java.lang.NoSuchMethodException -> L43
                java.lang.reflect.Method r4 = r4.getMethod(r5, r6)     // Catch: java.lang.NoSuchFieldException -> L3b java.lang.ClassNotFoundException -> L3f java.lang.NoSuchMethodException -> L43
                java.lang.String r5 = "left"
                java.lang.reflect.Field r5 = r3.getField(r5)     // Catch: java.lang.NoSuchFieldException -> L35 java.lang.ClassNotFoundException -> L37 java.lang.NoSuchMethodException -> L39
                java.lang.String r6 = "top"
                java.lang.reflect.Field r6 = r3.getField(r6)     // Catch: java.lang.NoSuchFieldException -> L2f java.lang.ClassNotFoundException -> L31 java.lang.NoSuchMethodException -> L33
                java.lang.String r7 = "right"
                java.lang.reflect.Field r7 = r3.getField(r7)     // Catch: java.lang.Throwable -> L2d
                java.lang.String r8 = "bottom"
                java.lang.reflect.Field r3 = r3.getField(r8)     // Catch: java.lang.Throwable -> L47
                r8 = r0
                goto L49
            L2d:
                r7 = r1
                goto L47
            L2f:
                r6 = r1
                goto L46
            L31:
                r6 = r1
                goto L46
            L33:
                r6 = r1
                goto L46
            L35:
                r5 = r1
                goto L3d
            L37:
                r5 = r1
                goto L41
            L39:
                r5 = r1
                goto L45
            L3b:
                r4 = r1
                r5 = r4
            L3d:
                r6 = r5
                goto L46
            L3f:
                r4 = r1
                r5 = r4
            L41:
                r6 = r5
                goto L46
            L43:
                r4 = r1
                r5 = r4
            L45:
                r6 = r5
            L46:
                r7 = r6
            L47:
                r3 = r1
                r8 = r2
            L49:
                if (r8 == 0) goto L58
                androidx.appcompat.widget.DrawableUtils.C0244a.f1679b = r4
                androidx.appcompat.widget.DrawableUtils.C0244a.f1680c = r5
                androidx.appcompat.widget.DrawableUtils.C0244a.f1681d = r6
                androidx.appcompat.widget.DrawableUtils.C0244a.f1682e = r7
                androidx.appcompat.widget.DrawableUtils.C0244a.f1683f = r3
                androidx.appcompat.widget.DrawableUtils.C0244a.f1678a = r0
                goto L64
            L58:
                androidx.appcompat.widget.DrawableUtils.C0244a.f1679b = r1
                androidx.appcompat.widget.DrawableUtils.C0244a.f1680c = r1
                androidx.appcompat.widget.DrawableUtils.C0244a.f1681d = r1
                androidx.appcompat.widget.DrawableUtils.C0244a.f1682e = r1
                androidx.appcompat.widget.DrawableUtils.C0244a.f1683f = r1
                androidx.appcompat.widget.DrawableUtils.C0244a.f1678a = r2
            L64:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.DrawableUtils.C0244a.<clinit>():void");
        }

        @NonNull
        /* renamed from: a */
        public static Rect m790a(@NonNull Drawable drawable) {
            return DrawableUtils.INSETS_NONE;
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.appcompat.widget.DrawableUtils$b */
    /* loaded from: classes3.dex */
    public static class C0245b {
        @DoNotInline
        /* renamed from: a */
        public static Insets m791a(Drawable drawable) {
            return drawable.getOpticalInsets();
        }
    }

    /* renamed from: a */
    public static void m788a(@NonNull Drawable drawable) {
        String name = drawable.getClass().getName();
        if (Build.VERSION.SDK_INT >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
            return;
        }
        m789b(drawable);
    }

    /* renamed from: b */
    public static void m789b(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f1676a);
        } else {
            drawable.setState(f1677b);
        }
        drawable.setState(state);
    }

    @Deprecated
    public static boolean canSafelyMutateDrawable(@NonNull Drawable drawable) {
        return true;
    }

    @NonNull
    public static Rect getOpticalBounds(@NonNull Drawable drawable) {
        Insets m791a = C0245b.m791a(drawable);
        return new Rect(m791a.left, m791a.top, m791a.right, m791a.bottom);
    }

    public static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
