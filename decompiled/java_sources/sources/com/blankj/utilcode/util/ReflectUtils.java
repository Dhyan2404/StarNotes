package com.blankj.utilcode.util;

import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ReflectUtils {

    /* renamed from: a */
    public final Class<?> f13917a;

    /* renamed from: b */
    public final Object f13918b;

    /* loaded from: classes3.dex */
    public static class ReflectException extends RuntimeException {
        private static final long serialVersionUID = 858774075258496016L;

        public ReflectException(String str) {
            super(str);
        }

        public ReflectException(String str, Throwable th) {
            super(str, th);
        }

        public ReflectException(Throwable th) {
            super(th);
        }
    }

    /* renamed from: com.blankj.utilcode.util.ReflectUtils$a */
    /* loaded from: classes3.dex */
    public class C1848a implements Comparator<Constructor<?>> {
        public C1848a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Constructor<?> constructor, Constructor<?> constructor2) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            Class<?>[] parameterTypes2 = constructor2.getParameterTypes();
            int length = parameterTypes.length;
            for (int i = 0; i < length; i++) {
                if (!parameterTypes[i].equals(parameterTypes2[i])) {
                    return ReflectUtils.this.m8288u(parameterTypes[i]).isAssignableFrom(ReflectUtils.this.m8288u(parameterTypes2[i])) ? 1 : -1;
                }
            }
            return 0;
        }
    }

    /* renamed from: com.blankj.utilcode.util.ReflectUtils$b */
    /* loaded from: classes3.dex */
    public class C1849b implements Comparator<Method> {
        public C1849b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Method method, Method method2) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            Class<?>[] parameterTypes2 = method2.getParameterTypes();
            int length = parameterTypes.length;
            for (int i = 0; i < length; i++) {
                if (!parameterTypes[i].equals(parameterTypes2[i])) {
                    return ReflectUtils.this.m8288u(parameterTypes[i]).isAssignableFrom(ReflectUtils.this.m8288u(parameterTypes2[i])) ? 1 : -1;
                }
            }
            return 0;
        }
    }

    /* renamed from: com.blankj.utilcode.util.ReflectUtils$c */
    /* loaded from: classes3.dex */
    public class C1850c implements InvocationHandler {

        /* renamed from: e */
        public final /* synthetic */ boolean f13921e;

        public C1850c(boolean z) {
            this.f13921e = z;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            try {
                return ReflectUtils.reflect(ReflectUtils.this.f13918b).method(name, objArr).get();
            } catch (ReflectException e) {
                if (this.f13921e) {
                    Map map = (Map) ReflectUtils.this.f13918b;
                    int length = objArr == null ? 0 : objArr.length;
                    if (length == 0 && name.startsWith("get")) {
                        return map.get(ReflectUtils.m8273o(name.substring(3)));
                    }
                    if (length == 0 && name.startsWith("is")) {
                        return map.get(ReflectUtils.m8273o(name.substring(2)));
                    }
                    if (length == 1 && name.startsWith(ExtensionNamespaceContext.EXSLT_SET_PREFIX)) {
                        map.put(ReflectUtils.m8273o(name.substring(3)), objArr[0]);
                        return null;
                    }
                }
                throw e;
            }
        }
    }

    /* renamed from: com.blankj.utilcode.util.ReflectUtils$d */
    /* loaded from: classes3.dex */
    public static class C1851d {
    }

    public ReflectUtils(Class<?> cls) {
        this(cls, cls);
    }

    /* renamed from: f */
    public static Class<?> m8271f(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new ReflectException(e);
        }
    }

    /* renamed from: g */
    public static Class<?> m8272g(String str, ClassLoader classLoader) {
        try {
            return Class.forName(str, true, classLoader);
        } catch (ClassNotFoundException e) {
            throw new ReflectException(e);
        }
    }

    /* renamed from: o */
    public static String m8273o(String str) {
        int length = str.length();
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            return str.toLowerCase();
        }
        return str.substring(0, 1).toLowerCase() + str.substring(1);
    }

    public static ReflectUtils reflect(String str) throws ReflectException {
        return reflect(m8271f(str));
    }

    /* renamed from: d */
    public final <T extends AccessibleObject> T m8274d(T t) {
        if (t == null) {
            return null;
        }
        if (t instanceof Member) {
            Member member = (Member) t;
            if (Modifier.isPublic(member.getModifiers()) && Modifier.isPublic(member.getDeclaringClass().getModifiers())) {
                return t;
            }
        }
        if (!t.isAccessible()) {
            t.setAccessible(true);
        }
        return t;
    }

    /* renamed from: e */
    public final Method m8275e(String str, Class<?>[] clsArr) throws NoSuchMethodException {
        Class<?> m8286s = m8286s();
        try {
            return m8286s.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            do {
                try {
                    return m8286s.getDeclaredMethod(str, clsArr);
                } catch (NoSuchMethodException unused2) {
                    m8286s = m8286s.getSuperclass();
                }
            } while (m8286s != null);
            throw new NoSuchMethodException();
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof ReflectUtils) && this.f13918b.equals(((ReflectUtils) obj).get());
    }

    public ReflectUtils field(String str) {
        try {
            Field m8278j = m8278j(str);
            return new ReflectUtils(m8278j.getType(), m8278j.get(this.f13918b));
        } catch (IllegalAccessException e) {
            throw new ReflectException(e);
        }
    }

    public <T> T get() {
        return (T) this.f13918b;
    }

    /* renamed from: h */
    public final Field m8276h(String str) {
        Class<?> m8286s = m8286s();
        try {
            return (Field) m8274d(m8286s.getField(str));
        } catch (NoSuchFieldException e) {
            do {
                try {
                    return (Field) m8274d(m8286s.getDeclaredField(str));
                } catch (NoSuchFieldException unused) {
                    m8286s = m8286s.getSuperclass();
                    if (m8286s == null) {
                        throw new ReflectException(e);
                    }
                }
            } while (m8286s == null);
            throw new ReflectException(e);
        }
    }

    public int hashCode() {
        return this.f13918b.hashCode();
    }

    /* renamed from: i */
    public final Class<?>[] m8277i(Object... objArr) {
        if (objArr == null) {
            return new Class[0];
        }
        Class<?>[] clsArr = new Class[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            clsArr[i] = obj == null ? C1851d.class : obj.getClass();
        }
        return clsArr;
    }

    /* renamed from: j */
    public final Field m8278j(String str) throws IllegalAccessException {
        Field m8276h = m8276h(str);
        if ((m8276h.getModifiers() & 16) == 16) {
            try {
                Field declaredField = Field.class.getDeclaredField("modifiers");
                declaredField.setAccessible(true);
                declaredField.setInt(m8276h, m8276h.getModifiers() & (-17));
            } catch (NoSuchFieldException unused) {
                m8276h.setAccessible(true);
            }
        }
        return m8276h;
    }

    /* renamed from: k */
    public final boolean m8279k(Method method, String str, Class<?>[] clsArr) {
        return method.getName().equals(str) && m8280l(method.getParameterTypes(), clsArr);
    }

    /* renamed from: l */
    public final boolean m8280l(Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (clsArr.length != clsArr2.length) {
            return false;
        }
        for (int i = 0; i < clsArr2.length; i++) {
            if (clsArr2[i] != C1851d.class && !m8288u(clsArr[i]).isAssignableFrom(m8288u(clsArr2[i]))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: m */
    public final ReflectUtils m8281m(Method method, Object obj, Object... objArr) {
        try {
            m8274d(method);
            if (method.getReturnType() != Void.TYPE) {
                return reflect(method.invoke(obj, objArr));
            }
            method.invoke(obj, objArr);
            return reflect(obj);
        } catch (Exception e) {
            throw new ReflectException(e);
        }
    }

    public ReflectUtils method(String str) throws ReflectException {
        return method(str, new Object[0]);
    }

    /* renamed from: n */
    public final ReflectUtils m8282n(Constructor<?> constructor, Object... objArr) {
        try {
            return new ReflectUtils(constructor.getDeclaringClass(), ((Constructor) m8274d(constructor)).newInstance(objArr));
        } catch (Exception e) {
            throw new ReflectException(e);
        }
    }

    public ReflectUtils newInstance() {
        return newInstance(new Object[0]);
    }

    /* renamed from: p */
    public final Method m8283p(String str, Class<?>[] clsArr) throws NoSuchMethodException {
        Class<?> m8286s = m8286s();
        ArrayList arrayList = new ArrayList();
        for (Method method : m8286s.getMethods()) {
            if (m8279k(method, str, clsArr)) {
                arrayList.add(method);
            }
        }
        if (!arrayList.isEmpty()) {
            m8285r(arrayList);
            return arrayList.get(0);
        }
        do {
            for (Method method2 : m8286s.getDeclaredMethods()) {
                if (m8279k(method2, str, clsArr)) {
                    arrayList.add(method2);
                }
            }
            if (!arrayList.isEmpty()) {
                m8285r(arrayList);
                return arrayList.get(0);
            }
            m8286s = m8286s.getSuperclass();
        } while (m8286s != null);
        throw new NoSuchMethodException("No similar method " + str + " with params " + Arrays.toString(clsArr) + " could be found on type " + m8286s() + ".");
    }

    public <P> P proxy(Class<P> cls) {
        return (P) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new C1850c(this.f13918b instanceof Map));
    }

    /* renamed from: q */
    public final void m8284q(List<Constructor<?>> list) {
        Collections.sort(list, new C1848a());
    }

    /* renamed from: r */
    public final void m8285r(List<Method> list) {
        Collections.sort(list, new C1849b());
    }

    /* renamed from: s */
    public final Class<?> m8286s() {
        return this.f13917a;
    }

    /* renamed from: t */
    public final Object m8287t(Object obj) {
        return obj instanceof ReflectUtils ? ((ReflectUtils) obj).get() : obj;
    }

    public String toString() {
        return this.f13918b.toString();
    }

    /* renamed from: u */
    public final Class<?> m8288u(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        if (cls.isPrimitive()) {
            if (Boolean.TYPE == cls) {
                return Boolean.class;
            }
            if (Integer.TYPE == cls) {
                return Integer.class;
            }
            if (Long.TYPE == cls) {
                return Long.class;
            }
            if (Short.TYPE == cls) {
                return Short.class;
            }
            if (Byte.TYPE == cls) {
                return Byte.class;
            }
            if (Double.TYPE == cls) {
                return Double.class;
            }
            if (Float.TYPE == cls) {
                return Float.class;
            }
            if (Character.TYPE == cls) {
                return Character.class;
            }
            if (Void.TYPE == cls) {
                return Void.class;
            }
        }
        return cls;
    }

    public ReflectUtils(Class<?> cls, Object obj) {
        this.f13917a = cls;
        this.f13918b = obj;
    }

    public static ReflectUtils reflect(String str, ClassLoader classLoader) throws ReflectException {
        return reflect(m8272g(str, classLoader));
    }

    public ReflectUtils method(String str, Object... objArr) throws ReflectException {
        Class<?>[] m8277i = m8277i(objArr);
        try {
            try {
                return m8281m(m8275e(str, m8277i), this.f13918b, objArr);
            } catch (NoSuchMethodException e) {
                throw new ReflectException(e);
            }
        } catch (NoSuchMethodException unused) {
            return this.m8281m(this.m8283p(str, m8277i), this.f13918b, objArr);
        }
    }

    public ReflectUtils newInstance(Object... objArr) {
        Class<?>[] m8277i = m8277i(objArr);
        try {
            return m8282n(m8286s().getDeclaredConstructor(m8277i), objArr);
        } catch (NoSuchMethodException e) {
            ArrayList arrayList = new ArrayList();
            for (Constructor<?> constructor : this.m8286s().getDeclaredConstructors()) {
                if (this.m8280l(constructor.getParameterTypes(), m8277i)) {
                    arrayList.add(constructor);
                }
            }
            if (!arrayList.isEmpty()) {
                this.m8284q(arrayList);
                return this.m8282n(arrayList.get(0), objArr);
            }
            throw new ReflectException(e);
        }
    }

    public static ReflectUtils reflect(Class<?> cls) throws ReflectException {
        return new ReflectUtils(cls);
    }

    public static ReflectUtils reflect(Object obj) throws ReflectException {
        return new ReflectUtils(obj == null ? Object.class : obj.getClass(), obj);
    }

    public ReflectUtils field(String str, Object obj) {
        try {
            m8278j(str).set(this.f13918b, m8287t(obj));
            return this;
        } catch (Exception e) {
            throw new ReflectException(e);
        }
    }
}
