package com.miui.penengine.p014d;

import com.miui.penengine.p013c.C6985b;
import dalvik.system.PathClassLoader;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* renamed from: com.miui.penengine.d.e */
/* loaded from: classes7.dex */
public class C6991e implements InterfaceC6987a {

    /* renamed from: b */
    public static final String f39624b = "e";

    /* renamed from: c */
    public static final String f39625c = "com.miui.penengine.facade.MiuiMotionEventInfo";

    /* renamed from: d */
    public static Method f39626d;

    /* renamed from: e */
    public static Method f39627e;

    /* renamed from: f */
    public static Method f39628f;

    /* renamed from: g */
    public static Method f39629g;

    /* renamed from: h */
    public static Method f39630h;

    /* renamed from: i */
    public static Method f39631i;

    /* renamed from: j */
    public static Method f39632j;

    /* renamed from: k */
    public static Method f39633k;

    /* renamed from: l */
    public static Constructor<?> f39634l;

    /* renamed from: m */
    public static Class<?> f39635m;

    /* renamed from: a */
    public Object f39636a;

    public C6991e(float f, float f2, long j, float f3, float f4, float f5, int i, boolean z) {
        Constructor<?> constructor = f39634l;
        if (constructor == null || f39635m == null) {
            return;
        }
        try {
            this.f39636a = constructor.newInstance(Float.valueOf(f), Float.valueOf(f2), Long.valueOf(j), Float.valueOf(f3), Float.valueOf(f4), Float.valueOf(f5), Integer.valueOf(i), Boolean.valueOf(z));
        } catch (Exception e) {
            C6990d.m31309a(e, new StringBuilder("MotionEvent object is unavailable, "), f39624b);
        }
    }

    @Override // com.miui.penengine.p014d.InterfaceC6987a
    /* renamed from: a */
    public float mo31281a() {
        Object obj;
        Method method = f39626d;
        if (method != null && (obj = this.f39636a) != null) {
            try {
                Object invoke = method.invoke(obj, new Object[0]);
                if (invoke != null) {
                    return ((Float) invoke).floatValue();
                }
                return 0.0f;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Get x axis coordinate fail, "), f39624b);
            }
        }
        return 0.0f;
    }

    @Override // com.miui.penengine.p014d.InterfaceC6987a
    /* renamed from: b */
    public float mo31282b() {
        Object obj;
        Method method = f39630h;
        if (method != null && (obj = this.f39636a) != null) {
            try {
                Object invoke = method.invoke(obj, new Object[0]);
                if (invoke != null) {
                    return ((Float) invoke).floatValue();
                }
                return 0.0f;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Get pressure fail, "), f39624b);
            }
        }
        return 0.0f;
    }

    @Override // com.miui.penengine.p014d.InterfaceC6987a
    /* renamed from: c */
    public float mo31283c() {
        Object obj;
        Method method = f39631i;
        if (method != null && (obj = this.f39636a) != null) {
            try {
                Object invoke = method.invoke(obj, new Object[0]);
                if (invoke != null) {
                    return ((Float) invoke).floatValue();
                }
                return 0.0f;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Get orientation fail, "), f39624b);
            }
        }
        return 0.0f;
    }

    @Override // com.miui.penengine.p014d.InterfaceC6987a
    /* renamed from: d */
    public boolean mo31284d() {
        Object obj;
        Method method = f39632j;
        if (method != null && (obj = this.f39636a) != null) {
            try {
                Object invoke = method.invoke(obj, new Object[0]);
                if (invoke != null) {
                    return ((Boolean) invoke).booleanValue();
                }
                return false;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Get history point fail, "), f39624b);
            }
        }
        return false;
    }

    @Override // com.miui.penengine.p014d.InterfaceC6987a
    /* renamed from: e */
    public Object mo31285e() {
        return this.f39636a;
    }

    @Override // com.miui.penengine.p014d.InterfaceC6987a
    /* renamed from: f */
    public float mo31286f() {
        Object obj;
        Method method = f39627e;
        if (method != null && (obj = this.f39636a) != null) {
            try {
                Object invoke = method.invoke(obj, new Object[0]);
                if (invoke != null) {
                    return ((Float) invoke).floatValue();
                }
                return 0.0f;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Get y axis coordinate fail, "), f39624b);
            }
        }
        return 0.0f;
    }

    @Override // com.miui.penengine.p014d.InterfaceC6987a
    /* renamed from: g */
    public int mo31287g() {
        Object obj;
        Method method = f39633k;
        if (method != null && (obj = this.f39636a) != null) {
            try {
                Object invoke = method.invoke(obj, new Object[0]);
                if (invoke != null) {
                    return ((Integer) invoke).intValue();
                }
                return 0;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Get motion action fail, "), f39624b);
            }
        }
        return 0;
    }

    @Override // com.miui.penengine.p014d.InterfaceC6987a
    /* renamed from: h */
    public float mo31288h() {
        Object obj;
        Method method = f39629g;
        if (method != null && (obj = this.f39636a) != null) {
            try {
                Object invoke = method.invoke(obj, new Object[0]);
                if (invoke != null) {
                    return ((Float) invoke).floatValue();
                }
                return 0.0f;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Get tilt fail, "), f39624b);
            }
        }
        return 0.0f;
    }

    @Override // com.miui.penengine.p014d.InterfaceC6987a
    /* renamed from: i */
    public long mo31289i() {
        Object obj;
        Method method = f39628f;
        if (method != null && (obj = this.f39636a) != null) {
            try {
                Object invoke = method.invoke(obj, new Object[0]);
                if (invoke != null) {
                    return ((Long) invoke).longValue();
                }
                return 0L;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Get time fail, "), f39624b);
            }
        }
        return 0L;
    }

    public C6991e(Object obj) {
        this.f39636a = obj;
    }

    /* renamed from: a */
    public static int m31310a(PathClassLoader pathClassLoader) {
        try {
            Class<?> loadClass = pathClassLoader.loadClass(f39625c);
            f39635m = loadClass;
            Class<?> cls = Float.TYPE;
            f39634l = loadClass.getDeclaredConstructor(cls, cls, Long.TYPE, cls, cls, cls, Integer.TYPE, Boolean.TYPE);
            try {
                f39626d = f39635m.getDeclaredMethod("getX", new Class[0]);
                try {
                    f39627e = f39635m.getDeclaredMethod("getY", new Class[0]);
                    try {
                        f39628f = f39635m.getDeclaredMethod("getTime", new Class[0]);
                        try {
                            f39629g = f39635m.getDeclaredMethod("getTilt", new Class[0]);
                            try {
                                f39630h = f39635m.getDeclaredMethod("getPressure", new Class[0]);
                                try {
                                    f39631i = f39635m.getDeclaredMethod("getOrientation", new Class[0]);
                                    try {
                                        f39632j = f39635m.getDeclaredMethod("isHistoryPoint", new Class[0]);
                                        try {
                                            f39633k = f39635m.getDeclaredMethod("getMotionAction", new Class[0]);
                                            return 0;
                                        } catch (NoSuchMethodException e) {
                                            C6985b.m31268b(f39624b, "Method getMotionAction does not exist, " + e.getMessage());
                                            return -1;
                                        }
                                    } catch (NoSuchMethodException e2) {
                                        C6985b.m31268b(f39624b, "Method isHistoryPoint does not exist, " + e2.getMessage());
                                        return -1;
                                    }
                                } catch (NoSuchMethodException e3) {
                                    C6985b.m31268b(f39624b, "Method getOrientation does not exist, " + e3.getMessage());
                                    return -1;
                                }
                            } catch (NoSuchMethodException e4) {
                                C6985b.m31268b(f39624b, "Method getPressure does not exist, " + e4.getMessage());
                                return -1;
                            }
                        } catch (NoSuchMethodException e5) {
                            C6985b.m31268b(f39624b, "Method getTilt does not exist, " + e5.getMessage());
                            return -1;
                        }
                    } catch (NoSuchMethodException e6) {
                        C6985b.m31268b(f39624b, "Method getTime does not exist, " + e6.getMessage());
                        return -1;
                    }
                } catch (NoSuchMethodException e7) {
                    C6985b.m31268b(f39624b, "Method getY does not exist, " + e7.getMessage());
                    return -1;
                }
            } catch (NoSuchMethodException e8) {
                C6985b.m31268b(f39624b, "Method getX does not exist, " + e8.getMessage());
                return -1;
            }
        } catch (Exception e9) {
            C6990d.m31309a(e9, new StringBuilder("Motion event info class or constructor is unavailable, "), f39624b);
            return -1;
        }
    }
}
