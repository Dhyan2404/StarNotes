package com.sun.org.apache.xpath.internal.compiler;

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
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            if (readLine != null && !"".equals(readLine)) {
                debugPrintln("found in resource, value=" + readLine);
                return readLine;
            }
        } catch (IOException unused2) {
        }
        return null;
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

    /* JADX WARN: Removed duplicated region for block: B:19:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0084 A[Catch: all -> 0x0098, Exception -> 0x009a, TRY_LEAVE, TryCatch #2 {Exception -> 0x009a, blocks: (B:20:0x005c, B:23:0x0067, B:28:0x0084, B:41:0x0074, B:43:0x007b), top: B:19:0x005c, outer: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String lookUpFactoryClassName(java.lang.String r13, java.lang.String r14, java.lang.String r15) {
        /*
            com.sun.org.apache.xpath.internal.compiler.SecuritySupport r15 = com.sun.org.apache.xpath.internal.compiler.SecuritySupport.getInstance()
            java.lang.String r0 = r15.getSystemProperty(r13)     // Catch: java.lang.SecurityException -> L1f
            if (r0 == 0) goto L1f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.SecurityException -> L1f
            r1.<init>()     // Catch: java.lang.SecurityException -> L1f
            java.lang.String r2 = "found system property, value="
            r1.append(r2)     // Catch: java.lang.SecurityException -> L1f
            r1.append(r0)     // Catch: java.lang.SecurityException -> L1f
            java.lang.String r1 = r1.toString()     // Catch: java.lang.SecurityException -> L1f
            debugPrintln(r1)     // Catch: java.lang.SecurityException -> L1f
            return r0
        L1f:
            r0 = 0
            if (r14 != 0) goto Lab
            r1 = 0
            r2 = -1
            java.lang.String r4 = "java.home"
            java.lang.String r4 = r15.getSystemProperty(r4)     // Catch: java.lang.SecurityException -> L53
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.SecurityException -> L53
            r5.<init>()     // Catch: java.lang.SecurityException -> L53
            r5.append(r4)     // Catch: java.lang.SecurityException -> L53
            java.lang.String r4 = java.io.File.separator     // Catch: java.lang.SecurityException -> L53
            r5.append(r4)     // Catch: java.lang.SecurityException -> L53
            java.lang.String r6 = "lib"
            r5.append(r6)     // Catch: java.lang.SecurityException -> L53
            r5.append(r4)     // Catch: java.lang.SecurityException -> L53
            java.lang.String r4 = "xalan.properties"
            r5.append(r4)     // Catch: java.lang.SecurityException -> L53
            java.lang.String r14 = r5.toString()     // Catch: java.lang.SecurityException -> L53
            java.io.File r4 = new java.io.File     // Catch: java.lang.SecurityException -> L53
            r4.<init>(r14)     // Catch: java.lang.SecurityException -> L53
            boolean r5 = r15.getFileExists(r4)     // Catch: java.lang.SecurityException -> L54
            goto L59
        L53:
            r4 = r0
        L54:
            com.sun.org.apache.xpath.internal.compiler.ObjectFactory.fLastModified = r2
            com.sun.org.apache.xpath.internal.compiler.ObjectFactory.fXalanProperties = r0
            r5 = r1
        L59:
            java.lang.Class<com.sun.org.apache.xpath.internal.compiler.ObjectFactory> r6 = com.sun.org.apache.xpath.internal.compiler.ObjectFactory.class
            monitor-enter(r6)
            long r7 = com.sun.org.apache.xpath.internal.compiler.ObjectFactory.fLastModified     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            r9 = 0
            int r9 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            r10 = 1
            if (r9 < 0) goto L79
            if (r5 == 0) goto L72
            long r11 = r15.getLastModified(r4)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            com.sun.org.apache.xpath.internal.compiler.ObjectFactory.fLastModified = r11     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            int r7 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
            if (r7 >= 0) goto L72
            goto L81
        L72:
            if (r5 != 0) goto L82
            com.sun.org.apache.xpath.internal.compiler.ObjectFactory.fLastModified = r2     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            com.sun.org.apache.xpath.internal.compiler.ObjectFactory.fXalanProperties = r0     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            goto L82
        L79:
            if (r5 == 0) goto L82
            long r7 = r15.getLastModified(r4)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            com.sun.org.apache.xpath.internal.compiler.ObjectFactory.fLastModified = r7     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
        L81:
            r1 = r10
        L82:
            if (r1 == 0) goto L9e
            java.util.Properties r1 = new java.util.Properties     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            r1.<init>()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            com.sun.org.apache.xpath.internal.compiler.ObjectFactory.fXalanProperties = r1     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            java.io.FileInputStream r15 = r15.getFileInputStream(r4)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            java.util.Properties r1 = com.sun.org.apache.xpath.internal.compiler.ObjectFactory.fXalanProperties     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            r1.load(r15)     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            r15.close()     // Catch: java.lang.Throwable -> L98 java.lang.Exception -> L9a
            goto L9e
        L98:
            r13 = move-exception
            goto La9
        L9a:
            com.sun.org.apache.xpath.internal.compiler.ObjectFactory.fXalanProperties = r0     // Catch: java.lang.Throwable -> L98
            com.sun.org.apache.xpath.internal.compiler.ObjectFactory.fLastModified = r2     // Catch: java.lang.Throwable -> L98
        L9e:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L98
            java.util.Properties r15 = com.sun.org.apache.xpath.internal.compiler.ObjectFactory.fXalanProperties
            if (r15 == 0) goto Lc3
            java.lang.String r15 = r15.getProperty(r13)
            r0 = r15
            goto Lc3
        La9:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L98
            throw r13
        Lab:
            java.io.File r1 = new java.io.File     // Catch: java.lang.Exception -> Lc3
            r1.<init>(r14)     // Catch: java.lang.Exception -> Lc3
            java.io.FileInputStream r15 = r15.getFileInputStream(r1)     // Catch: java.lang.Exception -> Lc3
            java.util.Properties r1 = new java.util.Properties     // Catch: java.lang.Exception -> Lc3
            r1.<init>()     // Catch: java.lang.Exception -> Lc3
            r1.load(r15)     // Catch: java.lang.Exception -> Lc3
            r15.close()     // Catch: java.lang.Exception -> Lc3
            java.lang.String r0 = r1.getProperty(r13)     // Catch: java.lang.Exception -> Lc3
        Lc3:
            if (r0 == 0) goto Le2
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r15 = "found in "
            r13.append(r15)
            r13.append(r14)
            java.lang.String r14 = ", value="
            r13.append(r14)
            r13.append(r0)
            java.lang.String r13 = r13.toString()
            debugPrintln(r13)
            return r0
        Le2:
            java.lang.String r13 = findJarServiceProviderName(r13)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xpath.internal.compiler.ObjectFactory.lookUpFactoryClassName(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
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
