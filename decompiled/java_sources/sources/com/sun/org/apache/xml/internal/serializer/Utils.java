package com.sun.org.apache.xml.internal.serializer;

import java.util.Hashtable;

/* loaded from: classes10.dex */
class Utils {

    /* loaded from: classes10.dex */
    public static class CacheHolder {
        static final Hashtable cache = new Hashtable();

        private CacheHolder() {
        }
    }

    public static Class ClassForName(String str) throws ClassNotFoundException {
        Hashtable hashtable = CacheHolder.cache;
        Object obj = hashtable.get(str);
        if (obj != null) {
            return (Class) obj;
        }
        Class<?> cls = Class.forName(str);
        hashtable.put(str, cls);
        return cls;
    }
}
