package com.sunia.HTREnginev2;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes12.dex */
public class rao extends ThreadPoolExecutor {

    /* renamed from: e */
    public final Map<qao, Boolean> f82930e;

    public rao(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory);
        this.f82930e = new ConcurrentHashMap();
    }

    /* renamed from: a */
    public Set<qao> m56938a() {
        return new HashSet(this.f82930e.keySet());
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void afterExecute(Runnable runnable, Throwable th) {
        if (runnable instanceof qao) {
            this.f82930e.remove(runnable);
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void beforeExecute(Thread thread, Runnable runnable) {
        if (runnable instanceof qao) {
            this.f82930e.put((qao) runnable, Boolean.TRUE);
        }
    }
}
