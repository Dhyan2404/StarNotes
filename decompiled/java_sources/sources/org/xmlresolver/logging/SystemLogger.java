package org.xmlresolver.logging;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xmlresolver.Resolver;
import org.xmlresolver.ResolverConfiguration;

/* loaded from: classes16.dex */
public class SystemLogger extends AbstractLogger {

    /* renamed from: a */
    public final Logger f116204a;

    /* renamed from: b */
    public final java.util.logging.Logger f116205b;

    public SystemLogger(ResolverConfiguration resolverConfiguration) {
        this.f116204a = LoggerFactory.getLogger((Class<?>) Resolver.class);
        this.f116205b = null;
    }

    @Override // org.xmlresolver.logging.ResolverLogger
    public void debug(String str) {
        java.util.logging.Logger logger = this.f116205b;
        if (logger != null) {
            logger.fine(str);
        } else {
            this.f116204a.debug(str);
        }
    }

    @Override // org.xmlresolver.logging.ResolverLogger
    public void info(String str) {
        java.util.logging.Logger logger = this.f116205b;
        if (logger != null) {
            logger.info(str);
        } else {
            this.f116204a.info(str);
        }
    }

    @Override // org.xmlresolver.logging.ResolverLogger
    public void warn(String str) {
        java.util.logging.Logger logger = this.f116205b;
        if (logger != null) {
            logger.warning(str);
        } else {
            this.f116204a.warn(str);
        }
    }

    public SystemLogger(java.util.logging.Logger logger) {
        this.f116204a = null;
        this.f116205b = logger;
    }
}
