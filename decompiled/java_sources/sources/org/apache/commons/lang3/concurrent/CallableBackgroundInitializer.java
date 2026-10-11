package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public class CallableBackgroundInitializer<T> extends BackgroundInitializer<T> {

    /* renamed from: d */
    public final Callable<T> f107503d;

    public CallableBackgroundInitializer(Callable<T> callable) {
        m67296c(callable);
        this.f107503d = callable;
    }

    /* renamed from: c */
    public final void m67296c(Callable<T> callable) {
        Validate.isTrue(callable != null, "Callable must not be null!", new Object[0]);
    }

    @Override // org.apache.commons.lang3.concurrent.BackgroundInitializer
    public T initialize() throws Exception {
        return this.f107503d.call();
    }

    public CallableBackgroundInitializer(Callable<T> callable, ExecutorService executorService) {
        super(executorService);
        m67296c(callable);
        this.f107503d = callable;
    }
}
