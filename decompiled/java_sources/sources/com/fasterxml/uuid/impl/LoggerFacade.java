package com.fasterxml.uuid.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes4.dex */
public class LoggerFacade {

    /* renamed from: a */
    public final Class<?> f21381a;

    /* renamed from: b */
    public C4577a f21382b;

    /* renamed from: com.fasterxml.uuid.impl.LoggerFacade$a */
    /* loaded from: classes4.dex */
    public static class C4577a {

        /* renamed from: a */
        public final Logger f21383a;

        public C4577a(Logger logger) {
            this.f21383a = logger;
        }

        /* renamed from: a */
        public static C4577a m17317a(Class<?> cls) {
            try {
                return new C4577a(LoggerFactory.getLogger(cls));
            } catch (Throwable unused) {
                return new C4577a(null);
            }
        }

        /* renamed from: b */
        public void m17318b(String str) {
            Logger logger = this.f21383a;
            if (logger != null) {
                logger.warn(str);
                return;
            }
            System.err.println("WARN: " + str);
        }
    }

    public LoggerFacade(Class<?> cls) {
        this.f21381a = cls;
    }

    public static LoggerFacade getLogger(Class<?> cls) {
        return new LoggerFacade(cls);
    }

    /* renamed from: a */
    public final synchronized void m17316a(String str) {
        if (this.f21382b == null) {
            this.f21382b = C4577a.m17317a(this.f21381a);
        }
        this.f21382b.m17318b(str);
    }

    public void warn(String str) {
        m17316a(str);
    }

    public void warn(String str, Object obj) {
        m17316a(String.format(str, obj));
    }

    public void warn(String str, Object obj, Object obj2) {
        m17316a(String.format(str, obj, obj2));
    }
}
