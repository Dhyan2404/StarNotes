package org.xml.sax.helpers;

/* loaded from: classes16.dex */
class NewInstance {
    private static final boolean DO_FALLBACK = true;
    static /* synthetic */ Class class$org$xml$sax$helpers$NewInstance;

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public static ClassLoader getClassLoader() {
        ClassLoader contextClassLoader = SecuritySupport.getContextClassLoader();
        if (contextClassLoader != null) {
            return contextClassLoader;
        }
        Class cls = class$org$xml$sax$helpers$NewInstance;
        if (cls == null) {
            cls = class$("org.xml.sax.helpers.NewInstance");
            class$org$xml$sax$helpers$NewInstance = cls;
        }
        return cls.getClassLoader();
    }

    public static Object newInstance(ClassLoader classLoader, String str) throws ClassNotFoundException, IllegalAccessException, InstantiationException {
        Class cls;
        Class<?> loadClass;
        if (classLoader != null) {
            try {
                loadClass = classLoader.loadClass(str);
            } catch (ClassNotFoundException unused) {
                if (class$org$xml$sax$helpers$NewInstance == null) {
                    cls = class$("org.xml.sax.helpers.NewInstance");
                    class$org$xml$sax$helpers$NewInstance = cls;
                } else {
                    cls = class$org$xml$sax$helpers$NewInstance;
                }
                ClassLoader classLoader2 = cls.getClassLoader();
                if (classLoader2 != null) {
                    loadClass = classLoader2.loadClass(str);
                }
            }
            return loadClass.newInstance();
        }
        loadClass = Class.forName(str);
        return loadClass.newInstance();
    }
}
