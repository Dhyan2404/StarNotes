package org.apache.logging.log4j;

import java.net.URI;
import java.util.Map;
import java.util.TreeMap;
import org.apache.logging.log4j.internal.LogManagerStatus;
import org.apache.logging.log4j.message.MessageFactory;
import org.apache.logging.log4j.message.StringFormatterMessageFactory;
import org.apache.logging.log4j.simple.SimpleLoggerContextFactory;
import org.apache.logging.log4j.spi.LoggerContext;
import org.apache.logging.log4j.spi.LoggerContextFactory;
import org.apache.logging.log4j.spi.Provider;
import org.apache.logging.log4j.spi.Terminable;
import org.apache.logging.log4j.status.StatusLogger;
import org.apache.logging.log4j.util.LoaderUtil;
import org.apache.logging.log4j.util.PropertiesUtil;
import org.apache.logging.log4j.util.ProviderUtil;
import org.apache.logging.log4j.util.StackLocatorUtil;

/* loaded from: classes12.dex */
public class LogManager {
    public static final String FACTORY_PROPERTY_NAME = "log4j2.loggerContextFactory";
    public static final String ROOT_LOGGER_NAME = "";

    /* renamed from: a */
    public static final Logger f111187a = StatusLogger.getLogger();

    /* renamed from: b */
    public static final String f111188b = LogManager.class.getName();

    /* renamed from: c */
    public static volatile LoggerContextFactory f111189c;

    static {
        String stringProperty = PropertiesUtil.getProperties().getStringProperty(FACTORY_PROPERTY_NAME);
        if (stringProperty != null) {
            try {
                f111189c = (LoggerContextFactory) LoaderUtil.newCheckedInstanceOf(stringProperty, LoggerContextFactory.class);
            } catch (ClassNotFoundException unused) {
                f111187a.error("Unable to locate configured LoggerContextFactory {}", stringProperty);
            } catch (Exception e) {
                f111187a.error("Unable to create configured LoggerContextFactory {}", stringProperty, e);
            }
        }
        if (f111189c == null) {
            TreeMap treeMap = new TreeMap();
            if (ProviderUtil.hasProviders()) {
                for (Provider provider : ProviderUtil.getProviders()) {
                    Class<? extends LoggerContextFactory> loadLoggerContextFactory = provider.loadLoggerContextFactory();
                    if (loadLoggerContextFactory != null) {
                        try {
                            treeMap.put(provider.getPriority(), loadLoggerContextFactory.newInstance());
                        } catch (Exception e2) {
                            f111187a.error("Unable to create class {} specified in provider URL {}", loadLoggerContextFactory.getName(), provider.getUrl(), e2);
                        }
                    }
                }
                if (treeMap.isEmpty()) {
                    f111187a.error("Log4j2 could not find a logging implementation. Please add log4j-core to the classpath. Using SimpleLogger to log to the console...");
                    f111189c = new SimpleLoggerContextFactory();
                } else if (treeMap.size() == 1) {
                    f111189c = (LoggerContextFactory) treeMap.get(treeMap.lastKey());
                } else {
                    StringBuilder sb = new StringBuilder("Multiple logging implementations found: \n");
                    for (Map.Entry entry : treeMap.entrySet()) {
                        sb.append("Factory: ");
                        sb.append(((LoggerContextFactory) entry.getValue()).getClass().getName());
                        sb.append(", Weighting: ");
                        sb.append(entry.getKey());
                        sb.append('\n');
                    }
                    f111189c = (LoggerContextFactory) treeMap.get(treeMap.lastKey());
                    sb.append("Using factory: ");
                    sb.append(f111189c.getClass().getName());
                    f111187a.warn(sb.toString());
                }
            } else {
                f111187a.error("Log4j2 could not find a logging implementation. Please add log4j-core to the classpath. Using SimpleLogger to log to the console...");
                f111189c = new SimpleLoggerContextFactory();
            }
            LogManagerStatus.setInitialized(true);
        }
    }

    /* renamed from: a */
    public static Class<?> m68615a(final Class<?> clazz) {
        if (clazz != null) {
            return clazz;
        }
        Class<?> callerClass = StackLocatorUtil.getCallerClass(3);
        if (callerClass != null) {
            return callerClass;
        }
        throw new UnsupportedOperationException("No class provided, and an appropriate one cannot be found.");
    }

    public static boolean exists(final String name) {
        return getContext().hasLogger(name);
    }

    public static LoggerContext getContext() {
        try {
            return f111189c.getContext(f111188b, null, null, true);
        } catch (IllegalStateException e) {
            f111187a.warn(e.getMessage() + " Using SimpleLogger");
            return new SimpleLoggerContextFactory().getContext(f111188b, null, null, true);
        }
    }

    public static LoggerContextFactory getFactory() {
        return f111189c;
    }

    public static Logger getFormatterLogger() {
        return getFormatterLogger(StackLocatorUtil.getCallerClass(2));
    }

    public static Logger getLogger() {
        return getLogger(StackLocatorUtil.getCallerClass(2));
    }

    public static Logger getRootLogger() {
        return getLogger("");
    }

    public static void setFactory(final LoggerContextFactory factory) {
        f111189c = factory;
    }

    public static void shutdown() {
        shutdown(false);
    }

    public static Logger getFormatterLogger(final Class<?> clazz) {
        if (clazz == null) {
            clazz = StackLocatorUtil.getCallerClass(2);
        }
        return getLogger(clazz, (MessageFactory) StringFormatterMessageFactory.INSTANCE);
    }

    public static Logger getLogger(final Class<?> clazz) {
        Class<?> m68615a = m68615a(clazz);
        return getContext(m68615a.getClassLoader(), false).getLogger(m68615a);
    }

    public static void shutdown(final boolean currentContext) {
        f111189c.shutdown(f111188b, null, currentContext, false);
    }

    public static Logger getFormatterLogger(final Object value) {
        return getLogger(value != null ? value.getClass() : StackLocatorUtil.getCallerClass(2), (MessageFactory) StringFormatterMessageFactory.INSTANCE);
    }

    public static void shutdown(final boolean currentContext, final boolean allContexts) {
        f111189c.shutdown(f111188b, null, currentContext, allContexts);
    }

    public static LoggerContext getContext(final boolean currentContext) {
        try {
            return f111189c.getContext(f111188b, null, null, currentContext, null, null);
        } catch (IllegalStateException e) {
            f111187a.warn(e.getMessage() + " Using SimpleLogger");
            return new SimpleLoggerContextFactory().getContext(f111188b, null, null, currentContext, null, null);
        }
    }

    public static Logger getFormatterLogger(final String name) {
        return name == null ? getFormatterLogger(StackLocatorUtil.getCallerClass(2)) : getLogger(name, (MessageFactory) StringFormatterMessageFactory.INSTANCE);
    }

    public static Logger getLogger(final Class<?> clazz, final MessageFactory messageFactory) {
        Class<?> m68615a = m68615a(clazz);
        return getContext(m68615a.getClassLoader(), false).getLogger(m68615a, messageFactory);
    }

    public static void shutdown(final LoggerContext context) {
        if (context instanceof Terminable) {
            ((Terminable) context).terminate();
        }
    }

    public static Logger getLogger(final MessageFactory messageFactory) {
        return getLogger(StackLocatorUtil.getCallerClass(2), messageFactory);
    }

    public static LoggerContext getContext(final ClassLoader loader, final boolean currentContext) {
        try {
            return f111189c.getContext(f111188b, loader, null, currentContext);
        } catch (IllegalStateException e) {
            f111187a.warn(e.getMessage() + " Using SimpleLogger");
            return new SimpleLoggerContextFactory().getContext(f111188b, loader, null, currentContext);
        }
    }

    public static Logger getLogger(final Object value) {
        return getLogger(value != null ? value.getClass() : StackLocatorUtil.getCallerClass(2));
    }

    public static Logger getLogger(final Object value, final MessageFactory messageFactory) {
        return getLogger(value != null ? value.getClass() : StackLocatorUtil.getCallerClass(2), messageFactory);
    }

    public static Logger getLogger(final String name) {
        return name != null ? getContext(false).getLogger(name) : getLogger(StackLocatorUtil.getCallerClass(2));
    }

    public static LoggerContext getContext(final ClassLoader loader, final boolean currentContext, final Object externalContext) {
        try {
            return f111189c.getContext(f111188b, loader, externalContext, currentContext);
        } catch (IllegalStateException e) {
            f111187a.warn(e.getMessage() + " Using SimpleLogger");
            return new SimpleLoggerContextFactory().getContext(f111188b, loader, externalContext, currentContext);
        }
    }

    public static Logger getLogger(final String name, final MessageFactory messageFactory) {
        if (name != null) {
            return getContext(false).getLogger(name, messageFactory);
        }
        return getLogger(StackLocatorUtil.getCallerClass(2), messageFactory);
    }

    public static LoggerContext getContext(final ClassLoader loader, final boolean currentContext, final URI configLocation) {
        try {
            return f111189c.getContext(f111188b, loader, null, currentContext, configLocation, null);
        } catch (IllegalStateException e) {
            f111187a.warn(e.getMessage() + " Using SimpleLogger");
            return new SimpleLoggerContextFactory().getContext(f111188b, loader, null, currentContext, configLocation, null);
        }
    }

    public static Logger getLogger(final String fqcn, final String name) {
        return f111189c.getContext(fqcn, null, null, false).getLogger(name);
    }

    public static LoggerContext getContext(final ClassLoader loader, final boolean currentContext, final Object externalContext, final URI configLocation) {
        try {
            return f111189c.getContext(f111188b, loader, externalContext, currentContext, configLocation, null);
        } catch (IllegalStateException e) {
            f111187a.warn(e.getMessage() + " Using SimpleLogger");
            return new SimpleLoggerContextFactory().getContext(f111188b, loader, externalContext, currentContext, configLocation, null);
        }
    }

    public static LoggerContext getContext(final ClassLoader loader, final boolean currentContext, final Object externalContext, final URI configLocation, final String name) {
        try {
            return f111189c.getContext(f111188b, loader, externalContext, currentContext, configLocation, name);
        } catch (IllegalStateException e) {
            f111187a.warn(e.getMessage() + " Using SimpleLogger");
            return new SimpleLoggerContextFactory().getContext(f111188b, loader, externalContext, currentContext, configLocation, name);
        }
    }

    public static LoggerContext getContext(final String fqcn, final boolean currentContext) {
        try {
            return f111189c.getContext(fqcn, null, null, currentContext);
        } catch (IllegalStateException e) {
            f111187a.warn(e.getMessage() + " Using SimpleLogger");
            return new SimpleLoggerContextFactory().getContext(fqcn, null, null, currentContext);
        }
    }

    public static LoggerContext getContext(final String fqcn, final ClassLoader loader, final boolean currentContext) {
        try {
            return f111189c.getContext(fqcn, loader, null, currentContext);
        } catch (IllegalStateException e) {
            f111187a.warn(e.getMessage() + " Using SimpleLogger");
            return new SimpleLoggerContextFactory().getContext(fqcn, loader, null, currentContext);
        }
    }

    public static LoggerContext getContext(final String fqcn, final ClassLoader loader, final boolean currentContext, final URI configLocation, final String name) {
        try {
            return f111189c.getContext(fqcn, loader, null, currentContext, configLocation, name);
        } catch (IllegalStateException e) {
            f111187a.warn(e.getMessage() + " Using SimpleLogger");
            return new SimpleLoggerContextFactory().getContext(fqcn, loader, null, currentContext);
        }
    }
}
