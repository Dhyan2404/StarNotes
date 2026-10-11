package org.apache.logging.log4j.spi;

import java.net.URI;

/* loaded from: classes12.dex */
public interface LoggerContextFactory {
    LoggerContext getContext(String fqcn, ClassLoader loader, Object externalContext, boolean currentContext);

    LoggerContext getContext(String fqcn, ClassLoader loader, Object externalContext, boolean currentContext, URI configLocation, String name);

    default boolean hasContext(String fqcn, ClassLoader loader, boolean currentContext) {
        return false;
    }

    default boolean isClassLoaderDependent() {
        return true;
    }

    void removeContext(LoggerContext context);

    default void shutdown(String fqcn, ClassLoader loader, boolean currentContext, boolean allContexts) {
        if (hasContext(fqcn, loader, currentContext)) {
            LoggerContext context = getContext(fqcn, loader, null, currentContext);
            if (context instanceof Terminable) {
                ((Terminable) context).terminate();
            }
        }
    }
}
