package org.apache.xerces.impl.p115dv;

import com.sunia.HTREnginev2.jdm;
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
    public static final String f112270a = "xerces.properties";

    /* renamed from: c */
    public static final int f112272c = 80;

    /* renamed from: f */
    public static /* synthetic */ Class f112275f;

    /* renamed from: b */
    public static final boolean f112271b = m69927g();

    /* renamed from: d */
    public static Properties f112273d = null;

    /* renamed from: e */
    public static long f112274e = -1;

    /* loaded from: classes13.dex */
    public static final class ConfigurationError extends Error {
        static final long serialVersionUID = 8521878292694272124L;
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
    public static Object m69921a(String str, String str2) throws ConfigurationError {
        return m69922b(str, null, str2);
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
    public static java.lang.Object m69922b(java.lang.String r13, java.lang.String r14, java.lang.String r15) throws org.apache.xerces.impl.dv.ObjectFactory.ConfigurationError {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p115dv.ObjectFactory.m69922b(java.lang.String, java.lang.String, java.lang.String):java.lang.Object");
    }

    /* renamed from: c */
    public static void m69923c(String str) {
        if (f112271b) {
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
    public static ClassLoader m69924d() throws ConfigurationError {
        ClassLoader m54906a = jdm.m54906a();
        ClassLoader m54912g = jdm.m54912g();
        for (ClassLoader classLoader = m54912g; m54906a != classLoader; classLoader = jdm.m54910e(classLoader)) {
            if (classLoader == null) {
                return m54906a;
            }
        }
        Class cls = f112275f;
        if (cls == null) {
            cls = class$("org.apache.xerces.impl.dv.ObjectFactory");
            f112275f = cls;
        }
        ClassLoader classLoader2 = cls.getClassLoader();
        for (ClassLoader classLoader3 = m54912g; classLoader2 != classLoader3; classLoader3 = jdm.m54910e(classLoader3)) {
            if (classLoader3 == null) {
                return classLoader2;
            }
        }
        return m54912g;
    }

    /* renamed from: e */
    public static Object m69925e(String str) throws ConfigurationError {
        BufferedReader bufferedReader;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("META-INF/services/");
        stringBuffer.append(str);
        String stringBuffer2 = stringBuffer.toString();
        ClassLoader m69924d = m69924d();
        InputStream m54911f = jdm.m54911f(m69924d, stringBuffer2);
        if (m54911f == null) {
            Class cls = f112275f;
            if (cls == null) {
                cls = class$("org.apache.xerces.impl.dv.ObjectFactory");
                f112275f = cls;
            }
            ClassLoader classLoader = cls.getClassLoader();
            if (m69924d != classLoader) {
                m54911f = jdm.m54911f(classLoader, stringBuffer2);
                m69924d = classLoader;
            }
        }
        if (m54911f == null) {
            return null;
        }
        if (f112271b) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("found jar resource=");
            stringBuffer3.append(stringBuffer2);
            stringBuffer3.append(" using ClassLoader: ");
            stringBuffer3.append(m69924d);
            m69923c(stringBuffer3.toString());
        }
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(m54911f, "UTF-8"), 80);
        } catch (UnsupportedEncodingException unused) {
            bufferedReader = new BufferedReader(new InputStreamReader(m54911f), 80);
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
                if (f112271b) {
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append("found in resource, value=");
                    stringBuffer4.append(readLine);
                    m69923c(stringBuffer4.toString());
                }
                return m69928h(readLine, m69924d, false);
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
    public static Class m69926f(String str, ClassLoader classLoader, boolean z) throws ClassNotFoundException, ConfigurationError {
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
                Class cls = f112275f;
                if (cls == null) {
                    cls = class$("org.apache.xerces.impl.dv.ObjectFactory");
                    f112275f = cls;
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
    public static boolean m69927g() {
        try {
            String m54913h = jdm.m54913h("xerces.debug");
            if (m54913h != null) {
                return !"false".equals(m54913h);
            }
            return false;
        } catch (SecurityException unused) {
            return false;
        }
    }

    /* renamed from: h */
    public static Object m69928h(String str, ClassLoader classLoader, boolean z) throws ConfigurationError {
        try {
            Class m69926f = m69926f(str, classLoader, z);
            Object newInstance = m69926f.newInstance();
            if (f112271b) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("created new instance of ");
                stringBuffer.append(m69926f);
                stringBuffer.append(" using ClassLoader: ");
                stringBuffer.append(classLoader);
                m69923c(stringBuffer.toString());
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
