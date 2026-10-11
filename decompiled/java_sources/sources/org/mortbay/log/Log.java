package org.mortbay.log;

import java.security.AccessController;
import org.mortbay.util.Loader;

/* loaded from: classes13.dex */
public class Log {
    public static final String EXCEPTION = "EXCEPTION ";
    public static final String IGNORED = "IGNORED";
    public static final String IGNORED_FMT = "IGNORED: {}";
    public static final String NOT_IMPLEMENTED = "NOT IMPLEMENTED ";
    public static boolean __ignored;
    public static String __logClass;
    public static boolean __verbose;

    /* renamed from: a */
    public static final String[] f115223a = {"getTargetException", "getTargetError", "getException", "getRootCause"};

    /* renamed from: b */
    public static final Class[] f115224b = new Class[0];

    /* renamed from: c */
    public static Logger f115225c;

    /* renamed from: d */
    public static /* synthetic */ Class f115226d;

    /* renamed from: e */
    public static /* synthetic */ Class f115227e;

    static {
        Class cls;
        AccessController.doPrivileged(new C20422a());
        try {
            Class cls2 = f115226d;
            if (cls2 == null) {
                cls2 = class$("org.mortbay.log.Log");
                f115226d = cls2;
            }
            cls = Loader.loadClass(cls2, __logClass);
            f115225c = (Logger) cls.newInstance();
        } catch (Throwable th) {
            Class cls3 = f115227e;
            if (cls3 == null) {
                cls3 = class$("org.mortbay.log.StdErrLog");
                f115227e = cls3;
            }
            f115225c = new StdErrLog();
            __logClass = cls3.getName();
            if (__verbose) {
                th.printStackTrace();
            }
            cls = cls3;
        }
        Logger logger = f115225c;
        logger.info("Logging to {} via {}", logger, cls.getName());
    }

    /* renamed from: a */
    public static void m71623a(Throwable th) {
        if (th == null) {
            return;
        }
        int i = 0;
        while (true) {
            String[] strArr = f115223a;
            if (i >= strArr.length) {
                return;
            }
            try {
                Throwable th2 = (Throwable) th.getClass().getMethod(strArr[i], f115224b).invoke(th, null);
                if (th2 != null && th2 != th) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("Nested in ");
                    stringBuffer.append(th);
                    stringBuffer.append(":");
                    warn(stringBuffer.toString(), th2);
                }
            } catch (Exception unused) {
            }
            i++;
        }
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static void debug(Throwable th) {
        if (f115225c == null || !isDebugEnabled()) {
            return;
        }
        f115225c.debug(EXCEPTION, th);
        m71623a(th);
    }

    public static Logger getLog() {
        return f115225c;
    }

    public static Logger getLogger(String str) {
        Logger logger = f115225c;
        return (logger == null || str == null) ? logger : logger.getLogger(str);
    }

    public static void ignore(Throwable th) {
        Logger logger = f115225c;
        if (logger == null) {
            return;
        }
        if (__ignored) {
            logger.warn(IGNORED, th);
            m71623a(th);
        } else if (__verbose) {
            logger.debug(IGNORED, th);
            m71623a(th);
        }
    }

    public static void info(String str) {
        Logger logger = f115225c;
        if (logger == null) {
            return;
        }
        logger.info(str, null, null);
    }

    public static boolean isDebugEnabled() {
        Logger logger = f115225c;
        if (logger == null) {
            return false;
        }
        return logger.isDebugEnabled();
    }

    public static void setLog(Logger logger) {
        f115225c = logger;
    }

    public static void warn(String str) {
        Logger logger = f115225c;
        if (logger == null) {
            return;
        }
        logger.warn(str, null, null);
    }

    public static void info(String str, Object obj) {
        Logger logger = f115225c;
        if (logger == null) {
            return;
        }
        logger.info(str, obj, null);
    }

    public static void warn(String str, Object obj) {
        Logger logger = f115225c;
        if (logger == null) {
            return;
        }
        logger.warn(str, obj, null);
    }

    public static void debug(String str) {
        Logger logger = f115225c;
        if (logger == null) {
            return;
        }
        logger.debug(str, null, null);
    }

    public static void info(String str, Object obj, Object obj2) {
        Logger logger = f115225c;
        if (logger == null) {
            return;
        }
        logger.info(str, obj, obj2);
    }

    public static void warn(String str, Object obj, Object obj2) {
        Logger logger = f115225c;
        if (logger == null) {
            return;
        }
        logger.warn(str, obj, obj2);
    }

    public static void debug(String str, Object obj) {
        Logger logger = f115225c;
        if (logger == null) {
            return;
        }
        logger.debug(str, obj, null);
    }

    public static void warn(String str, Throwable th) {
        Logger logger = f115225c;
        if (logger == null) {
            return;
        }
        logger.warn(str, th);
        m71623a(th);
    }

    public static void debug(String str, Object obj, Object obj2) {
        Logger logger = f115225c;
        if (logger == null) {
            return;
        }
        logger.debug(str, obj, obj2);
    }

    public static void warn(Throwable th) {
        Logger logger = f115225c;
        if (logger == null) {
            return;
        }
        logger.warn(EXCEPTION, th);
        m71623a(th);
    }
}
