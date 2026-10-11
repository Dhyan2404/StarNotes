package org.apache.logging;

import java.net.URI;
import org.apache.logging.log4j.spi.LoggerContext;
import org.apache.logging.log4j.spi.LoggerContextFactory;

/* loaded from: classes12.dex */
public class NeoLoggerContextFactory implements LoggerContextFactory {

    /* renamed from: a */
    public static LoggerContext f111181a = new NeoLoggerContext();

    @Override // org.apache.logging.log4j.spi.LoggerContextFactory
    public LoggerContext getContext(String str, ClassLoader classLoader, Object obj, boolean z) {
        return f111181a;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContextFactory
    public boolean isClassLoaderDependent() {
        return false;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContextFactory
    public void removeContext(LoggerContext loggerContext) {
    }

    @Override // org.apache.logging.log4j.spi.LoggerContextFactory
    public LoggerContext getContext(String str, ClassLoader classLoader, Object obj, boolean z, URI uri, String str2) {
        return f111181a;
    }
}
