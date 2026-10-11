package com.twelvemonkeys.lang;

import androidx.appcompat.widget.ActivityChooserModel;
import com.google.android.material.motion.MotionUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/* loaded from: classes10.dex */
public final class SystemUtil {
    public static String STD_PROPERTIES = ".properties";
    public static String XML_PROPERTIES = ".xml";

    /* renamed from: com.twelvemonkeys.lang.SystemUtil$a */
    /* loaded from: classes10.dex */
    public static class C16983a implements Cloneable {
    }

    /* renamed from: com.twelvemonkeys.lang.SystemUtil$b */
    /* loaded from: classes10.dex */
    public static class C16984b implements PrivilegedAction<Void> {
        @Override // java.security.PrivilegedAction
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void run() {
            return null;
        }
    }

    /* renamed from: com.twelvemonkeys.lang.SystemUtil$c */
    /* loaded from: classes10.dex */
    public static class C16985c extends FilterInputStream {
        public C16985c(InputStream inputStream) {
            super(inputStream);
        }
    }

    /* renamed from: a */
    public static Class m60732a(String str, boolean z, ClassLoader classLoader) throws ClassNotFoundException {
        if (classLoader == null) {
            classLoader = Thread.currentThread().getContextClassLoader();
        }
        return Class.forName(str, z, classLoader);
    }

    /* renamed from: b */
    public static InputStream m60733b(String str, boolean z) {
        InputStream c16985c;
        try {
            if (!z) {
                File file = new File(str);
                if (!file.exists()) {
                    return null;
                }
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    if (str.endsWith(XML_PROPERTIES)) {
                        return new C16985c(fileInputStream);
                    }
                } catch (FileNotFoundException unused) {
                }
                return fileInputStream;
            }
            File file2 = new File(str + STD_PROPERTIES);
            if (file2.exists()) {
                c16985c = new FileInputStream(file2);
            } else {
                File file3 = new File(str + XML_PROPERTIES);
                if (!file3.exists()) {
                    return null;
                }
                c16985c = new C16985c(new FileInputStream(file3));
            }
            return c16985c;
        } catch (FileNotFoundException unused2) {
            return null;
        }
    }

    /* renamed from: c */
    public static InputStream m60734c(ClassLoader classLoader, String str, boolean z) {
        C16985c c16985c;
        if (z) {
            InputStream resourceAsStream = classLoader.getResourceAsStream(str + STD_PROPERTIES);
            if (resourceAsStream != null) {
                return resourceAsStream;
            }
            InputStream resourceAsStream2 = classLoader.getResourceAsStream(str + XML_PROPERTIES);
            if (resourceAsStream2 == null) {
                return resourceAsStream2;
            }
            c16985c = new C16985c(resourceAsStream2);
        } else {
            InputStream resourceAsStream3 = classLoader.getResourceAsStream(str);
            if (resourceAsStream3 == null || !str.endsWith(XML_PROPERTIES)) {
                return resourceAsStream3;
            }
            c16985c = new C16985c(resourceAsStream3);
        }
        return c16985c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object clone(Cloneable cloneable) throws CloneNotSupportedException {
        Method method = null;
        if (cloneable == 0) {
            return null;
        }
        if (cloneable instanceof Object[]) {
            return ((Object[]) cloneable).clone();
        }
        if (cloneable.getClass().isArray()) {
            int length = Array.getLength(cloneable);
            Object newInstance = Array.newInstance(cloneable.getClass().getComponentType(), length);
            System.arraycopy(cloneable, 0, newInstance, 0, length);
            return newInstance;
        }
        try {
            Class<?> cls = cloneable.getClass();
            do {
                try {
                    method = cls.getDeclaredMethod("clone", new Class[0]);
                    break;
                } catch (NoSuchMethodException unused) {
                    cls = cls.getSuperclass();
                }
            } while (cls != null);
            if (method == null) {
                throw new CloneNotSupportedException(cloneable.getClass().getName());
            }
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            return method.invoke(cloneable, new Object[0]);
        } catch (IllegalAccessException unused2) {
            throw new CloneNotSupportedException(cloneable.getClass().getName());
        } catch (SecurityException e) {
            CloneNotSupportedException cloneNotSupportedException = new CloneNotSupportedException(cloneable.getClass().getName());
            cloneNotSupportedException.initCause(e);
            throw cloneNotSupportedException;
        } catch (InvocationTargetException e2) {
            if (e2.getTargetException() instanceof CloneNotSupportedException) {
                throw ((CloneNotSupportedException) e2.getTargetException());
            }
            if (e2.getTargetException() instanceof RuntimeException) {
                throw ((RuntimeException) e2.getTargetException());
            }
            if (e2.getTargetException() instanceof Error) {
                throw ((Error) e2.getTargetException());
            }
            throw new CloneNotSupportedException(cloneable.getClass().getName());
        }
    }

    /* renamed from: d */
    public static boolean m60735d(String str, ClassLoader classLoader) {
        try {
            m60732a(str, true, classLoader);
            return true;
        } catch (ClassNotFoundException | LinkageError | SecurityException unused) {
            return false;
        }
    }

    /* renamed from: e */
    public static boolean m60736e(String str, String str2, ClassLoader classLoader) {
        return m60732a(str, false, classLoader).getField(str2) != null;
    }

    /* renamed from: f */
    public static boolean m60737f(String str, String str2, Class[] clsArr, ClassLoader classLoader) {
        return m60732a(str, false, classLoader).getMethod(str2, clsArr) != null;
    }

    /* renamed from: g */
    public static Properties m60738g(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("InputStream == null!");
        }
        Properties properties = new Properties();
        properties.load(inputStream);
        return properties;
    }

    public static boolean isClassAvailable(String str) {
        return m60735d(str, null);
    }

    public static boolean isFieldAvailable(String str, String str2) {
        return m60736e(str, str2, null);
    }

    public static boolean isMethodAvailable(String str, String str2) {
        return m60737f(str, str2, null, null);
    }

    public static Properties loadProperties(Class cls, String str) throws IOException {
        InputStream m60734c;
        String replace = !StringUtil.isEmpty(str) ? str : cls.getName().replace('.', '/');
        boolean z = str == null || str.indexOf(46) < 0;
        if ((cls != null && (m60734c = m60734c(cls.getClassLoader(), replace, z)) != null) || (m60734c = m60734c(ClassLoader.getSystemClassLoader(), replace, z)) != null || (m60734c = m60733b(replace, z)) != null) {
            try {
                return m60738g(m60734c);
            } finally {
                try {
                    m60734c.close();
                } catch (IOException unused) {
                }
            }
        }
        if (z) {
            throw new FileNotFoundException(replace + ".properties or " + replace + ActivityChooserModel.f1436y);
        }
        throw new FileNotFoundException(replace);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Cloneable, int[]] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Cloneable, int[][]] */
    public static void main(String[] strArr) throws CloneNotSupportedException {
        System.out.println("clone: " + ((String[]) strArr.clone()).length + " (" + strArr.length + MotionUtils.f31762d);
        System.out.println("copy: " + ((String[]) clone(strArr)).length + " (" + strArr.length + MotionUtils.f31762d);
        System.out.println("Copies: " + ((int[]) clone(new int[]{1, 2, 3})).length + " (3" + MotionUtils.f31762d);
        ?? r6 = {new int[]{1}, new int[]{2, 3}, new int[]{4, 5, 6}};
        int[][] iArr = (int[][]) clone(r6);
        System.out.println("Copies: " + iArr.length + " (3" + MotionUtils.f31762d);
        System.out.println("Copies0: " + iArr[0].length + " (" + r6[0].length + MotionUtils.f31762d);
        System.out.println("Copies1: " + iArr[1].length + " (" + r6[1].length + MotionUtils.f31762d);
        System.out.println("Copies2: " + iArr[2].length + " (" + r6[2].length + MotionUtils.f31762d);
        HashMap hashMap = new HashMap();
        for (Object[] objArr : strArr) {
            hashMap.put(objArr, objArr);
        }
        Map map = (Map) clone(hashMap);
        System.out.println("Map : " + hashMap);
        System.out.println("Copy: " + map);
        C16983a c16983a = new C16983a();
        Cloneable cloneable = (Cloneable) clone(c16983a);
        System.out.println("cloneable: " + c16983a);
        System.out.println("clone: " + cloneable);
        AccessController.doPrivileged(new C16984b(), AccessController.getContext());
    }

    public static boolean isClassAvailable(String str, Class cls) {
        return m60735d(str, cls != null ? cls.getClassLoader() : null);
    }

    public static boolean isFieldAvailable(String str, String str2, Class cls) {
        return m60736e(str, str2, cls != null ? cls.getClassLoader() : null);
    }

    public static boolean isMethodAvailable(String str, String str2, Class[] clsArr) {
        return m60737f(str, str2, clsArr, null);
    }

    public static boolean isMethodAvailable(String str, String str2, Class[] clsArr, Class cls) {
        return m60737f(str, str2, clsArr, cls != null ? cls.getClassLoader() : null);
    }

    public static Properties loadProperties(Class cls) throws IOException {
        return loadProperties(cls, null);
    }

    public static Properties loadProperties(String str) throws IOException {
        return loadProperties(null, str);
    }
}
