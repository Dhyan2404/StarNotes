package com.miui.penengine.p015e;

import android.content.Context;
import com.miui.penengine.auth.MiuiAuthHelper;
import com.miui.penengine.p013c.C6985b;
import com.miui.penengine.p014d.C6990d;
import dalvik.system.PathClassLoader;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Observable;
import java.util.Observer;

/* renamed from: com.miui.penengine.e.i */
/* loaded from: classes7.dex */
public class C7000i {

    /* renamed from: d */
    public static final String f39691d = "i";

    /* renamed from: e */
    public static final String f39692e = "com.miui.penengine.impl.manager.PencilEngineManager";

    /* renamed from: f */
    public static Class<?> f39693f;

    /* renamed from: g */
    public static Method f39694g;

    /* renamed from: h */
    public static Method f39695h;

    /* renamed from: i */
    public static Method f39696i;

    /* renamed from: j */
    public static Method f39697j;

    /* renamed from: k */
    public static Constructor<?> f39698k;

    /* renamed from: a */
    public Object f39699a;

    /* renamed from: b */
    public b f39700b;

    /* renamed from: c */
    public MiuiAuthHelper.AuthResultListener f39701c;

    /* renamed from: com.miui.penengine.e.i$b */
    /* loaded from: classes7.dex */
    public class b implements Observer {
        public b() {
        }

        @Override // java.util.Observer
        public void update(Observable observable, Object obj) {
            boolean booleanValue = obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false;
            if (C7000i.this.f39701c != null) {
                C7000i.this.f39701c.onAuthComplete(booleanValue);
            }
        }
    }

    public C7000i() {
        if (f39698k == null) {
            C6985b.m31268b(f39691d, "Construct system pencil engine manager fail, sPencilManagerConstructor is null!");
            return;
        }
        this.f39700b = new b();
        try {
            this.f39699a = f39698k.newInstance(new Object[0]);
        } catch (Exception e) {
            C6990d.m31309a(e, new StringBuilder("pencil engine manager object is unavailable, "), f39691d);
        }
    }

    /* renamed from: b */
    public void m31349b() {
        Object obj;
        Method method = f39696i;
        if (method == null || (obj = this.f39699a) == null) {
            C6985b.m31268b(f39691d, "Run auth connect error, sRunAuthConnect is null!");
            return;
        }
        try {
            method.invoke(obj, new Object[0]);
        } catch (Exception e) {
            C6990d.m31309a(e, new StringBuilder("Run auth connect fail, "), f39691d);
        }
    }

    /* renamed from: a */
    public void m31346a() {
        Object obj;
        Method method = f39695h;
        if (method != null && (obj = this.f39699a) != null) {
            this.f39701c = null;
            try {
                method.invoke(obj, new Object[0]);
                return;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Destroy fail, "), f39691d);
                return;
            }
        }
        C6985b.m31268b(f39691d, "destroy init error, sPencilEngineDestroy is null!");
    }

    /* renamed from: a */
    public boolean m31348a(Context context, MiuiAuthHelper.AuthResultListener authResultListener) {
        if (f39694g != null && this.f39699a != null && authResultListener != null && context != null) {
            this.f39701c = authResultListener;
            try {
                f39694g.invoke(this.f39699a, context, context.getPackageName(), 0, this.f39700b, Boolean.FALSE);
                return true;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Init fail, "), f39691d);
                return false;
            }
        }
        C6985b.m31268b(f39691d, "Method init error, sPencilEngineInit is null!");
        return false;
    }

    /* renamed from: a */
    public static int m31344a(PathClassLoader pathClassLoader) {
        try {
            Class<?> loadClass = pathClassLoader.loadClass(f39692e);
            f39693f = loadClass;
            f39698k = loadClass.getDeclaredConstructor(new Class[0]);
            try {
                f39694g = f39693f.getDeclaredMethod("pencilEngineInit", Context.class, String.class, Long.TYPE, Observer.class, Boolean.TYPE);
                try {
                    f39695h = f39693f.getDeclaredMethod("pencilEngineDestroy", new Class[0]);
                    try {
                        f39696i = f39693f.getDeclaredMethod("runAuthConnect", new Class[0]);
                        try {
                            f39697j = f39693f.getDeclaredMethod("setLogLevel", Integer.TYPE);
                            return 0;
                        } catch (NoSuchMethodException e) {
                            C6985b.m31268b(f39691d, "Method setLogLevel does not exist, " + e.getMessage());
                            return -1;
                        }
                    } catch (NoSuchMethodException e2) {
                        C6985b.m31268b(f39691d, "Method runAuthConnect does not exist, " + e2.getMessage());
                        return -1;
                    }
                } catch (NoSuchMethodException e3) {
                    C6985b.m31268b(f39691d, "Method pencilEngineDestroy does not exist, " + e3.getMessage());
                    return -1;
                }
            } catch (NoSuchMethodException e4) {
                C6985b.m31268b(f39691d, "Method pencilEngineInit does not exist, " + e4.getMessage());
                return -1;
            }
        } catch (Exception e5) {
            C6990d.m31309a(e5, new StringBuilder("Pencil engine manager class or constructor is unavailable, "), f39691d);
            return -1;
        }
    }

    /* renamed from: a */
    public void m31347a(int i) {
        Object obj;
        Method method = f39697j;
        if (method != null && (obj = this.f39699a) != null) {
            try {
                method.invoke(obj, Integer.valueOf(i));
                return;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Set log level fail, "), f39691d);
                return;
            }
        }
        C6985b.m31268b(f39691d, "Set log level, sSetLogLevel is null!");
    }
}
