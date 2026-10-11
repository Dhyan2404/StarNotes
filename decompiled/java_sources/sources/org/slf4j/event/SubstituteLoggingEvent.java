package org.slf4j.event;

import org.slf4j.Marker;
import org.slf4j.helpers.SubstituteLogger;

/* loaded from: classes16.dex */
public class SubstituteLoggingEvent implements LoggingEvent {

    /* renamed from: a */
    public Level f116037a;

    /* renamed from: b */
    public Marker f116038b;

    /* renamed from: c */
    public String f116039c;

    /* renamed from: d */
    public SubstituteLogger f116040d;

    /* renamed from: e */
    public String f116041e;

    /* renamed from: f */
    public String f116042f;

    /* renamed from: g */
    public Object[] f116043g;

    /* renamed from: h */
    public long f116044h;

    /* renamed from: i */
    public Throwable f116045i;

    @Override // org.slf4j.event.LoggingEvent
    public Object[] getArgumentArray() {
        return this.f116043g;
    }

    @Override // org.slf4j.event.LoggingEvent
    public Level getLevel() {
        return this.f116037a;
    }

    public SubstituteLogger getLogger() {
        return this.f116040d;
    }

    @Override // org.slf4j.event.LoggingEvent
    public String getLoggerName() {
        return this.f116039c;
    }

    @Override // org.slf4j.event.LoggingEvent
    public Marker getMarker() {
        return this.f116038b;
    }

    @Override // org.slf4j.event.LoggingEvent
    public String getMessage() {
        return this.f116042f;
    }

    @Override // org.slf4j.event.LoggingEvent
    public String getThreadName() {
        return this.f116041e;
    }

    @Override // org.slf4j.event.LoggingEvent
    public Throwable getThrowable() {
        return this.f116045i;
    }

    @Override // org.slf4j.event.LoggingEvent
    public long getTimeStamp() {
        return this.f116044h;
    }

    public void setArgumentArray(Object[] objArr) {
        this.f116043g = objArr;
    }

    public void setLevel(Level level) {
        this.f116037a = level;
    }

    public void setLogger(SubstituteLogger substituteLogger) {
        this.f116040d = substituteLogger;
    }

    public void setLoggerName(String str) {
        this.f116039c = str;
    }

    public void setMarker(Marker marker) {
        this.f116038b = marker;
    }

    public void setMessage(String str) {
        this.f116042f = str;
    }

    public void setThreadName(String str) {
        this.f116041e = str;
    }

    public void setThrowable(Throwable th) {
        this.f116045i = th;
    }

    public void setTimeStamp(long j) {
        this.f116044h = j;
    }
}
