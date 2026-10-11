package org.apache.commons.lang3.concurrent;

import java.lang.Thread;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public class BasicThreadFactory implements ThreadFactory {

    /* renamed from: e */
    public final AtomicLong f107492e;

    /* renamed from: f */
    public final ThreadFactory f107493f;

    /* renamed from: g */
    public final Thread.UncaughtExceptionHandler f107494g;

    /* renamed from: h */
    public final String f107495h;

    /* renamed from: i */
    public final Integer f107496i;

    /* renamed from: j */
    public final Boolean f107497j;

    /* loaded from: classes12.dex */
    public static class Builder implements org.apache.commons.lang3.builder.Builder<BasicThreadFactory> {

        /* renamed from: e */
        public ThreadFactory f107498e;

        /* renamed from: f */
        public Thread.UncaughtExceptionHandler f107499f;

        /* renamed from: g */
        public String f107500g;

        /* renamed from: h */
        public Integer f107501h;

        /* renamed from: i */
        public Boolean f107502i;

        public Builder daemon(boolean z) {
            this.f107502i = Boolean.valueOf(z);
            return this;
        }

        public Builder namingPattern(String str) {
            Validate.notNull(str, "Naming pattern must not be null!", new Object[0]);
            this.f107500g = str;
            return this;
        }

        public Builder priority(int i) {
            this.f107501h = Integer.valueOf(i);
            return this;
        }

        public void reset() {
            this.f107498e = null;
            this.f107499f = null;
            this.f107500g = null;
            this.f107501h = null;
            this.f107502i = null;
        }

        public Builder uncaughtExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            Validate.notNull(uncaughtExceptionHandler, "Uncaught exception handler must not be null!", new Object[0]);
            this.f107499f = uncaughtExceptionHandler;
            return this;
        }

        public Builder wrappedFactory(ThreadFactory threadFactory) {
            Validate.notNull(threadFactory, "Wrapped ThreadFactory must not be null!", new Object[0]);
            this.f107498e = threadFactory;
            return this;
        }

        @Override // org.apache.commons.lang3.builder.Builder
        public BasicThreadFactory build() {
            BasicThreadFactory basicThreadFactory = new BasicThreadFactory(this);
            reset();
            return basicThreadFactory;
        }
    }

    /* renamed from: a */
    public final void m67290a(Thread thread) {
        if (getNamingPattern() != null) {
            thread.setName(String.format(getNamingPattern(), Long.valueOf(this.f107492e.incrementAndGet())));
        }
        if (getUncaughtExceptionHandler() != null) {
            thread.setUncaughtExceptionHandler(getUncaughtExceptionHandler());
        }
        if (getPriority() != null) {
            thread.setPriority(getPriority().intValue());
        }
        if (getDaemonFlag() != null) {
            thread.setDaemon(getDaemonFlag().booleanValue());
        }
    }

    public final Boolean getDaemonFlag() {
        return this.f107497j;
    }

    public final String getNamingPattern() {
        return this.f107495h;
    }

    public final Integer getPriority() {
        return this.f107496i;
    }

    public long getThreadCount() {
        return this.f107492e.get();
    }

    public final Thread.UncaughtExceptionHandler getUncaughtExceptionHandler() {
        return this.f107494g;
    }

    public final ThreadFactory getWrappedFactory() {
        return this.f107493f;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = getWrappedFactory().newThread(runnable);
        m67290a(newThread);
        return newThread;
    }

    public BasicThreadFactory(Builder builder) {
        if (builder.f107498e == null) {
            this.f107493f = Executors.defaultThreadFactory();
        } else {
            this.f107493f = builder.f107498e;
        }
        this.f107495h = builder.f107500g;
        this.f107496i = builder.f107501h;
        this.f107497j = builder.f107502i;
        this.f107494g = builder.f107499f;
        this.f107492e = new AtomicLong();
    }
}
