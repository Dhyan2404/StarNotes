package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CheckReturnValue;
import com.sunia.HTREnginev2.pnf;
import java.lang.Thread;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.CheckForNull;

@CanIgnoreReturnValue
@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public final class ThreadFactoryBuilder {

    /* renamed from: a */
    @CheckForNull
    public String f35442a = null;

    /* renamed from: b */
    @CheckForNull
    public Boolean f35443b = null;

    /* renamed from: c */
    @CheckForNull
    public Integer f35444c = null;

    /* renamed from: d */
    @CheckForNull
    public Thread.UncaughtExceptionHandler f35445d = null;

    /* renamed from: e */
    @CheckForNull
    public ThreadFactory f35446e = null;

    /* renamed from: com.google.common.util.concurrent.ThreadFactoryBuilder$a */
    /* loaded from: classes6.dex */
    public class ThreadFactoryC6405a implements ThreadFactory {

        /* renamed from: e */
        public final /* synthetic */ ThreadFactory f35447e;

        /* renamed from: f */
        public final /* synthetic */ String f35448f;

        /* renamed from: g */
        public final /* synthetic */ AtomicLong f35449g;

        /* renamed from: h */
        public final /* synthetic */ Boolean f35450h;

        /* renamed from: i */
        public final /* synthetic */ Integer f35451i;

        /* renamed from: j */
        public final /* synthetic */ Thread.UncaughtExceptionHandler f35452j;

        public ThreadFactoryC6405a(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f35447e = threadFactory;
            this.f35448f = str;
            this.f35449g = atomicLong;
            this.f35450h = bool;
            this.f35451i = num;
            this.f35452j = uncaughtExceptionHandler;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = this.f35447e.newThread(runnable);
            String str = this.f35448f;
            if (str != null) {
                AtomicLong atomicLong = this.f35449g;
                Objects.requireNonNull(atomicLong);
                newThread.setName(ThreadFactoryBuilder.m27841c(str, Long.valueOf(atomicLong.getAndIncrement())));
            }
            Boolean bool = this.f35450h;
            if (bool != null) {
                newThread.setDaemon(bool.booleanValue());
            }
            Integer num = this.f35451i;
            if (num != null) {
                newThread.setPriority(num.intValue());
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f35452j;
            if (uncaughtExceptionHandler != null) {
                newThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
            }
            return newThread;
        }
    }

    /* renamed from: b */
    public static ThreadFactory m27840b(ThreadFactoryBuilder threadFactoryBuilder) {
        String str = threadFactoryBuilder.f35442a;
        Boolean bool = threadFactoryBuilder.f35443b;
        Integer num = threadFactoryBuilder.f35444c;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = threadFactoryBuilder.f35445d;
        ThreadFactory threadFactory = threadFactoryBuilder.f35446e;
        if (threadFactory == null) {
            threadFactory = Executors.defaultThreadFactory();
        }
        return new ThreadFactoryC6405a(threadFactory, str, str != null ? new AtomicLong(0L) : null, bool, num, uncaughtExceptionHandler);
    }

    /* renamed from: c */
    public static String m27841c(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    @CheckReturnValue
    public ThreadFactory build() {
        return m27840b(this);
    }

    public ThreadFactoryBuilder setDaemon(boolean z) {
        this.f35443b = Boolean.valueOf(z);
        return this;
    }

    public ThreadFactoryBuilder setNameFormat(String str) {
        m27841c(str, 0);
        this.f35442a = str;
        return this;
    }

    public ThreadFactoryBuilder setPriority(int i) {
        Preconditions.checkArgument(i >= 1, "Thread priority (%s) must be >= %s", i, 1);
        Preconditions.checkArgument(i <= 10, "Thread priority (%s) must be <= %s", i, 10);
        this.f35444c = Integer.valueOf(i);
        return this;
    }

    public ThreadFactoryBuilder setThreadFactory(ThreadFactory threadFactory) {
        this.f35446e = (ThreadFactory) Preconditions.checkNotNull(threadFactory);
        return this;
    }

    public ThreadFactoryBuilder setUncaughtExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f35445d = (Thread.UncaughtExceptionHandler) Preconditions.checkNotNull(uncaughtExceptionHandler);
        return this;
    }
}
