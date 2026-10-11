package com.miui.penengine.p015e;

import android.content.Context;
import com.miui.penengine.ocr.MiuiInk;
import com.miui.penengine.p013c.C6985b;
import com.miui.penengine.p014d.C6990d;
import dalvik.system.PathClassLoader;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.List;

/* renamed from: com.miui.penengine.e.f */
/* loaded from: classes7.dex */
public class C6997f {

    /* renamed from: c */
    public static final String f39671c = "f";

    /* renamed from: d */
    public static final String f39672d = "com.miui.penengine.impl.algorithm.recognizelib.algorithm.RecognizeFacade";

    /* renamed from: e */
    public static Class<?> f39673e;

    /* renamed from: f */
    public static Method f39674f;

    /* renamed from: g */
    public static Method f39675g;

    /* renamed from: h */
    public static Constructor<?> f39676h;

    /* renamed from: a */
    public Object f39677a;

    /* renamed from: b */
    public boolean f39678b = false;

    /* renamed from: a */
    public boolean m31339a(Context context) {
        Constructor<?> constructor = f39676h;
        if (constructor == null) {
            return false;
        }
        if (this.f39678b) {
            return true;
        }
        try {
            this.f39677a = constructor.newInstance(context);
            this.f39678b = true;
            return true;
        } catch (Exception e) {
            C6990d.m31309a(e, new StringBuilder("Recognize object is unavailable, "), f39671c);
            return false;
        }
    }

    /* renamed from: a */
    public static int m31336a(PathClassLoader pathClassLoader) {
        try {
            Class<?> loadClass = pathClassLoader.loadClass(f39672d);
            f39673e = loadClass;
            f39676h = loadClass.getDeclaredConstructor(Context.class);
            try {
                f39674f = f39673e.getDeclaredMethod("recognizeStrokes", List.class);
                try {
                    f39675g = f39673e.getDeclaredMethod("onDestroy", new Class[0]);
                    return 0;
                } catch (NoSuchMethodException e) {
                    C6985b.m31268b(f39671c, "Method on destroy does not exist, " + e.getMessage());
                    return -1;
                }
            } catch (NoSuchMethodException e2) {
                C6985b.m31268b(f39671c, "Method recognize text does not exist, " + e2.getMessage());
                return -1;
            }
        } catch (Exception e3) {
            C6990d.m31309a(e3, new StringBuilder("Recognize class or constructor is unavailable, "), f39671c);
            return -1;
        }
    }

    /* renamed from: a */
    public void m31338a() {
        Method method;
        Object obj;
        if (f39673e != null && (method = f39675g) != null && (obj = this.f39677a) != null) {
            try {
                method.invoke(obj, new Object[0]);
                this.f39678b = false;
                return;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("On destroy fail, "), f39671c);
                return;
            }
        }
        C6985b.m31268b(f39671c, "Recognize on destroy error, recognizeClass is null!");
    }

    /* renamed from: a */
    public String m31337a(MiuiInk miuiInk) {
        Method method;
        Object obj;
        if (f39673e != null && (method = f39674f) != null && (obj = this.f39677a) != null) {
            try {
                return (String) method.invoke(obj, miuiInk.getStrokes());
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Recognize text fail, "), f39671c);
                return null;
            }
        }
        C6985b.m31268b(f39671c, "Recognize recognize text error, recognizeClass is null!");
        return null;
    }
}
