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
import javax.xml.xpath.XPathFactory;
import org.apache.commons.lang3.SystemUtils;

/* loaded from: classes5.dex */
public final class fmo {

    /* renamed from: b */
    public static boolean f70159b = false;

    /* renamed from: c */
    public static final int f70160c = 80;

    /* renamed from: d */
    public static Properties f70161d;

    /* renamed from: e */
    public static boolean f70162e;

    /* renamed from: f */
    public static final Class f70163f;

    /* renamed from: g */
    public static final String f70164g;

    /* renamed from: h */
    public static /* synthetic */ Class f70165h;

    /* renamed from: a */
    public final ClassLoader f70166a;

    /* renamed from: com.sunia.HTREnginev2.fmo$a */
    /* loaded from: classes5.dex */
    public static abstract class AbstractC13729a implements Iterator {

        /* renamed from: e */
        public boolean f70167e;

        public AbstractC13729a() {
            this.f70167e = false;
        }

        /* renamed from: a */
        public abstract Object mo53679a();

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return !this.f70167e;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (this.f70167e) {
                throw new NoSuchElementException();
            }
            this.f70167e = true;
            return mo53679a();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }

        public /* synthetic */ AbstractC13729a(dmo dmoVar) {
            this();
        }
    }

    static {
        try {
            String m54267g = gdm.m54267g("jaxp.debug");
            f70159b = (m54267g == null || "false".equals(m54267g)) ? false : true;
        } catch (Exception unused) {
            f70159b = false;
        }
        f70161d = new Properties();
        f70162e = true;
        Class cls = f70165h;
        if (cls == null) {
            cls = class$(XPathFactory.DEFAULT_PROPERTY_NAME);
            f70165h = cls;
        }
        f70163f = cls;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("META-INF/services/");
        stringBuffer.append(cls.getName());
        f70164g = stringBuffer.toString();
    }

    public fmo(ClassLoader classLoader) {
        this.f70166a = classLoader;
        if (f70159b) {
            m54147e();
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
    public static void m54141f(String str) {
        if (f70159b) {
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("JAXP: ");
            stringBuffer.append(str);
            printStream.println(stringBuffer.toString());
        }
    }

    /* renamed from: i */
    public static String m54142i(Class cls) {
        return m54143j(cls.getName(), cls.getClassLoader());
    }

    /* renamed from: j */
    public static String m54143j(String str, ClassLoader classLoader) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str.replace('.', '/'));
        stringBuffer.append(ClassPath.f35080d);
        String stringBuffer2 = stringBuffer.toString();
        if (classLoader == null) {
            classLoader = ClassLoader.getSystemClassLoader();
        }
        URL m54265e = gdm.m54265e(classLoader, stringBuffer2);
        if (m54265e != null) {
            return m54265e.toString();
        }
        return null;
    }

    /* renamed from: a */
    public final XPathFactory m54144a(String str) {
        XPathFactory m54148g;
        XPathFactory m54145c;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(f70163f.getName());
        stringBuffer.append(":");
        stringBuffer.append(str);
        String stringBuffer2 = stringBuffer.toString();
        try {
            if (f70159b) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("Looking up system property '");
                stringBuffer3.append(stringBuffer2);
                stringBuffer3.append(CloudStorageConstants.SINGLE_QUOTES);
                m54141f(stringBuffer3.toString());
            }
            String m54267g = gdm.m54267g(stringBuffer2);
            if (m54267g != null && m54267g.length() > 0) {
                if (f70159b) {
                    StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append("The value is '");
                    stringBuffer4.append(m54267g);
                    stringBuffer4.append(CloudStorageConstants.SINGLE_QUOTES);
                    m54141f(stringBuffer4.toString());
                }
                XPathFactory m54145c2 = m54145c(m54267g);
                if (m54145c2 != null) {
                    return m54145c2;
                }
            } else if (f70159b) {
                m54141f("The property is undefined.");
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (VirtualMachineError e2) {
            throw e2;
        } catch (Throwable th) {
            if (f70159b) {
                StringBuffer stringBuffer5 = new StringBuffer();
                stringBuffer5.append("failed to look up system property '");
                stringBuffer5.append(stringBuffer2);
                stringBuffer5.append(CloudStorageConstants.SINGLE_QUOTES);
                m54141f(stringBuffer5.toString());
                th.printStackTrace();
            }
        }
        String m54267g2 = gdm.m54267g(SystemUtils.f107424e);
        StringBuffer stringBuffer6 = new StringBuffer();
        stringBuffer6.append(m54267g2);
        String str2 = File.separator;
        stringBuffer6.append(str2);
        stringBuffer6.append("lib");
        stringBuffer6.append(str2);
        stringBuffer6.append("jaxp.properties");
        String stringBuffer7 = stringBuffer6.toString();
        try {
            if (f70162e) {
                synchronized (f70161d) {
                    if (f70162e) {
                        File file = new File(stringBuffer7);
                        f70162e = false;
                        if (gdm.m54261a(file)) {
                            if (f70159b) {
                                StringBuffer stringBuffer8 = new StringBuffer();
                                stringBuffer8.append("Read properties file ");
                                stringBuffer8.append(file);
                                m54141f(stringBuffer8.toString());
                            }
                            f70161d.load(gdm.m54263c(file));
                        }
                    }
                }
            }
            String property = f70161d.getProperty(stringBuffer2);
            if (f70159b) {
                StringBuffer stringBuffer9 = new StringBuffer();
                stringBuffer9.append("found ");
                stringBuffer9.append(property);
                stringBuffer9.append(" in $java.home/jaxp.properties");
                m54141f(stringBuffer9.toString());
            }
            if (property != null && (m54145c = m54145c(property)) != null) {
                return m54145c;
            }
        } catch (Exception e3) {
            if (f70159b) {
                e3.printStackTrace();
            }
        }
        Iterator m54146d = m54146d();
        while (m54146d.hasNext()) {
            URL url = (URL) m54146d.next();
            if (f70159b) {
                StringBuffer stringBuffer10 = new StringBuffer();
                stringBuffer10.append("looking into ");
                stringBuffer10.append(url);
                m54141f(stringBuffer10.toString());
            }
            try {
                m54148g = m54148g(str, url.toExternalForm(), gdm.m54268h(url));
            } catch (IOException e4) {
                if (f70159b) {
                    StringBuffer stringBuffer11 = new StringBuffer();
                    stringBuffer11.append("failed to read ");
                    stringBuffer11.append(url);
                    m54141f(stringBuffer11.toString());
                    e4.printStackTrace();
                }
            }
            if (m54148g != null) {
                return m54148g;
            }
        }
        if (str.equals("http://java.sun.com/jaxp/xpath/dom")) {
            if (f70159b) {
                m54141f("attempting to use the platform default W3C DOM XPath lib");
            }
            return m54145c("org.apache.xpath.jaxp.XPathFactoryImpl");
        }
        if (!f70159b) {
            return null;
        }
        m54141f("all things were tried, but none was found. bailing out.");
        return null;
    }

    /* renamed from: c */
    public XPathFactory m54145c(String str) {
        try {
            if (f70159b) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("instanciating ");
                stringBuffer.append(str);
                m54141f(stringBuffer.toString());
            }
            ClassLoader classLoader = this.f70166a;
            Class<?> loadClass = classLoader != null ? classLoader.loadClass(str) : Class.forName(str);
            if (f70159b) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("loaded it from ");
                stringBuffer2.append(m54142i(loadClass));
                m54141f(stringBuffer2.toString());
            }
            Object newInstance = loadClass.newInstance();
            if (newInstance instanceof XPathFactory) {
                return (XPathFactory) newInstance;
            }
            if (!f70159b) {
                return null;
            }
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(str);
            stringBuffer3.append(" is not assignable to ");
            stringBuffer3.append(f70163f.getName());
            m54141f(stringBuffer3.toString());
            return null;
        } catch (ThreadDeath e) {
            throw e;
        } catch (VirtualMachineError e2) {
            throw e2;
        } catch (Throwable th) {
            if (!f70159b) {
                return null;
            }
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("failed to instanciate ");
            stringBuffer4.append(str);
            m54141f(stringBuffer4.toString());
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    public final Iterator m54146d() {
        ClassLoader classLoader = this.f70166a;
        if (classLoader == null) {
            return new dmo(this);
        }
        try {
            String str = f70164g;
            Enumeration m54266f = gdm.m54266f(classLoader, str);
            if (f70159b && !m54266f.hasMoreElements()) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("no ");
                stringBuffer.append(str);
                stringBuffer.append(" file was found");
                m54141f(stringBuffer.toString());
            }
            return new emo(this, m54266f);
        } catch (IOException e) {
            if (f70159b) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("failed to enumerate resources ");
                stringBuffer2.append(f70164g);
                m54141f(stringBuffer2.toString());
                e.printStackTrace();
            }
            return new ArrayList().iterator();
        }
    }

    /* renamed from: e */
    public final void m54147e() {
        StringBuffer stringBuffer;
        String str;
        try {
            if (this.f70166a == gdm.m54262b()) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("using thread context class loader (");
                stringBuffer2.append(this.f70166a);
                stringBuffer2.append(") for search");
                m54141f(stringBuffer2.toString());
                return;
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (VirtualMachineError e2) {
            throw e2;
        } catch (Throwable unused) {
        }
        if (this.f70166a == ClassLoader.getSystemClassLoader()) {
            stringBuffer = new StringBuffer();
            str = "using system class loader (";
        } else {
            stringBuffer = new StringBuffer();
            str = "using class loader (";
        }
        stringBuffer.append(str);
        stringBuffer.append(this.f70166a);
        stringBuffer.append(") for search");
        m54141f(stringBuffer.toString());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:1|(1:3)|4|5|6|8|(3:9|10|(6:12|(1:14)|15|(7:17|18|20|(2:28|29)|22|23|24)|10|(1:31)(0))(0))|32|22|23|24) */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005b A[EDGE_INSN: B:31:0x005b->B:32:0x005b BREAK  A[LOOP:0: B:9:0x0031->B:29:0x0031], SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final javax.xml.xpath.XPathFactory m54148g(java.lang.String r4, java.lang.String r5, java.io.InputStream r6) {
        /*
            r3 = this;
            boolean r0 = com.sunia.HTREnginev2.fmo.f70159b
            if (r0 == 0) goto L18
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r1 = "Reading "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            m54141f(r5)
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
            javax.xml.xpath.XPathFactory r5 = r3.m54145c(r5)     // Catch: java.lang.Exception -> L31
            boolean r6 = r5.isObjectModelSupported(r4)     // Catch: java.lang.Exception -> L31
            if (r6 == 0) goto L31
            goto L5c
        L5b:
            r5 = 0
        L5c:
            r0.close()     // Catch: java.io.IOException -> L5f
        L5f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.fmo.m54148g(java.lang.String, java.lang.String, java.io.InputStream):javax.xml.xpath.XPathFactory");
    }

    /* renamed from: h */
    public XPathFactory m54149h(String str) {
        StringBuffer stringBuffer;
        String str2;
        str.getClass();
        XPathFactory m54144a = m54144a(str);
        if (f70159b) {
            if (m54144a != null) {
                stringBuffer = new StringBuffer();
                stringBuffer.append("factory '");
                stringBuffer.append(m54144a.getClass().getName());
                str2 = "' was found for ";
            } else {
                stringBuffer = new StringBuffer();
                str2 = "unable to find a factory for ";
            }
            stringBuffer.append(str2);
            stringBuffer.append(str);
            m54141f(stringBuffer.toString());
        }
        return m54144a;
    }
}
