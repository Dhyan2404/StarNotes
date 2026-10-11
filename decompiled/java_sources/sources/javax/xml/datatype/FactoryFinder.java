package javax.xml.datatype;

import com.google.common.reflect.ClassPath;
import com.sunia.HTREnginev2.ldm;
import java.io.File;
import java.io.PrintStream;
import java.net.URL;
import java.util.Properties;
import org.apache.commons.lang3.SystemUtils;

/* loaded from: classes5.dex */
public final class FactoryFinder {

    /* renamed from: a */
    public static final String f98018a = "javax.xml.datatype.FactoryFinder";

    /* renamed from: b */
    public static boolean f98019b = false;

    /* renamed from: c */
    public static Properties f98020c = new Properties();

    /* renamed from: d */
    public static boolean f98021d = true;

    /* renamed from: e */
    public static final int f98022e = 80;

    /* renamed from: f */
    public static /* synthetic */ Class f98023f;

    /* loaded from: classes5.dex */
    public static class ConfigurationError extends Error {
        private static final long serialVersionUID = -3644413026244211347L;
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
            String m55412e = ldm.m55412e("jaxp.debug");
            if (m55412e == null || "false".equals(m55412e)) {
                z = false;
            }
            f98019b = z;
        } catch (Exception unused) {
            f98019b = false;
        }
    }

    /* renamed from: a */
    public static void m61507a(String str) {
        if (f98019b) {
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("javax.xml.datatype.FactoryFinder:");
            stringBuffer.append(str);
            printStream.println(stringBuffer.toString());
        }
    }

    /* renamed from: b */
    public static Object m61508b(String str, String str2) throws ConfigurationError {
        ClassLoader m61509c = m61509c();
        try {
            String m55412e = ldm.m55412e(str);
            if (m55412e != null && m55412e.length() > 0) {
                if (f98019b) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("found ");
                    stringBuffer.append(m55412e);
                    stringBuffer.append(" in the system property ");
                    stringBuffer.append(str);
                    m61507a(stringBuffer.toString());
                }
                return m61511e(m55412e, m61509c);
            }
        } catch (SecurityException unused) {
        }
        try {
            String m55412e2 = ldm.m55412e(SystemUtils.f107424e);
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(m55412e2);
            String str3 = File.separator;
            stringBuffer2.append(str3);
            stringBuffer2.append("lib");
            stringBuffer2.append(str3);
            stringBuffer2.append("jaxp.properties");
            String stringBuffer3 = stringBuffer2.toString();
            if (f98021d) {
                synchronized (f98020c) {
                    if (f98021d) {
                        File file = new File(stringBuffer3);
                        f98021d = false;
                        if (ldm.m55408a(file)) {
                            if (f98019b) {
                                StringBuffer stringBuffer4 = new StringBuffer();
                                stringBuffer4.append("Read properties file ");
                                stringBuffer4.append(file);
                                m61507a(stringBuffer4.toString());
                            }
                            f98020c.load(ldm.m55410c(file));
                        }
                    }
                }
            }
            String property = f98020c.getProperty(str);
            if (f98019b) {
                StringBuffer stringBuffer5 = new StringBuffer();
                stringBuffer5.append("found ");
                stringBuffer5.append(property);
                stringBuffer5.append(" in $java.home/jaxp.properties");
                m61507a(stringBuffer5.toString());
            }
            if (property != null) {
                return m61511e(property, m61509c);
            }
        } catch (Exception e) {
            if (f98019b) {
                e.printStackTrace();
            }
        }
        Object m61510d = m61510d(str);
        if (m61510d != null) {
            return m61510d;
        }
        if (str2 == null) {
            StringBuffer stringBuffer6 = new StringBuffer();
            stringBuffer6.append("Provider for ");
            stringBuffer6.append(str);
            stringBuffer6.append(" cannot be found");
            throw new ConfigurationError(stringBuffer6.toString(), null);
        }
        if (f98019b) {
            StringBuffer stringBuffer7 = new StringBuffer();
            stringBuffer7.append("loaded from fallback value: ");
            stringBuffer7.append(str2);
            m61507a(stringBuffer7.toString());
        }
        return m61511e(str2, m61509c);
    }

    /* renamed from: c */
    public static ClassLoader m61509c() throws ConfigurationError {
        ClassLoader m55409b = ldm.m55409b();
        if (f98019b) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Using context class loader: ");
            stringBuffer.append(m55409b);
            m61507a(stringBuffer.toString());
        }
        if (m55409b == null) {
            Class cls = f98023f;
            if (cls == null) {
                cls = class$(f98018a);
                f98023f = cls;
            }
            m55409b = cls.getClassLoader();
            if (f98019b) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Using the class loader of FactoryFinder: ");
                stringBuffer2.append(m55409b);
                m61507a(stringBuffer2.toString());
            }
        }
        return m55409b;
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0026, code lost:
    
        if (r0 == null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
    
        if (r0 == null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002e, code lost:
    
        r0 = r0.getClassLoader();
        r2 = com.sunia.HTREnginev2.ldm.m55411d(r0, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
    
        r0 = class$(javax.xml.datatype.FactoryFinder.f98018a);
        javax.xml.datatype.FactoryFinder.f98023f = r0;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m61510d(java.lang.String r6) throws javax.xml.datatype.FactoryFinder.ConfigurationError {
        /*
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r1 = "META-INF/services/"
            r0.append(r1)
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            java.lang.ClassLoader r0 = com.sunia.HTREnginev2.ldm.m55409b()
            java.lang.String r1 = "javax.xml.datatype.FactoryFinder"
            if (r0 == 0) goto L24
            java.io.InputStream r2 = com.sunia.HTREnginev2.ldm.m55411d(r0, r6)
            if (r2 != 0) goto L36
            java.lang.Class r0 = javax.xml.datatype.FactoryFinder.f98023f
            if (r0 != 0) goto L2e
            goto L28
        L24:
            java.lang.Class r0 = javax.xml.datatype.FactoryFinder.f98023f
            if (r0 != 0) goto L2e
        L28:
            java.lang.Class r0 = class$(r1)
            javax.xml.datatype.FactoryFinder.f98023f = r0
        L2e:
            java.lang.ClassLoader r0 = r0.getClassLoader()
            java.io.InputStream r2 = com.sunia.HTREnginev2.ldm.m55411d(r0, r6)
        L36:
            r1 = 0
            if (r2 != 0) goto L3a
            return r1
        L3a:
            boolean r3 = javax.xml.datatype.FactoryFinder.f98019b
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
            m61507a(r6)
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
            java.lang.String r6 = r3.readLine()     // Catch: java.lang.Throwable -> La2 java.io.IOException -> La7
            r3.close()     // Catch: java.io.IOException -> L7a
        L7a:
            if (r6 == 0) goto La1
            java.lang.String r2 = ""
            boolean r2 = r2.equals(r6)
            if (r2 != 0) goto La1
            boolean r1 = javax.xml.datatype.FactoryFinder.f98019b
            if (r1 == 0) goto L9c
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            r1.<init>()
            java.lang.String r2 = "found in resource, value="
            r1.append(r2)
            r1.append(r6)
            java.lang.String r1 = r1.toString()
            m61507a(r1)
        L9c:
            java.lang.Object r6 = m61511e(r6, r0)
            return r6
        La1:
            return r1
        La2:
            r6 = move-exception
            r3.close()     // Catch: java.io.IOException -> La6
        La6:
            throw r6
        La7:
            r3.close()     // Catch: java.io.IOException -> Laa
        Laa:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.xml.datatype.FactoryFinder.m61510d(java.lang.String):java.lang.Object");
    }

    /* renamed from: e */
    public static Object m61511e(String str, ClassLoader classLoader) throws ConfigurationError {
        try {
            Class<?> cls = classLoader == null ? Class.forName(str) : classLoader.loadClass(str);
            if (f98019b) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Loaded ");
                stringBuffer.append(str);
                stringBuffer.append(" from ");
                stringBuffer.append(m61512f(cls));
                m61507a(stringBuffer.toString());
            }
            return cls.newInstance();
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

    /* renamed from: f */
    public static String m61512f(Class cls) {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(cls.getName().replace('.', '/'));
            stringBuffer.append(ClassPath.f35080d);
            String stringBuffer2 = stringBuffer.toString();
            ClassLoader classLoader = cls.getClassLoader();
            URL resource = classLoader != null ? classLoader.getResource(stringBuffer2) : ClassLoader.getSystemResource(stringBuffer2);
            return resource != null ? resource.toString() : "unknown location";
        } catch (ThreadDeath e) {
            throw e;
        } catch (VirtualMachineError e2) {
            throw e2;
        } catch (Throwable th) {
            if (!f98019b) {
                return "unknown location";
            }
            th.printStackTrace();
            return "unknown location";
        }
    }
}
