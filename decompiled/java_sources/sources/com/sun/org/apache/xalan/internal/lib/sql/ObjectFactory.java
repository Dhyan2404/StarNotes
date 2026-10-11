package com.sun.org.apache.xalan.internal.lib.sql;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

/* loaded from: classes10.dex */
class ObjectFactory {
    private static final boolean DEBUG = false;
    private static final String DEFAULT_PROPERTIES_FILENAME = "xalan.properties";
    private static final String SERVICES_PATH = "META-INF/services/";
    private static long fLastModified = -1;
    private static Properties fXalanProperties;

    /* loaded from: classes10.dex */
    public static class ConfigurationError extends Error {
        static final long serialVersionUID = 3273432303767233578L;
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

    private static String findJarServiceProviderName(String str) {
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
        debugPrintln("found jar resource=" + str2 + " using ClassLoader: " + findClassLoader);
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream, "UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream));
        }
        try {
            try {
                String readLine = bufferedReader.readLine();
                try {
                    bufferedReader.close();
                } catch (IOException unused2) {
                }
                if (readLine == null || "".equals(readLine)) {
                    return null;
                }
                debugPrintln("found in resource, value=" + readLine);
                return readLine;
            } catch (IOException unused3) {
                return null;
            }
        } catch (IOException unused4) {
            bufferedReader.close();
            return null;
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException unused5) {
            }
            throw th;
        }
    }

    public static Class findProviderClass(String str, ClassLoader classLoader, boolean z) throws ClassNotFoundException, ConfigurationError {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            int lastIndexOf = str.lastIndexOf(".");
            securityManager.checkPackageAccess(lastIndexOf != -1 ? str.substring(0, lastIndexOf) : str);
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

    public static Class lookUpFactoryClass(String str) throws ConfigurationError {
        return lookUpFactoryClass(str, null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0096, code lost:
    
        if (r15 != null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0098, code lost:
    
        r15.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a3, code lost:
    
        if (r15 == null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00d1, code lost:
    
        if (r15 != null) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00d3, code lost:
    
        r15.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00e2, code lost:
    
        if (r15 == null) goto L68;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0084 A[Catch: all -> 0x009c, Exception -> 0x009e, TRY_LEAVE, TryCatch #16 {Exception -> 0x009e, all -> 0x009c, blocks: (B:21:0x005c, B:24:0x0067, B:29:0x0084, B:53:0x0074, B:55:0x007b), top: B:20:0x005c }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String lookUpFactoryClassName(java.lang.String r13, java.lang.String r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.lib.sql.ObjectFactory.lookUpFactoryClassName(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }

    public static Object newInstance(String str, ClassLoader classLoader, boolean z) throws ConfigurationError {
        try {
            Class findProviderClass = findProviderClass(str, classLoader, z);
            Object newInstance = findProviderClass.newInstance();
            debugPrintln("created new instance of " + findProviderClass + " using ClassLoader: " + classLoader);
            return newInstance;
        } catch (ClassNotFoundException e) {
            throw new ConfigurationError("Provider " + str + " not found", e);
        } catch (Exception e2) {
            throw new ConfigurationError("Provider " + str + " could not be instantiated: " + e2, e2);
        }
    }

    public static Object createObject(String str, String str2, String str3) throws ConfigurationError {
        Class lookUpFactoryClass = lookUpFactoryClass(str, str2, str3);
        if (lookUpFactoryClass != null) {
            try {
                Object newInstance = lookUpFactoryClass.newInstance();
                debugPrintln("created new instance of factory " + str);
                return newInstance;
            } catch (Exception e) {
                throw new ConfigurationError("Provider for factory " + str + " could not be instantiated: " + e, e);
            }
        }
        throw new ConfigurationError("Provider for " + str + " cannot be found", null);
    }

    public static Class lookUpFactoryClass(String str, String str2, String str3) throws ConfigurationError {
        String lookUpFactoryClassName = lookUpFactoryClassName(str, str2, str3);
        ClassLoader findClassLoader = findClassLoader();
        if (lookUpFactoryClassName != null) {
            str3 = lookUpFactoryClassName;
        }
        try {
            Class findProviderClass = findProviderClass(str3, findClassLoader, true);
            debugPrintln("created new instance of " + findProviderClass + " using ClassLoader: " + findClassLoader);
            return findProviderClass;
        } catch (ClassNotFoundException e) {
            throw new ConfigurationError("Provider " + str3 + " not found", e);
        } catch (Exception e2) {
            throw new ConfigurationError("Provider " + str3 + " could not be instantiated: " + e2, e2);
        }
    }
}
