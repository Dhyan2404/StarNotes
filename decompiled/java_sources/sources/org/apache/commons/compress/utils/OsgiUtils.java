package org.apache.commons.compress.utils;

/* loaded from: classes12.dex */
public class OsgiUtils {

    /* renamed from: a */
    public static final boolean f107334a = m67166a(OsgiUtils.class.getClassLoader().getClass());

    /* renamed from: a */
    public static boolean m67166a(Class<?> cls) {
        while (true) {
            if (cls == null) {
                return false;
            }
            if (cls.getName().equals("org.osgi.framework.BundleReference")) {
                return true;
            }
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (m67166a(cls2)) {
                    return true;
                }
            }
            cls = cls.getSuperclass();
        }
    }

    public static boolean isRunningInOsgiEnvironment() {
        return f107334a;
    }
}
