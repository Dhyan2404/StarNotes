package org.apache.xerces.xinclude;

import com.sunia.HTREnginev2.adm;
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
    public static final String f113539a = "xerces.properties";

    /* renamed from: c */
    public static final int f113541c = 80;

    /* renamed from: f */
    public static /* synthetic */ Class f113544f;

    /* renamed from: b */
    public static final boolean f113540b = m70609g();

    /* renamed from: d */
    public static Properties f113542d = null;

    /* renamed from: e */
    public static long f113543e = -1;

    /* loaded from: classes13.dex */
    public static final class ConfigurationError extends Error {
        static final long serialVersionUID = 5061904944269807898L;
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
    public static Object m70603a(String str, String str2) throws ConfigurationError {
        return m70604b(str, null, str2);
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
    public static java.lang.Object m70604b(java.lang.String r13, java.lang.String r14, java.lang.String r15) throws org.apache.xerces.xinclude.ObjectFactory.ConfigurationError {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.xinclude.ObjectFactory.m70604b(java.lang.String, java.lang.String, java.lang.String):java.lang.Object");
    }

    /* renamed from: c */
    public static void m70605c(String str) {
        if (f113540b) {
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
    public static ClassLoader m70606d() throws ConfigurationError {
        ClassLoader m53001a = adm.m53001a();
        ClassLoader m53007g = adm.m53007g();
        for (ClassLoader classLoader = m53007g; m53001a != classLoader; classLoader = adm.m53005e(classLoader)) {
            if (classLoader == null) {
                return m53001a;
            }
        }
        Class cls = f113544f;
        if (cls == null) {
            cls = class$("org.apache.xerces.xinclude.ObjectFactory");
            f113544f = cls;
        }
        ClassLoader classLoader2 = cls.getClassLoader();
        for (ClassLoader classLoader3 = m53007g; classLoader2 != classLoader3; classLoader3 = adm.m53005e(classLoader3)) {
            if (classLoader3 == null) {
                return classLoader2;
            }
        }
        return m53007g;
    }

    /* renamed from: e */
    public static Object m70607e(String str) throws ConfigurationError {
        BufferedReader bufferedReader;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("META-INF/services/");
        stringBuffer.append(str);
        String stringBuffer2 = stringBuffer.toString();
        ClassLoader m70606d = m70606d();
        InputStream m53006f = adm.m53006f(m70606d, stringBuffer2);
        if (m53006f == null) {
            Class cls = f113544f;
            if (cls == null) {
                cls = class$("org.apache.xerces.xinclude.ObjectFactory");
                f113544f = cls;
            }
            ClassLoader classLoader = cls.getClassLoader();
            if (m70606d != classLoader) {
                m53006f = adm.m53006f(classLoader, stringBuffer2);
                m70606d = classLoader;
            }
        }
        if (m53006f == null) {
            return null;
        }
        if (f113540b) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("found jar resource=");
            stringBuffer3.append(stringBuffer2);
            stringBuffer3.append(" using ClassLoader: ");
            stringBuffer3.append(m70606d);
            m70605c(stringBuffer3.toString());
        }
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(m53006f, "UTF-8"), 80);
        } catch (UnsupportedEncodingException unused) {
            bufferedReader = new BufferedReader(new InputStreamReader(m53006f), 80);
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
                if (f113540b) {
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append("found in resource, value=");
                    stringBuffer4.append(readLine);
                    m70605c(stringBuffer4.toString());
                }
                return m70610h(readLine, m70606d, false);
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
    public static Class m70608f(String str, ClassLoader classLoader, boolean z) throws ClassNotFoundException, ConfigurationError {
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
                Class cls = f113544f;
                if (cls == null) {
                    cls = class$("org.apache.xerces.xinclude.ObjectFactory");
                    f113544f = cls;
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
    public static boolean m70609g() {
        try {
            String m53008h = adm.m53008h("xerces.debug");
            if (m53008h != null) {
                return !"false".equals(m53008h);
            }
            return false;
        } catch (SecurityException unused) {
            return false;
        }
    }

    /* renamed from: h */
    public static Object m70610h(String str, ClassLoader classLoader, boolean z) throws ConfigurationError {
        try {
            Class m70608f = m70608f(str, classLoader, z);
            Object newInstance = m70608f.newInstance();
            if (f113540b) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("created new instance of ");
                stringBuffer.append(m70608f);
                stringBuffer.append(" using ClassLoader: ");
                stringBuffer.append(classLoader);
                m70605c(stringBuffer.toString());
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
