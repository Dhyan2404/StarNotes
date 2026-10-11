package org.apache.logging.log4j.spi;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogBuilder;
import org.apache.logging.log4j.LoggingException;
import org.apache.logging.log4j.Marker;
import org.apache.logging.log4j.MarkerManager;
import org.apache.logging.log4j.internal.DefaultLogBuilder;
import org.apache.logging.log4j.message.DefaultFlowMessageFactory;
import org.apache.logging.log4j.message.EntryMessage;
import org.apache.logging.log4j.message.FlowMessageFactory;
import org.apache.logging.log4j.message.Message;
import org.apache.logging.log4j.message.MessageFactory;
import org.apache.logging.log4j.message.MessageFactory2;
import org.apache.logging.log4j.message.ParameterizedMessage;
import org.apache.logging.log4j.message.ParameterizedMessageFactory;
import org.apache.logging.log4j.message.ReusableMessageFactory;
import org.apache.logging.log4j.message.SimpleMessage;
import org.apache.logging.log4j.message.StringFormattedMessage;
import org.apache.logging.log4j.status.StatusLogger;
import org.apache.logging.log4j.util.Constants;
import org.apache.logging.log4j.util.LambdaUtil;
import org.apache.logging.log4j.util.LoaderUtil;
import org.apache.logging.log4j.util.MessageSupplier;
import org.apache.logging.log4j.util.PerformanceSensitive;
import org.apache.logging.log4j.util.PropertiesUtil;
import org.apache.logging.log4j.util.StackLocatorUtil;
import org.apache.logging.log4j.util.Strings;
import org.apache.logging.log4j.util.Supplier;

/* loaded from: classes12.dex */
public abstract class AbstractLogger implements ExtendedLogger, LocationAwareLogger, Serializable {
    private static final String CATCHING = "Catching";
    public static final Marker CATCHING_MARKER;
    public static final Class<? extends FlowMessageFactory> DEFAULT_FLOW_MESSAGE_FACTORY_CLASS;
    public static final Class<? extends MessageFactory> DEFAULT_MESSAGE_FACTORY_CLASS;
    public static final Marker ENTRY_MARKER;
    public static final Marker EXCEPTION_MARKER;
    public static final Marker EXIT_MARKER;
    public static final Marker FLOW_MARKER;
    private static final String FQCN;
    private static final String THROWING = "Throwing";
    public static final Marker THROWING_MARKER;
    private static final ThreadLocal<int[]> recursionDepthHolder;
    private static final long serialVersionUID = 2;
    private final FlowMessageFactory flowMessageFactory;
    protected final transient ThreadLocal<DefaultLogBuilder> logBuilder;
    private final MessageFactory2 messageFactory;
    protected final String name;

    /* renamed from: org.apache.logging.log4j.spi.AbstractLogger$a */
    /* loaded from: classes12.dex */
    public class C19402a extends ThreadLocal<DefaultLogBuilder> {

        /* renamed from: a */
        public AbstractLogger f111229a;

        public C19402a(AbstractLogger logger) {
            this.f111229a = logger;
        }

        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DefaultLogBuilder initialValue() {
            return new DefaultLogBuilder(this.f111229a);
        }
    }

    static {
        Marker marker = MarkerManager.getMarker("FLOW");
        FLOW_MARKER = marker;
        ENTRY_MARKER = MarkerManager.getMarker("ENTER").setParents(marker);
        EXIT_MARKER = MarkerManager.getMarker("EXIT").setParents(marker);
        Marker marker2 = MarkerManager.getMarker("EXCEPTION");
        EXCEPTION_MARKER = marker2;
        THROWING_MARKER = MarkerManager.getMarker("THROWING").setParents(marker2);
        CATCHING_MARKER = MarkerManager.getMarker("CATCHING").setParents(marker2);
        DEFAULT_MESSAGE_FACTORY_CLASS = createClassForProperty("log4j2.messageFactory", ReusableMessageFactory.class, ParameterizedMessageFactory.class);
        DEFAULT_FLOW_MESSAGE_FACTORY_CLASS = createFlowClassForProperty("log4j2.flowMessageFactory", DefaultFlowMessageFactory.class);
        FQCN = AbstractLogger.class.getName();
        recursionDepthHolder = new ThreadLocal<>();
    }

    public AbstractLogger() {
        this.name = getClass().getName();
        this.messageFactory = createDefaultMessageFactory();
        this.flowMessageFactory = createDefaultFlowMessageFactory();
        this.logBuilder = new C19402a(this);
    }

    public static void checkMessageFactory(final ExtendedLogger logger, final MessageFactory messageFactory) {
        String name = logger.getName();
        MessageFactory messageFactory2 = logger.getMessageFactory();
        if (messageFactory != null && !messageFactory2.equals(messageFactory)) {
            StatusLogger.getLogger().warn("The Logger {} was created with the message factory {} and is now requested with the message factory {}, which may create log events with unexpected formatting.", name, messageFactory2, messageFactory);
            return;
        }
        if (messageFactory == null) {
            Class<?> cls = messageFactory2.getClass();
            Class<? extends MessageFactory> cls2 = DEFAULT_MESSAGE_FACTORY_CLASS;
            if (cls.equals(cls2)) {
                return;
            }
            StatusLogger.getLogger().warn("The Logger {} was created with the message factory {} and is now requested with a null message factory (defaults to {}), which may create log events with unexpected formatting.", name, messageFactory2, cls2.getName());
        }
    }

    private static Class<? extends MessageFactory> createClassForProperty(final String property, final Class<ReusableMessageFactory> reusableParameterizedMessageFactoryClass, final Class<ParameterizedMessageFactory> parameterizedMessageFactoryClass) {
        try {
            return LoaderUtil.loadClass(PropertiesUtil.getProperties().getStringProperty(property, Constants.ENABLE_THREADLOCALS ? reusableParameterizedMessageFactoryClass.getName() : parameterizedMessageFactoryClass.getName())).asSubclass(MessageFactory.class);
        } catch (Throwable unused) {
            return parameterizedMessageFactoryClass;
        }
    }

    private static FlowMessageFactory createDefaultFlowMessageFactory() {
        try {
            return DEFAULT_FLOW_MESSAGE_FACTORY_CLASS.newInstance();
        } catch (IllegalAccessException | InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static MessageFactory2 createDefaultMessageFactory() {
        try {
            return narrow(DEFAULT_MESSAGE_FACTORY_CLASS.newInstance());
        } catch (IllegalAccessException | InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static Class<? extends FlowMessageFactory> createFlowClassForProperty(final String property, final Class<DefaultFlowMessageFactory> defaultFlowMessageFactoryClass) {
        try {
            return LoaderUtil.loadClass(PropertiesUtil.getProperties().getStringProperty(property, defaultFlowMessageFactoryClass.getName())).asSubclass(FlowMessageFactory.class);
        } catch (Throwable unused) {
            return defaultFlowMessageFactoryClass;
        }
    }

    private static void decrementRecursionDepth() {
        int[] recursionDepthHolder2 = getRecursionDepthHolder();
        int i = recursionDepthHolder2[0] - 1;
        recursionDepthHolder2[0] = i;
        if (i >= 0) {
            return;
        }
        throw new IllegalStateException("Recursion depth became negative: " + i);
    }

    @PerformanceSensitive
    private StackTraceElement getLocation(String fqcn) {
        if (requiresLocation()) {
            return StackLocatorUtil.calcLocation(fqcn);
        }
        return null;
    }

    private DefaultLogBuilder getLogBuilder(Level level) {
        DefaultLogBuilder defaultLogBuilder = this.logBuilder.get();
        return (!Constants.ENABLE_THREADLOCALS || defaultLogBuilder.isInUse()) ? new DefaultLogBuilder(this, level) : defaultLogBuilder;
    }

    public static int getRecursionDepth() {
        return getRecursionDepthHolder()[0];
    }

    private static int[] getRecursionDepthHolder() {
        ThreadLocal<int[]> threadLocal = recursionDepthHolder;
        int[] iArr = threadLocal.get();
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[1];
        threadLocal.set(iArr2);
        return iArr2;
    }

    private void handleLogMessageException(final Throwable throwable, final String fqcn, final Message message) {
        if (throwable instanceof LoggingException) {
            throw ((LoggingException) throwable);
        }
        StatusLogger.getLogger().warn("{} caught {} logging {}: {}", fqcn, throwable.getClass().getName(), message.getClass().getSimpleName(), message.getFormat(), throwable);
    }

    private static void incrementRecursionDepth() {
        int[] recursionDepthHolder2 = getRecursionDepthHolder();
        recursionDepthHolder2[0] = recursionDepthHolder2[0] + 1;
    }

    @PerformanceSensitive
    private void logMessageSafely(final String fqcn, final Level level, final Marker marker, final Message message, final Throwable throwable) {
        try {
            logMessageTrackRecursion(fqcn, level, marker, message, throwable);
        } finally {
            ReusableMessageFactory.release(message);
        }
    }

    @PerformanceSensitive
    private void logMessageTrackRecursion(final String fqcn, final Level level, final Marker marker, final Message message, final Throwable throwable) {
        try {
            incrementRecursionDepth();
            tryLogMessage(fqcn, getLocation(fqcn), level, marker, message, throwable);
        } finally {
            decrementRecursionDepth();
        }
    }

    private static MessageFactory2 narrow(final MessageFactory result) {
        return result instanceof MessageFactory2 ? (MessageFactory2) result : new MessageFactory2Adapter(result);
    }

    private void readObject(final ObjectInputStream s) throws ClassNotFoundException, IOException {
        s.defaultReadObject();
        try {
            Field declaredField = getClass().getDeclaredField("logBuilder");
            declaredField.setAccessible(true);
            declaredField.set(this, new C19402a(this));
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            StatusLogger.getLogger().warn("Unable to initialize LogBuilder");
        }
    }

    @PerformanceSensitive
    private void tryLogMessage(final String fqcn, final StackTraceElement location, final Level level, final Marker marker, final Message message, final Throwable throwable) {
        try {
            log(level, marker, fqcn, location, message, throwable);
        } catch (Throwable th) {
            handleLogMessageException(th, fqcn, message);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public LogBuilder always() {
        DefaultLogBuilder defaultLogBuilder = this.logBuilder.get();
        return defaultLogBuilder.isInUse() ? new DefaultLogBuilder(this) : defaultLogBuilder.reset(Level.OFF);
    }

    @Override // org.apache.logging.log4j.Logger
    public LogBuilder atDebug() {
        return atLevel(Level.DEBUG);
    }

    @Override // org.apache.logging.log4j.Logger
    public LogBuilder atError() {
        return atLevel(Level.ERROR);
    }

    @Override // org.apache.logging.log4j.Logger
    public LogBuilder atFatal() {
        return atLevel(Level.FATAL);
    }

    @Override // org.apache.logging.log4j.Logger
    public LogBuilder atInfo() {
        return atLevel(Level.INFO);
    }

    @Override // org.apache.logging.log4j.Logger
    public LogBuilder atLevel(Level level) {
        return isEnabled(level) ? getLogBuilder(level).reset(level) : LogBuilder.NOOP;
    }

    @Override // org.apache.logging.log4j.Logger
    public LogBuilder atTrace() {
        return atLevel(Level.TRACE);
    }

    @Override // org.apache.logging.log4j.Logger
    public LogBuilder atWarn() {
        return atLevel(Level.WARN);
    }

    @Override // org.apache.logging.log4j.Logger
    public void catching(final Level level, final Throwable throwable) {
        catching(FQCN, level, throwable);
    }

    public Message catchingMsg(final Throwable throwable) {
        return this.messageFactory.newMessage(CATCHING);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final CharSequence message) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, (Throwable) null);
    }

    public EntryMessage enter(final String fqcn, final String format, final Supplier<?>... paramSuppliers) {
        Level level = Level.TRACE;
        Marker marker = ENTRY_MARKER;
        if (!isEnabled(level, marker, (Object) null, (Throwable) null)) {
            return null;
        }
        EntryMessage entryMsg = entryMsg(format, paramSuppliers);
        logMessageSafely(fqcn, level, marker, entryMsg, null);
        return entryMsg;
    }

    @Override // org.apache.logging.log4j.Logger
    @Deprecated
    public void entry() {
        entry(FQCN, null);
    }

    public EntryMessage entryMsg(final String format, final Object... params) {
        int length = params == null ? 0 : params.length;
        if (length == 0) {
            if (Strings.isEmpty(format)) {
                return this.flowMessageFactory.newEntryMessage(null);
            }
            return this.flowMessageFactory.newEntryMessage(new SimpleMessage(format));
        }
        if (format != null) {
            return this.flowMessageFactory.newEntryMessage(new ParameterizedMessage(format, params));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("params(");
        for (int i = 0; i < length; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            Object obj = params[i];
            sb.append(obj instanceof Message ? ((Message) obj).getFormattedMessage() : String.valueOf(obj));
        }
        sb.append(')');
        return this.flowMessageFactory.newEntryMessage(new SimpleMessage(sb));
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final Message message) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, message != null ? message.getThrowable() : null);
    }

    @Override // org.apache.logging.log4j.Logger
    @Deprecated
    public void exit() {
        exit(FQCN, null);
    }

    public Message exitMsg(final String format, final Object result) {
        if (result == null) {
            if (format == null) {
                return this.messageFactory.newMessage("Exit");
            }
            return this.messageFactory.newMessage("Exit: " + format);
        }
        if (format != null) {
            return this.messageFactory.newMessage("Exit: " + format, result);
        }
        return this.messageFactory.newMessage("Exit with(" + result + ')');
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final Message message) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, message != null ? message.getThrowable() : null);
    }

    @Override // org.apache.logging.log4j.Logger
    public <MF extends MessageFactory> MF getMessageFactory() {
        return this.messageFactory;
    }

    @Override // org.apache.logging.log4j.Logger
    public String getName() {
        return this.name;
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final Message message) {
        logIfEnabled(FQCN, Level.INFO, marker, message, message != null ? message.getThrowable() : null);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isDebugEnabled() {
        return isEnabled(Level.DEBUG, null, null);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isEnabled(final Level level) {
        return isEnabled(level, (Marker) null, (Object) null, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isErrorEnabled() {
        return isEnabled(Level.ERROR, (Marker) null, (Object) null, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isFatalEnabled() {
        return isEnabled(Level.FATAL, (Marker) null, (Object) null, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isInfoEnabled() {
        return isEnabled(Level.INFO, (Marker) null, (Object) null, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isTraceEnabled() {
        return isEnabled(Level.TRACE, (Marker) null, (Object) null, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isWarnEnabled() {
        return isEnabled(Level.WARN, (Marker) null, (Object) null, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final Message message) {
        logIfEnabled(FQCN, level, marker, message, message != null ? message.getThrowable() : null);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final Message message, final Throwable throwable) {
        if (isEnabled(level, marker, message, throwable)) {
            logMessageSafely(fqcn, level, marker, message, throwable);
        }
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final CharSequence message, final Throwable throwable) {
        logMessageSafely(fqcn, level, marker, this.messageFactory.newMessage(message), throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void printf(final Level level, final Marker marker, final String format, final Object... params) {
        if (isEnabled(level, marker, format, params)) {
            StringFormattedMessage stringFormattedMessage = new StringFormattedMessage(format, params);
            logMessageSafely(FQCN, level, marker, stringFormattedMessage, stringFormattedMessage.getThrowable());
        }
    }

    public boolean requiresLocation() {
        return false;
    }

    @Override // org.apache.logging.log4j.Logger
    public <T extends Throwable> T throwing(T t) {
        return (T) throwing(FQCN, Level.ERROR, t);
    }

    public Message throwingMsg(final Throwable throwable) {
        return this.messageFactory.newMessage(THROWING);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final Message message) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, message != null ? message.getThrowable() : null);
    }

    @Override // org.apache.logging.log4j.Logger
    public EntryMessage traceEntry() {
        return enter(FQCN, (String) null, (Object[]) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void traceExit() {
        exit(FQCN, null, null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final Message message) {
        logIfEnabled(FQCN, Level.WARN, marker, message, message != null ? message.getThrowable() : null);
    }

    public void catching(final String fqcn, final Level level, final Throwable throwable) {
        Marker marker = CATCHING_MARKER;
        if (isEnabled(level, marker, (Object) null, (Throwable) null)) {
            logMessageSafely(fqcn, level, marker, catchingMsg(throwable), throwable);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final CharSequence message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void entry(final Object... params) {
        entry(FQCN, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    @Deprecated
    public <R> R exit(R r) {
        return (R) exit(FQCN, r);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.INFO, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isDebugEnabled(final Marker marker) {
        return isEnabled(Level.DEBUG, marker, (Object) null, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isEnabled(final Level level, final Marker marker) {
        return isEnabled(level, marker, (Object) null, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isErrorEnabled(final Marker marker) {
        return isEnabled(Level.ERROR, marker, (Object) null, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isFatalEnabled(final Marker marker) {
        return isEnabled(Level.FATAL, marker, (Object) null, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isInfoEnabled(final Marker marker) {
        return isEnabled(Level.INFO, marker, (Object) null, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isTraceEnabled(final Marker marker) {
        return isEnabled(Level.TRACE, marker, (Object) null, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public boolean isWarnEnabled(final Marker marker) {
        return isEnabled(Level.WARN, marker, (Object) null, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, level, marker, message, throwable);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final Object message, final Throwable throwable) {
        logMessageSafely(fqcn, level, marker, this.messageFactory.newMessage(message), throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public <T extends Throwable> T throwing(Level level, T t) {
        return (T) throwing(FQCN, level, t);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public EntryMessage traceEntry(final String format, final Object... params) {
        return enter(FQCN, format, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public <R> R traceExit(R r) {
        return (R) exit(FQCN, null, r);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.WARN, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final Message message) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, message != null ? message.getThrowable() : null);
    }

    @Deprecated
    public EntryMessage enter(final String fqcn, final String format, final MessageSupplier... paramSuppliers) {
        Level level = Level.TRACE;
        Marker marker = ENTRY_MARKER;
        if (!isEnabled(level, marker, (Object) null, (Throwable) null)) {
            return null;
        }
        EntryMessage entryMsg = entryMsg(format, paramSuppliers);
        logMessageSafely(fqcn, level, marker, entryMsg, null);
        return entryMsg;
    }

    public void entry(final String fqcn, final Object... params) {
        Level level = Level.TRACE;
        Marker marker = ENTRY_MARKER;
        if (isEnabled(level, marker, (Object) null, (Throwable) null)) {
            if (params == null) {
                logMessageSafely(fqcn, level, marker, entryMsg((String) null, (Supplier<?>[]) null), null);
            } else {
                logMessageSafely(fqcn, level, marker, entryMsg((String) null, params), null);
            }
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final CharSequence message) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, (Throwable) null);
    }

    public <R> R exit(final String fqcn, final R result) {
        Level level = Level.TRACE;
        Marker marker = EXIT_MARKER;
        if (isEnabled(level, marker, (CharSequence) null, (Throwable) null)) {
            logMessageSafely(fqcn, level, marker, exitMsg(null, result), null);
        }
        return result;
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final CharSequence message) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final CharSequence message) {
        logIfEnabled(FQCN, Level.INFO, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final CharSequence message) {
        logIfEnabled(FQCN, level, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final MessageSupplier messageSupplier, final Throwable throwable) {
        if (isEnabled(level, marker, messageSupplier, throwable)) {
            logMessage(fqcn, level, marker, messageSupplier, throwable);
        }
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final MessageSupplier messageSupplier, final Throwable throwable) {
        Message message = LambdaUtil.get(messageSupplier);
        if (throwable == null && message != null) {
            throwable = message.getThrowable();
        }
        logMessageSafely(fqcn, level, marker, message, throwable);
    }

    public <T extends Throwable> T throwing(final String fqcn, final Level level, final T throwable) {
        Marker marker = THROWING_MARKER;
        if (isEnabled(level, marker, (Object) null, (Throwable) null)) {
            logMessageSafely(fqcn, level, marker, throwingMsg(throwable), throwable);
        }
        return throwable;
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final CharSequence message) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public EntryMessage traceEntry(final Supplier<?>... paramSuppliers) {
        return enter(FQCN, (String) null, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public <R> R traceExit(String str, R r) {
        return (R) exit(FQCN, str, r);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final CharSequence message) {
        logIfEnabled(FQCN, Level.WARN, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void catching(final Throwable throwable) {
        Level level = Level.ERROR;
        Marker marker = CATCHING_MARKER;
        if (isEnabled(level, marker, (Object) null, (Throwable) null)) {
            logMessageSafely(FQCN, level, marker, catchingMsg(throwable), throwable);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final CharSequence message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final CharSequence message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final CharSequence message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.INFO, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final CharSequence message, final Throwable throwable) {
        if (isEnabled(level, marker, message, throwable)) {
            logMessage(FQCN, level, marker, message, throwable);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void printf(final Level level, final String format, final Object... params) {
        if (isEnabled(level, (Marker) null, format, params)) {
            StringFormattedMessage stringFormattedMessage = new StringFormattedMessage(format, params);
            logMessageSafely(FQCN, level, null, stringFormattedMessage, stringFormattedMessage.getThrowable());
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final CharSequence message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public EntryMessage traceEntry(final String format, final Supplier<?>... paramSuppliers) {
        return enter(FQCN, format, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public void traceExit(final EntryMessage message) {
        if (message != null) {
            Level level = Level.TRACE;
            Marker marker = EXIT_MARKER;
            if (isEnabled(level, marker, (Message) message, (Throwable) null)) {
                logMessageSafely(FQCN, level, marker, this.flowMessageFactory.newExitMessage(message), null);
            }
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final CharSequence message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.WARN, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final Object message) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, (Throwable) null);
    }

    public EntryMessage enter(final String fqcn, final String format, final Object... params) {
        Level level = Level.TRACE;
        Marker marker = ENTRY_MARKER;
        if (!isEnabled(level, marker, (Object) null, (Throwable) null)) {
            return null;
        }
        EntryMessage entryMsg = entryMsg(format, params);
        logMessageSafely(fqcn, level, marker, entryMsg, null);
        return entryMsg;
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final Object message) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, (Throwable) null);
    }

    public <R> R exit(final String fqcn, final String format, final R result) {
        Level level = Level.TRACE;
        Marker marker = EXIT_MARKER;
        if (isEnabled(level, marker, (CharSequence) null, (Throwable) null)) {
            logMessageSafely(fqcn, level, marker, exitMsg(format, result), null);
        }
        return result;
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final Object message) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final Object message) {
        logIfEnabled(FQCN, Level.INFO, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final Object message, final Throwable throwable) {
        if (isEnabled(level, marker, message, throwable)) {
            logMessage(fqcn, level, marker, message, throwable);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final Object message) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public EntryMessage traceEntry(final Message message) {
        return enter(FQCN, message);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final Object message) {
        logIfEnabled(FQCN, Level.WARN, marker, message, (Throwable) null);
    }

    public AbstractLogger(final String name) {
        this(name, createDefaultMessageFactory());
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final Object message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final Object message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final Object message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final Object message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.INFO, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final Object message) {
        logIfEnabled(FQCN, level, marker, message, (Throwable) null);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final Supplier<?> messageSupplier, final Throwable throwable) {
        Message message = LambdaUtil.getMessage(messageSupplier, this.messageFactory);
        if (throwable == null && message != null) {
            throwable = message.getThrowable();
        }
        logMessageSafely(fqcn, level, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final Object message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public <R> R traceExit(final EntryMessage message, final R result) {
        if (message != null) {
            Level level = Level.TRACE;
            Marker marker = EXIT_MARKER;
            if (isEnabled(level, marker, (Message) message, (Throwable) null)) {
                logMessageSafely(FQCN, level, marker, this.flowMessageFactory.newExitMessage((Object) result, message), null);
            }
        }
        return result;
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final Object message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.WARN, marker, message, throwable);
    }

    public AbstractLogger(final String name, final MessageFactory messageFactory) {
        this.name = name;
        this.messageFactory = messageFactory == null ? createDefaultMessageFactory() : narrow(messageFactory);
        this.flowMessageFactory = createDefaultFlowMessageFactory();
        this.logBuilder = new C19402a(this);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, (Throwable) null);
    }

    @Deprecated
    public EntryMessage enter(final String fqcn, final MessageSupplier messageSupplier) {
        Level level = Level.TRACE;
        Marker marker = ENTRY_MARKER;
        if (!isEnabled(level, marker, (Object) null, (Throwable) null)) {
            return null;
        }
        EntryMessage newEntryMessage = this.flowMessageFactory.newEntryMessage(messageSupplier.get());
        logMessageSafely(fqcn, level, marker, newEntryMessage, null);
        return newEntryMessage;
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message) {
        logIfEnabled(FQCN, Level.INFO, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final Object message, final Throwable throwable) {
        if (isEnabled(level, marker, message, throwable)) {
            logMessage(FQCN, level, marker, message, throwable);
        }
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final CharSequence message, final Throwable throwable) {
        if (isEnabled(level, marker, message, throwable)) {
            logMessage(fqcn, level, marker, message, throwable);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message) {
        logIfEnabled(FQCN, Level.WARN, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message, final Object... params) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message, final Object... params) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message, final Object... params) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message, final Object... params) {
        logIfEnabled(FQCN, Level.INFO, marker, message, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message, final Object... params) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public <R> R traceExit(final Message message, final R result) {
        if (message != null) {
            Level level = Level.TRACE;
            Marker marker = EXIT_MARKER;
            if (isEnabled(level, marker, message, (Throwable) null)) {
                logMessageSafely(FQCN, level, marker, this.flowMessageFactory.newExitMessage(result, message), null);
            }
        }
        return result;
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message, final Object... params) {
        logIfEnabled(FQCN, Level.WARN, marker, message, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.INFO, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message) {
        logIfEnabled(FQCN, level, marker, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final Supplier<?> messageSupplier, final Throwable throwable) {
        if (isEnabled(level, marker, messageSupplier, throwable)) {
            logMessage(fqcn, level, marker, messageSupplier, throwable);
        }
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message, final Throwable throwable) {
        logMessageSafely(fqcn, level, marker, this.messageFactory.newMessage(message), throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.WARN, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Message message) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, message, message != null ? message.getThrowable() : null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Message message) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, message, message != null ? message.getThrowable() : null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Message message) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, message, message != null ? message.getThrowable() : null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Message message) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, message, message != null ? message.getThrowable() : null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message, final Object... params) {
        logIfEnabled(FQCN, level, marker, message, params);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message) {
        Message newMessage = this.messageFactory.newMessage(message);
        logMessageSafely(fqcn, level, marker, newMessage, newMessage.getThrowable());
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Message message) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, message, message != null ? message.getThrowable() : null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Message message) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, message, message != null ? message.getThrowable() : null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, message, throwable);
    }

    public EntryMessage enter(final String fqcn, final Message message) {
        Level level = Level.TRACE;
        Marker marker = ENTRY_MARKER;
        if (!isEnabled(level, marker, (Object) null, (Throwable) null)) {
            return null;
        }
        EntryMessage newEntryMessage = this.flowMessageFactory.newEntryMessage(message);
        logMessageSafely(fqcn, level, marker, newEntryMessage, null);
        return newEntryMessage;
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message, final Throwable throwable) {
        logIfEnabled(FQCN, level, marker, message, throwable);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message) {
        if (isEnabled(level, marker, message)) {
            logMessage(fqcn, level, marker, message);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final CharSequence message) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final CharSequence message) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final CharSequence message) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final CharSequence message) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Message message) {
        logIfEnabled(FQCN, level, (Marker) null, message, message != null ? message.getThrowable() : null);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message, final Object... params) {
        Message newMessage = this.messageFactory.newMessage(message, params);
        logMessageSafely(fqcn, level, marker, newMessage, newMessage.getThrowable());
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final CharSequence message) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final CharSequence message) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final CharSequence message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, message, throwable);
    }

    public EntryMessage entryMsg(final String format, final MessageSupplier... paramSuppliers) {
        int length = paramSuppliers == null ? 0 : paramSuppliers.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            Message message = paramSuppliers[i].get();
            objArr[i] = message;
            objArr[i] = message != null ? message.getFormattedMessage() : null;
        }
        return entryMsg(format, objArr);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final CharSequence message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final CharSequence message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final CharSequence message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Message message, final Throwable throwable) {
        logIfEnabled(FQCN, level, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message, final Supplier<?>... paramSuppliers) {
        if (isEnabled(level, marker, message)) {
            logMessage(fqcn, level, marker, message, paramSuppliers);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final CharSequence message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final CharSequence message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Object message) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Object message) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Object message) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Object message) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final CharSequence message) {
        logIfEnabled(FQCN, level, (Marker) null, message, (Throwable) null);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message, final Object p0) {
        Message newMessage = this.messageFactory.newMessage(message, p0);
        logMessageSafely(fqcn, level, marker, newMessage, newMessage.getThrowable());
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Object message) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Object message) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Object message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Object message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Object message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Object message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final CharSequence message, final Throwable throwable) {
        logIfEnabled(FQCN, level, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message, final Object... params) {
        if (isEnabled(level, marker, message, params)) {
            logMessage(fqcn, level, marker, message, params);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Object message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Object message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Object message) {
        logIfEnabled(FQCN, level, (Marker) null, message, (Throwable) null);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1) {
        Message newMessage = this.messageFactory.newMessage(message, p0, p1);
        logMessageSafely(fqcn, level, marker, newMessage, newMessage.getThrowable());
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, message, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message, final Object... params) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, message, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message, final Object... params) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, message, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message, final Object... params) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, message, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message, final Object... params) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, message, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Object message, final Throwable throwable) {
        logIfEnabled(FQCN, level, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message, final Object p0) {
        if (isEnabled(level, marker, message, p0)) {
            logMessage(fqcn, level, marker, message, p0);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message, final Object... params) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, message, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message, final Object... params) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, message, params);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, message, throwable);
    }

    public EntryMessage entryMsg(final String format, final Supplier<?>... paramSuppliers) {
        int length = paramSuppliers == null ? 0 : paramSuppliers.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            Object obj = paramSuppliers[i].get();
            objArr[i] = obj;
            if (obj instanceof Message) {
                objArr[i] = ((Message) obj).getFormattedMessage();
            }
        }
        return entryMsg(format, objArr);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message) {
        logIfEnabled(FQCN, level, (Marker) null, message, (Throwable) null);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2) {
        Message newMessage = this.messageFactory.newMessage(message, p0, p1, p2);
        logMessageSafely(fqcn, level, marker, newMessage, newMessage.getThrowable());
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message, final Throwable throwable) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, message, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message, final Object... params) {
        logIfEnabled(FQCN, level, (Marker) null, message, params);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1) {
        if (isEnabled(level, marker, message, p0, p1)) {
            logMessage(fqcn, level, marker, message, p0, p1);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message, final Throwable throwable) {
        logIfEnabled(FQCN, level, (Marker) null, message, throwable);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        Message newMessage = this.messageFactory.newMessage(message, p0, p1, p2, p3);
        logMessageSafely(fqcn, level, marker, newMessage, newMessage.getThrowable());
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, Level.DEBUG, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, Level.ERROR, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, Level.FATAL, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, Level.INFO, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, level, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2) {
        if (isEnabled(level, marker, message, p0, p1, p2)) {
            logMessage(fqcn, level, marker, message, p0, p1, p2);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, Level.TRACE, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, Level.WARN, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, Level.INFO, marker, message, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, level, (Marker) null, messageSupplier, throwable);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        Message newMessage = this.messageFactory.newMessage(message, p0, p1, p2, p3, p4);
        logMessageSafely(fqcn, level, marker, newMessage, newMessage.getThrowable());
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, Level.WARN, marker, message, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.DEBUG, marker, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.ERROR, marker, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.FATAL, marker, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.INFO, marker, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final Supplier<?> messageSupplier) {
        logIfEnabled(FQCN, level, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        if (isEnabled(level, marker, message, p0, p1, p2, p3)) {
            logMessage(fqcn, level, marker, message, p0, p1, p2, p3);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.TRACE, marker, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.WARN, marker, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, message, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, message, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, message, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, message, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, level, marker, message, paramSuppliers);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        Message newMessage = this.messageFactory.newMessage(message, p0, p1, p2, p3, p4, p5);
        logMessageSafely(fqcn, level, marker, newMessage, newMessage.getThrowable());
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, message, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, message, paramSuppliers);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, Level.DEBUG, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, Level.ERROR, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, Level.FATAL, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, Level.INFO, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final Supplier<?> messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, level, marker, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        if (isEnabled(level, marker, message, p0, p1, p2, p3, p4)) {
            logMessage(fqcn, level, marker, message, p0, p1, p2, p3, p4);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, Level.TRACE, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, Level.WARN, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.DEBUG, marker, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.ERROR, marker, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.FATAL, marker, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.INFO, marker, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message, final Supplier<?>... paramSuppliers) {
        logIfEnabled(FQCN, level, (Marker) null, message, paramSuppliers);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        Message newMessage = this.messageFactory.newMessage(message, p0, p1, p2, p3, p4, p5, p6);
        logMessageSafely(fqcn, level, marker, newMessage, newMessage.getThrowable());
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.TRACE, marker, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.WARN, marker, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, level, marker, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        if (isEnabled(level, marker, message, p0, p1, p2, p3, p4, p5)) {
            logMessage(fqcn, level, marker, message, p0, p1, p2, p3, p4, p5);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, level, marker, messageSupplier, throwable);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        Message newMessage = this.messageFactory.newMessage(message, p0, p1, p2, p3, p4, p5, p6, p7);
        logMessageSafely(fqcn, level, marker, newMessage, newMessage.getThrowable());
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, messageSupplier, throwable);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message, final Object p0) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, p0);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message, final Object p0) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, p0);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message, final Object p0) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, p0);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message, final Object p0) {
        logIfEnabled(FQCN, Level.INFO, marker, message, p0);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final MessageSupplier messageSupplier) {
        logIfEnabled(FQCN, level, (Marker) null, messageSupplier, (Throwable) null);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        if (isEnabled(level, marker, message, p0, p1, p2, p3, p4, p5, p6)) {
            logMessage(fqcn, level, marker, message, p0, p1, p2, p3, p4, p5, p6);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message, final Object p0) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, p0);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message, final Object p0) {
        logIfEnabled(FQCN, Level.WARN, marker, message, p0);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, p0, p1);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, p0, p1);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, p0, p1);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, Level.INFO, marker, message, p0, p1);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final MessageSupplier messageSupplier, final Throwable throwable) {
        logIfEnabled(FQCN, level, (Marker) null, messageSupplier, throwable);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        Message newMessage = this.messageFactory.newMessage(message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
        logMessageSafely(fqcn, level, marker, newMessage, newMessage.getThrowable());
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, p0, p1);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, Level.WARN, marker, message, p0, p1);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, Level.INFO, marker, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message, final Object p0) {
        logIfEnabled(FQCN, level, marker, message, p0);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        if (isEnabled(level, marker, message, p0, p1, p2, p3, p4, p5, p6, p7)) {
            logMessage(fqcn, level, marker, message, p0, p1, p2, p3, p4, p5, p6, p7);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, Level.WARN, marker, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, Level.INFO, marker, message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, level, marker, message, p0, p1);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        Message newMessage = this.messageFactory.newMessage(message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
        logMessageSafely(fqcn, level, marker, newMessage, newMessage.getThrowable());
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, Level.WARN, marker, message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, Level.INFO, marker, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, level, marker, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        if (isEnabled(level, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8)) {
            logMessage(fqcn, level, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, Level.WARN, marker, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, Level.INFO, marker, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, level, marker, message, p0, p1, p2, p3);
    }

    public void logMessage(final String fqcn, final Level level, final Marker marker, final String message, final Supplier<?>... paramSuppliers) {
        Message newMessage = this.messageFactory.newMessage(message, LambdaUtil.getAll(paramSuppliers));
        logMessageSafely(fqcn, level, marker, newMessage, newMessage.getThrowable());
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, Level.WARN, marker, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, Level.INFO, marker, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, level, marker, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        if (isEnabled(level, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9)) {
            logMessage(fqcn, level, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, Level.WARN, marker, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, Level.INFO, marker, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, level, marker, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger, org.apache.logging.log4j.spi.LocationAwareLogger
    public void logMessage(final Level level, final Marker marker, final String fqcn, final StackTraceElement location, final Message message, final Throwable throwable) {
        try {
            incrementRecursionDepth();
            log(level, marker, fqcn, location, message, throwable);
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, Level.WARN, marker, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, Level.INFO, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, level, marker, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logIfEnabled(final String fqcn, final Level level, final Marker marker, final String message, final Throwable throwable) {
        if (isEnabled(level, marker, message, throwable)) {
            logMessage(fqcn, level, marker, message, throwable);
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, Level.WARN, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, Level.DEBUG, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, Level.ERROR, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, Level.FATAL, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, Level.INFO, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, level, marker, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, Level.TRACE, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, Level.WARN, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message, final Object p0) {
        logIfEnabled(FQCN, Level.DEBUG, (Marker) null, message, p0);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message, final Object p0) {
        logIfEnabled(FQCN, Level.ERROR, (Marker) null, message, p0);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message, final Object p0) {
        logIfEnabled(FQCN, Level.FATAL, (Marker) null, message, p0);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message, final Object p0) {
        logIfEnabled(FQCN, Level.INFO, (Marker) null, message, p0);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, level, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message, final Object p0) {
        logIfEnabled(FQCN, Level.TRACE, (Marker) null, message, p0);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message, final Object p0) {
        logIfEnabled(FQCN, Level.WARN, (Marker) null, message, p0);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, Level.DEBUG, null, message, p0, p1);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, Level.ERROR, null, message, p0, p1);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, Level.FATAL, null, message, p0, p1);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, Level.INFO, null, message, p0, p1);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, level, marker, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, Level.TRACE, null, message, p0, p1);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, Level.WARN, null, message, p0, p1);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, Level.DEBUG, null, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, Level.ERROR, null, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, Level.FATAL, null, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, Level.INFO, null, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message, final Object p0) {
        logIfEnabled(FQCN, level, (Marker) null, message, p0);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, Level.TRACE, null, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, Level.WARN, null, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, Level.DEBUG, null, message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, Level.ERROR, null, message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, Level.FATAL, null, message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, Level.INFO, null, message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message, final Object p0, final Object p1) {
        logIfEnabled(FQCN, level, null, message, p0, p1);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, Level.TRACE, null, message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, Level.WARN, null, message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, Level.DEBUG, null, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, Level.ERROR, null, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, Level.FATAL, null, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, Level.INFO, null, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message, final Object p0, final Object p1, final Object p2) {
        logIfEnabled(FQCN, level, null, message, p0, p1, p2);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, Level.TRACE, null, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, Level.WARN, null, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, Level.DEBUG, null, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, Level.ERROR, null, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, Level.FATAL, null, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, Level.INFO, null, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        logIfEnabled(FQCN, level, null, message, p0, p1, p2, p3);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, Level.TRACE, null, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, Level.WARN, null, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, Level.DEBUG, null, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, Level.ERROR, null, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, Level.FATAL, null, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, Level.INFO, null, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        logIfEnabled(FQCN, level, null, message, p0, p1, p2, p3, p4);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, Level.TRACE, null, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, Level.WARN, null, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, Level.DEBUG, null, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, Level.ERROR, null, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, Level.FATAL, null, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, Level.INFO, null, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        logIfEnabled(FQCN, level, null, message, p0, p1, p2, p3, p4, p5);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, Level.TRACE, null, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, Level.WARN, null, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, Level.DEBUG, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, Level.ERROR, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, Level.FATAL, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, Level.INFO, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        logIfEnabled(FQCN, level, null, message, p0, p1, p2, p3, p4, p5, p6);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, Level.TRACE, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, Level.WARN, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void debug(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, Level.DEBUG, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.Logger
    public void error(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, Level.ERROR, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.Logger
    public void fatal(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, Level.FATAL, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.Logger
    public void info(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, Level.INFO, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        logIfEnabled(FQCN, level, null, message, p0, p1, p2, p3, p4, p5, p6, p7);
    }

    @Override // org.apache.logging.log4j.Logger
    public void trace(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, Level.TRACE, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.Logger
    public void warn(final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, Level.WARN, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        logIfEnabled(FQCN, level, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8);
    }

    @Override // org.apache.logging.log4j.Logger
    public void log(final Level level, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        logIfEnabled(FQCN, level, null, message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9);
    }

    public void log(final Level level, final Marker marker, final String fqcn, final StackTraceElement location, final Message message, final Throwable throwable) {
        logMessage(fqcn, level, marker, message, throwable);
    }
}
