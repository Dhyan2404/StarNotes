package org.apache.logging.log4j.simple;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.message.MessageFactory;
import org.apache.logging.log4j.spi.AbstractLogger;
import org.apache.logging.log4j.spi.ExtendedLogger;
import org.apache.logging.log4j.spi.LoggerContext;
import org.apache.logging.log4j.spi.LoggerRegistry;
import org.apache.logging.log4j.util.PropertiesUtil;

/* loaded from: classes12.dex */
public class SimpleLoggerContext implements LoggerContext {
    protected static final String DEFAULT_DATE_TIME_FORMAT = "yyyy/MM/dd HH:mm:ss:SSS zzz";
    protected static final String SYSTEM_PREFIX = "org.apache.logging.log4j.simplelog.";

    /* renamed from: j */
    public static final String f111217j = "system.out";

    /* renamed from: k */
    public static final String f111218k = "system.err";

    /* renamed from: a */
    public final PropertiesUtil f111219a;

    /* renamed from: b */
    public final boolean f111220b;

    /* renamed from: c */
    public final boolean f111221c;

    /* renamed from: d */
    public final boolean f111222d;

    /* renamed from: e */
    public final boolean f111223e;

    /* renamed from: f */
    public final String f111224f;

    /* renamed from: g */
    public final Level f111225g;

    /* renamed from: h */
    public final PrintStream f111226h;

    /* renamed from: i */
    public final LoggerRegistry<ExtendedLogger> f111227i = new LoggerRegistry<>();

    public SimpleLoggerContext() {
        PrintStream printStream;
        PropertiesUtil propertiesUtil = new PropertiesUtil("log4j2.simplelog.properties");
        this.f111219a = propertiesUtil;
        this.f111223e = propertiesUtil.getBooleanProperty("org.apache.logging.log4j.simplelog.showContextMap", false);
        this.f111220b = propertiesUtil.getBooleanProperty("org.apache.logging.log4j.simplelog.showlogname", false);
        this.f111221c = propertiesUtil.getBooleanProperty("org.apache.logging.log4j.simplelog.showShortLogname", true);
        boolean booleanProperty = propertiesUtil.getBooleanProperty("org.apache.logging.log4j.simplelog.showdatetime", false);
        this.f111222d = booleanProperty;
        this.f111225g = Level.toLevel(propertiesUtil.getStringProperty("org.apache.logging.log4j.simplelog.level"), Level.ERROR);
        this.f111224f = booleanProperty ? propertiesUtil.getStringProperty("org.apache.logging.log4j.simplelog.dateTimeFormat", DEFAULT_DATE_TIME_FORMAT) : null;
        String stringProperty = propertiesUtil.getStringProperty("org.apache.logging.log4j.simplelog.logFile", "system.err");
        if ("system.err".equalsIgnoreCase(stringProperty)) {
            printStream = System.err;
        } else if ("system.out".equalsIgnoreCase(stringProperty)) {
            printStream = System.out;
        } else {
            try {
                printStream = new PrintStream(new FileOutputStream(stringProperty));
            } catch (FileNotFoundException unused) {
                printStream = System.err;
            }
        }
        this.f111226h = printStream;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public Object getExternalContext() {
        return null;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public ExtendedLogger getLogger(final String name) {
        return getLogger(name, (MessageFactory) null);
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public boolean hasLogger(final String name) {
        return false;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public ExtendedLogger getLogger(final String name, final MessageFactory messageFactory) {
        ExtendedLogger logger = this.f111227i.getLogger(name, messageFactory);
        if (logger != null) {
            AbstractLogger.checkMessageFactory(logger, messageFactory);
            return logger;
        }
        this.f111227i.putIfAbsent(name, messageFactory, new SimpleLogger(name, this.f111225g, this.f111220b, this.f111221c, this.f111222d, this.f111223e, this.f111224f, messageFactory, this.f111219a, this.f111226h));
        return this.f111227i.getLogger(name, messageFactory);
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public boolean hasLogger(final String name, final Class<? extends MessageFactory> messageFactoryClass) {
        return false;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public boolean hasLogger(final String name, final MessageFactory messageFactory) {
        return false;
    }
}
