package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(21)
/* loaded from: classes3.dex */
public class s2h implements r2h {

    /* renamed from: f */
    public static final String f83741f = "GhostViewApi21";

    /* renamed from: g */
    public static Class<?> f83742g;

    /* renamed from: h */
    public static boolean f83743h;

    /* renamed from: i */
    public static Method f83744i;

    /* renamed from: j */
    public static boolean f83745j;

    /* renamed from: k */
    public static Method f83746k;

    /* renamed from: l */
    public static boolean f83747l;

    /* renamed from: e */
    public final View f83748e;

    public s2h(@NonNull View view) {
        this.f83748e = view;
    }

    @SuppressLint({"BanUncheckedReflection"})
    /* renamed from: b */
    public static r2h m57126b(View view, ViewGroup viewGroup, Matrix matrix) {
        m57127c();
        Method method = f83744i;
        if (method != null) {
            try {
                return new s2h((View) method.invoke(null, view, viewGroup, matrix));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e.getCause());
            }
        }
        return null;
    }

    /* renamed from: c */
    public static void m57127c() {
        if (f83745j) {
            return;
        }
        try {
            m57128d();
            Method declaredMethod = f83742g.getDeclaredMethod("addGhost", View.class, ViewGroup.class, Matrix.class);
            f83744i = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(f83741f, "Failed to retrieve addGhost method", e);
        }
        f83745j = true;
    }

    /* renamed from: d */
    public static void m57128d() {
        if (f83743h) {
            return;
        }
        try {
            f83742g = Class.forName("android.view.GhostView");
        } catch (ClassNotFoundException e) {
            Log.i(f83741f, "Failed to retrieve GhostView class", e);
        }
        f83743h = true;
    }

    /* renamed from: e */
    public static void m57129e() {
        if (f83747l) {
            return;
        }
        try {
            m57128d();
            Method declaredMethod = f83742g.getDeclaredMethod("removeGhost", View.class);
            f83746k = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(f83741f, "Failed to retrieve removeGhost method", e);
        }
        f83747l = true;
    }

    @SuppressLint({"BanUncheckedReflection"})
    /* renamed from: f */
    public static void m57130f(View view) {
        m57129e();
        Method method = f83746k;
        if (method != null) {
            try {
                method.invoke(null, view);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e.getCause());
            }
        }
    }

    @Override // com.sunia.HTREnginev2.r2h
    /* renamed from: a */
    public void mo6662a(ViewGroup viewGroup, View view) {
    }

    @Override // com.sunia.HTREnginev2.r2h
    public void setVisibility(int i) {
        this.f83748e.setVisibility(i);
    }
}
