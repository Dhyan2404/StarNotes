package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class x4o {

    /* renamed from: b */
    public static final String f89279b = "ViewUtilsApi19";

    /* renamed from: c */
    public static boolean f89280c = true;

    /* renamed from: d */
    public static Method f89281d = null;

    /* renamed from: e */
    public static boolean f89282e = false;

    /* renamed from: f */
    public static Field f89283f = null;

    /* renamed from: g */
    public static boolean f89284g = false;

    /* renamed from: h */
    public static final int f89285h = 12;

    /* renamed from: a */
    public float[] f89286a;

    @RequiresApi(29)
    /* renamed from: com.sunia.HTREnginev2.x4o$a */
    /* loaded from: classes3.dex */
    public static class C14638a {
        @DoNotInline
        /* renamed from: a */
        public static float m58155a(View view) {
            return view.getTransitionAlpha();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m58156b(View view, float f) {
            view.setTransitionAlpha(f);
        }
    }

    /* renamed from: a */
    public void m58152a(@NonNull View view) {
    }

    @SuppressLint({"PrivateApi", "SoonBlockedPrivateApi"})
    /* renamed from: b */
    public final void m58153b() {
        if (f89282e) {
            return;
        }
        try {
            Class cls = Integer.TYPE;
            Method declaredMethod = View.class.getDeclaredMethod("setFrame", cls, cls, cls, cls);
            f89281d = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(f89279b, "Failed to retrieve setFrame method", e);
        }
        f89282e = true;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: c */
    public float mo53172c(@NonNull View view) {
        if (f89280c) {
            try {
                return C14638a.m58155a(view);
            } catch (NoSuchMethodError unused) {
                f89280c = false;
            }
        }
        return view.getAlpha();
    }

    /* renamed from: d */
    public void m58154d(@NonNull View view) {
    }

    /* renamed from: e */
    public void mo53173e(@NonNull View view, @Nullable Matrix matrix) {
        if (matrix == null || matrix.isIdentity()) {
            view.setPivotX(view.getWidth() / 2);
            view.setPivotY(view.getHeight() / 2);
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            view.setRotation(0.0f);
            return;
        }
        float[] fArr = this.f89286a;
        if (fArr == null) {
            fArr = new float[9];
            this.f89286a = fArr;
        }
        matrix.getValues(fArr);
        float f = fArr[3];
        float sqrt = ((float) Math.sqrt(1.0f - (f * f))) * (fArr[0] < 0.0f ? -1 : 1);
        float degrees = (float) Math.toDegrees(Math.atan2(f, sqrt));
        float f2 = fArr[0] / sqrt;
        float f3 = fArr[4] / sqrt;
        float f4 = fArr[2];
        float f5 = fArr[5];
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setTranslationX(f4);
        view.setTranslationY(f5);
        view.setRotation(degrees);
        view.setScaleX(f2);
        view.setScaleY(f3);
    }

    @SuppressLint({"BanUncheckedReflection"})
    /* renamed from: f */
    public void mo53174f(@NonNull View view, int i, int i2, int i3, int i4) {
        m58153b();
        Method method = f89281d;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e.getCause());
            }
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: g */
    public void mo53175g(@NonNull View view, float f) {
        if (f89280c) {
            try {
                C14638a.m58156b(view, f);
                return;
            } catch (NoSuchMethodError unused) {
                f89280c = false;
            }
        }
        view.setAlpha(f);
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: h */
    public void mo52972h(@NonNull View view, int i) {
        if (!f89284g) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f89283f = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i(f89279b, "fetchViewFlagsField: ");
            }
            f89284g = true;
        }
        Field field = f89283f;
        if (field != null) {
            try {
                f89283f.setInt(view, (field.getInt(view) & (-13)) | i);
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    /* renamed from: i */
    public void mo53176i(@NonNull View view, @NonNull Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            mo53176i((View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        matrix.preConcat(matrix2);
    }

    /* renamed from: j */
    public void mo53177j(@NonNull View view, @NonNull Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            mo53177j((View) parent, matrix);
            matrix.postTranslate(r0.getScrollX(), r0.getScrollY());
        }
        matrix.postTranslate(-view.getLeft(), -view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        Matrix matrix3 = new Matrix();
        if (matrix2.invert(matrix3)) {
            matrix.postConcat(matrix3);
        }
    }
}
