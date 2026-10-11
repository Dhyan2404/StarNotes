package org.slf4j;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import org.apache.commons.collections4.IteratorUtils;
import org.slf4j.event.SubstituteLoggingEvent;
import org.slf4j.helpers.NOPLoggerFactory;
import org.slf4j.helpers.SubstituteLogger;
import org.slf4j.helpers.SubstituteLoggerFactory;
import org.slf4j.helpers.Util;
import org.slf4j.impl.StaticLoggerBinder;

/* loaded from: classes16.dex */
public final class LoggerFactory {

    /* renamed from: a */
    public static final String f116005a = "http://www.slf4j.org/codes.html";

    /* renamed from: b */
    public static final String f116006b = "http://www.slf4j.org/codes.html#StaticLoggerBinder";

    /* renamed from: c */
    public static final String f116007c = "http://www.slf4j.org/codes.html#multiple_bindings";

    /* renamed from: d */
    public static final String f116008d = "http://www.slf4j.org/codes.html#null_LF";

    /* renamed from: e */
    public static final String f116009e = "http://www.slf4j.org/codes.html#version_mismatch";

    /* renamed from: f */
    public static final String f116010f = "http://www.slf4j.org/codes.html#substituteLogger";

    /* renamed from: g */
    public static final String f116011g = "http://www.slf4j.org/codes.html#loggerNameMismatch";

    /* renamed from: h */
    public static final String f116012h = "http://www.slf4j.org/codes.html#replay";

    /* renamed from: i */
    public static final String f116013i = "http://www.slf4j.org/codes.html#unsuccessfulInit";

    /* renamed from: j */
    public static final String f116014j = "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit";

    /* renamed from: k */
    public static final int f116015k = 0;

    /* renamed from: l */
    public static final int f116016l = 1;

    /* renamed from: m */
    public static final int f116017m = 2;

    /* renamed from: n */
    public static final int f116018n = 3;

    /* renamed from: o */
    public static final int f116019o = 4;

    /* renamed from: p */
    public static volatile int f116020p = 0;

    /* renamed from: t */
    public static final String f116024t = "java.vendor.url";

    /* renamed from: q */
    public static final SubstituteLoggerFactory f116021q = new SubstituteLoggerFactory();

    /* renamed from: r */
    public static final NOPLoggerFactory f116022r = new NOPLoggerFactory();

    /* renamed from: s */
    public static final String f116023s = "slf4j.detectLoggerNameMismatch";

    /* renamed from: u */
    public static boolean f116025u = Util.safeGetBooleanSystemProperty(f116023s);

    /* renamed from: v */
    public static final String[] f116026v = {"1.6", "1.7"};

    /* renamed from: w */
    public static String f116027w = "org/slf4j/impl/StaticLoggerBinder.class";

    /* renamed from: a */
    public static final void m71897a() {
        Set<URL> set;
        try {
            try {
                if (m71905i()) {
                    set = null;
                } else {
                    set = m71902f();
                    m71913q(set);
                }
                StaticLoggerBinder.getSingleton();
                f116020p = 3;
                m71912p(set);
            } catch (Exception e) {
                m71901e(e);
                throw new IllegalStateException("Unexpected initialization failure", e);
            } catch (NoClassDefFoundError e2) {
                if (!m71906j(e2.getMessage())) {
                    m71901e(e2);
                    throw e2;
                }
                f116020p = 4;
                Util.report("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
                Util.report("Defaulting to no-operation (NOP) logger implementation");
                Util.report("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
            } catch (NoSuchMethodError e3) {
                String message = e3.getMessage();
                if (message != null && message.contains("org.slf4j.impl.StaticLoggerBinder.getSingleton()")) {
                    f116020p = 2;
                    Util.report("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                    Util.report("Your binding is version 1.5.5 or earlier.");
                    Util.report("Upgrade your binding to version 1.6.x.");
                }
                throw e3;
            }
        } finally {
            m71909m();
        }
    }

    /* renamed from: b */
    public static void m71898b(SubstituteLoggingEvent substituteLoggingEvent, int i) {
        if (substituteLoggingEvent.getLogger().isDelegateEventAware()) {
            m71899c(i);
        } else {
            if (substituteLoggingEvent.getLogger().isDelegateNOP()) {
                return;
            }
            m71900d();
        }
    }

    /* renamed from: c */
    public static void m71899c(int i) {
        Util.report("A number (" + i + ") of logging calls during the initialization phase have been intercepted and are");
        Util.report("now being replayed. These are subject to the filtering rules of the underlying logging system.");
        Util.report("See also http://www.slf4j.org/codes.html#replay");
    }

    /* renamed from: d */
    public static void m71900d() {
        Util.report("The following set of substitute loggers may have been accessed");
        Util.report("during the initialization phase. Logging calls during this");
        Util.report("phase were not honored. However, subsequent logging calls to these");
        Util.report("loggers will work as normally expected.");
        Util.report("See also http://www.slf4j.org/codes.html#substituteLogger");
    }

    /* renamed from: e */
    public static void m71901e(Throwable th) {
        f116020p = 2;
        Util.report("Failed to instantiate SLF4J LoggerFactory", th);
    }

    /* renamed from: f */
    public static Set<URL> m71902f() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            ClassLoader classLoader = LoggerFactory.class.getClassLoader();
            Enumeration<URL> systemResources = classLoader == null ? ClassLoader.getSystemResources(f116027w) : classLoader.getResources(f116027w);
            while (systemResources.hasMoreElements()) {
                linkedHashSet.add(systemResources.nextElement());
            }
        } catch (IOException e) {
            Util.report("Error getting resources from path", e);
        }
        return linkedHashSet;
    }

    /* renamed from: g */
    public static void m71903g() {
        SubstituteLoggerFactory substituteLoggerFactory = f116021q;
        synchronized (substituteLoggerFactory) {
            substituteLoggerFactory.postInitialization();
            for (SubstituteLogger substituteLogger : substituteLoggerFactory.getLoggers()) {
                substituteLogger.setDelegate(getLogger(substituteLogger.getName()));
            }
        }
    }

    public static ILoggerFactory getILoggerFactory() {
        if (f116020p == 0) {
            synchronized (LoggerFactory.class) {
                if (f116020p == 0) {
                    f116020p = 1;
                    m71908l();
                }
            }
        }
        int i = f116020p;
        if (i == 1) {
            return f116021q;
        }
        if (i == 2) {
            throw new IllegalStateException(f116014j);
        }
        if (i == 3) {
            return StaticLoggerBinder.getSingleton().getLoggerFactory();
        }
        if (i == 4) {
            return f116022r;
        }
        throw new IllegalStateException("Unreachable code");
    }

    public static Logger getLogger(String str) {
        return getILoggerFactory().getLogger(str);
    }

    /* renamed from: h */
    public static boolean m71904h(Set<URL> set) {
        return set.size() > 1;
    }

    /* renamed from: i */
    public static boolean m71905i() {
        String safeGetSystemProperty = Util.safeGetSystemProperty(f116024t);
        if (safeGetSystemProperty == null) {
            return false;
        }
        return safeGetSystemProperty.toLowerCase().contains("android");
    }

    /* renamed from: j */
    public static boolean m71906j(String str) {
        if (str == null) {
            return false;
        }
        return str.contains("org/slf4j/impl/StaticLoggerBinder") || str.contains("org.slf4j.impl.StaticLoggerBinder");
    }

    /* renamed from: k */
    public static boolean m71907k(Class<?> cls, Class<?> cls2) {
        return !cls2.isAssignableFrom(cls);
    }

    /* renamed from: l */
    public static final void m71908l() {
        m71897a();
        if (f116020p == 3) {
            m71915s();
        }
    }

    /* renamed from: m */
    public static void m71909m() {
        m71903g();
        m71910n();
        f116021q.clear();
    }

    /* renamed from: n */
    public static void m71910n() {
        LinkedBlockingQueue<SubstituteLoggingEvent> eventQueue = f116021q.getEventQueue();
        int size = eventQueue.size();
        ArrayList<SubstituteLoggingEvent> arrayList = new ArrayList(128);
        int i = 0;
        while (eventQueue.drainTo(arrayList, 128) != 0) {
            for (SubstituteLoggingEvent substituteLoggingEvent : arrayList) {
                m71911o(substituteLoggingEvent);
                int i2 = i + 1;
                if (i == 0) {
                    m71898b(substituteLoggingEvent, size);
                }
                i = i2;
            }
            arrayList.clear();
        }
    }

    /* renamed from: o */
    public static void m71911o(SubstituteLoggingEvent substituteLoggingEvent) {
        if (substituteLoggingEvent == null) {
            return;
        }
        SubstituteLogger logger = substituteLoggingEvent.getLogger();
        String name = logger.getName();
        if (logger.isDelegateNull()) {
            throw new IllegalStateException("Delegate logger cannot be null at this state.");
        }
        if (logger.isDelegateNOP()) {
            return;
        }
        if (logger.isDelegateEventAware()) {
            logger.log(substituteLoggingEvent);
        } else {
            Util.report(name);
        }
    }

    /* renamed from: p */
    public static void m71912p(Set<URL> set) {
        if (set == null || !m71904h(set)) {
            return;
        }
        Util.report("Actual binding is of type [" + StaticLoggerBinder.getSingleton().getLoggerFactoryClassStr() + IteratorUtils.f104924b);
    }

    /* renamed from: q */
    public static void m71913q(Set<URL> set) {
        if (m71904h(set)) {
            Util.report("Class path contains multiple SLF4J bindings.");
            Iterator<URL> it2 = set.iterator();
            while (it2.hasNext()) {
                Util.report("Found binding in [" + it2.next() + IteratorUtils.f104924b);
            }
            Util.report("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }

    /* renamed from: r */
    public static void m71914r() {
        f116020p = 0;
    }

    /* renamed from: s */
    public static final void m71915s() {
        try {
            String str = StaticLoggerBinder.REQUESTED_API_VERSION;
            boolean z = false;
            for (String str2 : f116026v) {
                if (str.startsWith(str2)) {
                    z = true;
                }
            }
            if (z) {
                return;
            }
            Util.report("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(f116026v).toString());
            Util.report("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
        } catch (NoSuchFieldError unused) {
        } catch (Throwable th) {
            Util.report("Unexpected problem occured during version sanity check", th);
        }
    }

    public static Logger getLogger(Class<?> cls) {
        Class<?> callingClass;
        Logger logger = getLogger(cls.getName());
        if (f116025u && (callingClass = Util.getCallingClass()) != null && m71907k(cls, callingClass)) {
            Util.report(String.format("Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\".", logger.getName(), callingClass.getName()));
            Util.report("See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation");
        }
        return logger;
    }
}
