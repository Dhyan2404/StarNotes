package javax.xml.parsers;

import com.sunia.HTREnginev2.cdm;
import java.io.File;
import java.io.PrintStream;
import java.util.Properties;
import org.apache.commons.lang3.SystemUtils;

/* loaded from: classes5.dex */
public final class FactoryFinder {

    /* renamed from: a */
    public static boolean f98024a = false;

    /* renamed from: b */
    public static Properties f98025b = new Properties();

    /* renamed from: c */
    public static boolean f98026c = true;

    /* renamed from: d */
    public static final int f98027d = 80;

    /* renamed from: e */
    public static /* synthetic */ Class f98028e;

    /* loaded from: classes5.dex */
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

    static {
        boolean z = true;
        try {
            String m53435e = cdm.m53435e("jaxp.debug");
            if (m53435e == null || "false".equals(m53435e)) {
                z = false;
            }
            f98024a = z;
        } catch (SecurityException unused) {
            f98024a = false;
        }
    }

    /* renamed from: a */
    public static void m61513a(String str) {
        if (f98024a) {
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("JAXP: ");
            stringBuffer.append(str);
            printStream.println(stringBuffer.toString());
        }
    }

    /* renamed from: b */
    public static Object m61514b(String str, String str2) throws ConfigurationError {
        ClassLoader m53432b = cdm.m53432b();
        if (m53432b == null) {
            Class cls = f98028e;
            if (cls == null) {
                cls = class$("javax.xml.parsers.FactoryFinder");
                f98028e = cls;
            }
            m53432b = cls.getClassLoader();
        }
        if (f98024a) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("find factoryId =");
            stringBuffer.append(str);
            m61513a(stringBuffer.toString());
        }
        try {
            String m53435e = cdm.m53435e(str);
            if (m53435e != null && m53435e.length() > 0) {
                if (f98024a) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("found system property, value=");
                    stringBuffer2.append(m53435e);
                    m61513a(stringBuffer2.toString());
                }
                return m61516d(m53435e, m53432b, true);
            }
        } catch (SecurityException unused) {
        }
        try {
            String m53435e2 = cdm.m53435e(SystemUtils.f107424e);
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(m53435e2);
            String str3 = File.separator;
            stringBuffer3.append(str3);
            stringBuffer3.append("lib");
            stringBuffer3.append(str3);
            stringBuffer3.append("jaxp.properties");
            String stringBuffer4 = stringBuffer3.toString();
            if (f98026c) {
                synchronized (f98025b) {
                    if (f98026c) {
                        File file = new File(stringBuffer4);
                        f98026c = false;
                        if (cdm.m53431a(file)) {
                            if (f98024a) {
                                StringBuffer stringBuffer5 = new StringBuffer();
                                stringBuffer5.append("Read properties file ");
                                stringBuffer5.append(file);
                                m61513a(stringBuffer5.toString());
                            }
                            f98025b.load(cdm.m53433c(file));
                        }
                    }
                }
            }
            String property = f98025b.getProperty(str);
            if (property != null) {
                if (f98024a) {
                    StringBuffer stringBuffer6 = new StringBuffer();
                    stringBuffer6.append("found in $java.home/jaxp.properties, value=");
                    stringBuffer6.append(property);
                    m61513a(stringBuffer6.toString());
                }
                return m61516d(property, m53432b, true);
            }
        } catch (Exception e) {
            if (f98024a) {
                e.printStackTrace();
            }
        }
        Object m61515c = m61515c(str);
        if (m61515c != null) {
            return m61515c;
        }
        if (str2 == null) {
            StringBuffer stringBuffer7 = new StringBuffer();
            stringBuffer7.append("Provider for ");
            stringBuffer7.append(str);
            stringBuffer7.append(" cannot be found");
            throw new ConfigurationError(stringBuffer7.toString(), null);
        }
        if (f98024a) {
            StringBuffer stringBuffer8 = new StringBuffer();
            stringBuffer8.append("loaded from fallback value: ");
            stringBuffer8.append(str2);
            m61513a(stringBuffer8.toString());
        }
        return m61516d(str2, m53432b, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0026, code lost:
    
        if (r0 == null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
    
        if (r0 == null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002e, code lost:
    
        r0 = r0.getClassLoader();
        r2 = com.sunia.HTREnginev2.cdm.m53434d(r0, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
    
        r0 = class$("javax.xml.parsers.FactoryFinder");
        javax.xml.parsers.FactoryFinder.f98028e = r0;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m61515c(java.lang.String r6) throws javax.xml.parsers.FactoryFinder.ConfigurationError {
        /*
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r1 = "META-INF/services/"
            r0.append(r1)
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            java.lang.ClassLoader r0 = com.sunia.HTREnginev2.cdm.m53432b()
            java.lang.String r1 = "javax.xml.parsers.FactoryFinder"
            if (r0 == 0) goto L24
            java.io.InputStream r2 = com.sunia.HTREnginev2.cdm.m53434d(r0, r6)
            if (r2 != 0) goto L36
            java.lang.Class r0 = javax.xml.parsers.FactoryFinder.f98028e
            if (r0 != 0) goto L2e
            goto L28
        L24:
            java.lang.Class r0 = javax.xml.parsers.FactoryFinder.f98028e
            if (r0 != 0) goto L2e
        L28:
            java.lang.Class r0 = class$(r1)
            javax.xml.parsers.FactoryFinder.f98028e = r0
        L2e:
            java.lang.ClassLoader r0 = r0.getClassLoader()
            java.io.InputStream r2 = com.sunia.HTREnginev2.cdm.m53434d(r0, r6)
        L36:
            r1 = 0
            if (r2 != 0) goto L3a
            return r1
        L3a:
            boolean r3 = javax.xml.parsers.FactoryFinder.f98024a
            if (r3 == 0) goto L5a
            java.lang.StringBuffer r3 = new java.lang.StringBuffer
            r3.<init>()
            java.lang.String r4 = "found jar resource="
            r3.append(r4)
            r3.append(r6)
            java.lang.String r6 = " using ClassLoader: "
            r3.append(r6)
            r3.append(r0)
            java.lang.String r6 = r3.toString()
            m61513a(r6)
        L5a:
            r6 = 80
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.io.UnsupportedEncodingException -> L69
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.io.UnsupportedEncodingException -> L69
            java.lang.String r5 = "UTF-8"
            r4.<init>(r2, r5)     // Catch: java.io.UnsupportedEncodingException -> L69
            r3.<init>(r4, r6)     // Catch: java.io.UnsupportedEncodingException -> L69
            goto L73
        L69:
            java.io.BufferedReader r3 = new java.io.BufferedReader
            java.io.InputStreamReader r4 = new java.io.InputStreamReader
            r4.<init>(r2)
            r3.<init>(r4, r6)
        L73:
            java.lang.String r6 = r3.readLine()     // Catch: java.lang.Throwable -> La3 java.io.IOException -> La8
            r3.close()     // Catch: java.io.IOException -> L7a
        L7a:
            if (r6 == 0) goto La2
            java.lang.String r2 = ""
            boolean r2 = r2.equals(r6)
            if (r2 != 0) goto La2
            boolean r1 = javax.xml.parsers.FactoryFinder.f98024a
            if (r1 == 0) goto L9c
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            r1.<init>()
            java.lang.String r2 = "found in resource, value="
            r1.append(r2)
            r1.append(r6)
            java.lang.String r1 = r1.toString()
            m61513a(r1)
        L9c:
            r1 = 0
            java.lang.Object r6 = m61516d(r6, r0, r1)
            return r6
        La2:
            return r1
        La3:
            r6 = move-exception
            r3.close()     // Catch: java.io.IOException -> La7
        La7:
            throw r6
        La8:
            r3.close()     // Catch: java.io.IOException -> Lab
        Lab:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.xml.parsers.FactoryFinder.m61515c(java.lang.String):java.lang.Object");
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0033 A[Catch: ClassNotFoundException -> 0x0009, Exception -> 0x0010, TryCatch #0 {Exception -> 0x0010, blocks: (B:4:0x0004, B:5:0x002b, B:7:0x0033, B:11:0x000b, B:15:0x0015, B:17:0x0019, B:18:0x0021, B:20:0x0027, B:21:0x0050), top: B:2:0x0002 }] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m61516d(java.lang.String r4, java.lang.ClassLoader r5, boolean r6) throws javax.xml.parsers.FactoryFinder.ConfigurationError {
        /*
            java.lang.String r0 = "Provider "
            if (r5 != 0) goto Lb
        L4:
            java.lang.Class r6 = java.lang.Class.forName(r4)     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
            goto L2b
        L9:
            r5 = move-exception
            goto L6e
        Lb:
            java.lang.Class r6 = r5.loadClass(r4)     // Catch: java.lang.Exception -> L10 java.lang.ClassNotFoundException -> L12
            goto L2b
        L10:
            r5 = move-exception
            goto L51
        L12:
            r5 = move-exception
            if (r6 == 0) goto L50
            java.lang.Class r5 = javax.xml.parsers.FactoryFinder.f98028e     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
            if (r5 != 0) goto L21
            java.lang.String r5 = "javax.xml.parsers.FactoryFinder"
            java.lang.Class r5 = class$(r5)     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
            javax.xml.parsers.FactoryFinder.f98028e = r5     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
        L21:
            java.lang.ClassLoader r5 = r5.getClassLoader()     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
            if (r5 == 0) goto L4
            java.lang.Class r6 = r5.loadClass(r4)     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
        L2b:
            java.lang.Object r1 = r6.newInstance()     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
            boolean r2 = javax.xml.parsers.FactoryFinder.f98024a     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
            if (r2 == 0) goto L4f
            java.lang.StringBuffer r2 = new java.lang.StringBuffer     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
            r2.<init>()     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
            java.lang.String r3 = "created new instance of "
            r2.append(r3)     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
            r2.append(r6)     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
            java.lang.String r6 = " using ClassLoader: "
            r2.append(r6)     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
            r2.append(r5)     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
            java.lang.String r5 = r2.toString()     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
            m61513a(r5)     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
        L4f:
            return r1
        L50:
            throw r5     // Catch: java.lang.ClassNotFoundException -> L9 java.lang.Exception -> L10
        L51:
            javax.xml.parsers.FactoryFinder$ConfigurationError r6 = new javax.xml.parsers.FactoryFinder$ConfigurationError
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            r1.<init>()
            r1.append(r0)
            r1.append(r4)
            java.lang.String r4 = " could not be instantiated: "
            r1.append(r4)
            r1.append(r5)
            java.lang.String r4 = r1.toString()
            r6.<init>(r4, r5)
            throw r6
        L6e:
            javax.xml.parsers.FactoryFinder$ConfigurationError r6 = new javax.xml.parsers.FactoryFinder$ConfigurationError
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            r1.<init>()
            r1.append(r0)
            r1.append(r4)
            java.lang.String r4 = " not found"
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            r6.<init>(r4, r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.xml.parsers.FactoryFinder.m61516d(java.lang.String, java.lang.ClassLoader, boolean):java.lang.Object");
    }
}
