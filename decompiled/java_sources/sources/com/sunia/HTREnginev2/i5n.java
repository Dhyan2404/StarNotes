package com.sunia.HTREnginev2;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.greenrobot.eventbus.EventBusException;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.SubscriberMethod;
import org.greenrobot.eventbus.meta.SubscriberInfo;
import org.greenrobot.eventbus.meta.SubscriberInfoIndex;

/* loaded from: classes13.dex */
public class i5n {

    /* renamed from: d */
    public static final int f72903d = 64;

    /* renamed from: e */
    public static final int f72904e = 4096;

    /* renamed from: f */
    public static final int f72905f = 5192;

    /* renamed from: h */
    public static final int f72907h = 4;

    /* renamed from: a */
    public List<SubscriberInfoIndex> f72909a;

    /* renamed from: b */
    public final boolean f72910b;

    /* renamed from: c */
    public final boolean f72911c;

    /* renamed from: g */
    public static final Map<Class<?>, List<SubscriberMethod>> f72906g = new ConcurrentHashMap();

    /* renamed from: i */
    public static final C13864a[] f72908i = new C13864a[4];

    /* renamed from: com.sunia.HTREnginev2.i5n$a */
    /* loaded from: classes13.dex */
    public static class C13864a {

        /* renamed from: a */
        public final List<SubscriberMethod> f72912a = new ArrayList();

        /* renamed from: b */
        public final Map<Class, Object> f72913b = new HashMap();

        /* renamed from: c */
        public final Map<String, Class> f72914c = new HashMap();

        /* renamed from: d */
        public final StringBuilder f72915d = new StringBuilder(128);

        /* renamed from: e */
        public Class<?> f72916e;

        /* renamed from: f */
        public Class<?> f72917f;

        /* renamed from: g */
        public boolean f72918g;

        /* renamed from: h */
        public SubscriberInfo f72919h;

        /* renamed from: a */
        public boolean m54686a(Method method, Class<?> cls) {
            Object put = this.f72913b.put(cls, method);
            if (put == null) {
                return true;
            }
            if (put instanceof Method) {
                if (!m54687b((Method) put, cls)) {
                    throw new IllegalStateException();
                }
                this.f72913b.put(cls, this);
            }
            return m54687b(method, cls);
        }

        /* renamed from: b */
        public final boolean m54687b(Method method, Class<?> cls) {
            this.f72915d.setLength(0);
            this.f72915d.append(method.getName());
            StringBuilder sb = this.f72915d;
            sb.append('>');
            sb.append(cls.getName());
            String sb2 = this.f72915d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class put = this.f72914c.put(sb2, declaringClass);
            if (put == null || put.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.f72914c.put(sb2, put);
            return false;
        }

        /* renamed from: c */
        public void m54688c(Class<?> cls) {
            this.f72917f = cls;
            this.f72916e = cls;
            this.f72918g = false;
            this.f72919h = null;
        }

        /* renamed from: d */
        public void m54689d() {
            if (this.f72918g) {
                this.f72917f = null;
                return;
            }
            Class<? super Object> superclass = this.f72917f.getSuperclass();
            this.f72917f = superclass;
            String name = superclass.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.") || name.startsWith("androidx.")) {
                this.f72917f = null;
            }
        }

        /* renamed from: e */
        public void m54690e() {
            this.f72912a.clear();
            this.f72913b.clear();
            this.f72914c.clear();
            this.f72915d.setLength(0);
            this.f72916e = null;
            this.f72917f = null;
            this.f72918g = false;
            this.f72919h = null;
        }
    }

    public i5n(List<SubscriberInfoIndex> list, boolean z, boolean z2) {
        this.f72909a = list;
        this.f72910b = z;
        this.f72911c = z2;
    }

    /* renamed from: a */
    public static void m54678a() {
        f72906g.clear();
    }

    /* renamed from: b */
    public List<SubscriberMethod> m54679b(Class<?> cls) {
        Map<Class<?>, List<SubscriberMethod>> map = f72906g;
        List<SubscriberMethod> list = map.get(cls);
        if (list != null) {
            return list;
        }
        List<SubscriberMethod> m54681d = this.f72911c ? m54681d(cls) : m54680c(cls);
        if (!m54681d.isEmpty()) {
            map.put(cls, m54681d);
            return m54681d;
        }
        throw new EventBusException("Subscriber " + cls + " and its super classes have no public methods with the @Subscribe annotation");
    }

    /* renamed from: c */
    public final List<SubscriberMethod> m54680c(Class<?> cls) {
        C13864a m54685h = m54685h();
        m54685h.m54688c(cls);
        while (m54685h.f72917f != null) {
            SubscriberInfo m54684g = m54684g(m54685h);
            m54685h.f72919h = m54684g;
            if (m54684g != null) {
                for (SubscriberMethod subscriberMethod : m54684g.getSubscriberMethods()) {
                    if (m54685h.m54686a(subscriberMethod.f113920a, subscriberMethod.f113922c)) {
                        m54685h.f72912a.add(subscriberMethod);
                    }
                }
            } else {
                m54682e(m54685h);
            }
            m54685h.m54689d();
        }
        return m54683f(m54685h);
    }

    /* renamed from: d */
    public final List<SubscriberMethod> m54681d(Class<?> cls) {
        C13864a m54685h = m54685h();
        m54685h.m54688c(cls);
        while (m54685h.f72917f != null) {
            m54682e(m54685h);
            m54685h.m54689d();
        }
        return m54683f(m54685h);
    }

    /* renamed from: e */
    public final void m54682e(C13864a c13864a) {
        Method[] methods;
        try {
            try {
                methods = c13864a.f72917f.getDeclaredMethods();
            } catch (Throwable unused) {
                methods = c13864a.f72917f.getMethods();
                c13864a.f72918g = true;
            }
            for (Method method : methods) {
                int modifiers = method.getModifiers();
                if ((modifiers & 1) != 0 && (modifiers & f72905f) == 0) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length == 1) {
                        Subscribe subscribe = (Subscribe) method.getAnnotation(Subscribe.class);
                        if (subscribe != null) {
                            Class<?> cls = parameterTypes[0];
                            if (c13864a.m54686a(method, cls)) {
                                c13864a.f72912a.add(new SubscriberMethod(method, cls, subscribe.threadMode(), subscribe.priority(), subscribe.sticky()));
                            }
                        }
                    } else if (this.f72910b && method.isAnnotationPresent(Subscribe.class)) {
                        throw new EventBusException("@Subscribe method " + (method.getDeclaringClass().getName() + "." + method.getName()) + "must have exactly 1 parameter but has " + parameterTypes.length);
                    }
                } else if (this.f72910b && method.isAnnotationPresent(Subscribe.class)) {
                    throw new EventBusException((method.getDeclaringClass().getName() + "." + method.getName()) + " is a illegal @Subscribe method: must be public, non-static, and non-abstract");
                }
            }
        } catch (LinkageError e) {
            String str = "Could not inspect methods of " + c13864a.f72917f.getName();
            throw new EventBusException(this.f72911c ? str + ". Please consider using EventBus annotation processor to avoid reflection." : str + ". Please make this class visible to EventBus annotation processor to avoid reflection.", e);
        }
    }

    /* renamed from: f */
    public final List<SubscriberMethod> m54683f(C13864a c13864a) {
        ArrayList arrayList = new ArrayList(c13864a.f72912a);
        c13864a.m54690e();
        synchronized (f72908i) {
            int i = 0;
            while (true) {
                if (i >= 4) {
                    break;
                }
                C13864a[] c13864aArr = f72908i;
                if (c13864aArr[i] == null) {
                    c13864aArr[i] = c13864a;
                    break;
                }
                i++;
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public final SubscriberInfo m54684g(C13864a c13864a) {
        SubscriberInfo subscriberInfo = c13864a.f72919h;
        if (subscriberInfo != null && subscriberInfo.getSuperSubscriberInfo() != null) {
            SubscriberInfo superSubscriberInfo = c13864a.f72919h.getSuperSubscriberInfo();
            if (c13864a.f72917f == superSubscriberInfo.getSubscriberClass()) {
                return superSubscriberInfo;
            }
        }
        List<SubscriberInfoIndex> list = this.f72909a;
        if (list == null) {
            return null;
        }
        Iterator<SubscriberInfoIndex> it2 = list.iterator();
        while (it2.hasNext()) {
            SubscriberInfo subscriberInfo2 = it2.next().getSubscriberInfo(c13864a.f72917f);
            if (subscriberInfo2 != null) {
                return subscriberInfo2;
            }
        }
        return null;
    }

    /* renamed from: h */
    public final C13864a m54685h() {
        synchronized (f72908i) {
            for (int i = 0; i < 4; i++) {
                C13864a[] c13864aArr = f72908i;
                C13864a c13864a = c13864aArr[i];
                if (c13864a != null) {
                    c13864aArr[i] = null;
                    return c13864a;
                }
            }
            return new C13864a();
        }
    }
}
