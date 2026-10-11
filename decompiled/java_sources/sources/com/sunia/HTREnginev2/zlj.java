package com.sunia.HTREnginev2;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import org.apache.commons.lang3.ClassUtils;

/* loaded from: classes12.dex */
public abstract class zlj {

    /* renamed from: a */
    public static final int f91932a = 7;

    /* renamed from: b */
    public static final Class<?>[] f91933b = {Byte.TYPE, Short.TYPE, Character.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE};

    /* renamed from: a */
    public static int m58710a(Constructor<?> constructor, Constructor<?> constructor2, Class<?>[] clsArr) {
        return m58712c(C14772a.m58724e(constructor), C14772a.m58724e(constructor2), clsArr);
    }

    /* renamed from: b */
    public static int m58711b(Method method, Method method2, Class<?>[] clsArr) {
        return m58712c(C14772a.m58725f(method), C14772a.m58725f(method2), clsArr);
    }

    /* renamed from: c */
    public static int m58712c(C14772a c14772a, C14772a c14772a2, Class<?>[] clsArr) {
        float m58715f = m58715f(clsArr, c14772a);
        float m58715f2 = m58715f(clsArr, c14772a2);
        if (m58715f < m58715f2) {
            return -1;
        }
        return m58715f2 < m58715f ? 1 : 0;
    }

    /* renamed from: d */
    public static float m58713d(Class<?> cls, Class<?> cls2) {
        if (cls2.isPrimitive()) {
            return m58714e(cls, cls2);
        }
        float f = 0.0f;
        while (true) {
            if (cls != null && !cls2.equals(cls)) {
                if (cls2.isInterface() && ClassUtils.isAssignable(cls, cls2)) {
                    f += 0.25f;
                    break;
                }
                f += 1.0f;
                cls = cls.getSuperclass();
            } else {
                break;
            }
        }
        return cls == null ? f + 1.5f : f;
    }

    /* renamed from: e */
    public static float m58714e(Class<?> cls, Class<?> cls2) {
        float f;
        if (cls.isPrimitive()) {
            f = 0.0f;
        } else {
            cls = ClassUtils.wrapperToPrimitive(cls);
            f = 0.1f;
        }
        int i = 0;
        while (cls != cls2) {
            Class<?>[] clsArr = f91933b;
            if (i >= clsArr.length) {
                break;
            }
            if (cls == clsArr[i]) {
                f += 0.1f;
                if (i < clsArr.length - 1) {
                    cls = clsArr[i + 1];
                }
            }
            i++;
        }
        return f;
    }

    /* renamed from: f */
    public static float m58715f(Class<?>[] clsArr, C14772a c14772a) {
        float m58713d;
        Class<?>[] m58726c = c14772a.m58726c();
        boolean m58727d = c14772a.m58727d();
        int length = m58726c.length;
        if (m58727d) {
            length--;
        }
        long j = length;
        if (clsArr.length < j) {
            return Float.MAX_VALUE;
        }
        boolean z = false;
        float f = 0.0f;
        for (int i = 0; i < j; i++) {
            f += m58713d(clsArr[i], m58726c[i]);
        }
        if (!m58727d) {
            return f;
        }
        boolean z2 = clsArr.length < m58726c.length;
        if (clsArr.length == m58726c.length && clsArr[clsArr.length - 1].isArray()) {
            z = true;
        }
        Class<?> componentType = m58726c[m58726c.length - 1].getComponentType();
        if (z2) {
            m58713d = m58713d(componentType, Object.class);
        } else {
            if (!z) {
                for (int length2 = m58726c.length - 1; length2 < clsArr.length; length2++) {
                    f += m58713d(clsArr[length2], componentType) + 0.001f;
                }
                return f;
            }
            m58713d = m58713d(clsArr[clsArr.length - 1].getComponentType(), componentType);
        }
        return f + m58713d + 0.001f;
    }

    /* renamed from: g */
    public static boolean m58716g(Member member) {
        return (member == null || !Modifier.isPublic(member.getModifiers()) || member.isSynthetic()) ? false : true;
    }

    /* renamed from: h */
    public static boolean m58717h(Constructor<?> constructor, Class<?>[] clsArr) {
        return m58718i(C14772a.m58724e(constructor), clsArr);
    }

    /* renamed from: i */
    public static boolean m58718i(C14772a c14772a, Class<?>[] clsArr) {
        Class<?>[] m58726c = c14772a.m58726c();
        if (ClassUtils.isAssignable(clsArr, m58726c, true)) {
            return true;
        }
        if (!c14772a.m58727d()) {
            return false;
        }
        int i = 0;
        while (i < m58726c.length - 1 && i < clsArr.length) {
            if (!ClassUtils.isAssignable(clsArr[i], m58726c[i], true)) {
                return false;
            }
            i++;
        }
        Class<?> componentType = m58726c[m58726c.length - 1].getComponentType();
        while (i < clsArr.length) {
            if (!ClassUtils.isAssignable(clsArr[i], componentType, true)) {
                return false;
            }
            i++;
        }
        return true;
    }

    /* renamed from: j */
    public static boolean m58719j(Method method, Class<?>[] clsArr) {
        return m58718i(C14772a.m58725f(method), clsArr);
    }

    /* renamed from: k */
    public static boolean m58720k(int i) {
        return (i & 7) == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: l */
    public static boolean m58721l(AccessibleObject accessibleObject) {
        if (accessibleObject != 0 && !accessibleObject.isAccessible()) {
            Member member = (Member) accessibleObject;
            if (!accessibleObject.isAccessible() && Modifier.isPublic(member.getModifiers()) && m58720k(member.getDeclaringClass().getModifiers())) {
                try {
                    accessibleObject.setAccessible(true);
                    return true;
                } catch (SecurityException unused) {
                }
            }
        }
        return false;
    }

    /* renamed from: com.sunia.HTREnginev2.zlj$a */
    /* loaded from: classes12.dex */
    public static final class C14772a {

        /* renamed from: a */
        public final Class<?>[] f91934a;

        /* renamed from: b */
        public final boolean f91935b;

        public C14772a(Method method) {
            this.f91934a = method.getParameterTypes();
            this.f91935b = method.isVarArgs();
        }

        /* renamed from: e */
        public static C14772a m58724e(Constructor<?> constructor) {
            return new C14772a(constructor);
        }

        /* renamed from: f */
        public static C14772a m58725f(Method method) {
            return new C14772a(method);
        }

        /* renamed from: c */
        public Class<?>[] m58726c() {
            return this.f91934a;
        }

        /* renamed from: d */
        public boolean m58727d() {
            return this.f91935b;
        }

        public C14772a(Constructor<?> constructor) {
            this.f91934a = constructor.getParameterTypes();
            this.f91935b = constructor.isVarArgs();
        }
    }
}
