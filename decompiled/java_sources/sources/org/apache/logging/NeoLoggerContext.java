package org.apache.logging;

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
public class NeoLoggerContext implements LoggerContext {
    protected static final String DEFAULT_DATE_TIME_FORMAT = "yyyy/MM/dd HH:mm:ss:SSS zzz";
    protected static final String SYSTEM_PREFIX = "org.apache.logging.log4j.simplelog.";

    /* renamed from: j */
    public static final String f111170j = "system.out";

    /* renamed from: k */
    public static final String f111171k = "system.err";

    /* renamed from: a */
    public final PropertiesUtil f111172a;

    /* renamed from: b */
    public final boolean f111173b;

    /* renamed from: c */
    public final boolean f111174c;

    /* renamed from: d */
    public final boolean f111175d;

    /* renamed from: e */
    public final boolean f111176e;

    /* renamed from: f */
    public final String f111177f;

    /* renamed from: g */
    public final Level f111178g;

    /* renamed from: h */
    public final PrintStream f111179h;

    /* renamed from: i */
    public final LoggerRegistry<ExtendedLogger> f111180i = new LoggerRegistry<>();

    public NeoLoggerContext() {
        PrintStream printStream;
        PropertiesUtil propertiesUtil = new PropertiesUtil("log4j2.simplelog.properties");
        this.f111172a = propertiesUtil;
        this.f111176e = propertiesUtil.getBooleanProperty("org.apache.logging.log4j.simplelog.showContextMap", false);
        this.f111173b = propertiesUtil.getBooleanProperty("org.apache.logging.log4j.simplelog.showlogname", false);
        this.f111174c = propertiesUtil.getBooleanProperty("org.apache.logging.log4j.simplelog.showShortLogname", true);
        boolean booleanProperty = propertiesUtil.getBooleanProperty("org.apache.logging.log4j.simplelog.showdatetime", false);
        this.f111175d = booleanProperty;
        this.f111178g = Level.toLevel(propertiesUtil.getStringProperty("org.apache.logging.log4j.simplelog.level"), Level.ERROR);
        this.f111177f = booleanProperty ? propertiesUtil.getStringProperty("org.apache.logging.log4j.simplelog.dateTimeFormat", DEFAULT_DATE_TIME_FORMAT) : null;
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
        this.f111179h = printStream;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public Object getExternalContext() {
        return null;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public ExtendedLogger getLogger(String str) {
        return getLogger(str, (MessageFactory) null);
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public Object getObject(String str) {
        return null;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public boolean hasLogger(String str) {
        return false;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public Object putObject(String str, Object obj) {
        return null;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public Object putObjectIfAbsent(String str, Object obj) {
        return null;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public Object removeObject(String str) {
        return null;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public ExtendedLogger getLogger(String str, MessageFactory messageFactory) {
        String removePOI = NeoLogger.removePOI(str);
        ExtendedLogger logger = this.f111180i.getLogger(removePOI, messageFactory);
        if (logger != null) {
            AbstractLogger.checkMessageFactory(logger, messageFactory);
            return logger;
        }
        this.f111180i.putIfAbsent(removePOI, messageFactory, new NeoLogger(removePOI, this.f111178g, this.f111173b, this.f111174c, this.f111175d, this.f111176e, this.f111177f, messageFactory, this.f111172a, this.f111179h));
        return this.f111180i.getLogger(removePOI, messageFactory);
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public boolean hasLogger(String str, Class<? extends MessageFactory> cls) {
        return false;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public boolean removeObject(String str, Object obj) {
        return false;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public boolean hasLogger(String str, MessageFactory messageFactory) {
        return false;
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public ExtendedLogger getLogger(Class<?> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = cls.getName();
        }
        return getLogger(canonicalName);
    }

    @Override // org.apache.logging.log4j.spi.LoggerContext
    public ExtendedLogger getLogger(Class<?> cls, MessageFactory messageFactory) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            canonicalName = cls.getName();
        }
        return getLogger(canonicalName, messageFactory);
    }
}
