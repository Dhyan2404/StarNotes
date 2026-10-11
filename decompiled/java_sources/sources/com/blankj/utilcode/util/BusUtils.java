package com.blankj.utilcode.util;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.base.scheduler.SchedulerManager;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes3.dex */
public final class BusUtils {

    /* renamed from: e */
    public static final Object f13632e = "nULl";

    /* renamed from: f */
    public static final String f13633f = "BusUtils";

    /* renamed from: a */
    public final Map<String, List<C1799b>> f13634a;

    /* renamed from: b */
    public final Map<String, Set<Object>> f13635b;

    /* renamed from: c */
    public final Map<String, List<String>> f13636c;

    /* renamed from: d */
    public final Map<String, Map<String, Object>> f13637d;

    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3.dex */
    public @interface Bus {
        int priority() default 0;

        boolean sticky() default false;

        String tag();

        ThreadMode threadMode() default ThreadMode.POSTING;
    }

    /* loaded from: classes3.dex */
    public enum ThreadMode {
        MAIN,
        IO,
        CPU,
        CACHED,
        SINGLE,
        POSTING
    }

    /* renamed from: com.blankj.utilcode.util.BusUtils$a */
    /* loaded from: classes3.dex */
    public class RunnableC1798a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Object f13639e;

        /* renamed from: f */
        public final /* synthetic */ Object f13640f;

        /* renamed from: g */
        public final /* synthetic */ C1799b f13641g;

        /* renamed from: h */
        public final /* synthetic */ boolean f13642h;

        public RunnableC1798a(Object obj, Object obj2, C1799b c1799b, boolean z) {
            this.f13639e = obj;
            this.f13640f = obj2;
            this.f13641g = c1799b;
            this.f13642h = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            BusUtils.this.m7993p(this.f13639e, this.f13640f, this.f13641g, this.f13642h);
        }
    }

    /* renamed from: com.blankj.utilcode.util.BusUtils$b */
    /* loaded from: classes3.dex */
    public static final class C1799b {

        /* renamed from: a */
        public String f13644a;

        /* renamed from: b */
        public String f13645b;

        /* renamed from: c */
        public String f13646c;

        /* renamed from: d */
        public String f13647d;

        /* renamed from: e */
        public String f13648e;

        /* renamed from: f */
        public boolean f13649f;

        /* renamed from: g */
        public String f13650g;

        /* renamed from: h */
        public int f13651h;

        /* renamed from: i */
        public Method f13652i;

        /* renamed from: j */
        public List<String> f13653j = new CopyOnWriteArrayList();

        public C1799b(String str, String str2, String str3, String str4, String str5, boolean z, String str6, int i) {
            this.f13644a = str;
            this.f13645b = str2;
            this.f13646c = str3;
            this.f13647d = str4;
            this.f13648e = str5;
            this.f13649f = z;
            this.f13650g = str6;
            this.f13651h = i;
        }

        /* renamed from: a */
        public final String m8000a() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append(this.f13645b);
            sb.append("#");
            sb.append(this.f13646c);
            if ("".equals(this.f13647d)) {
                str = "()";
            } else {
                str = MotionUtils.f31761c + this.f13647d + " " + this.f13648e + MotionUtils.f31762d;
            }
            sb.append(str);
            return sb.toString();
        }

        public String toString() {
            return "BusInfo { tag : " + this.f13644a + ", desc: " + m8000a() + ", sticky: " + this.f13649f + ", threadMode: " + this.f13650g + ", method: " + this.f13652i + ", priority: " + this.f13651h + " }";
        }
    }

    /* renamed from: com.blankj.utilcode.util.BusUtils$c */
    /* loaded from: classes3.dex */
    public static class C1800c {

        /* renamed from: a */
        public static final BusUtils f13654a = new BusUtils(null);
    }

    public /* synthetic */ BusUtils(RunnableC1798a runnableC1798a) {
        this();
    }

    /* renamed from: e */
    public static BusUtils m7978e() {
        return C1800c.f13654a;
    }

    public static void post(@NonNull String str) {
        post(str, f13632e);
    }

    public static void postSticky(@NonNull String str) {
        postSticky(str, f13632e);
    }

    public static void register(@Nullable Object obj) {
        m7978e().m7997u(obj);
    }

    public static void removeSticky(String str) {
        m7978e().m7998v(str);
    }

    /* renamed from: t */
    public static void m7979t(String str, String str2, String str3, String str4, String str5, boolean z, String str6, int i) {
        m7978e().m7996s(str, str2, str3, str4, str5, z, str6, i);
    }

    public static String toString_() {
        return m7978e().toString();
    }

    public static void unregister(@Nullable Object obj) {
        m7978e().m7999w(obj);
    }

    /* renamed from: b */
    public final void m7980b(Object obj, String str, Object obj2) {
        List<C1799b> list = this.f13634a.get(str);
        if (list == null) {
            Log.e(f13633f, "The bus of tag <" + str + "> is not exists.");
            return;
        }
        for (C1799b c1799b : list) {
            if (c1799b.f13653j.contains(obj.getClass().getName()) && c1799b.f13649f) {
                synchronized (this.f13637d) {
                    Map<String, Object> map = this.f13637d.get(c1799b.f13645b);
                    if (map != null && map.containsKey(str)) {
                        m7986i(obj, obj2, c1799b, true);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public final void m7981c(Object obj) {
        Map<String, Object> map = this.f13637d.get(obj.getClass().getName());
        if (map == null) {
            return;
        }
        synchronized (this.f13637d) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                m7980b(obj, entry.getKey(), entry.getValue());
            }
        }
    }

    /* renamed from: d */
    public final Class m7982d(String str) throws ClassNotFoundException {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1325958191:
                if (str.equals("double")) {
                    c = 0;
                    break;
                }
                break;
            case 104431:
                if (str.equals("int")) {
                    c = 1;
                    break;
                }
                break;
            case 3039496:
                if (str.equals("byte")) {
                    c = 2;
                    break;
                }
                break;
            case 3052374:
                if (str.equals("char")) {
                    c = 3;
                    break;
                }
                break;
            case 3327612:
                if (str.equals("long")) {
                    c = 4;
                    break;
                }
                break;
            case 64711720:
                if (str.equals("boolean")) {
                    c = 5;
                    break;
                }
                break;
            case 97526364:
                if (str.equals("float")) {
                    c = 6;
                    break;
                }
                break;
            case 109413500:
                if (str.equals("short")) {
                    c = 7;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return Double.TYPE;
            case 1:
                return Integer.TYPE;
            case 2:
                return Byte.TYPE;
            case 3:
                return Character.TYPE;
            case 4:
                return Long.TYPE;
            case 5:
                return Boolean.TYPE;
            case 6:
                return Float.TYPE;
            case 7:
                return Short.TYPE;
            default:
                return Class.forName(str);
        }
    }

    /* renamed from: f */
    public final Method m7983f(C1799b c1799b) {
        try {
            return "".equals(c1799b.f13647d) ? Class.forName(c1799b.f13645b).getDeclaredMethod(c1799b.f13646c, new Class[0]) : Class.forName(c1799b.f13645b).getDeclaredMethod(c1799b.f13646c, m7982d(c1799b.f13647d));
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* renamed from: g */
    public final void m7984g() {
    }

    /* renamed from: h */
    public final void m7985h(Object obj, C1799b c1799b, boolean z) {
        m7986i(null, obj, c1799b, z);
    }

    /* renamed from: i */
    public final void m7986i(Object obj, Object obj2, C1799b c1799b, boolean z) {
        if (c1799b.f13652i == null) {
            Method m7983f = m7983f(c1799b);
            if (m7983f == null) {
                return;
            } else {
                c1799b.f13652i = m7983f;
            }
        }
        m7989l(obj, obj2, c1799b, z);
    }

    /* renamed from: j */
    public final void m7987j(Object obj, C1799b c1799b, Set<Object> set) {
        try {
            if (obj == f13632e) {
                Iterator<Object> it2 = set.iterator();
                while (it2.hasNext()) {
                    c1799b.f13652i.invoke(it2.next(), new Object[0]);
                }
                return;
            }
            Iterator<Object> it3 = set.iterator();
            while (it3.hasNext()) {
                c1799b.f13652i.invoke(it3.next(), obj);
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: k */
    public final void m7988k(Object obj, C1799b c1799b, boolean z) {
        m7989l(null, obj, c1799b, z);
    }

    /* renamed from: l */
    public final void m7989l(Object obj, Object obj2, C1799b c1799b, boolean z) {
        RunnableC1798a runnableC1798a = new RunnableC1798a(obj, obj2, c1799b, z);
        String str = c1799b.f13650g;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1848936376:
                if (str.equals("SINGLE")) {
                    c = 0;
                    break;
                }
                break;
            case 2342:
                if (str.equals(SchedulerManager.f40832IO)) {
                    c = 1;
                    break;
                }
                break;
            case 66952:
                if (str.equals("CPU")) {
                    c = 2;
                    break;
                }
                break;
            case 2358713:
                if (str.equals("MAIN")) {
                    c = 3;
                    break;
                }
                break;
            case 1980249378:
                if (str.equals("CACHED")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                ThreadUtils.getSinglePool().execute(runnableC1798a);
                return;
            case 1:
                ThreadUtils.getIoPool().execute(runnableC1798a);
                return;
            case 2:
                ThreadUtils.getCpuPool().execute(runnableC1798a);
                return;
            case 3:
                ThreadUtils.runOnUiThread(runnableC1798a);
                return;
            case 4:
                ThreadUtils.getCachedPool().execute(runnableC1798a);
                return;
            default:
                runnableC1798a.run();
                return;
        }
    }

    /* renamed from: m */
    public final void m7990m(String str, Object obj) {
        m7991n(str, obj, false);
    }

    /* renamed from: n */
    public final void m7991n(String str, Object obj, boolean z) {
        List<C1799b> list = this.f13634a.get(str);
        if (list != null) {
            Iterator<C1799b> it2 = list.iterator();
            while (it2.hasNext()) {
                m7985h(obj, it2.next(), z);
            }
            return;
        }
        Log.e(f13633f, "The bus of tag <" + str + "> is not exists.");
        if (this.f13634a.isEmpty()) {
            Log.e(f13633f, "Please check whether the bus plugin is applied.");
        }
    }

    /* renamed from: o */
    public final void m7992o(String str, Object obj) {
        List<C1799b> list = this.f13634a.get(str);
        if (list == null) {
            Log.e(f13633f, "The bus of tag <" + str + "> is not exists.");
            return;
        }
        for (C1799b c1799b : list) {
            if (c1799b.f13649f) {
                synchronized (this.f13637d) {
                    Map<String, Object> map = this.f13637d.get(c1799b.f13645b);
                    if (map == null) {
                        map = new ConcurrentHashMap<>();
                        this.f13637d.put(c1799b.f13645b, map);
                    }
                    map.put(str, obj);
                }
                m7985h(obj, c1799b, true);
            } else {
                m7985h(obj, c1799b, false);
            }
        }
    }

    /* renamed from: p */
    public final void m7993p(Object obj, Object obj2, C1799b c1799b, boolean z) {
        Set<Object> hashSet = new HashSet<>();
        if (obj == null) {
            Iterator<String> it2 = c1799b.f13653j.iterator();
            while (it2.hasNext()) {
                Set<Object> set = this.f13635b.get(it2.next());
                if (set != null && !set.isEmpty()) {
                    hashSet.addAll(set);
                }
            }
            if (hashSet.size() == 0) {
                if (z) {
                    return;
                }
                Log.e(f13633f, "The " + c1799b + " was not registered before.");
                return;
            }
        } else {
            hashSet.add(obj);
        }
        m7987j(obj2, c1799b, hashSet);
    }

    /* renamed from: q */
    public final void m7994q(Class<?> cls, String str) {
        if (this.f13636c.get(str) == null) {
            synchronized (this.f13636c) {
                if (this.f13636c.get(str) == null) {
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    for (Map.Entry<String, List<C1799b>> entry : this.f13634a.entrySet()) {
                        for (C1799b c1799b : entry.getValue()) {
                            try {
                                if (Class.forName(c1799b.f13645b).isAssignableFrom(cls)) {
                                    copyOnWriteArrayList.add(entry.getKey());
                                    c1799b.f13653j.add(str);
                                }
                            } catch (ClassNotFoundException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    this.f13636c.put(str, copyOnWriteArrayList);
                }
            }
        }
    }

    /* renamed from: r */
    public final void m7995r(String str, String str2, String str3, String str4, String str5, boolean z, String str6) {
        m7996s(str, str2, str3, str4, str5, z, str6, 0);
    }

    /* renamed from: s */
    public final void m7996s(String str, String str2, String str3, String str4, String str5, boolean z, String str6, int i) {
        List<C1799b> list = this.f13634a.get(str);
        if (list == null) {
            list = new CopyOnWriteArrayList<>();
            this.f13634a.put(str, list);
        }
        list.add(new C1799b(str, str2, str3, str4, str5, z, str6, i));
    }

    public String toString() {
        return "BusUtils: " + this.f13634a;
    }

    /* renamed from: u */
    public final void m7997u(@Nullable Object obj) {
        boolean z;
        if (obj == null) {
            return;
        }
        Class<?> cls = obj.getClass();
        String name = cls.getName();
        synchronized (this.f13635b) {
            Set<Object> set = this.f13635b.get(name);
            if (set == null) {
                set = new CopyOnWriteArraySet<>();
                this.f13635b.put(name, set);
                z = true;
            } else {
                z = false;
            }
            if (!set.contains(obj)) {
                set.add(obj);
                if (z) {
                    m7994q(cls, name);
                }
                m7981c(obj);
                return;
            }
            Log.w(f13633f, "The bus of <" + obj + "> already registered.");
        }
    }

    /* renamed from: v */
    public final void m7998v(String str) {
        List<C1799b> list = this.f13634a.get(str);
        if (list == null) {
            Log.e(f13633f, "The bus of tag <" + str + "> is not exists.");
            return;
        }
        for (C1799b c1799b : list) {
            if (c1799b.f13649f) {
                synchronized (this.f13637d) {
                    Map<String, Object> map = this.f13637d.get(c1799b.f13645b);
                    if (map != null && map.containsKey(str)) {
                        map.remove(str);
                    }
                    return;
                }
            }
        }
    }

    /* renamed from: w */
    public final void m7999w(Object obj) {
        if (obj == null) {
            return;
        }
        String name = obj.getClass().getName();
        synchronized (this.f13635b) {
            Set<Object> set = this.f13635b.get(name);
            if (set != null && set.contains(obj)) {
                set.remove(obj);
                return;
            }
            Log.e(f13633f, "The bus of <" + obj + "> was not registered before.");
        }
    }

    public BusUtils() {
        this.f13634a = new ConcurrentHashMap();
        this.f13635b = new ConcurrentHashMap();
        this.f13636c = new ConcurrentHashMap();
        this.f13637d = new ConcurrentHashMap();
        m7984g();
    }

    public static void post(@NonNull String str, @NonNull Object obj) {
        m7978e().m7990m(str, obj);
    }

    public static void postSticky(@NonNull String str, Object obj) {
        m7978e().m7992o(str, obj);
    }
}
