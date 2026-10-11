package com.miui.penengine.p015e;

import android.content.Context;
import android.graphics.Path;
import android.view.MotionEvent;
import com.miui.penengine.p013c.C6985b;
import com.miui.penengine.p014d.C6990d;
import dalvik.system.PathClassLoader;
import java.lang.reflect.Method;

/* renamed from: com.miui.penengine.e.e */
/* loaded from: classes7.dex */
public class C6996e {

    /* renamed from: b */
    public static final String f39660b = "e";

    /* renamed from: c */
    public static final String f39661c = "com.miui.penengine.impl.algorithm.shape.ShapeRecognizeFacade";

    /* renamed from: d */
    public static Class<?> f39662d;

    /* renamed from: e */
    public static Method f39663e;

    /* renamed from: f */
    public static Method f39664f;

    /* renamed from: g */
    public static Method f39665g;

    /* renamed from: h */
    public static Method f39666h;

    /* renamed from: i */
    public static Method f39667i;

    /* renamed from: j */
    public static Method f39668j;

    /* renamed from: k */
    public static Method f39669k;

    /* renamed from: a */
    public Object f39670a;

    public C6996e() {
        Method method = f39665g;
        if (method == null || f39662d == null) {
            C6985b.m31268b(f39660b, "Method getInstance error, mOneStrokeGetInstance is null!");
            return;
        }
        try {
            this.f39670a = method.invoke(null, new Object[0]);
        } catch (Exception e) {
            this.f39670a = null;
            C6990d.m31309a(e, new StringBuilder("One stroke object is unavailable, "), f39660b);
        }
    }

    /* renamed from: a */
    public int m31330a() {
        Object obj;
        Method method = f39664f;
        if (method != null && (obj = this.f39670a) != null) {
            try {
                Object invoke = method.invoke(obj, new Object[0]);
                if (invoke != null) {
                    return ((Integer) invoke).intValue();
                }
                return -10;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("One stroke destroy fail, "), f39660b);
                return -10;
            }
        }
        C6985b.m31268b(f39660b, "Method destroy error, mOneStrokeDestroy is null!");
        return -1;
    }

    /* renamed from: b */
    public Path m31334b() {
        Object obj;
        Method method = f39667i;
        if (method == null || (obj = this.f39670a) == null) {
            C6985b.m31268b(f39660b, "Method getShapePath error, mOneStrokeGetShapePath is null!");
            return null;
        }
        try {
            return (Path) method.invoke(obj, new Object[0]);
        } catch (Exception e) {
            C6990d.m31309a(e, new StringBuilder("Get shape path fail, "), f39660b);
            return null;
        }
    }

    /* renamed from: c */
    public boolean m31335c() {
        Object obj;
        Method method = f39668j;
        if (method == null || (obj = this.f39670a) == null) {
            C6985b.m31268b(f39660b, "Method isFeatureEnable error, mOneStrokeIsFeatureEnable is null!");
            return false;
        }
        try {
            Object invoke = method.invoke(obj, new Object[0]);
            if (invoke != null) {
                return ((Boolean) invoke).booleanValue();
            }
            return false;
        } catch (Exception e) {
            C6990d.m31309a(e, new StringBuilder("Get feature enable fail, "), f39660b);
            return false;
        }
    }

    /* renamed from: a */
    public boolean m31333a(Context context) {
        Object obj;
        Method method = f39663e;
        if (method != null && (obj = this.f39670a) != null) {
            try {
                Object invoke = method.invoke(obj, context);
                if (invoke != null) {
                    return ((Boolean) invoke).booleanValue();
                }
                return false;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("One stroke init fail, "), f39660b);
                return false;
            }
        }
        C6985b.m31268b(f39660b, "Method init error, mOneStrokeInit is null!");
        return false;
    }

    /* renamed from: a */
    public static int m31329a(PathClassLoader pathClassLoader) {
        try {
            Class<?> loadClass = pathClassLoader.loadClass(f39661c);
            f39662d = loadClass;
            Class<?>[] clsArr = {Context.class};
            try {
                f39665g = loadClass.getDeclaredMethod("getInstance", new Class[0]);
                try {
                    f39663e = f39662d.getDeclaredMethod("init", clsArr);
                    try {
                        f39664f = f39662d.getDeclaredMethod("destroy", new Class[0]);
                        try {
                            f39668j = f39662d.getDeclaredMethod("isFeatureEnable", new Class[0]);
                            try {
                                f39669k = f39662d.getDeclaredMethod("processTouchEvent", MotionEvent.class);
                                try {
                                    f39667i = f39662d.getDeclaredMethod("getShapePath", new Class[0]);
                                    try {
                                        f39666h = f39662d.getDeclaredMethod("setStopTime", Integer.TYPE);
                                        return 0;
                                    } catch (NoSuchMethodException e) {
                                        C6985b.m31268b(f39660b, "Method setStopTime does not exist, " + e.getMessage());
                                        return -1;
                                    }
                                } catch (NoSuchMethodException e2) {
                                    C6985b.m31268b(f39660b, "Method getShapePath does not exist, " + e2.getMessage());
                                    return -1;
                                }
                            } catch (NoSuchMethodException e3) {
                                C6985b.m31268b(f39660b, "Method processTouchEvent does not exist, " + e3.getMessage());
                                return -1;
                            }
                        } catch (NoSuchMethodException e4) {
                            C6985b.m31268b(f39660b, "Method isFeatureEnable does not exist, " + e4.getMessage());
                            return -1;
                        }
                    } catch (NoSuchMethodException e5) {
                        C6985b.m31268b(f39660b, "Method destroy does not exist, " + e5.getMessage());
                        return -1;
                    }
                } catch (NoSuchMethodException e6) {
                    C6985b.m31268b(f39660b, "Method init does not exist, " + e6.getMessage());
                    return -1;
                }
            } catch (NoSuchMethodException e7) {
                C6985b.m31268b(f39660b, "Method getInstance does not exist, " + e7.getMessage());
                return -1;
            }
        } catch (Exception e8) {
            C6990d.m31309a(e8, new StringBuilder("One stroke class or constructor is unavailable, "), f39660b);
            return -1;
        }
    }

    /* renamed from: a */
    public void m31332a(MotionEvent motionEvent) {
        Object obj;
        Method method = f39669k;
        if (method != null && (obj = this.f39670a) != null) {
            try {
                method.invoke(obj, motionEvent);
                return;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Process touch event fail, "), f39660b);
                return;
            }
        }
        C6985b.m31268b(f39660b, "Method processTouchEvent error, mOneStrokeProcessTouchEvent is null!");
    }

    /* renamed from: a */
    public void m31331a(int i) {
        Object obj;
        Method method = f39666h;
        if (method != null && (obj = this.f39670a) != null) {
            try {
                method.invoke(obj, Integer.valueOf(i));
                return;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Set stop time fail, "), f39660b);
                return;
            }
        }
        C6985b.m31268b(f39660b, "Method setStopTime error, mOneStrokeSetStopTime is null!");
    }
}
