package com.sunia.HTREnginev2;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;

@pnf
/* loaded from: classes6.dex */
public abstract class ytg implements Condition {
    /* renamed from: a */
    public abstract Condition mo27837a();

    @Override // java.util.concurrent.locks.Condition
    public void await() throws InterruptedException {
        mo27837a().await();
    }

    @Override // java.util.concurrent.locks.Condition
    public long awaitNanos(long j) throws InterruptedException {
        return mo27837a().awaitNanos(j);
    }

    @Override // java.util.concurrent.locks.Condition
    public void awaitUninterruptibly() {
        mo27837a().awaitUninterruptibly();
    }

    @Override // java.util.concurrent.locks.Condition
    public boolean awaitUntil(Date date) throws InterruptedException {
        return mo27837a().awaitUntil(date);
    }

    @Override // java.util.concurrent.locks.Condition
    public void signal() {
        mo27837a().signal();
    }

    @Override // java.util.concurrent.locks.Condition
    public void signalAll() {
        mo27837a().signalAll();
    }

    @Override // java.util.concurrent.locks.Condition
    public boolean await(long j, TimeUnit timeUnit) throws InterruptedException {
        return mo27837a().await(j, timeUnit);
    }
}
