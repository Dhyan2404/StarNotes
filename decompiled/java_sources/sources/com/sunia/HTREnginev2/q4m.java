package com.sunia.HTREnginev2;

import com.google.common.reflect.ClassPath;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Properties;
import javax.xml.validation.SchemaFactory;
import org.apache.commons.lang3.SystemUtils;

/* loaded from: classes5.dex */
public final class q4m {

    /* renamed from: b */
    public static final String f81614b = "http://www.w3.org/XML/XMLSchema/v1.0";

    /* renamed from: c */
    public static final String f81615c = "http://www.w3.org/XML/XMLSchema/v1.1";

    /* renamed from: d */
    public static boolean f81616d = false;

    /* renamed from: e */
    public static Properties f81617e = new Properties();

    /* renamed from: f */
    public static boolean f81618f = true;

    /* renamed from: g */
    public static final int f81619g = 80;

    /* renamed from: h */
    public static final Class f81620h;

    /* renamed from: i */
    public static final String f81621i;

    /* renamed from: j */
    public static /* synthetic */ Class f81622j;

    /* renamed from: a */
    public final ClassLoader f81623a;

    /* renamed from: com.sunia.HTREnginev2.q4m$a */
    /* loaded from: classes5.dex */
    public static abstract class AbstractC14280a implements Iterator {

        /* renamed from: e */
        public boolean f81624e;

        public AbstractC14280a() {
            this.f81624e = false;
        }

        /* renamed from: a */
        public abstract Object mo55900a();

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return !this.f81624e;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (this.f81624e) {
                throw new NoSuchElementException();
            }
            this.f81624e = true;
            return mo55900a();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }

        public /* synthetic */ AbstractC14280a(o4m o4mVar) {
            this();
        }
    }

    static {
        boolean z = true;
        try {
            String m54093g = fdm.m54093g("jaxp.debug");
            if (m54093g == null || "false".equals(m54093g)) {
                z = false;
            }
            f81616d = z;
        } catch (Exception unused) {
            f81616d = false;
        }
        Class cls = f81622j;
        if (cls == null) {
            cls = class$("javax.xml.validation.SchemaFactory");
            f81622j = cls;
        }
        f81620h = cls;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("META-INF/services/");
        stringBuffer.append(cls.getName());
        f81621i = stringBuffer.toString();
    }

    public q4m(ClassLoader classLoader) {
        this.f81623a = classLoader;
        if (f81616d) {
            m56612e();
        }
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* renamed from: f */
    public static void m56606f(String str) {
        if (f81616d) {
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("JAXP: ");
            stringBuffer.append(str);
            printStream.println(stringBuffer.toString());
        }
    }

    /* renamed from: i */
    public static String m56607i(Class cls) {
        return m56608j(cls.getName(), cls.getClassLoader());
    }

    /* renamed from: j */
    public static String m56608j(String str, ClassLoader classLoader) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str.replace('.', '/'));
        stringBuffer.append(ClassPath.f35080d);
        String stringBuffer2 = stringBuffer.toString();
        if (classLoader == null) {
            classLoader = ClassLoader.getSystemClassLoader();
        }
        URL m54091e = fdm.m54091e(classLoader, stringBuffer2);
        if (m54091e != null) {
            return m54091e.toString();
        }
        return null;
    }

    /* renamed from: a */
    public final SchemaFactory m56609a(String str) {
        String str2;
        SchemaFactory m56613g;
        SchemaFactory m56610c;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(f81620h.getName());
        stringBuffer.append(":");
        stringBuffer.append(str);
        String stringBuffer2 = stringBuffer.toString();
        try {
            if (f81616d) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("Looking up system property '");
                stringBuffer3.append(stringBuffer2);
                stringBuffer3.append(CloudStorageConstants.SINGLE_QUOTES);
                m56606f(stringBuffer3.toString());
            }
            String m54093g = fdm.m54093g(stringBuffer2);
            if (m54093g != null && m54093g.length() > 0) {
                if (f81616d) {
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append("The value is '");
                    stringBuffer4.append(m54093g);
                    stringBuffer4.append(CloudStorageConstants.SINGLE_QUOTES);
                    m56606f(stringBuffer4.toString());
                }
                SchemaFactory m56610c2 = m56610c(m54093g);
                if (m56610c2 != null) {
                    return m56610c2;
                }
            } else if (f81616d) {
                m56606f("The property is undefined.");
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (VirtualMachineError e2) {
            throw e2;
        } catch (Throwable th) {
            if (f81616d) {
                StringBuffer stringBuffer5 = new StringBuffer();
                stringBuffer5.append("failed to look up system property '");
                stringBuffer5.append(stringBuffer2);
                stringBuffer5.append(CloudStorageConstants.SINGLE_QUOTES);
                m56606f(stringBuffer5.toString());
                th.printStackTrace();
            }
        }
        String m54093g2 = fdm.m54093g(SystemUtils.f107424e);
        StringBuffer stringBuffer6 = new StringBuffer();
        stringBuffer6.append(m54093g2);
        String str3 = File.separator;
        stringBuffer6.append(str3);
        stringBuffer6.append("lib");
        stringBuffer6.append(str3);
        stringBuffer6.append("jaxp.properties");
        String stringBuffer7 = stringBuffer6.toString();
        try {
            if (f81618f) {
                synchronized (f81617e) {
                    if (f81618f) {
                        File file = new File(stringBuffer7);
                        f81618f = false;
                        if (fdm.m54087a(file)) {
                            if (f81616d) {
                                StringBuffer stringBuffer8 = new StringBuffer();
                                stringBuffer8.append("Read properties file ");
                                stringBuffer8.append(file);
                                m56606f(stringBuffer8.toString());
                            }
                            f81617e.load(fdm.m54089c(file));
                        }
                    }
                }
            }
            String property = f81617e.getProperty(stringBuffer2);
            if (f81616d) {
                StringBuffer stringBuffer9 = new StringBuffer();
                stringBuffer9.append("found ");
                stringBuffer9.append(property);
                stringBuffer9.append(" in $java.home/jaxp.properties");
                m56606f(stringBuffer9.toString());
            }
            if (property != null && (m56610c = m56610c(property)) != null) {
                return m56610c;
            }
        } catch (Exception e3) {
            if (f81616d) {
                e3.printStackTrace();
            }
        }
        Iterator m56611d = m56611d();
        while (m56611d.hasNext()) {
            URL url = (URL) m56611d.next();
            if (f81616d) {
                StringBuffer stringBuffer10 = new StringBuffer();
                stringBuffer10.append("looking into ");
                stringBuffer10.append(url);
                m56606f(stringBuffer10.toString());
            }
            try {
                m56613g = m56613g(str, url.toExternalForm(), fdm.m54094h(url));
            } catch (IOException e4) {
                if (f81616d) {
                    StringBuffer stringBuffer11 = new StringBuffer();
                    stringBuffer11.append("failed to read ");
                    stringBuffer11.append(url);
                    m56606f(stringBuffer11.toString());
                    e4.printStackTrace();
                }
            }
            if (m56613g != null) {
                return m56613g;
            }
        }
        if (str.equals("http://www.w3.org/2001/XMLSchema") || str.equals(f81614b)) {
            if (f81616d) {
                m56606f("attempting to use the platform default XML Schema 1.0 validator");
            }
            str2 = "org.apache.xerces.jaxp.validation.XMLSchemaFactory";
        } else {
            if (!str.equals(f81615c)) {
                if (!f81616d) {
                    return null;
                }
                m56606f("all things were tried, but none was found. bailing out.");
                return null;
            }
            if (f81616d) {
                m56606f("attempting to use the platform default XML Schema 1.1 validator");
            }
            str2 = "org.apache.xerces.jaxp.validation.XMLSchema11Factory";
        }
        return m56610c(str2);
    }

    /* renamed from: c */
    public SchemaFactory m56610c(String str) {
        try {
            if (f81616d) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("instanciating ");
                stringBuffer.append(str);
                m56606f(stringBuffer.toString());
            }
            ClassLoader classLoader = this.f81623a;
            Class<?> loadClass = classLoader != null ? classLoader.loadClass(str) : Class.forName(str);
            if (f81616d) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("loaded it from ");
                stringBuffer2.append(m56607i(loadClass));
                m56606f(stringBuffer2.toString());
            }
            Object newInstance = loadClass.newInstance();
            if (newInstance instanceof SchemaFactory) {
                return (SchemaFactory) newInstance;
            }
            if (!f81616d) {
                return null;
            }
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(str);
            stringBuffer3.append(" is not assignable to ");
            stringBuffer3.append(f81620h.getName());
            m56606f(stringBuffer3.toString());
            return null;
        } catch (ThreadDeath e) {
            throw e;
        } catch (VirtualMachineError e2) {
            throw e2;
        } catch (Throwable th) {
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("failed to instanciate ");
            stringBuffer4.append(str);
            m56606f(stringBuffer4.toString());
            if (!f81616d) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    public final Iterator m56611d() {
        ClassLoader classLoader = this.f81623a;
        if (classLoader == null) {
            return new o4m(this);
        }
        try {
            String str = f81621i;
            Enumeration m54092f = fdm.m54092f(classLoader, str);
            if (f81616d && !m54092f.hasMoreElements()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("no ");
                stringBuffer.append(str);
                stringBuffer.append(" file was found");
                m56606f(stringBuffer.toString());
            }
            return new p4m(this, m54092f);
        } catch (IOException e) {
            if (f81616d) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("failed to enumerate resources ");
                stringBuffer2.append(f81621i);
                m56606f(stringBuffer2.toString());
                e.printStackTrace();
            }
            return new ArrayList().iterator();
        }
    }

    /* renamed from: e */
    public final void m56612e() {
        StringBuffer stringBuffer;
        String str;
        try {
            if (this.f81623a == fdm.m54088b()) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("using thread context class loader (");
                stringBuffer2.append(this.f81623a);
                stringBuffer2.append(") for search");
                m56606f(stringBuffer2.toString());
                return;
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (VirtualMachineError e2) {
            throw e2;
        } catch (Throwable unused) {
        }
        if (this.f81623a == ClassLoader.getSystemClassLoader()) {
            stringBuffer = new StringBuffer();
            str = "using system class loader (";
        } else {
            stringBuffer = new StringBuffer();
            str = "using class loader (";
        }
        stringBuffer.append(str);
        stringBuffer.append(this.f81623a);
        stringBuffer.append(") for search");
        m56606f(stringBuffer.toString());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:1|(1:3)|4|5|6|8|(3:9|10|(6:12|(1:14)|15|(7:17|18|20|(2:28|29)|22|23|24)|10|(1:31)(0))(0))|32|22|23|24) */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005b A[EDGE_INSN: B:31:0x005b->B:32:0x005b BREAK  A[LOOP:0: B:9:0x0031->B:29:0x0031], SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final javax.xml.validation.SchemaFactory m56613g(java.lang.String r4, java.lang.String r5, java.io.InputStream r6) {
        /*
            r3 = this;
            boolean r0 = com.sunia.HTREnginev2.q4m.f81616d
            if (r0 == 0) goto L18
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r1 = "Reading "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            m56606f(r5)
        L18:
            r5 = 80
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.io.UnsupportedEncodingException -> L27
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch: java.io.UnsupportedEncodingException -> L27
            java.lang.String r2 = "UTF-8"
            r1.<init>(r6, r2)     // Catch: java.io.UnsupportedEncodingException -> L27
            r0.<init>(r1, r5)     // Catch: java.io.UnsupportedEncodingException -> L27
            goto L31
        L27:
            java.io.BufferedReader r0 = new java.io.BufferedReader
            java.io.InputStreamReader r1 = new java.io.InputStreamReader
            r1.<init>(r6)
            r0.<init>(r1, r5)
        L31:
            java.lang.String r5 = r0.readLine()     // Catch: java.io.IOException -> L5b
            if (r5 == 0) goto L5b
            r6 = 35
            int r6 = r5.indexOf(r6)
            r1 = -1
            if (r6 == r1) goto L45
            r1 = 0
            java.lang.String r5 = r5.substring(r1, r6)
        L45:
            java.lang.String r5 = r5.trim()
            int r6 = r5.length()
            if (r6 != 0) goto L50
            goto L31
        L50:
            javax.xml.validation.SchemaFactory r5 = r3.m56610c(r5)     // Catch: java.lang.Exception -> L31
            boolean r6 = r5.isSchemaLanguageSupported(r4)     // Catch: java.lang.Exception -> L31
            if (r6 == 0) goto L31
            goto L5c
        L5b:
            r5 = 0
        L5c:
            r0.close()     // Catch: java.io.IOException -> L5f
        L5f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.q4m.m56613g(java.lang.String, java.lang.String, java.io.InputStream):javax.xml.validation.SchemaFactory");
    }

    /* renamed from: h */
    public SchemaFactory m56614h(String str) {
        StringBuffer stringBuffer;
        String str2;
        str.getClass();
        SchemaFactory m56609a = m56609a(str);
        if (f81616d) {
            if (m56609a != null) {
                stringBuffer = new StringBuffer();
                stringBuffer.append("factory '");
                stringBuffer.append(m56609a.getClass().getName());
                str2 = "' was found for ";
            } else {
                stringBuffer = new StringBuffer();
                str2 = "unable to find a factory for ";
            }
            stringBuffer.append(str2);
            stringBuffer.append(str);
            m56606f(stringBuffer.toString());
        }
        return m56609a;
    }
}
