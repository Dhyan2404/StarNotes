package com.miui.penengine.p015e;

import android.content.Context;
import com.miui.penengine.estimate.MiuiMotionEventInfo;
import com.miui.penengine.p013c.C6985b;
import com.miui.penengine.p014d.C6990d;
import dalvik.system.PathClassLoader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.miui.penengine.e.g */
/* loaded from: classes7.dex */
public class C6998g implements InterfaceC6994c {

    /* renamed from: a */
    public static final String f39679a = "g";

    /* renamed from: b */
    public static final String f39680b = "com.miui.penengine.impl.algorithm.estimate.EstimateFacade";

    /* renamed from: c */
    public static Class<?> f39681c;

    /* renamed from: d */
    public static Method f39682d;

    /* renamed from: e */
    public static Method f39683e;

    /* renamed from: f */
    public static Method f39684f;

    /* renamed from: g */
    public static Method f39685g;

    /* renamed from: h */
    public static Method f39686h;

    /* renamed from: i */
    public static Object f39687i;

    public C6998g() {
        Method method = f39683e;
        if (method == null || f39681c == null) {
            C6985b.m31268b(f39679a, "Method getInstance error, mEstimateGetInstance is null!");
            return;
        }
        try {
            f39687i = method.invoke(null, new Object[0]);
        } catch (Exception e) {
            f39687i = null;
            C6990d.m31309a(e, new StringBuilder("Stroke estimate object is unavailable, "), f39679a);
        }
    }

    @Override // com.miui.penengine.p015e.InterfaceC6994c
    /* renamed from: a */
    public int mo31316a(List<MiuiMotionEventInfo> list, List<MiuiMotionEventInfo> list2) {
        String str;
        StringBuilder sb;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (f39686h == null || f39687i == null) {
            C6985b.m31268b(f39679a, "Method getEstimateEvent error, mEstimateGetEstimateEvent is null!");
            return -1;
        }
        Iterator<MiuiMotionEventInfo> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getMiuiMotionEvent());
        }
        try {
            Object invoke = f39686h.invoke(f39687i, arrayList, arrayList2);
            int intValue = invoke != null ? ((Integer) invoke).intValue() : -10;
            list2.clear();
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                list2.add(new MiuiMotionEventInfo(it3.next()));
            }
            return intValue;
        } catch (IllegalAccessException e) {
            e = e;
            str = f39679a;
            sb = new StringBuilder("Get estimate event fail, IllegalAccessException faults, ");
            sb.append(e.getMessage());
            C6985b.m31268b(str, sb.toString());
            return -10;
        } catch (NullPointerException e2) {
            e = e2;
            str = f39679a;
            sb = new StringBuilder("Get estimate event fail, NullPointerException faults, ");
            sb.append(e.getMessage());
            C6985b.m31268b(str, sb.toString());
            return -10;
        } catch (InvocationTargetException e3) {
            str = f39679a;
            sb = new StringBuilder("Get estimate event fail, InvocationTargetException faults, ");
            sb.append(e3.getTargetException());
            C6985b.m31268b(str, sb.toString());
            return -10;
        }
    }

    @Override // com.miui.penengine.p015e.InterfaceC6994c
    /* renamed from: a */
    public void mo31318a(Context context) {
        Object obj;
        Method method = f39682d;
        if (method != null && (obj = f39687i) != null) {
            try {
                method.invoke(obj, context);
                return;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Stroke estimate init fail, "), f39679a);
                return;
            }
        }
        C6985b.m31268b(f39679a, "Method init error, mEstimateInit is null!");
    }

    @Override // com.miui.penengine.p015e.InterfaceC6994c
    /* renamed from: a */
    public boolean mo31319a() {
        Object obj;
        Method method = f39685g;
        if (method != null && (obj = f39687i) != null) {
            try {
                Object invoke = method.invoke(obj, new Object[0]);
                if (invoke != null) {
                    return ((Boolean) invoke).booleanValue();
                }
                return false;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Get feature enable fail, "), f39679a);
                return false;
            }
        }
        C6985b.m31268b(f39679a, "Method isFeatureEnable error, mEstimateIsFeatureEnable is null!");
        return false;
    }

    /* renamed from: a */
    public static int m31340a(PathClassLoader pathClassLoader) {
        try {
            Class<?> loadClass = pathClassLoader.loadClass(f39680b);
            f39681c = loadClass;
            Class<?>[] clsArr = {Context.class};
            try {
                f39683e = loadClass.getDeclaredMethod("getInstance", new Class[0]);
                try {
                    f39682d = f39681c.getDeclaredMethod("init", clsArr);
                    try {
                        f39685g = f39681c.getDeclaredMethod("isFeatureEnable", new Class[0]);
                        try {
                            f39684f = f39681c.getDeclaredMethod("setRefreshRate", Float.TYPE);
                            try {
                                f39686h = f39681c.getDeclaredMethod("getEstimateEvent", List.class, List.class);
                                return 0;
                            } catch (NoSuchMethodException e) {
                                C6985b.m31268b(f39679a, "Method getEstimateEvent does not exist, " + e.getMessage());
                                return -1;
                            }
                        } catch (NoSuchMethodException e2) {
                            C6985b.m31268b(f39679a, "Method setRefreshRate does not exist, " + e2.getMessage());
                            return -1;
                        }
                    } catch (NoSuchMethodException e3) {
                        C6985b.m31268b(f39679a, "Method isFeatureEnable does not exist, " + e3.getMessage());
                        return -1;
                    }
                } catch (NoSuchMethodException e4) {
                    C6985b.m31268b(f39679a, "Method init does not exist, " + e4.getMessage());
                    return -1;
                }
            } catch (NoSuchMethodException e5) {
                C6985b.m31268b(f39679a, "Method getInstance does not exist, " + e5.getMessage());
                return -1;
            }
        } catch (Exception e6) {
            C6990d.m31309a(e6, new StringBuilder("Estimate class or constructor is unavailable, "), f39679a);
            return -1;
        }
    }

    @Override // com.miui.penengine.p015e.InterfaceC6994c
    /* renamed from: a */
    public void mo31317a(float f) {
        Object obj;
        Method method = f39684f;
        if (method != null && (obj = f39687i) != null) {
            try {
                method.invoke(obj, Float.valueOf(f));
                return;
            } catch (Exception e) {
                C6990d.m31309a(e, new StringBuilder("Set refresh rate fail, "), f39679a);
                return;
            }
        }
        C6985b.m31268b(f39679a, "Method setRefreshRate error, mEstimateSetRefreshRate is null!");
    }
}
