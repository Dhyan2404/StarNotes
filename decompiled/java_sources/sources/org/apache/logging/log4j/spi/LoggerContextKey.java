package org.apache.logging.log4j.spi;

import org.apache.logging.log4j.message.MessageFactory;

@Deprecated
/* loaded from: classes12.dex */
public class LoggerContextKey {
    public static String create(final String name) {
        return create(name, AbstractLogger.DEFAULT_MESSAGE_FACTORY_CLASS);
    }

    public static String create(final String name, final MessageFactory messageFactory) {
        return create(name, (Class<? extends MessageFactory>) (messageFactory != null ? messageFactory.getClass() : AbstractLogger.DEFAULT_MESSAGE_FACTORY_CLASS));
    }

    public static String create(final String name, final Class<? extends MessageFactory> messageFactoryClass) {
        if (messageFactoryClass == null) {
            messageFactoryClass = AbstractLogger.DEFAULT_MESSAGE_FACTORY_CLASS;
        }
        return name + "." + messageFactoryClass.getName();
    }
}
