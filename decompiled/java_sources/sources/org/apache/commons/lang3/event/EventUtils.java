package org.apache.commons.lang3.event;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.reflect.MethodUtils;

/* loaded from: classes12.dex */
public class EventUtils {

    /* renamed from: org.apache.commons.lang3.event.EventUtils$a */
    /* loaded from: classes12.dex */
    public static class C18956a implements InvocationHandler {

        /* renamed from: e */
        public final Object f107543e;

        /* renamed from: f */
        public final String f107544f;

        /* renamed from: g */
        public final Set<String> f107545g;

        public C18956a(Object obj, String str, String[] strArr) {
            this.f107543e = obj;
            this.f107544f = str;
            this.f107545g = new HashSet(Arrays.asList(strArr));
        }

        /* renamed from: a */
        public final boolean m67318a(Method method) {
            return MethodUtils.getAccessibleMethod(this.f107543e.getClass(), this.f107544f, method.getParameterTypes()) != null;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (this.f107545g.isEmpty() || this.f107545g.contains(method.getName())) {
                return m67318a(method) ? MethodUtils.invokeMethod(this.f107543e, this.f107544f, objArr) : MethodUtils.invokeMethod(this.f107543e, this.f107544f);
            }
            return null;
        }
    }

    public static <L> void addEventListener(Object obj, Class<L> cls, L l) {
        try {
            MethodUtils.invokeMethod(obj, "add" + cls.getSimpleName(), l);
        } catch (IllegalAccessException unused) {
            throw new IllegalArgumentException("Class " + obj.getClass().getName() + " does not have an accessible add" + cls.getSimpleName() + " method which takes a parameter of type " + cls.getName() + ".");
        } catch (NoSuchMethodException unused2) {
            throw new IllegalArgumentException("Class " + obj.getClass().getName() + " does not have a public add" + cls.getSimpleName() + " method which takes a parameter of type " + cls.getName() + ".");
        } catch (InvocationTargetException e) {
            throw new RuntimeException("Unable to add listener.", e.getCause());
        }
    }

    public static <L> void bindEventsToMethod(Object obj, String str, Object obj2, Class<L> cls, String... strArr) {
        addEventListener(obj2, cls, cls.cast(Proxy.newProxyInstance(obj.getClass().getClassLoader(), new Class[]{cls}, new C18956a(obj, str, strArr))));
    }
}
