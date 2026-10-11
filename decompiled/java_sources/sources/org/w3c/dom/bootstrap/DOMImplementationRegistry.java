package org.w3c.dom.bootstrap;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.security.AccessController;
import java.util.StringTokenizer;
import java.util.Vector;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DOMImplementationList;
import org.w3c.dom.DOMImplementationSource;

/* loaded from: classes16.dex */
public final class DOMImplementationRegistry {
    public static final String PROPERTY = "org.w3c.dom.DOMImplementationSourceList";

    /* renamed from: b */
    public static final int f116068b = 80;

    /* renamed from: c */
    public static final String f116069c = "org.apache.xerces.dom.DOMXSImplementationSourceImpl";

    /* renamed from: d */
    public static /* synthetic */ Class f116070d;

    /* renamed from: a */
    public Vector f116071a;

    public DOMImplementationRegistry(Vector vector) {
        this.f116071a = vector;
    }

    /* renamed from: a */
    public static ClassLoader m71957a() {
        Class cls;
        try {
            ClassLoader m71958b = m71958b();
            if (m71958b != null) {
                return m71958b;
            }
            Class cls2 = f116070d;
            if (cls2 == null) {
                cls2 = class$("org.w3c.dom.bootstrap.DOMImplementationRegistry");
                f116070d = cls2;
            }
            return cls2.getClassLoader();
        } catch (Exception unused) {
            if (f116070d == null) {
                cls = class$("org.w3c.dom.bootstrap.DOMImplementationRegistry");
                f116070d = cls;
            } else {
                cls = f116070d;
            }
            return cls.getClassLoader();
        }
    }

    /* renamed from: b */
    public static ClassLoader m71958b() {
        if (m71962f()) {
            return null;
        }
        return (ClassLoader) AccessController.doPrivileged(new C20477b());
    }

    /* renamed from: c */
    public static InputStream m71959c(ClassLoader classLoader, String str) {
        return m71962f() ? classLoader == null ? ClassLoader.getSystemResourceAsStream(str) : classLoader.getResourceAsStream(str) : (InputStream) AccessController.doPrivileged(new C20479d(classLoader, str));
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* renamed from: d */
    public static String m71960d(ClassLoader classLoader) {
        BufferedReader bufferedReader;
        try {
            InputStream m71959c = m71959c(classLoader, "META-INF/services/org.w3c.dom.DOMImplementationSourceList");
            if (m71959c != null) {
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(m71959c, "UTF-8"), 80);
                } catch (UnsupportedEncodingException unused) {
                    bufferedReader = new BufferedReader(new InputStreamReader(m71959c), 80);
                }
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null && readLine.length() > 0) {
                        return readLine;
                    }
                } finally {
                    bufferedReader.close();
                }
            }
        } catch (Exception unused2) {
        }
        return null;
    }

    /* renamed from: e */
    public static String m71961e(String str) {
        return m71962f() ? System.getProperty(str) : (String) AccessController.doPrivileged(new C20478c(str));
    }

    /* renamed from: f */
    public static boolean m71962f() {
        try {
            Class.forName("java.security.AccessController");
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    public static DOMImplementationRegistry newInstance() throws ClassNotFoundException, InstantiationException, IllegalAccessException, ClassCastException {
        Vector vector = new Vector();
        ClassLoader m71957a = m71957a();
        String m71961e = m71961e(PROPERTY);
        if (m71961e == null || m71961e.length() == 0) {
            m71961e = m71960d(m71957a);
        }
        if (m71961e == null) {
            m71961e = f116069c;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(m71961e);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            vector.addElement((DOMImplementationSource) (m71957a != null ? m71957a.loadClass(nextToken) : Class.forName(nextToken)).newInstance());
        }
        return new DOMImplementationRegistry(vector);
    }

    public void addSource(DOMImplementationSource dOMImplementationSource) {
        dOMImplementationSource.getClass();
        if (this.f116071a.contains(dOMImplementationSource)) {
            return;
        }
        this.f116071a.addElement(dOMImplementationSource);
    }

    public DOMImplementation getDOMImplementation(String str) {
        int size = this.f116071a.size();
        for (int i = 0; i < size; i++) {
            DOMImplementation dOMImplementation = ((DOMImplementationSource) this.f116071a.elementAt(i)).getDOMImplementation(str);
            if (dOMImplementation != null) {
                return dOMImplementation;
            }
        }
        return null;
    }

    public DOMImplementationList getDOMImplementationList(String str) {
        Vector vector = new Vector();
        int size = this.f116071a.size();
        for (int i = 0; i < size; i++) {
            DOMImplementationList dOMImplementationList = ((DOMImplementationSource) this.f116071a.elementAt(i)).getDOMImplementationList(str);
            for (int i2 = 0; i2 < dOMImplementationList.getLength(); i2++) {
                vector.addElement(dOMImplementationList.item(i2));
            }
        }
        return new C20476a(this, vector);
    }
}
