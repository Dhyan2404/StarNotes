package org.slf4j.helpers;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Queue;
import org.slf4j.Logger;
import org.slf4j.Marker;
import org.slf4j.event.EventRecodingLogger;
import org.slf4j.event.LoggingEvent;
import org.slf4j.event.SubstituteLoggingEvent;

/* loaded from: classes16.dex */
public class SubstituteLogger implements Logger {

    /* renamed from: e */
    public final String f116056e;

    /* renamed from: f */
    public volatile Logger f116057f;

    /* renamed from: g */
    public Boolean f116058g;

    /* renamed from: h */
    public Method f116059h;

    /* renamed from: i */
    public EventRecodingLogger f116060i;

    /* renamed from: j */
    public Queue<SubstituteLoggingEvent> f116061j;

    /* renamed from: k */
    public final boolean f116062k;

    public SubstituteLogger(String str, Queue<SubstituteLoggingEvent> queue, boolean z) {
        this.f116056e = str;
        this.f116061j = queue;
        this.f116062k = z;
    }

    /* renamed from: a */
    public Logger m71937a() {
        return this.f116057f != null ? this.f116057f : this.f116062k ? NOPLogger.NOP_LOGGER : m71938b();
    }

    /* renamed from: b */
    public final Logger m71938b() {
        if (this.f116060i == null) {
            this.f116060i = new EventRecodingLogger(this, this.f116061j);
        }
        return this.f116060i;
    }

    @Override // org.slf4j.Logger
    public void debug(String str) {
        m71937a().debug(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f116056e.equals(((SubstituteLogger) obj).f116056e);
    }

    @Override // org.slf4j.Logger
    public void error(String str) {
        m71937a().error(str);
    }

    @Override // org.slf4j.Logger
    public String getName() {
        return this.f116056e;
    }

    public int hashCode() {
        return this.f116056e.hashCode();
    }

    @Override // org.slf4j.Logger
    public void info(String str) {
        m71937a().info(str);
    }

    @Override // org.slf4j.Logger
    public boolean isDebugEnabled() {
        return m71937a().isDebugEnabled();
    }

    public boolean isDelegateEventAware() {
        Boolean bool = this.f116058g;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.f116059h = this.f116057f.getClass().getMethod("log", LoggingEvent.class);
            this.f116058g = Boolean.TRUE;
        } catch (NoSuchMethodException unused) {
            this.f116058g = Boolean.FALSE;
        }
        return this.f116058g.booleanValue();
    }

    public boolean isDelegateNOP() {
        return this.f116057f instanceof NOPLogger;
    }

    public boolean isDelegateNull() {
        return this.f116057f == null;
    }

    @Override // org.slf4j.Logger
    public boolean isErrorEnabled() {
        return m71937a().isErrorEnabled();
    }

    @Override // org.slf4j.Logger
    public boolean isInfoEnabled() {
        return m71937a().isInfoEnabled();
    }

    @Override // org.slf4j.Logger
    public boolean isTraceEnabled() {
        return m71937a().isTraceEnabled();
    }

    @Override // org.slf4j.Logger
    public boolean isWarnEnabled() {
        return m71937a().isWarnEnabled();
    }

    public void log(LoggingEvent loggingEvent) {
        if (isDelegateEventAware()) {
            try {
                this.f116059h.invoke(this.f116057f, loggingEvent);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            }
        }
    }

    public void setDelegate(Logger logger) {
        this.f116057f = logger;
    }

    @Override // org.slf4j.Logger
    public void trace(String str) {
        m71937a().trace(str);
    }

    @Override // org.slf4j.Logger
    public void warn(String str) {
        m71937a().warn(str);
    }

    @Override // org.slf4j.Logger
    public void debug(String str, Object obj) {
        m71937a().debug(str, obj);
    }

    @Override // org.slf4j.Logger
    public void error(String str, Object obj) {
        m71937a().error(str, obj);
    }

    @Override // org.slf4j.Logger
    public void info(String str, Object obj) {
        m71937a().info(str, obj);
    }

    @Override // org.slf4j.Logger
    public boolean isDebugEnabled(Marker marker) {
        return m71937a().isDebugEnabled(marker);
    }

    @Override // org.slf4j.Logger
    public boolean isErrorEnabled(Marker marker) {
        return m71937a().isErrorEnabled(marker);
    }

    @Override // org.slf4j.Logger
    public boolean isInfoEnabled(Marker marker) {
        return m71937a().isInfoEnabled(marker);
    }

    @Override // org.slf4j.Logger
    public boolean isTraceEnabled(Marker marker) {
        return m71937a().isTraceEnabled(marker);
    }

    @Override // org.slf4j.Logger
    public boolean isWarnEnabled(Marker marker) {
        return m71937a().isWarnEnabled(marker);
    }

    @Override // org.slf4j.Logger
    public void trace(String str, Object obj) {
        m71937a().trace(str, obj);
    }

    @Override // org.slf4j.Logger
    public void warn(String str, Object obj) {
        m71937a().warn(str, obj);
    }

    @Override // org.slf4j.Logger
    public void debug(String str, Object obj, Object obj2) {
        m71937a().debug(str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void error(String str, Object obj, Object obj2) {
        m71937a().error(str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void info(String str, Object obj, Object obj2) {
        m71937a().info(str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void trace(String str, Object obj, Object obj2) {
        m71937a().trace(str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void warn(String str, Object obj, Object obj2) {
        m71937a().warn(str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void debug(String str, Object... objArr) {
        m71937a().debug(str, objArr);
    }

    @Override // org.slf4j.Logger
    public void error(String str, Object... objArr) {
        m71937a().error(str, objArr);
    }

    @Override // org.slf4j.Logger
    public void info(String str, Object... objArr) {
        m71937a().info(str, objArr);
    }

    @Override // org.slf4j.Logger
    public void trace(String str, Object... objArr) {
        m71937a().trace(str, objArr);
    }

    @Override // org.slf4j.Logger
    public void warn(String str, Object... objArr) {
        m71937a().warn(str, objArr);
    }

    @Override // org.slf4j.Logger
    public void debug(String str, Throwable th) {
        m71937a().debug(str, th);
    }

    @Override // org.slf4j.Logger
    public void error(String str, Throwable th) {
        m71937a().error(str, th);
    }

    @Override // org.slf4j.Logger
    public void info(String str, Throwable th) {
        m71937a().info(str, th);
    }

    @Override // org.slf4j.Logger
    public void trace(String str, Throwable th) {
        m71937a().trace(str, th);
    }

    @Override // org.slf4j.Logger
    public void warn(String str, Throwable th) {
        m71937a().warn(str, th);
    }

    @Override // org.slf4j.Logger
    public void debug(Marker marker, String str) {
        m71937a().debug(marker, str);
    }

    @Override // org.slf4j.Logger
    public void error(Marker marker, String str) {
        m71937a().error(marker, str);
    }

    @Override // org.slf4j.Logger
    public void info(Marker marker, String str) {
        m71937a().info(marker, str);
    }

    @Override // org.slf4j.Logger
    public void trace(Marker marker, String str) {
        m71937a().trace(marker, str);
    }

    @Override // org.slf4j.Logger
    public void warn(Marker marker, String str) {
        m71937a().warn(marker, str);
    }

    @Override // org.slf4j.Logger
    public void debug(Marker marker, String str, Object obj) {
        m71937a().debug(marker, str, obj);
    }

    @Override // org.slf4j.Logger
    public void error(Marker marker, String str, Object obj) {
        m71937a().error(marker, str, obj);
    }

    @Override // org.slf4j.Logger
    public void info(Marker marker, String str, Object obj) {
        m71937a().info(marker, str, obj);
    }

    @Override // org.slf4j.Logger
    public void trace(Marker marker, String str, Object obj) {
        m71937a().trace(marker, str, obj);
    }

    @Override // org.slf4j.Logger
    public void warn(Marker marker, String str, Object obj) {
        m71937a().warn(marker, str, obj);
    }

    @Override // org.slf4j.Logger
    public void debug(Marker marker, String str, Object obj, Object obj2) {
        m71937a().debug(marker, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void error(Marker marker, String str, Object obj, Object obj2) {
        m71937a().error(marker, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void info(Marker marker, String str, Object obj, Object obj2) {
        m71937a().info(marker, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void trace(Marker marker, String str, Object obj, Object obj2) {
        m71937a().trace(marker, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void warn(Marker marker, String str, Object obj, Object obj2) {
        m71937a().warn(marker, str, obj, obj2);
    }

    @Override // org.slf4j.Logger
    public void debug(Marker marker, String str, Object... objArr) {
        m71937a().debug(marker, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void error(Marker marker, String str, Object... objArr) {
        m71937a().error(marker, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void info(Marker marker, String str, Object... objArr) {
        m71937a().info(marker, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void trace(Marker marker, String str, Object... objArr) {
        m71937a().trace(marker, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void warn(Marker marker, String str, Object... objArr) {
        m71937a().warn(marker, str, objArr);
    }

    @Override // org.slf4j.Logger
    public void debug(Marker marker, String str, Throwable th) {
        m71937a().debug(marker, str, th);
    }

    @Override // org.slf4j.Logger
    public void error(Marker marker, String str, Throwable th) {
        m71937a().error(marker, str, th);
    }

    @Override // org.slf4j.Logger
    public void info(Marker marker, String str, Throwable th) {
        m71937a().info(marker, str, th);
    }

    @Override // org.slf4j.Logger
    public void trace(Marker marker, String str, Throwable th) {
        m71937a().trace(marker, str, th);
    }

    @Override // org.slf4j.Logger
    public void warn(Marker marker, String str, Throwable th) {
        m71937a().warn(marker, str, th);
    }
}
