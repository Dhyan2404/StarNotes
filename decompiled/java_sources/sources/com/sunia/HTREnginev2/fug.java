package com.sunia.HTREnginev2;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

@pnf
/* loaded from: classes6.dex */
public abstract class fug implements Lock {
    /* renamed from: a */
    public abstract Lock mo27838a();

    @Override // java.util.concurrent.locks.Lock
    public void lock() {
        mo27838a().lock();
    }

    @Override // java.util.concurrent.locks.Lock
    public void lockInterruptibly() throws InterruptedException {
        mo27838a().lockInterruptibly();
    }

    @Override // java.util.concurrent.locks.Lock
    public Condition newCondition() {
        return mo27838a().newCondition();
    }

    @Override // java.util.concurrent.locks.Lock
    public boolean tryLock() {
        return mo27838a().tryLock();
    }

    @Override // java.util.concurrent.locks.Lock
    public void unlock() {
        mo27838a().unlock();
    }

    @Override // java.util.concurrent.locks.Lock
    public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
        return mo27838a().tryLock(j, timeUnit);
    }
}
