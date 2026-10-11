package androidx.lifecycle;

import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Deprecated
/* renamed from: androidx.lifecycle.a */
/* loaded from: classes3.dex */
public final class C1153a {

    /* renamed from: c */
    public static C1153a f7991c = new C1153a();

    /* renamed from: d */
    public static final int f7992d = 0;

    /* renamed from: e */
    public static final int f7993e = 1;

    /* renamed from: f */
    public static final int f7994f = 2;

    /* renamed from: a */
    public final Map<Class<?>, a> f7995a = new HashMap();

    /* renamed from: b */
    public final Map<Class<?>, Boolean> f7996b = new HashMap();

    @Deprecated
    /* renamed from: androidx.lifecycle.a$a */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a */
        public final Map<Lifecycle.Event, List<b>> f7997a = new HashMap();

        /* renamed from: b */
        public final Map<b, Lifecycle.Event> f7998b;

        public a(Map<b, Lifecycle.Event> map) {
            this.f7998b = map;
            for (Map.Entry<b, Lifecycle.Event> entry : map.entrySet()) {
                Lifecycle.Event value = entry.getValue();
                List<b> list = this.f7997a.get(value);
                if (list == null) {
                    list = new ArrayList<>();
                    this.f7997a.put(value, list);
                }
                list.add(entry.getKey());
            }
        }

        /* renamed from: b */
        public static void m4942b(List<b> list, LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).m4944a(lifecycleOwner, event, obj);
                }
            }
        }

        /* renamed from: a */
        public void m4943a(LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            m4942b(this.f7997a.get(event), lifecycleOwner, event, obj);
            m4942b(this.f7997a.get(Lifecycle.Event.ON_ANY), lifecycleOwner, event, obj);
        }
    }

    @Deprecated
    /* renamed from: androidx.lifecycle.a$b */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a */
        public final int f7999a;

        /* renamed from: b */
        public final Method f8000b;

        public b(int i, Method method) {
            this.f7999a = i;
            this.f8000b = method;
            method.setAccessible(true);
        }

        /* renamed from: a */
        public void m4944a(LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            try {
                int i = this.f7999a;
                if (i == 0) {
                    this.f8000b.invoke(obj, new Object[0]);
                } else if (i == 1) {
                    this.f8000b.invoke(obj, lifecycleOwner);
                } else {
                    if (i != 2) {
                        return;
                    }
                    this.f8000b.invoke(obj, lifecycleOwner, event);
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f7999a == bVar.f7999a && this.f8000b.getName().equals(bVar.f8000b.getName());
        }

        public int hashCode() {
            return (this.f7999a * 31) + this.f8000b.getName().hashCode();
        }
    }

    /* renamed from: a */
    public final a m4937a(Class<?> cls, @Nullable Method[] methodArr) {
        int i;
        a m4939c;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (m4939c = m4939c(superclass)) != null) {
            hashMap.putAll(m4939c.f7998b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<b, Lifecycle.Event> entry : m4939c(cls2).f7998b.entrySet()) {
                m4941e(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = m4938b(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!LifecycleOwner.class.isAssignableFrom(parameterTypes[0])) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                Lifecycle.Event value = onLifecycleEvent.value();
                if (parameterTypes.length > 1) {
                    if (!Lifecycle.Event.class.isAssignableFrom(parameterTypes[1])) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (value != Lifecycle.Event.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                m4941e(hashMap, new b(i, method), value, cls);
                z = true;
            }
        }
        a aVar = new a(hashMap);
        this.f7995a.put(cls, aVar);
        this.f7996b.put(cls, Boolean.valueOf(z));
        return aVar;
    }

    /* renamed from: b */
    public final Method[] m4938b(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* renamed from: c */
    public a m4939c(Class<?> cls) {
        a aVar = this.f7995a.get(cls);
        return aVar != null ? aVar : m4937a(cls, null);
    }

    /* renamed from: d */
    public boolean m4940d(Class<?> cls) {
        Boolean bool = this.f7996b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] m4938b = m4938b(cls);
        for (Method method : m4938b) {
            if (((OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class)) != null) {
                m4937a(cls, m4938b);
                return true;
            }
        }
        this.f7996b.put(cls, Boolean.FALSE);
        return false;
    }

    /* renamed from: e */
    public final void m4941e(Map<b, Lifecycle.Event> map, b bVar, Lifecycle.Event event, Class<?> cls) {
        Lifecycle.Event event2 = map.get(bVar);
        if (event2 == null || event == event2) {
            if (event2 == null) {
                map.put(bVar, event);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + bVar.f8000b.getName() + CloudStorageConstants.OPERATION_IN + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + event2 + ", new value " + event);
    }
}
