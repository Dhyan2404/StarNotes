package io.reactivex.rxjava3.android.plugins;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class RxAndroidPlugins {

    /* renamed from: a */
    public static volatile Function<Callable<Scheduler>, Scheduler> f94985a;

    /* renamed from: b */
    public static volatile Function<Scheduler, Scheduler> f94986b;

    public RxAndroidPlugins() {
        throw new AssertionError("No instances.");
    }

    /* renamed from: a */
    public static <T, R> R m61086a(Function<T, R> f, T t) {
        try {
            return f.apply(t);
        } catch (Throwable th) {
            throw Exceptions.propagate(th);
        }
    }

    /* renamed from: b */
    public static Scheduler m61087b(Function<Callable<Scheduler>, Scheduler> f, Callable<Scheduler> s) {
        Scheduler scheduler = (Scheduler) m61086a(f, s);
        if (scheduler != null) {
            return scheduler;
        }
        throw new NullPointerException("Scheduler Callable returned null");
    }

    /* renamed from: c */
    public static Scheduler m61088c(Callable<Scheduler> s) {
        try {
            Scheduler call = s.call();
            if (call != null) {
                return call;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            throw Exceptions.propagate(th);
        }
    }

    public static Function<Callable<Scheduler>, Scheduler> getInitMainThreadSchedulerHandler() {
        return f94985a;
    }

    public static Function<Scheduler, Scheduler> getOnMainThreadSchedulerHandler() {
        return f94986b;
    }

    public static Scheduler initMainThreadScheduler(Callable<Scheduler> scheduler) {
        if (scheduler == null) {
            throw new NullPointerException("scheduler == null");
        }
        Function<Callable<Scheduler>, Scheduler> function = f94985a;
        return function == null ? m61088c(scheduler) : m61087b(function, scheduler);
    }

    public static Scheduler onMainThreadScheduler(Scheduler scheduler) {
        if (scheduler == null) {
            throw new NullPointerException("scheduler == null");
        }
        Function<Scheduler, Scheduler> function = f94986b;
        return function == null ? scheduler : (Scheduler) m61086a(function, scheduler);
    }

    public static void reset() {
        setInitMainThreadSchedulerHandler(null);
        setMainThreadSchedulerHandler(null);
    }

    public static void setInitMainThreadSchedulerHandler(Function<Callable<Scheduler>, Scheduler> handler) {
        f94985a = handler;
    }

    public static void setMainThreadSchedulerHandler(Function<Scheduler, Scheduler> handler) {
        f94986b = handler;
    }
}
