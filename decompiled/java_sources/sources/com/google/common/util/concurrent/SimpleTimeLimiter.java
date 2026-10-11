package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.Sets;
import com.google.common.util.concurrent.SimpleTimeLimiter;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.pnf;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.CheckForNull;

@Beta
@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public final class SimpleTimeLimiter implements TimeLimiter {

    /* renamed from: a */
    public final ExecutorService f35419a;

    /* renamed from: com.google.common.util.concurrent.SimpleTimeLimiter$a */
    /* loaded from: classes6.dex */
    public class C6396a implements InvocationHandler {

        /* renamed from: e */
        public final /* synthetic */ Object f35420e;

        /* renamed from: f */
        public final /* synthetic */ long f35421f;

        /* renamed from: g */
        public final /* synthetic */ TimeUnit f35422g;

        /* renamed from: h */
        public final /* synthetic */ Set f35423h;

        public C6396a(Object obj, long j, TimeUnit timeUnit, Set set) {
            this.f35420e = obj;
            this.f35421f = j;
            this.f35422g = timeUnit;
            this.f35423h = set;
        }

        /* renamed from: b */
        public static /* synthetic */ Object m27822b(Method method, Object obj, Object[] objArr) throws Exception {
            try {
                return method.invoke(obj, objArr);
            } catch (InvocationTargetException e) {
                throw SimpleTimeLimiter.m27817h(e, false);
            }
        }

        @Override // java.lang.reflect.InvocationHandler
        @CheckForNull
        public Object invoke(Object obj, final Method method, @CheckForNull final Object[] objArr) throws Throwable {
            final Object obj2 = this.f35420e;
            return SimpleTimeLimiter.this.m27818c(new Callable() { // from class: com.sunia.HTREnginev2.xsm
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Object m27822b;
                    m27822b = SimpleTimeLimiter.C6396a.m27822b(method, obj2, objArr);
                    return m27822b;
                }
            }, this.f35421f, this.f35422g, this.f35423h.contains(method));
        }
    }

    public SimpleTimeLimiter(ExecutorService executorService) {
        this.f35419a = (ExecutorService) Preconditions.checkNotNull(executorService);
    }

    public static SimpleTimeLimiter create(ExecutorService executorService) {
        return new SimpleTimeLimiter(executorService);
    }

    /* renamed from: d */
    public static void m27813d(long j) {
        Preconditions.checkArgument(j > 0, "timeout must be positive: %s", j);
    }

    /* renamed from: e */
    public static boolean m27814e(Method method) {
        for (Class<?> cls : method.getExceptionTypes()) {
            if (cls == InterruptedException.class) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public static Set<Method> m27815f(Class<?> cls) {
        HashSet newHashSet = Sets.newHashSet();
        for (Method method : cls.getMethods()) {
            if (m27814e(method)) {
                newHashSet.add(method);
            }
        }
        return newHashSet;
    }

    /* renamed from: g */
    public static <T> T m27816g(Class<T> cls, InvocationHandler invocationHandler) {
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    /* renamed from: h */
    public static Exception m27817h(Exception exc, boolean z) throws Exception {
        Throwable cause = exc.getCause();
        if (cause == null) {
            throw exc;
        }
        if (z) {
            cause.setStackTrace((StackTraceElement[]) ObjectArrays.concat(cause.getStackTrace(), exc.getStackTrace(), StackTraceElement.class));
        }
        if (cause instanceof Exception) {
            throw ((Exception) cause);
        }
        if (cause instanceof Error) {
            throw ((Error) cause);
        }
        throw exc;
    }

    /* renamed from: c */
    public final <T> T m27818c(Callable<T> callable, long j, TimeUnit timeUnit, boolean z) throws Exception {
        Preconditions.checkNotNull(callable);
        Preconditions.checkNotNull(timeUnit);
        m27813d(j);
        Future<T> submit = this.f35419a.submit(callable);
        try {
            if (!z) {
                return (T) Uninterruptibles.getUninterruptibly(submit, j, timeUnit);
            }
            try {
                return submit.get(j, timeUnit);
            } catch (InterruptedException e) {
                submit.cancel(true);
                throw e;
            }
        } catch (ExecutionException e2) {
            throw m27817h(e2, true);
        } catch (TimeoutException e3) {
            submit.cancel(true);
            throw new UncheckedTimeoutException(e3);
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    @CanIgnoreReturnValue
    public <T> T callUninterruptiblyWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws TimeoutException, ExecutionException {
        Preconditions.checkNotNull(callable);
        Preconditions.checkNotNull(timeUnit);
        m27813d(j);
        Future<T> submit = this.f35419a.submit(callable);
        try {
            return (T) Uninterruptibles.getUninterruptibly(submit, j, timeUnit);
        } catch (ExecutionException e) {
            this.m27819i(e.getCause());
            throw new AssertionError();
        } catch (TimeoutException e2) {
            submit.cancel(true);
            throw e2;
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    @CanIgnoreReturnValue
    public <T> T callWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws TimeoutException, InterruptedException, ExecutionException {
        Preconditions.checkNotNull(callable);
        Preconditions.checkNotNull(timeUnit);
        m27813d(j);
        Future<T> submit = this.f35419a.submit(callable);
        try {
            return submit.get(j, timeUnit);
        } catch (InterruptedException | TimeoutException e) {
            submit.cancel(true);
            throw e;
        } catch (ExecutionException e2) {
            this.m27819i(e2.getCause());
            throw new AssertionError();
        }
    }

    /* renamed from: i */
    public final void m27819i(Throwable th) throws ExecutionException {
        if (th instanceof Error) {
            throw new ExecutionError((Error) th);
        }
        if (!(th instanceof RuntimeException)) {
            throw new ExecutionException(th);
        }
        throw new UncheckedExecutionException(th);
    }

    /* renamed from: j */
    public final void m27820j(Throwable th) {
        if (!(th instanceof Error)) {
            throw new UncheckedExecutionException(th);
        }
        throw new ExecutionError((Error) th);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public <T> T newProxy(T t, Class<T> cls, long j, TimeUnit timeUnit) {
        Preconditions.checkNotNull(t);
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(timeUnit);
        m27813d(j);
        Preconditions.checkArgument(cls.isInterface(), "interfaceType must be an interface type");
        return (T) m27816g(cls, new C6396a(t, j, timeUnit, m27815f(cls)));
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runUninterruptiblyWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) throws TimeoutException {
        Preconditions.checkNotNull(runnable);
        Preconditions.checkNotNull(timeUnit);
        m27813d(j);
        Future<?> submit = this.f35419a.submit(runnable);
        try {
            Uninterruptibles.getUninterruptibly(submit, j, timeUnit);
        } catch (ExecutionException e) {
            m27820j(e.getCause());
            throw new AssertionError();
        } catch (TimeoutException e2) {
            submit.cancel(true);
            throw e2;
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) throws TimeoutException, InterruptedException {
        Preconditions.checkNotNull(runnable);
        Preconditions.checkNotNull(timeUnit);
        m27813d(j);
        Future<?> submit = this.f35419a.submit(runnable);
        try {
            submit.get(j, timeUnit);
        } catch (InterruptedException | TimeoutException e) {
            submit.cancel(true);
            throw e;
        } catch (ExecutionException e2) {
            m27820j(e2.getCause());
            throw new AssertionError();
        }
    }
}
