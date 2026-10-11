package org.apache.logging.log4j.spi;

import org.apache.logging.log4j.message.MessageFactory;

/* loaded from: classes12.dex */
public interface LoggerContext {
    Object getExternalContext();

    default ExtendedLogger getLogger(Class<?> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = cls.getName();
        }
        return getLogger(canonicalName);
    }

    ExtendedLogger getLogger(String name);

    ExtendedLogger getLogger(String name, MessageFactory messageFactory);

    default Object getObject(String key) {
        return null;
    }

    boolean hasLogger(String name);

    boolean hasLogger(String name, Class<? extends MessageFactory> messageFactoryClass);

    boolean hasLogger(String name, MessageFactory messageFactory);

    default Object putObject(String key, Object value) {
        return null;
    }

    default Object putObjectIfAbsent(String key, Object value) {
        return null;
    }

    default Object removeObject(String key) {
        return null;
    }

    default boolean removeObject(String key, Object value) {
        return false;
    }

    default ExtendedLogger getLogger(Class<?> cls, MessageFactory messageFactory) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = cls.getName();
        }
        return getLogger(canonicalName, messageFactory);
    }
}
