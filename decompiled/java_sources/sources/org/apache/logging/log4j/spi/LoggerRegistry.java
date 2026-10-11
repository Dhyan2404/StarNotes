package org.apache.logging.log4j.spi;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.logging.log4j.message.MessageFactory;
import org.apache.logging.log4j.spi.ExtendedLogger;

/* loaded from: classes12.dex */
public class LoggerRegistry<T extends ExtendedLogger> {

    /* renamed from: c */
    public static final String f111233c = AbstractLogger.DEFAULT_MESSAGE_FACTORY_CLASS.getName();

    /* renamed from: a */
    public final MapFactory<T> f111234a;

    /* renamed from: b */
    public final Map<String, Map<String, T>> f111235b;

    /* loaded from: classes12.dex */
    public static class ConcurrentMapFactory<T extends ExtendedLogger> implements MapFactory<T> {
        @Override // org.apache.logging.log4j.spi.LoggerRegistry.MapFactory
        public Map<String, T> createInnerMap() {
            return new ConcurrentHashMap();
        }

        @Override // org.apache.logging.log4j.spi.LoggerRegistry.MapFactory
        public Map<String, Map<String, T>> createOuterMap() {
            return new ConcurrentHashMap();
        }

        @Override // org.apache.logging.log4j.spi.LoggerRegistry.MapFactory
        public void putIfAbsent(final Map<String, T> innerMap, final String name, final T logger) {
            ((ConcurrentMap) innerMap).putIfAbsent(name, logger);
        }
    }

    /* loaded from: classes12.dex */
    public interface MapFactory<T extends ExtendedLogger> {
        Map<String, T> createInnerMap();

        Map<String, Map<String, T>> createOuterMap();

        void putIfAbsent(Map<String, T> innerMap, String name, T logger);
    }

    /* loaded from: classes12.dex */
    public static class WeakMapFactory<T extends ExtendedLogger> implements MapFactory<T> {
        @Override // org.apache.logging.log4j.spi.LoggerRegistry.MapFactory
        public Map<String, T> createInnerMap() {
            return new WeakHashMap();
        }

        @Override // org.apache.logging.log4j.spi.LoggerRegistry.MapFactory
        public Map<String, Map<String, T>> createOuterMap() {
            return new WeakHashMap();
        }

        @Override // org.apache.logging.log4j.spi.LoggerRegistry.MapFactory
        public void putIfAbsent(final Map<String, T> innerMap, final String name, final T logger) {
            innerMap.put(name, logger);
        }
    }

    public LoggerRegistry() {
        this(new ConcurrentMapFactory());
    }

    /* renamed from: a */
    public static String m68626a(final Class<? extends MessageFactory> messageFactoryClass) {
        return messageFactoryClass == null ? f111233c : messageFactoryClass.getName();
    }

    /* renamed from: b */
    public static String m68627b(final MessageFactory messageFactory) {
        return messageFactory == null ? f111233c : messageFactory.getClass().getName();
    }

    /* renamed from: c */
    public final Map<String, T> m68628c(final String factoryName) {
        Map<String, T> map = this.f111235b.get(factoryName);
        if (map != null) {
            return map;
        }
        Map<String, T> createInnerMap = this.f111234a.createInnerMap();
        this.f111235b.put(factoryName, createInnerMap);
        return createInnerMap;
    }

    public T getLogger(final String name) {
        return m68628c(f111233c).get(name);
    }

    public Collection<T> getLoggers() {
        return getLoggers(new ArrayList());
    }

    public boolean hasLogger(final String name) {
        return m68628c(f111233c).containsKey(name);
    }

    public void putIfAbsent(final String name, final MessageFactory messageFactory, final T logger) {
        this.f111234a.putIfAbsent(m68628c(m68627b(messageFactory)), name, logger);
    }

    public LoggerRegistry(final MapFactory<T> factory) {
        Objects.requireNonNull(factory, "factory");
        this.f111234a = factory;
        this.f111235b = factory.createOuterMap();
    }

    public T getLogger(final String name, final MessageFactory messageFactory) {
        return m68628c(m68627b(messageFactory)).get(name);
    }

    public Collection<T> getLoggers(final Collection<T> destination) {
        Iterator<Map<String, T>> it2 = this.f111235b.values().iterator();
        while (it2.hasNext()) {
            destination.addAll(it2.next().values());
        }
        return destination;
    }

    public boolean hasLogger(final String name, final MessageFactory messageFactory) {
        return m68628c(m68627b(messageFactory)).containsKey(name);
    }

    public boolean hasLogger(final String name, final Class<? extends MessageFactory> messageFactoryClass) {
        return m68628c(m68626a(messageFactoryClass)).containsKey(name);
    }
}
