package com.sun.org.apache.html.internal.dom;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

/* loaded from: classes10.dex */
class ObjectFactory {
    private static final boolean DEBUG = false;
    private static final String DEFAULT_PROPERTIES_FILENAME = "xerces.properties";
    private static long fLastModified = -1;
    private static Properties fXercesProperties;

    /* loaded from: classes10.dex */
    public static class ConfigurationError extends Error {
        private Exception exception;

        public ConfigurationError(String str, Exception exc) {
            super(str);
            this.exception = exc;
        }

        public Exception getException() {
            return this.exception;
        }
    }

    public static Object createObject(String str, String str2) throws ConfigurationError {
        return createObject(str, null, str2);
    }

    private static void debugPrintln(String str) {
    }

    public static ClassLoader findClassLoader() throws ConfigurationError {
        SecuritySupport securitySupport = SecuritySupport.getInstance();
        ClassLoader contextClassLoader = securitySupport.getContextClassLoader();
        ClassLoader systemClassLoader = securitySupport.getSystemClassLoader();
        for (ClassLoader classLoader = systemClassLoader; contextClassLoader != classLoader; classLoader = securitySupport.getParentClassLoader(classLoader)) {
            if (classLoader == null) {
                return contextClassLoader;
            }
        }
        ClassLoader classLoader2 = ObjectFactory.class.getClassLoader();
        for (ClassLoader classLoader3 = systemClassLoader; classLoader2 != classLoader3; classLoader3 = securitySupport.getParentClassLoader(classLoader3)) {
            if (classLoader3 == null) {
                return classLoader2;
            }
        }
        return systemClassLoader;
    }

    private static Object findJarServiceProvider(String str) throws ConfigurationError {
        BufferedReader bufferedReader;
        ClassLoader classLoader;
        SecuritySupport securitySupport = SecuritySupport.getInstance();
        String str2 = "META-INF/services/" + str;
        ClassLoader findClassLoader = findClassLoader();
        InputStream resourceAsStream = securitySupport.getResourceAsStream(findClassLoader, str2);
        if (resourceAsStream == null && findClassLoader != (classLoader = ObjectFactory.class.getClassLoader())) {
            resourceAsStream = securitySupport.getResourceAsStream(classLoader, str2);
            findClassLoader = classLoader;
        }
        if (resourceAsStream == null) {
            return null;
        }
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream, "UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream));
        }
        try {
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            if (readLine == null || "".equals(readLine)) {
                return null;
            }
            return newInstance(readLine, findClassLoader, false);
        } catch (IOException unused2) {
            return null;
        }
    }

    public static Class findProviderClass(String str, ClassLoader classLoader, boolean z) throws ClassNotFoundException, ConfigurationError {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPackageAccess(str);
        }
        if (classLoader == null) {
            return Class.forName(str);
        }
        try {
            return classLoader.loadClass(str);
        } catch (ClassNotFoundException e) {
            if (!z) {
                throw e;
            }
            ClassLoader classLoader2 = ObjectFactory.class.getClassLoader();
            if (classLoader2 == null) {
                return Class.forName(str);
            }
            if (classLoader != classLoader2) {
                return classLoader2.loadClass(str);
            }
            throw e;
        }
    }

    public static Object newInstance(String str, ClassLoader classLoader, boolean z) throws ConfigurationError {
        try {
            return findProviderClass(str, classLoader, z).newInstance();
        } catch (ClassNotFoundException e) {
            throw new ConfigurationError("Provider " + str + " not found", e);
        } catch (Exception e2) {
            throw new ConfigurationError("Provider " + str + " could not be instantiated: " + e2, e2);
        }
    }

    public static Object createObject(String str, String str2, String str3) throws ConfigurationError {
        SecuritySupport securitySupport = SecuritySupport.getInstance();
        ClassLoader findClassLoader = findClassLoader();
        try {
            String systemProperty = securitySupport.getSystemProperty(str);
            if (systemProperty != null) {
                return newInstance(systemProperty, findClassLoader, true);
            }
        } catch (SecurityException unused) {
        }
        if (str3 != null) {
            return newInstance(str3, findClassLoader, true);
        }
        throw new ConfigurationError("Provider for " + str + " cannot be found", null);
    }
}
