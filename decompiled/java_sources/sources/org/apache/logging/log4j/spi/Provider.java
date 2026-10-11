package org.apache.logging.log4j.spi;

import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.Properties;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.status.StatusLogger;

/* loaded from: classes12.dex */
public class Provider {
    public static final String FACTORY_PRIORITY = "FactoryPriority";
    public static final String LOGGER_CONTEXT_FACTORY = "LoggerContextFactory";
    public static final String THREAD_CONTEXT_MAP = "ThreadContextMap";

    /* renamed from: i */
    public static final Integer f111237i = -1;

    /* renamed from: j */
    public static final Logger f111238j = StatusLogger.getLogger();

    /* renamed from: a */
    public final Integer f111239a;

    /* renamed from: b */
    public final String f111240b;

    /* renamed from: c */
    public final Class<? extends LoggerContextFactory> f111241c;

    /* renamed from: d */
    public final String f111242d;

    /* renamed from: e */
    public final Class<? extends ThreadContextMap> f111243e;

    /* renamed from: f */
    public final String f111244f;

    /* renamed from: g */
    public final URL f111245g;

    /* renamed from: h */
    public final WeakReference<ClassLoader> f111246h;

    public Provider(final Properties props, final URL url, final ClassLoader classLoader) {
        this.f111245g = url;
        this.f111246h = new WeakReference<>(classLoader);
        String property = props.getProperty(FACTORY_PRIORITY);
        this.f111239a = property == null ? f111237i : Integer.valueOf(property);
        this.f111240b = props.getProperty(LOGGER_CONTEXT_FACTORY);
        this.f111242d = props.getProperty(THREAD_CONTEXT_MAP);
        this.f111241c = null;
        this.f111243e = null;
        this.f111244f = null;
    }

    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Provider provider = (Provider) o;
        Integer num = this.f111239a;
        if (num == null ? provider.f111239a != null : !num.equals(provider.f111239a)) {
            return false;
        }
        String str = this.f111240b;
        if (str == null ? provider.f111240b != null : !str.equals(provider.f111240b)) {
            return false;
        }
        Class<? extends LoggerContextFactory> cls = this.f111241c;
        if (cls == null ? provider.f111241c != null : !cls.equals(provider.f111241c)) {
            return false;
        }
        String str2 = this.f111244f;
        return str2 != null ? str2.equals(provider.f111244f) : provider.f111244f == null;
    }

    public String getClassName() {
        Class<? extends LoggerContextFactory> cls = this.f111241c;
        return cls != null ? cls.getName() : this.f111240b;
    }

    public Integer getPriority() {
        return this.f111239a;
    }

    public String getThreadContextMap() {
        Class<? extends ThreadContextMap> cls = this.f111243e;
        return cls != null ? cls.getName() : this.f111242d;
    }

    public URL getUrl() {
        return this.f111245g;
    }

    public String getVersions() {
        return this.f111244f;
    }

    public int hashCode() {
        Integer num = this.f111239a;
        int hashCode = (num != null ? num.hashCode() : 0) * 31;
        String str = this.f111240b;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        Class<? extends LoggerContextFactory> cls = this.f111241c;
        int hashCode3 = (hashCode2 + (cls != null ? cls.hashCode() : 0)) * 31;
        String str2 = this.f111244f;
        return hashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public Class<? extends LoggerContextFactory> loadLoggerContextFactory() {
        ClassLoader classLoader;
        Class<? extends LoggerContextFactory> cls = this.f111241c;
        if (cls != null) {
            return cls;
        }
        if (this.f111240b == null || (classLoader = this.f111246h.get()) == null) {
            return null;
        }
        try {
            Class<?> loadClass = classLoader.loadClass(this.f111240b);
            if (LoggerContextFactory.class.isAssignableFrom(loadClass)) {
                return loadClass.asSubclass(LoggerContextFactory.class);
            }
        } catch (Exception e) {
            f111238j.error("Unable to create class {} specified in {}", this.f111240b, this.f111245g.toString(), e);
        }
        return null;
    }

    public Class<? extends ThreadContextMap> loadThreadContextMap() {
        ClassLoader classLoader;
        Class<? extends ThreadContextMap> cls = this.f111243e;
        if (cls != null) {
            return cls;
        }
        if (this.f111242d == null || (classLoader = this.f111246h.get()) == null) {
            return null;
        }
        try {
            Class<?> loadClass = classLoader.loadClass(this.f111242d);
            if (ThreadContextMap.class.isAssignableFrom(loadClass)) {
                return loadClass.asSubclass(ThreadContextMap.class);
            }
        } catch (Exception e) {
            f111238j.error("Unable to create class {} specified in {}", this.f111242d, this.f111245g.toString(), e);
        }
        return null;
    }

    public String toString() {
        ClassLoader classLoader;
        StringBuilder sb = new StringBuilder("Provider[");
        if (!f111237i.equals(this.f111239a)) {
            sb.append("priority=");
            sb.append(this.f111239a);
            sb.append(", ");
        }
        if (this.f111242d != null) {
            sb.append("threadContextMap=");
            sb.append(this.f111242d);
            sb.append(", ");
        } else if (this.f111243e != null) {
            sb.append("threadContextMapClass=");
            sb.append(this.f111243e.getName());
        }
        if (this.f111240b != null) {
            sb.append("className=");
            sb.append(this.f111240b);
            sb.append(", ");
        } else if (this.f111241c != null) {
            sb.append("class=");
            sb.append(this.f111241c.getName());
        }
        if (this.f111245g != null) {
            sb.append("url=");
            sb.append(this.f111245g);
        }
        WeakReference<ClassLoader> weakReference = this.f111246h;
        if (weakReference == null || (classLoader = weakReference.get()) == null) {
            sb.append(", classLoader=null(not reachable)");
        } else {
            sb.append(", classLoader=");
            sb.append(classLoader);
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    public Provider(final Integer priority, final String versions, final Class<? extends LoggerContextFactory> loggerContextFactoryClass) {
        this(priority, versions, loggerContextFactoryClass, null);
    }

    public Provider(final Integer priority, final String versions, final Class<? extends LoggerContextFactory> loggerContextFactoryClass, final Class<? extends ThreadContextMap> threadContextMapClass) {
        this.f111245g = null;
        this.f111246h = null;
        this.f111239a = priority;
        this.f111241c = loggerContextFactoryClass;
        this.f111243e = threadContextMapClass;
        this.f111240b = null;
        this.f111242d = null;
        this.f111244f = versions;
    }
}
