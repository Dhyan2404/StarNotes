package org.slf4j.helpers;

/* loaded from: classes16.dex */
public final class Util {

    /* renamed from: a */
    public static C20475b f116066a;

    /* renamed from: b */
    public static boolean f116067b;

    /* renamed from: org.slf4j.helpers.Util$b */
    /* loaded from: classes16.dex */
    public static final class C20475b extends SecurityManager {
        public C20475b() {
        }

        @Override // java.lang.SecurityManager
        public Class<?>[] getClassContext() {
            return super.getClassContext();
        }
    }

    /* renamed from: a */
    public static C20475b m71939a() {
        C20475b c20475b = f116066a;
        if (c20475b != null) {
            return c20475b;
        }
        if (f116067b) {
            return null;
        }
        C20475b m71940b = m71940b();
        f116066a = m71940b;
        f116067b = true;
        return m71940b;
    }

    /* renamed from: b */
    public static C20475b m71940b() {
        try {
            return new C20475b();
        } catch (SecurityException unused) {
            return null;
        }
    }

    public static Class<?> getCallingClass() {
        int i;
        C20475b m71939a = m71939a();
        if (m71939a == null) {
            return null;
        }
        Class<?>[] classContext = m71939a.getClassContext();
        String name = Util.class.getName();
        int i2 = 0;
        while (i2 < classContext.length && !name.equals(classContext[i2].getName())) {
            i2++;
        }
        if (i2 >= classContext.length || (i = i2 + 2) >= classContext.length) {
            throw new IllegalStateException("Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen");
        }
        return classContext[i];
    }

    public static final void report(String str, Throwable th) {
        System.err.println(str);
        System.err.println("Reported exception:");
        th.printStackTrace();
    }

    public static boolean safeGetBooleanSystemProperty(String str) {
        String safeGetSystemProperty = safeGetSystemProperty(str);
        if (safeGetSystemProperty == null) {
            return false;
        }
        return safeGetSystemProperty.equalsIgnoreCase("true");
    }

    public static String safeGetSystemProperty(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null input");
        }
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }

    public static final void report(String str) {
        System.err.println("SLF4J: " + str);
    }
}
