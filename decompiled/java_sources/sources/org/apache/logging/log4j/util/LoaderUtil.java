package org.apache.logging.log4j.util;

import com.sunia.HTREnginev2.c6j;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;

/* loaded from: classes12.dex */
public final class LoaderUtil {
    public static final String IGNORE_TCCL_PROPERTY = "log4j.ignoreTCL";

    /* renamed from: a */
    public static final SecurityManager f111268a;

    /* renamed from: b */
    public static Boolean f111269b;

    /* renamed from: c */
    public static final boolean f111270c;

    /* renamed from: d */
    public static final PrivilegedAction<ClassLoader> f111271d;

    /* renamed from: org.apache.logging.log4j.util.LoaderUtil$b */
    /* loaded from: classes12.dex */
    public static class C19405b implements PrivilegedAction<ClassLoader> {
        public C19405b() {
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ClassLoader run() {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader != null) {
                return contextClassLoader;
            }
            ClassLoader classLoader = LoaderUtil.class.getClassLoader();
            return (classLoader != null || LoaderUtil.f111270c) ? classLoader : ClassLoader.getSystemClassLoader();
        }
    }

    /* renamed from: org.apache.logging.log4j.util.LoaderUtil$c */
    /* loaded from: classes12.dex */
    public static class C19406c {

        /* renamed from: a */
        public final ClassLoader f111272a;

        /* renamed from: b */
        public final URL f111273b;

        public C19406c(final ClassLoader classLoader, final URL url) {
            this.f111272a = classLoader;
            this.f111273b = url;
        }

        /* renamed from: a */
        public ClassLoader m68651a() {
            return this.f111272a;
        }

        /* renamed from: b */
        public URL m68652b() {
            return this.f111273b;
        }

        public boolean equals(final Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            C19406c c19406c = (C19406c) o;
            ClassLoader classLoader = this.f111272a;
            if (classLoader == null ? c19406c.f111272a != null : !classLoader.equals(c19406c.f111272a)) {
                return false;
            }
            URL url = this.f111273b;
            return url == null ? c19406c.f111273b == null : url.equals(c19406c.f111273b);
        }

        public int hashCode() {
            return Objects.hashCode(this.f111272a) + Objects.hashCode(this.f111273b);
        }
    }

    static {
        SecurityManager securityManager = System.getSecurityManager();
        f111268a = securityManager;
        f111271d = new C19405b();
        boolean z = false;
        if (securityManager == null) {
            f111270c = false;
            return;
        }
        try {
            securityManager.checkPermission(new RuntimePermission("getClassLoader"));
        } catch (SecurityException unused) {
            z = true;
        }
        f111270c = z;
    }

    /* renamed from: b */
    public static void m68647b(ClassLoader loader, Collection<ClassLoader> loaders) {
        if (loader == null || !loaders.add(loader)) {
            return;
        }
        m68647b(loader.getParent(), loaders);
    }

    /* renamed from: c */
    public static Collection<C19406c> m68648c(final String resource) {
        ClassLoader[] classLoaderArr = new ClassLoader[3];
        classLoaderArr[0] = getThreadContextClassLoader();
        classLoaderArr[1] = LoaderUtil.class.getClassLoader();
        classLoaderArr[2] = f111270c ? null : ClassLoader.getSystemClassLoader();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (int i = 0; i < 3; i++) {
            ClassLoader classLoader = classLoaderArr[i];
            if (classLoader != null) {
                try {
                    Enumeration<URL> resources = classLoader.getResources(resource);
                    while (resources.hasMoreElements()) {
                        linkedHashSet.add(new C19406c(classLoader, resources.nextElement()));
                    }
                } catch (IOException e) {
                    c6j.m53396c(e);
                }
            }
        }
        return linkedHashSet;
    }

    /* renamed from: d */
    public static boolean m68649d() {
        if (f111269b == null) {
            String stringProperty = PropertiesUtil.getProperties().getStringProperty(IGNORE_TCCL_PROPERTY, null);
            f111269b = Boolean.valueOf((stringProperty == null || "false".equalsIgnoreCase(stringProperty.trim())) ? false : true);
        }
        return f111269b.booleanValue();
    }

    public static Collection<URL> findResources(final String resource) {
        Collection<C19406c> m68648c = m68648c(resource);
        LinkedHashSet linkedHashSet = new LinkedHashSet(m68648c.size());
        Iterator<C19406c> it2 = m68648c.iterator();
        while (it2.hasNext()) {
            linkedHashSet.add(it2.next().m68652b());
        }
        return linkedHashSet;
    }

    public static ClassLoader[] getClassLoaders() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ClassLoader threadContextClassLoader = getThreadContextClassLoader();
        if (threadContextClassLoader != null) {
            linkedHashSet.add(threadContextClassLoader);
        }
        m68647b(LoaderUtil.class.getClassLoader(), linkedHashSet);
        m68647b(threadContextClassLoader == null ? null : threadContextClassLoader.getParent(), linkedHashSet);
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        if (systemClassLoader != null) {
            linkedHashSet.add(systemClassLoader);
        }
        return (ClassLoader[]) linkedHashSet.toArray(new ClassLoader[linkedHashSet.size()]);
    }

    public static ClassLoader getThreadContextClassLoader() {
        if (f111270c) {
            return LoaderUtil.class.getClassLoader();
        }
        return (ClassLoader) (f111268a == null ? f111271d.run() : AccessController.doPrivileged(f111271d));
    }

    public static boolean isClassAvailable(final String className) {
        try {
            return loadClass(className) != null;
        } catch (ClassNotFoundException | LinkageError unused) {
            return false;
        } catch (Throwable th) {
            c6j.m53395b("Unknown error checking for existence of class: " + className, th);
            return false;
        }
    }

    public static Class<?> loadClass(final String className) throws ClassNotFoundException {
        if (m68649d()) {
            return Class.forName(className);
        }
        try {
            ClassLoader threadContextClassLoader = getThreadContextClassLoader();
            if (threadContextClassLoader != null) {
                return threadContextClassLoader.loadClass(className);
            }
        } catch (Throwable unused) {
        }
        return Class.forName(className);
    }

    public static <T> T newCheckedInstanceOf(final String className, final Class<T> clazz) throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, InstantiationException, IllegalAccessException {
        return clazz.cast(newInstanceOf(className));
    }

    public static <T> T newCheckedInstanceOfProperty(String str, Class<T> cls) throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, InstantiationException, IllegalAccessException {
        String stringProperty = PropertiesUtil.getProperties().getStringProperty(str);
        if (stringProperty == null) {
            return null;
        }
        return (T) newCheckedInstanceOf(stringProperty, cls);
    }

    public static <T> T newInstanceOf(final Class<T> clazz) throws InstantiationException, IllegalAccessException, InvocationTargetException {
        try {
            return clazz.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (NoSuchMethodException unused) {
            return clazz.newInstance();
        }
    }

    public static <T> T newInstanceOf(String str) throws ClassNotFoundException, IllegalAccessException, InstantiationException, NoSuchMethodException, InvocationTargetException {
        return (T) newInstanceOf(loadClass(str));
    }
}
