package org.apache.logging.log4j.spi;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.util.LoaderUtil;

/* loaded from: classes12.dex */
public abstract class AbstractLoggerAdapter<L> implements LoggerAdapter<L>, LoggerContextShutdownAware {
    protected final Map<LoggerContext, ConcurrentMap<String, L>> registry = new ConcurrentHashMap();

    /* renamed from: e */
    public final ReadWriteLock f111231e = new ReentrantReadWriteLock(true);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f111231e.writeLock().lock();
        try {
            this.registry.clear();
        } finally {
            this.f111231e.writeLock().unlock();
        }
    }

    @Override // org.apache.logging.log4j.spi.LoggerContextShutdownAware
    public void contextShutdown(LoggerContext loggerContext) {
        this.registry.remove(loggerContext);
    }

    public abstract LoggerContext getContext();

    public LoggerContext getContext(final Class<?> callerClass) {
        ClassLoader classLoader = callerClass != null ? callerClass.getClassLoader() : null;
        if (classLoader == null) {
            classLoader = LoaderUtil.getThreadContextClassLoader();
        }
        return LogManager.getContext(classLoader, false);
    }

    @Override // org.apache.logging.log4j.spi.LoggerAdapter
    public L getLogger(final String name) {
        LoggerContext context = getContext();
        ConcurrentMap<String, L> loggersInContext = getLoggersInContext(context);
        L l = loggersInContext.get(name);
        if (l != null) {
            return l;
        }
        loggersInContext.putIfAbsent(name, newLogger(name, context));
        return loggersInContext.get(name);
    }

    public Set<LoggerContext> getLoggerContexts() {
        return new HashSet(this.registry.keySet());
    }

    public ConcurrentMap<String, L> getLoggersInContext(final LoggerContext context) {
        this.f111231e.readLock().lock();
        try {
            ConcurrentMap<String, L> concurrentMap = this.registry.get(context);
            if (concurrentMap != null) {
                return concurrentMap;
            }
            this.f111231e.writeLock().lock();
            try {
                ConcurrentMap<String, L> concurrentMap2 = this.registry.get(context);
                if (concurrentMap2 == null) {
                    concurrentMap2 = new ConcurrentHashMap<>();
                    this.registry.put(context, concurrentMap2);
                    if (context instanceof LoggerContextShutdownEnabled) {
                        ((LoggerContextShutdownEnabled) context).addShutdownListener(this);
                    }
                }
                return concurrentMap2;
            } finally {
                this.f111231e.writeLock().unlock();
            }
        } finally {
            this.f111231e.readLock().unlock();
        }
    }

    public abstract L newLogger(final String name, final LoggerContext context);
}
