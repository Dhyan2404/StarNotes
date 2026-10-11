package org.apache.logging.log4j.internal;

import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogBuilder;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.Marker;
import org.apache.logging.log4j.message.Message;
import org.apache.logging.log4j.message.SimpleMessage;
import org.apache.logging.log4j.status.StatusLogger;
import org.apache.logging.log4j.util.LambdaUtil;
import org.apache.logging.log4j.util.StackLocatorUtil;
import org.apache.logging.log4j.util.Supplier;

/* loaded from: classes12.dex */
public class DefaultLogBuilder implements LogBuilder {

    /* renamed from: h */
    public static Message f111198h = new SimpleMessage("");

    /* renamed from: i */
    public static final String f111199i = DefaultLogBuilder.class.getName();

    /* renamed from: j */
    public static final Logger f111200j = StatusLogger.getLogger();

    /* renamed from: a */
    public final Logger f111201a;

    /* renamed from: b */
    public Level f111202b;

    /* renamed from: c */
    public Marker f111203c;

    /* renamed from: d */
    public Throwable f111204d;

    /* renamed from: e */
    public StackTraceElement f111205e;

    /* renamed from: f */
    public volatile boolean f111206f;

    /* renamed from: g */
    public long f111207g;

    public DefaultLogBuilder(Logger logger, Level level) {
        this.f111201a = logger;
        this.f111202b = level;
        this.f111207g = Thread.currentThread().getId();
        this.f111206f = true;
    }

    /* renamed from: a */
    public final boolean m68620a() {
        if (!this.f111206f) {
            f111200j.warn("Attempt to reuse LogBuilder was ignored. {}", StackLocatorUtil.getCallerClass(2));
            return false;
        }
        if (this.f111207g == Thread.currentThread().getId()) {
            return true;
        }
        f111200j.warn("LogBuilder can only be used on the owning thread. {}", StackLocatorUtil.getCallerClass(2));
        return false;
    }

    /* renamed from: b */
    public final void m68621b(Message message) {
        try {
            this.f111201a.logMessage(this.f111202b, this.f111203c, f111199i, this.f111205e, message, this.f111204d);
        } finally {
            this.f111206f = false;
        }
    }

    public boolean isInUse() {
        return this.f111206f;
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(Message message) {
        if (m68620a()) {
            m68621b(message);
        }
    }

    public LogBuilder reset(Level level) {
        this.f111206f = true;
        this.f111202b = level;
        this.f111203c = null;
        this.f111204d = null;
        this.f111205e = null;
        return this;
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public LogBuilder withLocation() {
        this.f111205e = StackLocatorUtil.getStackTraceElement(2);
        return this;
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public LogBuilder withMarker(Marker marker) {
        this.f111203c = marker;
        return this;
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public LogBuilder withThrowable(Throwable throwable) {
        this.f111204d = throwable;
        return this;
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public LogBuilder withLocation(StackTraceElement location) {
        this.f111205e = location;
        return this;
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(CharSequence message) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(String message) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message));
        }
    }

    public DefaultLogBuilder(Logger logger) {
        this.f111201a = logger;
        this.f111206f = false;
        this.f111207g = Thread.currentThread().getId();
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(String message, Object... params) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message, params));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(String message, Supplier<?>... params) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message, LambdaUtil.getAll(params)));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(Supplier<Message> messageSupplier) {
        if (m68620a()) {
            m68621b(messageSupplier.get());
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(Object message) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(String message, Object p0) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message, p0));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(String message, Object p0, Object p1) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message, p0, p1));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(String message, Object p0, Object p1, Object p2) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message, p0, p1, p2));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(String message, Object p0, Object p1, Object p2, Object p3) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message, p0, p1, p2, p3));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(String message, Object p0, Object p1, Object p2, Object p3, Object p4) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message, p0, p1, p2, p3, p4));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(String message, Object p0, Object p1, Object p2, Object p3, Object p4, Object p5) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message, p0, p1, p2, p3, p4, p5));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(String message, Object p0, Object p1, Object p2, Object p3, Object p4, Object p5, Object p6) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message, p0, p1, p2, p3, p4, p5, p6));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(String message, Object p0, Object p1, Object p2, Object p3, Object p4, Object p5, Object p6, Object p7) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message, p0, p1, p2, p3, p4, p5, p6, p7));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(String message, Object p0, Object p1, Object p2, Object p3, Object p4, Object p5, Object p6, Object p7, Object p8) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message, p0, p1, p2, p3, p4, p5, p6, p7, p8));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log(String message, Object p0, Object p1, Object p2, Object p3, Object p4, Object p5, Object p6, Object p7, Object p8, Object p9) {
        if (m68620a()) {
            m68621b(this.f111201a.getMessageFactory().newMessage(message, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9));
        }
    }

    @Override // org.apache.logging.log4j.LogBuilder
    public void log() {
        if (m68620a()) {
            m68621b(f111198h);
        }
    }
}
