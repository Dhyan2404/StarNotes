package com.sunia.HTREnginev2;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes9.dex */
public class lhk<T> {

    /* renamed from: a */
    public final Class<?> f76478a;

    /* renamed from: b */
    public final String f76479b;

    /* renamed from: c */
    public final Class[] f76480c;

    public lhk(Class<?> cls, String str, Class... clsArr) {
        this.f76478a = cls;
        this.f76479b = str;
        this.f76480c = clsArr;
    }

    /* renamed from: b */
    public static Method m55430b(Class<?> cls, String str, Class[] clsArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
            } catch (NoSuchMethodException unused) {
            }
            return method;
        } catch (NoSuchMethodException unused2) {
            return null;
        }
    }

    /* renamed from: a */
    public final Method m55431a(Class<?> cls) {
        Class<?> cls2;
        String str = this.f76479b;
        if (str == null) {
            return null;
        }
        Method m55430b = m55430b(cls, str, this.f76480c);
        if (m55430b == null || (cls2 = this.f76478a) == null || cls2.isAssignableFrom(m55430b.getReturnType())) {
            return m55430b;
        }
        return null;
    }

    /* renamed from: c */
    public Object m55432c(T t, Object... objArr) throws InvocationTargetException {
        Method m55431a = m55431a(t.getClass());
        if (m55431a == null) {
            throw new AssertionError("Method " + this.f76479b + " not supported for object " + t);
        }
        try {
            return m55431a.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + m55431a);
            assertionError.initCause(e);
            throw assertionError;
        }
    }

    /* renamed from: d */
    public Object m55433d(T t, Object... objArr) throws InvocationTargetException {
        Method m55431a = m55431a(t.getClass());
        if (m55431a == null) {
            return null;
        }
        try {
            return m55431a.invoke(t, objArr);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    /* renamed from: e */
    public Object m55434e(T t, Object... objArr) {
        try {
            return m55433d(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    /* renamed from: f */
    public Object m55435f(T t, Object... objArr) {
        try {
            return m55432c(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    /* renamed from: g */
    public boolean m55436g(T t) {
        return m55431a(t.getClass()) != null;
    }
}
