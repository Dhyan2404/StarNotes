package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes10.dex */
public final class SchedulerPoolFactory {

    /* renamed from: a */
    public static final String f97367a = "rx3.purge-enabled";
    public static final boolean PURGE_ENABLED = m61282a(true, f97367a, true, true, new C17624a());

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.SchedulerPoolFactory$a */
    /* loaded from: classes10.dex */
    public static final class C17624a implements Function<String, String> {
        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String apply(String t) {
            return System.getProperty(t);
        }
    }

    public SchedulerPoolFactory() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: a */
    public static boolean m61282a(boolean enabled, String key, boolean defaultNotFound, boolean defaultNotEnabled, Function<String, String> propertyAccessor) {
        if (!enabled) {
            return defaultNotEnabled;
        }
        try {
            String apply = propertyAccessor.apply(key);
            return apply == null ? defaultNotFound : "true".equals(apply);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            return defaultNotFound;
        }
    }

    public static ScheduledExecutorService create(ThreadFactory factory) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, factory);
        scheduledThreadPoolExecutor.setRemoveOnCancelPolicy(PURGE_ENABLED);
        return scheduledThreadPoolExecutor;
    }
}
