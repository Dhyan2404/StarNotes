package org.apache.xerces.parsers;

import com.sunia.HTREnginev2.kdm;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

/* loaded from: classes13.dex */
public final class ObjectFactory {

    /* renamed from: a */
    public static final String f113372a = "xerces.properties";

    /* renamed from: c */
    public static final int f113374c = 80;

    /* renamed from: f */
    public static /* synthetic */ Class f113377f;

    /* renamed from: b */
    public static final boolean f113373b = m70539g();

    /* renamed from: d */
    public static Properties f113375d = null;

    /* renamed from: e */
    public static long f113376e = -1;

    /* loaded from: classes13.dex */
    public static final class ConfigurationError extends Error {
        static final long serialVersionUID = -7285495612271660427L;
        private Exception exception;

        public ConfigurationError(String str, Exception exc) {
            super(str);
            this.exception = exc;
        }

        public Exception getException() {
            return this.exception;
        }
    }

    /* renamed from: a */
    public static Object m70533a(String str, String str2) throws ConfigurationError {
        return m70534b(str, null, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b5, code lost:
    
        if (r3 != null) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00b7, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00c2, code lost:
    
        if (r3 == null) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a3 A[Catch: all -> 0x00bb, Exception -> 0x00bd, TRY_LEAVE, TryCatch #17 {Exception -> 0x00bd, all -> 0x00bb, blocks: (B:30:0x007c, B:33:0x0086, B:38:0x00a3, B:75:0x0093, B:77:0x009a), top: B:29:0x007c }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m70534b(java.lang.String r13, java.lang.String r14, java.lang.String r15) throws org.apache.xerces.parsers.ObjectFactory.ConfigurationError {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.parsers.ObjectFactory.m70534b(java.lang.String, java.lang.String, java.lang.String):java.lang.Object");
    }

    /* renamed from: c */
    public static void m70535c(String str) {
        if (f113373b) {
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("XERCES: ");
            stringBuffer.append(str);
            printStream.println(stringBuffer.toString());
        }
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* renamed from: d */
    public static ClassLoader m70536d() throws ConfigurationError {
        ClassLoader m55198a = kdm.m55198a();
        ClassLoader m55204g = kdm.m55204g();
        for (ClassLoader classLoader = m55204g; m55198a != classLoader; classLoader = kdm.m55202e(classLoader)) {
            if (classLoader == null) {
                return m55198a;
            }
        }
        Class cls = f113377f;
        if (cls == null) {
            cls = class$("org.apache.xerces.parsers.ObjectFactory");
            f113377f = cls;
        }
        ClassLoader classLoader2 = cls.getClassLoader();
        for (ClassLoader classLoader3 = m55204g; classLoader2 != classLoader3; classLoader3 = kdm.m55202e(classLoader3)) {
            if (classLoader3 == null) {
                return classLoader2;
            }
        }
        return m55204g;
    }

    /* renamed from: e */
    public static Object m70537e(String str) throws ConfigurationError {
        BufferedReader bufferedReader;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("META-INF/services/");
        stringBuffer.append(str);
        String stringBuffer2 = stringBuffer.toString();
        ClassLoader m70536d = m70536d();
        InputStream m55203f = kdm.m55203f(m70536d, stringBuffer2);
        if (m55203f == null) {
            Class cls = f113377f;
            if (cls == null) {
                cls = class$("org.apache.xerces.parsers.ObjectFactory");
                f113377f = cls;
            }
            ClassLoader classLoader = cls.getClassLoader();
            if (m70536d != classLoader) {
                m55203f = kdm.m55203f(classLoader, stringBuffer2);
                m70536d = classLoader;
            }
        }
        if (m55203f == null) {
            return null;
        }
        if (f113373b) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("found jar resource=");
            stringBuffer3.append(stringBuffer2);
            stringBuffer3.append(" using ClassLoader: ");
            stringBuffer3.append(m70536d);
            m70535c(stringBuffer3.toString());
        }
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(m55203f, "UTF-8"), 80);
        } catch (UnsupportedEncodingException unused) {
            bufferedReader = new BufferedReader(new InputStreamReader(m55203f), 80);
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
                if (f113373b) {
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append("found in resource, value=");
                    stringBuffer4.append(readLine);
                    m70535c(stringBuffer4.toString());
                }
                return m70540h(readLine, m70536d, false);
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

    /* renamed from: f */
    public static Class m70538f(String str, ClassLoader classLoader, boolean z) throws ClassNotFoundException, ConfigurationError {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            int lastIndexOf = str.lastIndexOf(46);
            securityManager.checkPackageAccess(lastIndexOf != -1 ? str.substring(0, lastIndexOf) : str);
        }
        if (classLoader != null) {
            try {
                return classLoader.loadClass(str);
            } catch (ClassNotFoundException e) {
                if (!z) {
                    throw e;
                }
                Class cls = f113377f;
                if (cls == null) {
                    cls = class$("org.apache.xerces.parsers.ObjectFactory");
                    f113377f = cls;
                }
                ClassLoader classLoader2 = cls.getClassLoader();
                if (classLoader2 != null) {
                    if (classLoader != classLoader2) {
                        return classLoader2.loadClass(str);
                    }
                    throw e;
                }
            }
        }
        return Class.forName(str);
    }

    /* renamed from: g */
    public static boolean m70539g() {
        try {
            String m55205h = kdm.m55205h("xerces.debug");
            if (m55205h != null) {
                return !"false".equals(m55205h);
            }
            return false;
        } catch (SecurityException unused) {
            return false;
        }
    }

    /* renamed from: h */
    public static Object m70540h(String str, ClassLoader classLoader, boolean z) throws ConfigurationError {
        try {
            Class m70538f = m70538f(str, classLoader, z);
            Object newInstance = m70538f.newInstance();
            if (f113373b) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("created new instance of ");
                stringBuffer.append(m70538f);
                stringBuffer.append(" using ClassLoader: ");
                stringBuffer.append(classLoader);
                m70535c(stringBuffer.toString());
            }
            return newInstance;
        } catch (ClassNotFoundException e) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Provider ");
            stringBuffer2.append(str);
            stringBuffer2.append(" not found");
            throw new ConfigurationError(stringBuffer2.toString(), e);
        } catch (Exception e2) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("Provider ");
            stringBuffer3.append(str);
            stringBuffer3.append(" could not be instantiated: ");
            stringBuffer3.append(e2);
            throw new ConfigurationError(stringBuffer3.toString(), e2);
        }
    }
}
