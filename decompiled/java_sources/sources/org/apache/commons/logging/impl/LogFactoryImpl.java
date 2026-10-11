package org.apache.commons.logging.impl;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.AccessController;
import java.util.Hashtable;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogConfigurationException;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes12.dex */
public class LogFactoryImpl extends LogFactory {
    public static final String ALLOW_FLAWED_CONTEXT_PROPERTY = "org.apache.commons.logging.Log.allowFlawedContext";
    public static final String ALLOW_FLAWED_DISCOVERY_PROPERTY = "org.apache.commons.logging.Log.allowFlawedDiscovery";
    public static final String ALLOW_FLAWED_HIERARCHY_PROPERTY = "org.apache.commons.logging.Log.allowFlawedHierarchy";
    public static final String LOG_PROPERTY = "org.apache.commons.logging.Log";
    protected static final String LOG_PROPERTY_OLD = "org.apache.commons.logging.log";

    /* renamed from: p */
    public static final String f107713p = "org.apache.commons.logging.impl.";

    /* renamed from: q */
    public static final int f107714q = 32;

    /* renamed from: s */
    public static /* synthetic */ Class f107716s;

    /* renamed from: t */
    public static /* synthetic */ Class f107717t;

    /* renamed from: u */
    public static /* synthetic */ Class f107718u;

    /* renamed from: v */
    public static /* synthetic */ Class f107719v;

    /* renamed from: g */
    public String f107721g;

    /* renamed from: h */
    public String f107722h;

    /* renamed from: i */
    public boolean f107723i;

    /* renamed from: j */
    public boolean f107724j;

    /* renamed from: k */
    public boolean f107725k;
    protected Class[] logConstructorSignature;
    protected Method logMethod;
    protected Class[] logMethodSignature;

    /* renamed from: l */
    public static final String f107709l = "org.apache.commons.logging.impl.Log4JLogger";

    /* renamed from: m */
    public static final String f107710m = "org.apache.commons.logging.impl.Jdk14Logger";

    /* renamed from: n */
    public static final String f107711n = "org.apache.commons.logging.impl.Jdk13LumberjackLogger";

    /* renamed from: o */
    public static final String f107712o = "org.apache.commons.logging.impl.SimpleLog";

    /* renamed from: r */
    public static final String[] f107715r = {f107709l, f107710m, f107711n, f107712o};

    /* renamed from: f */
    public boolean f107720f = true;
    protected Hashtable attributes = new Hashtable();
    protected Hashtable instances = new Hashtable();
    protected Constructor logConstructor = null;

    public LogFactoryImpl() {
        Class[] clsArr = new Class[1];
        Class cls = f107716s;
        if (cls == null) {
            cls = class$("java.lang.String");
            f107716s = cls;
        }
        clsArr[0] = cls;
        this.logConstructorSignature = clsArr;
        this.logMethod = null;
        Class[] clsArr2 = new Class[1];
        Class cls2 = f107717t;
        if (cls2 == null) {
            cls2 = class$(LogFactory.FACTORY_PROPERTY);
            f107717t = cls2;
        }
        clsArr2[0] = cls2;
        this.logMethodSignature = clsArr2;
        m67443C();
        if (isDiagnosticsEnabled()) {
            logDiagnostic("Instance created.");
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
    public static ClassLoader m67438f() throws LogConfigurationException {
        return (ClassLoader) AccessController.doPrivileged(new C19023a());
    }

    public static ClassLoader getClassLoader(Class cls) {
        return LogFactory.getClassLoader(cls);
    }

    public static ClassLoader getContextClassLoader() throws LogConfigurationException {
        return LogFactory.getContextClassLoader();
    }

    public static boolean isDiagnosticsEnabled() {
        return LogFactory.isDiagnosticsEnabled();
    }

    /* renamed from: j */
    public static String m67439j(String str, String str2) throws SecurityException {
        return (String) AccessController.doPrivileged(new C19024b(str, str2));
    }

    /* renamed from: A */
    public final void m67441A(StringBuffer stringBuffer, String str, String str2) {
        if (!str.equals(str2) && str.regionMatches(true, 0, str2, 0, f107714q + 5)) {
            stringBuffer.append(" Did you mean '");
            stringBuffer.append(str2);
            stringBuffer.append("'?");
        }
    }

    /* renamed from: B */
    public final void m67442B() {
        this.f107723i = m67449u(ALLOW_FLAWED_CONTEXT_PROPERTY, true);
        this.f107724j = m67449u(ALLOW_FLAWED_DISCOVERY_PROPERTY, true);
        this.f107725k = m67449u(ALLOW_FLAWED_HIERARCHY_PROPERTY, true);
    }

    /* renamed from: C */
    public final void m67443C() {
        String str;
        ClassLoader classLoader = getClassLoader(getClass());
        if (classLoader == null) {
            str = "BOOTLOADER";
        } else {
            try {
                str = LogFactory.objectId(classLoader);
            } catch (SecurityException unused) {
                str = HwrRecognizerConstant.RECOGNIZER_UNKNOWN;
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[LogFactoryImpl@");
        stringBuffer.append(System.identityHashCode(this));
        stringBuffer.append(" from ");
        stringBuffer.append(str);
        stringBuffer.append("] ");
        this.f107721g = stringBuffer.toString();
    }

    /* renamed from: D */
    public final boolean m67444D(String str, String str2) {
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Checking for '");
            stringBuffer.append(str);
            stringBuffer.append("'.");
            logDiagnostic(stringBuffer.toString());
        }
        try {
            if (m67445q(str2, getClass().getName(), false) == null) {
                if (isDiagnosticsEnabled()) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Did not find '");
                    stringBuffer2.append(str);
                    stringBuffer2.append("'.");
                    logDiagnostic(stringBuffer2.toString());
                }
                return false;
            }
            if (!isDiagnosticsEnabled()) {
                return true;
            }
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("Found '");
            stringBuffer3.append(str);
            stringBuffer3.append("'.");
            logDiagnostic(stringBuffer3.toString());
            return true;
        } catch (LogConfigurationException unused) {
            if (isDiagnosticsEnabled()) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("Logging system '");
                stringBuffer4.append(str);
                stringBuffer4.append("' is available but not useable.");
                logDiagnostic(stringBuffer4.toString());
            }
            return false;
        }
    }

    @Override // org.apache.commons.logging.LogFactory
    public Object getAttribute(String str) {
        return this.attributes.get(str);
    }

    @Override // org.apache.commons.logging.LogFactory
    public String[] getAttributeNames() {
        return (String[]) this.attributes.keySet().toArray(new String[this.attributes.size()]);
    }

    @Override // org.apache.commons.logging.LogFactory
    public Log getInstance(Class cls) throws LogConfigurationException {
        return getInstance(cls.getName());
    }

    public String getLogClassName() {
        if (this.f107722h == null) {
            m67446r(getClass().getName());
        }
        return this.f107722h;
    }

    public Constructor getLogConstructor() throws LogConfigurationException {
        if (this.logConstructor == null) {
            m67446r(getClass().getName());
        }
        return this.logConstructor;
    }

    public boolean isJdk13LumberjackAvailable() {
        return m67444D("Jdk13Lumberjack", f107711n);
    }

    public boolean isJdk14Available() {
        return m67444D("Jdk14", f107710m);
    }

    public boolean isLog4JAvailable() {
        return m67444D("Log4J", f107709l);
    }

    public void logDiagnostic(String str) {
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.f107721g);
            stringBuffer.append(str);
            LogFactory.logRawDiagnostic(stringBuffer.toString());
        }
    }

    public Log newInstance(String str) throws LogConfigurationException {
        try {
            Constructor constructor = this.logConstructor;
            Log m67446r = constructor == null ? m67446r(str) : (Log) constructor.newInstance(str);
            Method method = this.logMethod;
            if (method != null) {
                method.invoke(m67446r, this);
            }
            return m67446r;
        } catch (InvocationTargetException e) {
            e = e;
            Throwable targetException = e.getTargetException();
            if (targetException != null) {
                e = targetException;
            }
            throw new LogConfigurationException(e);
        } catch (LogConfigurationException e2) {
            throw e2;
        } catch (Throwable th) {
            LogFactory.handleThrowable(th);
            throw new LogConfigurationException(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0156 A[LOOP:0: B:5:0x0034->B:25:0x0156, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01b9 A[EDGE_INSN: B:26:0x01b9->B:27:0x01b9 BREAK  A[LOOP:0: B:5:0x0034->B:25:0x0156], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01bc A[ADDED_TO_REGION] */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.commons.logging.Log m67445q(java.lang.String r16, java.lang.String r17, boolean r18) throws org.apache.commons.logging.LogConfigurationException {
        /*
            Method dump skipped, instructions count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.logging.impl.LogFactoryImpl.m67445q(java.lang.String, java.lang.String, boolean):org.apache.commons.logging.Log");
    }

    /* renamed from: r */
    public final Log m67446r(String str) throws LogConfigurationException {
        if (isDiagnosticsEnabled()) {
            logDiagnostic("Discovering a Log implementation...");
        }
        m67442B();
        String m67447s = m67447s();
        if (m67447s == null) {
            if (isDiagnosticsEnabled()) {
                logDiagnostic("No user-specified Log implementation; performing discovery using the standard supported logging implementations...");
            }
            Log log = null;
            int i = 0;
            while (true) {
                String[] strArr = f107715r;
                if (i >= strArr.length || log != null) {
                    break;
                }
                log = m67445q(strArr[i], str, true);
                i++;
            }
            if (log != null) {
                return log;
            }
            throw new LogConfigurationException("No suitable Log implementation");
        }
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Attempting to load user-specified log class '");
            stringBuffer.append(m67447s);
            stringBuffer.append("'...");
            logDiagnostic(stringBuffer.toString());
        }
        Log m67445q = m67445q(m67447s, str, true);
        if (m67445q != null) {
            return m67445q;
        }
        StringBuffer stringBuffer2 = new StringBuffer("User-specified log class '");
        stringBuffer2.append(m67447s);
        stringBuffer2.append("' cannot be found or is not useable.");
        m67441A(stringBuffer2, m67447s, f107709l);
        m67441A(stringBuffer2, m67447s, f107710m);
        m67441A(stringBuffer2, m67447s, f107711n);
        m67441A(stringBuffer2, m67447s, f107712o);
        throw new LogConfigurationException(stringBuffer2.toString());
    }

    @Override // org.apache.commons.logging.LogFactory
    public void release() {
        logDiagnostic("Releasing all known loggers");
        this.instances.clear();
    }

    @Override // org.apache.commons.logging.LogFactory
    public void removeAttribute(String str) {
        this.attributes.remove(str);
    }

    /* renamed from: s */
    public final String m67447s() {
        if (isDiagnosticsEnabled()) {
            logDiagnostic("Trying to get log class from attribute 'org.apache.commons.logging.Log'");
        }
        String str = (String) getAttribute(LOG_PROPERTY);
        if (str == null) {
            if (isDiagnosticsEnabled()) {
                logDiagnostic("Trying to get log class from attribute 'org.apache.commons.logging.log'");
            }
            str = (String) getAttribute(LOG_PROPERTY_OLD);
        }
        if (str == null) {
            if (isDiagnosticsEnabled()) {
                logDiagnostic("Trying to get log class from system property 'org.apache.commons.logging.Log'");
            }
            try {
                str = m67439j(LOG_PROPERTY, null);
            } catch (SecurityException e) {
                if (isDiagnosticsEnabled()) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("No access allowed to system property 'org.apache.commons.logging.Log' - ");
                    stringBuffer.append(e.getMessage());
                    logDiagnostic(stringBuffer.toString());
                }
            }
        }
        if (str == null) {
            if (isDiagnosticsEnabled()) {
                logDiagnostic("Trying to get log class from system property 'org.apache.commons.logging.log'");
            }
            try {
                str = m67439j(LOG_PROPERTY_OLD, null);
            } catch (SecurityException e2) {
                if (isDiagnosticsEnabled()) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("No access allowed to system property 'org.apache.commons.logging.log' - ");
                    stringBuffer2.append(e2.getMessage());
                    logDiagnostic(stringBuffer2.toString());
                }
            }
        }
        return str != null ? str.trim() : str;
    }

    @Override // org.apache.commons.logging.LogFactory
    public void setAttribute(String str, Object obj) {
        if (this.logConstructor != null) {
            logDiagnostic("setAttribute: call too late; configuration already performed.");
        }
        if (obj == null) {
            this.attributes.remove(str);
        } else {
            this.attributes.put(str, obj);
        }
        if (str.equals(LogFactory.TCCL_KEY)) {
            this.f107720f = obj != null && Boolean.valueOf(obj.toString()).booleanValue();
        }
    }

    /* renamed from: t */
    public final ClassLoader m67448t() throws LogConfigurationException {
        Class cls = f107718u;
        if (cls == null) {
            cls = class$(LogFactory.FACTORY_DEFAULT);
            f107718u = cls;
        }
        ClassLoader classLoader = getClassLoader(cls);
        if (!this.f107720f) {
            return classLoader;
        }
        ClassLoader m67438f = m67438f();
        ClassLoader m67451w = m67451w(m67438f, classLoader);
        if (m67451w == null) {
            if (!this.f107723i) {
                throw new LogConfigurationException("Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader.");
            }
            if (isDiagnosticsEnabled()) {
                logDiagnostic("[WARNING] the context classloader is not part of a parent-child relationship with the classloader that loaded LogFactoryImpl.");
            }
            return m67438f;
        }
        if (m67451w != m67438f) {
            if (!this.f107723i) {
                throw new LogConfigurationException("Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader.");
            }
            if (isDiagnosticsEnabled()) {
                logDiagnostic("Warning: the context classloader is an ancestor of the classloader that loaded LogFactoryImpl; it should be the same or a descendant. The application using commons-logging should ensure the context classloader is used correctly.");
            }
        }
        return m67451w;
    }

    /* renamed from: u */
    public final boolean m67449u(String str, boolean z) {
        String m67450v = m67450v(str);
        return m67450v == null ? z : Boolean.valueOf(m67450v).booleanValue();
    }

    /* renamed from: v */
    public final String m67450v(String str) {
        String m67439j;
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("[ENV] Trying to get configuration for item ");
            stringBuffer.append(str);
            logDiagnostic(stringBuffer.toString());
        }
        Object attribute = getAttribute(str);
        if (attribute != null) {
            if (isDiagnosticsEnabled()) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("[ENV] Found LogFactory attribute [");
                stringBuffer2.append(attribute);
                stringBuffer2.append("] for ");
                stringBuffer2.append(str);
                logDiagnostic(stringBuffer2.toString());
            }
            return attribute.toString();
        }
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("[ENV] No LogFactory attribute found for ");
            stringBuffer3.append(str);
            logDiagnostic(stringBuffer3.toString());
        }
        try {
            m67439j = m67439j(str, null);
        } catch (SecurityException unused) {
            if (isDiagnosticsEnabled()) {
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("[ENV] Security prevented reading system property ");
                stringBuffer4.append(str);
                logDiagnostic(stringBuffer4.toString());
            }
        }
        if (m67439j != null) {
            if (isDiagnosticsEnabled()) {
                StringBuffer stringBuffer5 = new StringBuffer();
                stringBuffer5.append("[ENV] Found system property [");
                stringBuffer5.append(m67439j);
                stringBuffer5.append("] for ");
                stringBuffer5.append(str);
                logDiagnostic(stringBuffer5.toString());
            }
            return m67439j;
        }
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer6 = new StringBuffer();
            stringBuffer6.append("[ENV] No system property found for property ");
            stringBuffer6.append(str);
            logDiagnostic(stringBuffer6.toString());
        }
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer7 = new StringBuffer();
            stringBuffer7.append("[ENV] No configuration defined for item ");
            stringBuffer7.append(str);
            logDiagnostic(stringBuffer7.toString());
        }
        return null;
    }

    /* renamed from: w */
    public final ClassLoader m67451w(ClassLoader classLoader, ClassLoader classLoader2) {
        if (classLoader == null) {
            return classLoader2;
        }
        if (classLoader2 == null) {
            return classLoader;
        }
        ClassLoader classLoader3 = classLoader;
        while (classLoader3 != null) {
            if (classLoader3 == classLoader2) {
                return classLoader;
            }
            classLoader3 = m67452x(classLoader3);
        }
        ClassLoader classLoader4 = classLoader2;
        while (classLoader4 != null) {
            if (classLoader4 == classLoader) {
                return classLoader2;
            }
            classLoader4 = m67452x(classLoader4);
        }
        return null;
    }

    /* renamed from: x */
    public final ClassLoader m67452x(ClassLoader classLoader) {
        try {
            return (ClassLoader) AccessController.doPrivileged(new C19025c(this, classLoader));
        } catch (SecurityException unused) {
            logDiagnostic("[SECURITY] Unable to obtain parent classloader");
            return null;
        }
    }

    /* renamed from: y */
    public final void m67453y(String str, ClassLoader classLoader, Throwable th) {
        Throwable targetException;
        Throwable exception;
        if (isDiagnosticsEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Could not instantiate Log '");
            stringBuffer.append(str);
            stringBuffer.append("' -- ");
            stringBuffer.append(th.getClass().getName());
            stringBuffer.append(": ");
            stringBuffer.append(th.getLocalizedMessage());
            logDiagnostic(stringBuffer.toString());
            if ((th instanceof InvocationTargetException) && (targetException = ((InvocationTargetException) th).getTargetException()) != null) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("... InvocationTargetException: ");
                stringBuffer2.append(targetException.getClass().getName());
                stringBuffer2.append(": ");
                stringBuffer2.append(targetException.getLocalizedMessage());
                logDiagnostic(stringBuffer2.toString());
                if ((targetException instanceof ExceptionInInitializerError) && (exception = ((ExceptionInInitializerError) targetException).getException()) != null) {
                    StringWriter stringWriter = new StringWriter();
                    exception.printStackTrace(new PrintWriter((Writer) stringWriter, true));
                    StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append("... ExceptionInInitializerError: ");
                    stringBuffer3.append(stringWriter.toString());
                    logDiagnostic(stringBuffer3.toString());
                }
            }
        }
        if (!this.f107724j) {
            throw new LogConfigurationException(th);
        }
    }

    /* renamed from: z */
    public final void m67454z(ClassLoader classLoader, Class cls) throws LogConfigurationException {
        Class cls2 = f107719v;
        if (cls2 == null) {
            cls2 = class$(LOG_PROPERTY);
            f107719v = cls2;
        }
        String name = cls2.getName();
        Class<?>[] interfaces = cls.getInterfaces();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= interfaces.length) {
                break;
            }
            if (name.equals(interfaces[i].getName())) {
                z = true;
                break;
            }
            i++;
        }
        if (!z) {
            if (this.f107724j) {
                if (isDiagnosticsEnabled()) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("[WARNING] Log class '");
                    stringBuffer.append(cls.getName());
                    stringBuffer.append("' does not implement the Log interface.");
                    logDiagnostic(stringBuffer.toString());
                    return;
                }
                return;
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Terminating logging for this context. ");
            stringBuffer2.append("Log class '");
            stringBuffer2.append(cls.getName());
            stringBuffer2.append("' does not implement the Log interface.");
            if (isDiagnosticsEnabled()) {
                logDiagnostic(stringBuffer2.toString());
            }
            throw new LogConfigurationException(stringBuffer2.toString());
        }
        if (isDiagnosticsEnabled()) {
            try {
                Class cls3 = f107719v;
                if (cls3 == null) {
                    cls3 = class$(LOG_PROPERTY);
                    f107719v = cls3;
                }
                ClassLoader classLoader2 = getClassLoader(cls3);
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("Class '");
                stringBuffer3.append(cls.getName());
                stringBuffer3.append("' was found in classloader ");
                stringBuffer3.append(LogFactory.objectId(classLoader));
                stringBuffer3.append(". It is bound to a Log interface which is not");
                stringBuffer3.append(" the one loaded from classloader ");
                stringBuffer3.append(LogFactory.objectId(classLoader2));
                logDiagnostic(stringBuffer3.toString());
            } catch (Throwable th) {
                LogFactory.handleThrowable(th);
                StringBuffer stringBuffer4 = new StringBuffer();
                stringBuffer4.append("Error while trying to output diagnostics about bad class '");
                stringBuffer4.append(cls);
                stringBuffer4.append(CloudStorageConstants.SINGLE_QUOTES);
                logDiagnostic(stringBuffer4.toString());
            }
        }
        if (this.f107725k) {
            if (isDiagnosticsEnabled()) {
                StringBuffer stringBuffer5 = new StringBuffer();
                stringBuffer5.append("Warning: bad log hierarchy. ");
                stringBuffer5.append("You have more than one version of '");
                Class cls4 = f107719v;
                if (cls4 == null) {
                    cls4 = class$(LOG_PROPERTY);
                    f107719v = cls4;
                }
                stringBuffer5.append(cls4.getName());
                stringBuffer5.append("' visible.");
                logDiagnostic(stringBuffer5.toString());
                return;
            }
            return;
        }
        StringBuffer stringBuffer6 = new StringBuffer();
        stringBuffer6.append("Terminating logging for this context ");
        stringBuffer6.append("due to bad log hierarchy. ");
        stringBuffer6.append("You have more than one version of '");
        Class cls5 = f107719v;
        if (cls5 == null) {
            cls5 = class$(LOG_PROPERTY);
            f107719v = cls5;
        }
        stringBuffer6.append(cls5.getName());
        stringBuffer6.append("' visible.");
        if (isDiagnosticsEnabled()) {
            logDiagnostic(stringBuffer6.toString());
        }
        throw new LogConfigurationException(stringBuffer6.toString());
    }

    @Override // org.apache.commons.logging.LogFactory
    public Log getInstance(String str) throws LogConfigurationException {
        Log log = (Log) this.instances.get(str);
        if (log != null) {
            return log;
        }
        Log newInstance = newInstance(str);
        this.instances.put(str, newInstance);
        return newInstance;
    }
}
