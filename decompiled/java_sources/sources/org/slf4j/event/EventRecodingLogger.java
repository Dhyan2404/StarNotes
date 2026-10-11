package org.slf4j.event;

import java.util.Queue;
import org.slf4j.Logger;
import org.slf4j.Marker;
import org.slf4j.helpers.MessageFormatter;
import org.slf4j.helpers.SubstituteLogger;

/* loaded from: classes16.dex */
public class EventRecodingLogger implements Logger {

    /* renamed from: h */
    public static final boolean f116033h = true;

    /* renamed from: e */
    public String f116034e;

    /* renamed from: f */
    public SubstituteLogger f116035f;

    /* renamed from: g */
    public Queue<SubstituteLoggingEvent> f116036g;

    public EventRecodingLogger(SubstituteLogger substituteLogger, Queue<SubstituteLoggingEvent> queue) {
        this.f116035f = substituteLogger;
        this.f116034e = substituteLogger.getName();
        this.f116036g = queue;
    }

    /* renamed from: a */
    public final void m71918a(Level level, Marker marker, String str, Object[] objArr, Throwable th) {
        SubstituteLoggingEvent substituteLoggingEvent = new SubstituteLoggingEvent();
        substituteLoggingEvent.setTimeStamp(System.currentTimeMillis());
        substituteLoggingEvent.setLevel(level);
        substituteLoggingEvent.setLogger(this.f116035f);
        substituteLoggingEvent.setLoggerName(this.f116034e);
        substituteLoggingEvent.setMarker(marker);
        substituteLoggingEvent.setMessage(str);
        substituteLoggingEvent.setThreadName(Thread.currentThread().getName());
        substituteLoggingEvent.setArgumentArray(objArr);
        substituteLoggingEvent.setThrowable(th);
        this.f116036g.add(substituteLoggingEvent);
    }

    /* renamed from: b */
    public final void m71919b(Level level, Marker marker, String str, Object obj, Object obj2) {
        if (obj2 instanceof Throwable) {
            m71918a(level, marker, str, new Object[]{obj}, (Throwable) obj2);
        } else {
            m71918a(level, marker, str, new Object[]{obj, obj2}, null);
        }
    }

    /* renamed from: c */
    public final void m71920c(Level level, Marker marker, String str, Object[] objArr) {
        Throwable throwableCandidate = MessageFormatter.getThrowableCandidate(objArr);
        if (throwableCandidate != null) {
            m71918a(level, marker, str, MessageFormatter.trimmedCopy(objArr), throwableCandidate);
        } else {
            m71918a(level, marker, str, objArr, null);
        }
    }

    /* renamed from: d */
    public final void m71921d(Level level, Marker marker, String str, Throwable th) {
        m71918a(level, marker, str, null, th);
    }

    @Override // org.slf4j.Logger
    public void debug(String str) {
        m71921d(Level.DEBUG, null, str, null);
    }

    /* renamed from: e */
    public final void m71922e(Level level, Marker marker, String str, Object obj) {
        m71918a(level, marker, str, new Object[]{obj}, null);
    }

    @Override // org.slf4j.Logger
    public void error(String str) {
        m71921d(Level.ERROR, null, str, null);
    }

    @Override // org.slf4j.Logger
    public String getName() {
        return this.f116034e;
    }

    @Override // org.slf4j.Logger
    public void info(String str) {
        m71921d(Level.INFO, null, str, null);
    }

    @Override // org.slf4j.Logger
    public boolean isDebugEnabled() {
        return true;
    }

    @Override // org.slf4j.Logger
    public boolean isErrorEnabled() {
        return true;
    }

    @Override // org.slf4j.Logger
    public boolean isInfoEnabled() {
        return true;
    }

    @Override // org.slf4j.Logger
    public boolean isTraceEnabled() {
        return true;
    }

    @Override // org.slf4j.Logger
    public boolean isWarnEnabled() {
        return true;
    }

    @Override // org.slf4j.Logger
    public void trace(String str) {
        m71921d(Level.TRACE, null, str, null);
    }

    @Override // org.slf4j.Logger
    public void warn(String str) {
        m71921d(Level.WARN, null, str, null);
    }

    @Override // org.slf4j.Logger
    public void debug(String str, Object obj) {
        m71922e(Level.DEBUG, null, str, obj);
    }

    @Override // org.slf4j.Logger
    public void error(String str, Object obj) {
        m71922e(Level.ERROR, null, str, obj);
    }

    @Override // org.slf4j.Logger
    public void info(String str, Object obj) {
        m71922e(Level.INFO, null, str, obj);
    }

    @Override // org.slf4j.Logger
    public boolean isDebugEnabled(Marker marker) {
        return true;
    }

    @Override // org.slf4j.Logger
    public boolean isErrorEnabled(Marker marker) {
        return true;
    }

    @Override // org.slf4j.Logger
    public boolean isInfoEnabled(Marker marker) {
        return true;
    }

    @Override // org.slf4j.Logger
    public boolean isTraceEnabled(Marker marker) {
        return true;
    }

    @Override // org.slf4j.Logger
    public boolean isWarnEnabled(Marker marker) {
        return true;
    }

    @Override // org.slf4j.Logger
    public void trace(String str, Object obj) {
        m71922e(Level.TRACE, null, str, obj);
    }

    @Override // org.slf4j.Logger
    public void warn(String str, Object obj) {
        m71922e(Level.WARN, null, str, obj);
    }

    @Override // org.slf4j.Logger
    public void debug(String str, Object obj, Object obj2) {
        m71919b(Level.DEBUG, null, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void error(String str, Object obj, Object obj2) {
        m71919b(Level.ERROR, null, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void info(String str, Object obj, Object obj2) {
        m71919b(Level.INFO, null, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void trace(String str, Object obj, Object obj2) {
        m71919b(Level.TRACE, null, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void warn(String str, Object obj, Object obj2) {
        m71919b(Level.WARN, null, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void debug(String str, Object... objArr) {
        m71920c(Level.DEBUG, null, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void error(String str, Object... objArr) {
        m71920c(Level.ERROR, null, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void info(String str, Object... objArr) {
        m71920c(Level.INFO, null, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void trace(String str, Object... objArr) {
        m71920c(Level.TRACE, null, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void warn(String str, Object... objArr) {
        m71920c(Level.WARN, null, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void debug(String str, Throwable th) {
        m71921d(Level.DEBUG, null, str, th);
    }

    @Override // org.slf4j.Logger
    public void error(String str, Throwable th) {
        m71921d(Level.ERROR, null, str, th);
    }

    @Override // org.slf4j.Logger
    public void info(String str, Throwable th) {
        m71921d(Level.INFO, null, str, th);
    }

    @Override // org.slf4j.Logger
    public void trace(String str, Throwable th) {
        m71921d(Level.TRACE, null, str, th);
    }

    @Override // org.slf4j.Logger
    public void warn(String str, Throwable th) {
        m71921d(Level.WARN, null, str, th);
    }

    @Override // org.slf4j.Logger
    public void debug(Marker marker, String str) {
        m71921d(Level.DEBUG, marker, str, null);
    }

    @Override // org.slf4j.Logger
    public void error(Marker marker, String str) {
        m71921d(Level.ERROR, marker, str, null);
    }

    @Override // org.slf4j.Logger
    public void info(Marker marker, String str) {
        m71921d(Level.INFO, marker, str, null);
    }

    @Override // org.slf4j.Logger
    public void trace(Marker marker, String str) {
        m71921d(Level.TRACE, marker, str, null);
    }

    @Override // org.slf4j.Logger
    public void warn(Marker marker, String str) {
        m71921d(Level.WARN, marker, str, null);
    }

    @Override // org.slf4j.Logger
    public void debug(Marker marker, String str, Object obj) {
        m71922e(Level.DEBUG, marker, str, obj);
    }

    @Override // org.slf4j.Logger
    public void error(Marker marker, String str, Object obj) {
        m71922e(Level.ERROR, marker, str, obj);
    }

    @Override // org.slf4j.Logger
    public void info(Marker marker, String str, Object obj) {
        m71922e(Level.INFO, marker, str, obj);
    }

    @Override // org.slf4j.Logger
    public void trace(Marker marker, String str, Object obj) {
        m71922e(Level.TRACE, marker, str, obj);
    }

    @Override // org.slf4j.Logger
    public void warn(Marker marker, String str, Object obj) {
        m71922e(Level.WARN, marker, str, obj);
    }

    @Override // org.slf4j.Logger
    public void debug(Marker marker, String str, Object obj, Object obj2) {
        m71919b(Level.DEBUG, marker, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void error(Marker marker, String str, Object obj, Object obj2) {
        m71919b(Level.ERROR, marker, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void info(Marker marker, String str, Object obj, Object obj2) {
        m71919b(Level.INFO, marker, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void trace(Marker marker, String str, Object obj, Object obj2) {
        m71919b(Level.TRACE, marker, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void warn(Marker marker, String str, Object obj, Object obj2) {
        m71919b(Level.WARN, marker, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void debug(Marker marker, String str, Object... objArr) {
        m71920c(Level.DEBUG, marker, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void error(Marker marker, String str, Object... objArr) {
        m71920c(Level.ERROR, marker, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void info(Marker marker, String str, Object... objArr) {
        m71920c(Level.INFO, marker, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void trace(Marker marker, String str, Object... objArr) {
        m71920c(Level.TRACE, marker, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void warn(Marker marker, String str, Object... objArr) {
        m71920c(Level.WARN, marker, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void debug(Marker marker, String str, Throwable th) {
        m71921d(Level.DEBUG, marker, str, th);
    }

    @Override // org.slf4j.Logger
    public void error(Marker marker, String str, Throwable th) {
        m71921d(Level.ERROR, marker, str, th);
    }

    @Override // org.slf4j.Logger
    public void info(Marker marker, String str, Throwable th) {
        m71921d(Level.INFO, marker, str, th);
    }

    @Override // org.slf4j.Logger
    public void trace(Marker marker, String str, Throwable th) {
        m71921d(Level.TRACE, marker, str, th);
    }

    @Override // org.slf4j.Logger
    public void warn(Marker marker, String str, Throwable th) {
        m71921d(Level.WARN, marker, str, th);
    }
}
