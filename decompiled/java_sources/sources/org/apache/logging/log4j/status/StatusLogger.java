package org.apache.logging.log4j.status;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.Marker;
import org.apache.logging.log4j.message.Message;
import org.apache.logging.log4j.message.MessageFactory;
import org.apache.logging.log4j.message.ParameterizedNoReferenceMessageFactory;
import org.apache.logging.log4j.simple.SimpleLogger;
import org.apache.logging.log4j.spi.AbstractLogger;
import org.apache.logging.log4j.util.Constants;
import org.apache.logging.log4j.util.PropertiesUtil;
import org.apache.logging.log4j.util.Strings;

/* loaded from: classes12.dex */
public final class StatusLogger extends AbstractLogger {
    private static final String DEFAULT_STATUS_LEVEL;
    public static final String DEFAULT_STATUS_LISTENER_LEVEL = "log4j2.StatusLogger.level";
    private static final int MAX_ENTRIES;
    public static final String MAX_STATUS_ENTRIES = "log4j2.status.entries";
    private static final String NOT_AVAIL = "?";
    private static final PropertiesUtil PROPS;
    public static final String STATUS_DATE_FORMAT = "log4j2.StatusLogger.DateFormat";
    private static final StatusLogger STATUS_LOGGER;
    private static final long serialVersionUID = 2;
    private final Collection<StatusListener> listeners;
    private int listenersLevel;
    private final ReadWriteLock listenersLock;
    private final SimpleLogger logger;
    private final Queue<StatusData> messages;
    private final Lock msgLock;

    /* loaded from: classes12.dex */
    public class BoundedQueue<E> extends ConcurrentLinkedQueue<E> {
        private static final long serialVersionUID = -3945953719763255337L;
        private final int size;

        public BoundedQueue(final int size) {
            this.size = size;
        }

        @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue
        public boolean add(final E object) {
            int i;
            super.add(object);
            while (true) {
                int size = StatusLogger.this.messages.size();
                i = this.size;
                if (size <= i) {
                    break;
                }
                StatusLogger.this.messages.poll();
            }
            return i > 0;
        }
    }

    static {
        PropertiesUtil propertiesUtil = new PropertiesUtil("log4j2.StatusLogger.properties");
        PROPS = propertiesUtil;
        MAX_ENTRIES = propertiesUtil.getIntegerProperty(MAX_STATUS_ENTRIES, 200);
        DEFAULT_STATUS_LEVEL = propertiesUtil.getStringProperty(DEFAULT_STATUS_LISTENER_LEVEL);
        STATUS_LOGGER = new StatusLogger(StatusLogger.class.getName(), ParameterizedNoReferenceMessageFactory.INSTANCE);
    }

    private StatusLogger(final String name, final MessageFactory messageFactory) {
        super(name, messageFactory);
        this.listeners = new CopyOnWriteArrayList();
        this.listenersLock = new ReentrantReadWriteLock();
        this.messages = new BoundedQueue(MAX_ENTRIES);
        this.msgLock = new ReentrantLock();
        PropertiesUtil propertiesUtil = PROPS;
        SimpleLogger simpleLogger = new SimpleLogger("StatusLogger", Level.ERROR, false, true, !Strings.isEmpty(r7), false, propertiesUtil.getStringProperty(STATUS_DATE_FORMAT, ""), messageFactory, propertiesUtil, System.err);
        this.logger = simpleLogger;
        this.listenersLevel = Level.toLevel(DEFAULT_STATUS_LEVEL, Level.WARN).intLevel();
        if (isDebugPropertyEnabled()) {
            simpleLogger.setLevel(Level.TRACE);
        }
    }

    private static void closeSilently(final Closeable resource) {
        try {
            resource.close();
        } catch (IOException unused) {
        }
    }

    public static StatusLogger getLogger() {
        return STATUS_LOGGER;
    }

    private StackTraceElement getStackTraceElement(final String fqcn, final StackTraceElement[] stackTrace) {
        if (fqcn == null) {
            return null;
        }
        boolean z = false;
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            if (z && !fqcn.equals(className)) {
                return stackTraceElement;
            }
            if (!fqcn.equals(className)) {
                if (NOT_AVAIL.equals(className)) {
                    break;
                }
            } else {
                z = true;
            }
        }
        return null;
    }

    private boolean isDebugPropertyEnabled() {
        return PropertiesUtil.getProperties().getBooleanProperty(Constants.LOG4J2_DEBUG, false, true);
    }

    public void clear() {
        this.msgLock.lock();
        try {
            this.messages.clear();
        } finally {
            this.msgLock.unlock();
        }
    }

    @Override // org.apache.logging.log4j.Logger
    public Level getLevel() {
        return this.logger.getLevel();
    }

    public Iterable<StatusListener> getListeners() {
        return this.listeners;
    }

    public List<StatusData> getStatusData() {
        this.msgLock.lock();
        try {
            return new ArrayList(this.messages);
        } finally {
            this.msgLock.unlock();
        }
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final String message, final Throwable t) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public void logMessage(final String fqcn, final Level level, final Marker marker, final Message msg, final Throwable t) {
        StatusData statusData = new StatusData(fqcn != null ? getStackTraceElement(fqcn, Thread.currentThread().getStackTrace()) : null, level, msg, t, null);
        this.msgLock.lock();
        try {
            this.messages.add(statusData);
            this.msgLock.unlock();
            if (isDebugPropertyEnabled() || this.listeners.size() <= 0) {
                this.logger.logMessage(fqcn, level, marker, msg, t);
                return;
            }
            for (StatusListener statusListener : this.listeners) {
                if (statusData.getLevel().isMoreSpecificThan(statusListener.getStatusLevel())) {
                    statusListener.log(statusData);
                }
            }
        } catch (Throwable th) {
            this.msgLock.unlock();
            throw th;
        }
    }

    public void registerListener(final StatusListener listener) {
        this.listenersLock.writeLock().lock();
        try {
            this.listeners.add(listener);
            Level statusLevel = listener.getStatusLevel();
            if (this.listenersLevel < statusLevel.intLevel()) {
                this.listenersLevel = statusLevel.intLevel();
            }
        } finally {
            this.listenersLock.writeLock().unlock();
        }
    }

    public void removeListener(final StatusListener listener) {
        closeSilently(listener);
        this.listenersLock.writeLock().lock();
        try {
            this.listeners.remove(listener);
            int intLevel = Level.toLevel(DEFAULT_STATUS_LEVEL, Level.WARN).intLevel();
            Iterator<StatusListener> it2 = this.listeners.iterator();
            while (it2.hasNext()) {
                int intLevel2 = it2.next().getStatusLevel().intLevel();
                if (intLevel < intLevel2) {
                    intLevel = intLevel2;
                }
            }
            this.listenersLevel = intLevel;
        } finally {
            this.listenersLock.writeLock().unlock();
        }
    }

    public void reset() {
        this.listenersLock.writeLock().lock();
        try {
            Iterator<StatusListener> it2 = this.listeners.iterator();
            while (it2.hasNext()) {
                closeSilently(it2.next());
            }
        } finally {
            this.listeners.clear();
            this.listenersLock.writeLock().unlock();
            clear();
        }
    }

    public void setLevel(final Level level) {
        this.logger.setLevel(level);
    }

    public void updateListenerLevel(final Level status) {
        if (status.intLevel() > this.listenersLevel) {
            this.listenersLevel = status.intLevel();
        }
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final String message) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final String message, final Object... params) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final String message, final Object p0) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final String message, final Object p0, final Object p1) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final String message, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final CharSequence message, final Throwable t) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final Object message, final Throwable t) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.ExtendedLogger
    public boolean isEnabled(final Level level, final Marker marker, final Message message, final Throwable t) {
        return isEnabled(level, marker);
    }

    @Override // org.apache.logging.log4j.spi.AbstractLogger, org.apache.logging.log4j.Logger
    public boolean isEnabled(final Level level, final Marker marker) {
        if (isDebugPropertyEnabled()) {
            return true;
        }
        if (this.listeners.size() > 0) {
            return this.listenersLevel >= level.intLevel();
        }
        return this.logger.isEnabled(level, marker);
    }
}
