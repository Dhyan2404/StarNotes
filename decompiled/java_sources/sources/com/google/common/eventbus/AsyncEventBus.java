package com.google.common.eventbus;

import com.google.common.eventbus.EventBus;
import com.sunia.HTREnginev2.q5f;
import com.sunia.HTREnginev2.unf;
import java.util.concurrent.Executor;

@unf
/* loaded from: classes6.dex */
public class AsyncEventBus extends EventBus {
    public AsyncEventBus(String str, Executor executor) {
        super(str, executor, q5f.m56627c(), EventBus.C6136a.f34672a);
    }

    public AsyncEventBus(Executor executor, SubscriberExceptionHandler subscriberExceptionHandler) {
        super("default", executor, q5f.m56627c(), subscriberExceptionHandler);
    }

    public AsyncEventBus(Executor executor) {
        super("default", executor, q5f.m56627c(), EventBus.C6136a.f34672a);
    }
}
