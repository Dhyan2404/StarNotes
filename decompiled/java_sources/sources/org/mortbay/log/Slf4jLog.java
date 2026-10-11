package org.mortbay.log;

import org.slf4j.LoggerFactory;

/* loaded from: classes13.dex */
public class Slf4jLog implements Logger {

    /* renamed from: a */
    public org.slf4j.Logger f115228a;

    public Slf4jLog() throws Exception {
        this("org.mortbay.log");
    }

    @Override // org.mortbay.log.Logger
    public void debug(String str, Object obj, Object obj2) {
        this.f115228a.debug(str, obj, obj2);
    }

    @Override // org.mortbay.log.Logger
    public Logger getLogger(String str) {
        return new Slf4jLog(str);
    }

    @Override // org.mortbay.log.Logger
    public void info(String str, Object obj, Object obj2) {
        this.f115228a.info(str, obj, obj2);
    }

    @Override // org.mortbay.log.Logger
    public boolean isDebugEnabled() {
        return this.f115228a.isDebugEnabled();
    }

    @Override // org.mortbay.log.Logger
    public void setDebugEnabled(boolean z) {
        warn("setDebugEnabled not implemented", null, null);
    }

    public String toString() {
        return this.f115228a.toString();
    }

    @Override // org.mortbay.log.Logger
    public void warn(String str, Object obj, Object obj2) {
        this.f115228a.warn(str, obj, obj2);
    }

    public Slf4jLog(String str) {
        this.f115228a = LoggerFactory.getLogger(str);
    }

    @Override // org.mortbay.log.Logger
    public void debug(String str, Throwable th) {
        this.f115228a.debug(str, th);
    }

    @Override // org.mortbay.log.Logger
    public void warn(String str, Throwable th) {
        if (!(th instanceof RuntimeException) && !(th instanceof Error)) {
            this.f115228a.warn(str, th);
        } else {
            this.f115228a.error(str, th);
        }
    }
}
