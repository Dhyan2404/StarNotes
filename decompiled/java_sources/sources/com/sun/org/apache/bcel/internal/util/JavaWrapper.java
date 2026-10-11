package com.sun.org.apache.bcel.internal.util;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* loaded from: classes10.dex */
public class JavaWrapper {
    private java.lang.ClassLoader loader;

    public JavaWrapper(java.lang.ClassLoader classLoader) {
        this.loader = classLoader;
    }

    public static void _main(String[] strArr) throws Exception {
        if (strArr.length == 0) {
            System.out.println("Missing class name.");
            return;
        }
        String str = strArr[0];
        int length = strArr.length - 1;
        String[] strArr2 = new String[length];
        System.arraycopy(strArr, 1, strArr2, 0, length);
        new JavaWrapper().runMain(str, strArr2);
    }

    private static java.lang.ClassLoader getClassLoader() {
        String property = System.getProperty("bcel.classloader");
        if (property == null || "".equals(property)) {
            property = "com.sun.org.apache.bcel.internal.util.ClassLoader";
        }
        try {
            return (java.lang.ClassLoader) Class.forName(property).newInstance();
        } catch (Exception e) {
            throw new RuntimeException(e.toString());
        }
    }

    public void runMain(String str, String[] strArr) throws ClassNotFoundException {
        try {
            Method method = this.loader.loadClass(str).getMethod("_main", strArr.getClass());
            int modifiers = method.getModifiers();
            Class<?> returnType = method.getReturnType();
            if (!Modifier.isPublic(modifiers) || !Modifier.isStatic(modifiers) || Modifier.isAbstract(modifiers) || returnType != Void.TYPE) {
                throw new NoSuchMethodException();
            }
            try {
                method.invoke(null, strArr);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (NoSuchMethodException unused) {
            System.out.println("In class " + str + ": public static void _main(String[] argv) is not defined");
        }
    }

    public JavaWrapper() {
        this(getClassLoader());
    }
}
