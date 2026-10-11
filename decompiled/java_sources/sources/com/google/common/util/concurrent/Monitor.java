package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Longs;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.google.j2objc.annotations.Weak;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sunia.HTREnginev2.ipi;
import com.sunia.HTREnginev2.pnf;
import java.time.Duration;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.BooleanSupplier;
import javax.annotation.CheckForNull;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public final class Monitor {

    /* renamed from: a */
    public final boolean f35360a;

    /* renamed from: b */
    public final ReentrantLock f35361b;

    /* renamed from: c */
    @CheckForNull
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public Guard f35362c;

    /* loaded from: classes6.dex */
    public static abstract class Guard {

        /* renamed from: a */
        @Weak
        public final Monitor f35363a;

        /* renamed from: b */
        public final Condition f35364b;

        /* renamed from: c */
        @GuardedBy("monitor.lock")
        public int f35365c = 0;

        /* renamed from: d */
        @CheckForNull
        @GuardedBy("monitor.lock")
        public Guard f35366d;

        public Guard(Monitor monitor) {
            this.f35363a = (Monitor) Preconditions.checkNotNull(monitor, "monitor");
            this.f35364b = monitor.f35361b.newCondition();
        }

        public abstract boolean isSatisfied();
    }

    /* renamed from: com.google.common.util.concurrent.Monitor$a */
    /* loaded from: classes6.dex */
    public class C6377a extends Guard {

        /* renamed from: e */
        public final /* synthetic */ BooleanSupplier f35367e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6377a(Monitor monitor, Monitor monitor2, BooleanSupplier booleanSupplier) {
            super(monitor2);
            this.f35367e = booleanSupplier;
        }

        @Override // com.google.common.util.concurrent.Monitor.Guard
        public boolean isSatisfied() {
            return this.f35367e.getAsBoolean();
        }
    }

    public Monitor() {
        this(false);
    }

    /* renamed from: g */
    public static long m27736g(long j) {
        if (j <= 0) {
            return 0L;
        }
        long nanoTime = System.nanoTime();
        if (nanoTime == 0) {
            return 1L;
        }
        return nanoTime;
    }

    /* renamed from: i */
    public static long m27737i(long j, long j2) {
        if (j2 <= 0) {
            return 0L;
        }
        return j2 - (System.nanoTime() - j);
    }

    /* renamed from: l */
    public static long m27738l(long j, TimeUnit timeUnit) {
        return Longs.constrainToRange(timeUnit.toNanos(j), 0L, 6917529027641081853L);
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: b */
    public final void m27739b(Guard guard, boolean z) throws InterruptedException {
        if (z) {
            m27746k();
        }
        m27742e(guard);
        do {
            try {
                guard.f35364b.await();
            } finally {
                m27743f(guard);
            }
        } while (!guard.isSatisfied());
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: c */
    public final boolean m27740c(Guard guard, long j, boolean z) throws InterruptedException {
        boolean z2 = true;
        while (j > 0) {
            if (z2) {
                if (z) {
                    try {
                        m27746k();
                    } finally {
                        if (!z2) {
                            m27743f(guard);
                        }
                    }
                }
                m27742e(guard);
                z2 = false;
            }
            j = guard.f35364b.awaitNanos(j);
            if (guard.isSatisfied()) {
                if (!z2) {
                    m27743f(guard);
                }
                return true;
            }
        }
        return false;
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: d */
    public final void m27741d(Guard guard, boolean z) {
        if (z) {
            m27746k();
        }
        m27742e(guard);
        do {
            try {
                guard.f35364b.awaitUninterruptibly();
            } finally {
                m27743f(guard);
            }
        } while (!guard.isSatisfied());
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: e */
    public final void m27742e(Guard guard) {
        int i = guard.f35365c;
        guard.f35365c = i + 1;
        if (i == 0) {
            guard.f35366d = this.f35362c;
            this.f35362c = guard;
        }
    }

    public void enter() {
        this.f35361b.lock();
    }

    public boolean enterIf(Guard guard) {
        if (guard.f35363a == this) {
            ReentrantLock reentrantLock = this.f35361b;
            reentrantLock.lock();
            try {
                boolean isSatisfied = guard.isSatisfied();
                if (!isSatisfied) {
                }
                return isSatisfied;
            } finally {
                reentrantLock.unlock();
            }
        }
        throw new IllegalMonitorStateException();
    }

    public boolean enterIfInterruptibly(Guard guard) throws InterruptedException {
        if (guard.f35363a == this) {
            ReentrantLock reentrantLock = this.f35361b;
            reentrantLock.lockInterruptibly();
            try {
                boolean isSatisfied = guard.isSatisfied();
                if (!isSatisfied) {
                }
                return isSatisfied;
            } finally {
                reentrantLock.unlock();
            }
        }
        throw new IllegalMonitorStateException();
    }

    public void enterInterruptibly() throws InterruptedException {
        this.f35361b.lockInterruptibly();
    }

    public void enterWhen(Guard guard) throws InterruptedException {
        if (guard.f35363a == this) {
            ReentrantLock reentrantLock = this.f35361b;
            boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
            reentrantLock.lockInterruptibly();
            try {
                if (guard.isSatisfied()) {
                    return;
                }
                m27739b(guard, isHeldByCurrentThread);
                return;
            } catch (Throwable th) {
                leave();
                throw th;
            }
        }
        throw new IllegalMonitorStateException();
    }

    public void enterWhenUninterruptibly(Guard guard) {
        if (guard.f35363a == this) {
            ReentrantLock reentrantLock = this.f35361b;
            boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
            reentrantLock.lock();
            try {
                if (guard.isSatisfied()) {
                    return;
                }
                m27741d(guard, isHeldByCurrentThread);
                return;
            } catch (Throwable th) {
                leave();
                throw th;
            }
        }
        throw new IllegalMonitorStateException();
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: f */
    public final void m27743f(Guard guard) {
        int i = guard.f35365c - 1;
        guard.f35365c = i;
        if (i == 0) {
            Guard guard2 = this.f35362c;
            Guard guard3 = null;
            while (guard2 != guard) {
                guard3 = guard2;
                guard2 = guard2.f35366d;
            }
            if (guard3 == null) {
                this.f35362c = guard2.f35366d;
            } else {
                guard3.f35366d = guard2.f35366d;
            }
            guard2.f35366d = null;
        }
    }

    public int getOccupiedDepth() {
        return this.f35361b.getHoldCount();
    }

    public int getQueueLength() {
        return this.f35361b.getQueueLength();
    }

    public int getWaitQueueLength(Guard guard) {
        if (guard.f35363a != this) {
            throw new IllegalMonitorStateException();
        }
        this.f35361b.lock();
        try {
            return guard.f35365c;
        } finally {
            this.f35361b.unlock();
        }
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: h */
    public final boolean m27744h(Guard guard) {
        try {
            return guard.isSatisfied();
        } catch (Throwable th) {
            this.m27745j();
            throw th;
        }
    }

    public boolean hasQueuedThread(Thread thread) {
        return this.f35361b.hasQueuedThread(thread);
    }

    public boolean hasQueuedThreads() {
        return this.f35361b.hasQueuedThreads();
    }

    public boolean hasWaiters(Guard guard) {
        return getWaitQueueLength(guard) > 0;
    }

    public boolean isFair() {
        return this.f35360a;
    }

    public boolean isOccupied() {
        return this.f35361b.isLocked();
    }

    public boolean isOccupiedByCurrentThread() {
        return this.f35361b.isHeldByCurrentThread();
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: j */
    public final void m27745j() {
        for (Guard guard = this.f35362c; guard != null; guard = guard.f35366d) {
            guard.f35364b.signalAll();
        }
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: k */
    public final void m27746k() {
        for (Guard guard = this.f35362c; guard != null; guard = guard.f35366d) {
            if (m27744h(guard)) {
                guard.f35364b.signal();
                return;
            }
        }
    }

    public void leave() {
        ReentrantLock reentrantLock = this.f35361b;
        try {
            if (reentrantLock.getHoldCount() == 1) {
                m27746k();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public Guard newGuard(BooleanSupplier booleanSupplier) {
        Preconditions.checkNotNull(booleanSupplier, "isSatisfied");
        return new C6377a(this, this, booleanSupplier);
    }

    public boolean tryEnter() {
        return this.f35361b.tryLock();
    }

    public boolean tryEnterIf(Guard guard) {
        if (guard.f35363a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f35361b;
        if (!reentrantLock.tryLock()) {
            return false;
        }
        try {
            boolean isSatisfied = guard.isSatisfied();
            if (!isSatisfied) {
            }
            return isSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void waitFor(Guard guard) throws InterruptedException {
        if (guard.f35363a == this && this.f35361b.isHeldByCurrentThread()) {
            if (guard.isSatisfied()) {
                return;
            }
            m27739b(guard, true);
            return;
        }
        throw new IllegalMonitorStateException();
    }

    public void waitForUninterruptibly(Guard guard) {
        if (guard.f35363a == this && this.f35361b.isHeldByCurrentThread()) {
            if (guard.isSatisfied()) {
                return;
            }
            m27741d(guard, true);
            return;
        }
        throw new IllegalMonitorStateException();
    }

    public Monitor(boolean z) {
        this.f35362c = null;
        this.f35360a = z;
        this.f35361b = new ReentrantLock(z);
    }

    public boolean enter(Duration duration) {
        return enter(ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    public boolean enterInterruptibly(Duration duration) throws InterruptedException {
        return enterInterruptibly(ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    public boolean enter(long j, TimeUnit timeUnit) {
        boolean tryLock;
        long m27738l = m27738l(j, timeUnit);
        ReentrantLock reentrantLock = this.f35361b;
        boolean z = true;
        if (!this.f35360a && reentrantLock.tryLock()) {
            return true;
        }
        boolean interrupted = Thread.interrupted();
        try {
            long nanoTime = System.nanoTime();
            long j2 = m27738l;
            while (true) {
                try {
                    try {
                        tryLock = reentrantLock.tryLock(j2, TimeUnit.NANOSECONDS);
                        break;
                    } catch (Throwable th) {
                        th = th;
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                } catch (InterruptedException unused) {
                    j2 = m27737i(nanoTime, m27738l);
                    interrupted = true;
                }
            }
            if (interrupted) {
                Thread.currentThread().interrupt();
            }
            return tryLock;
        } catch (Throwable th2) {
            th = th2;
            z = interrupted;
        }
    }

    public boolean enterInterruptibly(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f35361b.tryLock(j, timeUnit);
    }

    public boolean waitFor(Guard guard, Duration duration) throws InterruptedException {
        return waitFor(guard, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    public boolean waitForUninterruptibly(Guard guard, Duration duration) {
        return waitForUninterruptibly(guard, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    public boolean waitFor(Guard guard, long j, TimeUnit timeUnit) throws InterruptedException {
        long m27738l = m27738l(j, timeUnit);
        if (guard.f35363a == this && this.f35361b.isHeldByCurrentThread()) {
            if (guard.isSatisfied()) {
                return true;
            }
            if (!Thread.interrupted()) {
                return m27740c(guard, m27738l, true);
            }
            throw new InterruptedException();
        }
        throw new IllegalMonitorStateException();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean waitForUninterruptibly(com.google.common.util.concurrent.Monitor.Guard r7, long r8, java.util.concurrent.TimeUnit r10) {
        /*
            r6 = this;
            long r8 = m27738l(r8, r10)
            com.google.common.util.concurrent.Monitor r10 = r7.f35363a
            if (r10 != r6) goto L53
            java.util.concurrent.locks.ReentrantLock r10 = r6.f35361b
            boolean r10 = r10.isHeldByCurrentThread()
            if (r10 == 0) goto L53
            boolean r10 = r7.isSatisfied()
            r0 = 1
            if (r10 == 0) goto L18
            return r0
        L18:
            long r1 = m27736g(r8)
            boolean r10 = java.lang.Thread.interrupted()
            r3 = r8
            r5 = r0
        L22:
            boolean r6 = r6.m27740c(r7, r3, r5)     // Catch: java.lang.Throwable -> L30 java.lang.InterruptedException -> L33
            if (r10 == 0) goto L2f
            java.lang.Thread r7 = java.lang.Thread.currentThread()
            r7.interrupt()
        L2f:
            return r6
        L30:
            r6 = move-exception
            r0 = r10
            goto L49
        L33:
            boolean r10 = r7.isSatisfied()     // Catch: java.lang.Throwable -> L48
            if (r10 == 0) goto L41
            java.lang.Thread r6 = java.lang.Thread.currentThread()
            r6.interrupt()
            return r0
        L41:
            long r3 = m27737i(r1, r8)     // Catch: java.lang.Throwable -> L48
            r5 = 0
            r10 = r0
            goto L22
        L48:
            r6 = move-exception
        L49:
            if (r0 == 0) goto L52
            java.lang.Thread r7 = java.lang.Thread.currentThread()
            r7.interrupt()
        L52:
            throw r6
        L53:
            java.lang.IllegalMonitorStateException r6 = new java.lang.IllegalMonitorStateException
            r6.<init>()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.waitForUninterruptibly(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }

    public boolean enterIf(Guard guard, Duration duration) {
        return enterIf(guard, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    public boolean enterIfInterruptibly(Guard guard, Duration duration) throws InterruptedException {
        return enterIfInterruptibly(guard, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    public boolean enterIf(Guard guard, long j, TimeUnit timeUnit) {
        if (guard.f35363a == this) {
            if (!enter(j, timeUnit)) {
                return false;
            }
            try {
                boolean isSatisfied = guard.isSatisfied();
                if (!isSatisfied) {
                }
                return isSatisfied;
            } finally {
                this.f35361b.unlock();
            }
        }
        throw new IllegalMonitorStateException();
    }

    public boolean enterIfInterruptibly(Guard guard, long j, TimeUnit timeUnit) throws InterruptedException {
        if (guard.f35363a == this) {
            ReentrantLock reentrantLock = this.f35361b;
            if (!reentrantLock.tryLock(j, timeUnit)) {
                return false;
            }
            try {
                boolean isSatisfied = guard.isSatisfied();
                if (!isSatisfied) {
                }
                return isSatisfied;
            } finally {
                reentrantLock.unlock();
            }
        }
        throw new IllegalMonitorStateException();
    }

    public boolean enterWhen(Guard guard, Duration duration) throws InterruptedException {
        return enterWhen(guard, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    public boolean enterWhenUninterruptibly(Guard guard, Duration duration) {
        return enterWhenUninterruptibly(guard, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0047, code lost:
    
        if (m27740c(r11, r0, r3) != false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean enterWhen(com.google.common.util.concurrent.Monitor.Guard r11, long r12, java.util.concurrent.TimeUnit r14) throws java.lang.InterruptedException {
        /*
            r10 = this;
            long r0 = m27738l(r12, r14)
            com.google.common.util.concurrent.Monitor r2 = r11.f35363a
            if (r2 != r10) goto L60
            java.util.concurrent.locks.ReentrantLock r2 = r10.f35361b
            boolean r3 = r2.isHeldByCurrentThread()
            boolean r4 = r10.f35360a
            r5 = 0
            r6 = 0
            if (r4 != 0) goto L29
            boolean r4 = java.lang.Thread.interrupted()
            if (r4 != 0) goto L23
            boolean r4 = r2.tryLock()
            if (r4 == 0) goto L29
            r8 = r6
            goto L34
        L23:
            java.lang.InterruptedException r10 = new java.lang.InterruptedException
            r10.<init>()
            throw r10
        L29:
            long r8 = m27736g(r0)
            boolean r12 = r2.tryLock(r12, r14)
            if (r12 != 0) goto L34
            return r5
        L34:
            boolean r12 = r11.isSatisfied()     // Catch: java.lang.Throwable -> L50
            if (r12 != 0) goto L49
            int r12 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r12 != 0) goto L3f
            goto L43
        L3f:
            long r0 = m27737i(r8, r0)     // Catch: java.lang.Throwable -> L50
        L43:
            boolean r10 = r10.m27740c(r11, r0, r3)     // Catch: java.lang.Throwable -> L50
            if (r10 == 0) goto L4a
        L49:
            r5 = 1
        L4a:
            if (r5 != 0) goto L4f
            r2.unlock()
        L4f:
            return r5
        L50:
            r11 = move-exception
            if (r3 != 0) goto L5c
            r10.m27746k()     // Catch: java.lang.Throwable -> L57
            goto L5c
        L57:
            r10 = move-exception
            r2.unlock()
            throw r10
        L5c:
            r2.unlock()
            throw r11
        L60:
            java.lang.IllegalMonitorStateException r10 = new java.lang.IllegalMonitorStateException
            r10.<init>()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.enterWhen(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004b A[Catch: all -> 0x0073, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0073, blocks: (B:5:0x0012, B:7:0x001a, B:22:0x004b, B:32:0x0059, B:33:0x005c, B:34:0x0023, B:37:0x0028, B:13:0x0030, B:17:0x003b, B:18:0x0045, B:27:0x0041), top: B:4:0x0012, inners: #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean enterWhenUninterruptibly(com.google.common.util.concurrent.Monitor.Guard r12, long r13, java.util.concurrent.TimeUnit r15) {
        /*
            r11 = this;
            long r13 = m27738l(r13, r15)
            com.google.common.util.concurrent.Monitor r15 = r12.f35363a
            if (r15 != r11) goto L7e
            java.util.concurrent.locks.ReentrantLock r15 = r11.f35361b
            boolean r0 = r15.isHeldByCurrentThread()
            boolean r1 = java.lang.Thread.interrupted()
            boolean r2 = r11.f35360a     // Catch: java.lang.Throwable -> L73
            r3 = 0
            r4 = 0
            r6 = 1
            if (r2 != 0) goto L23
            boolean r2 = r15.tryLock()     // Catch: java.lang.Throwable -> L73
            if (r2 != 0) goto L21
            goto L23
        L21:
            r7 = r4
            goto L30
        L23:
            long r7 = m27736g(r13)     // Catch: java.lang.Throwable -> L73
            r9 = r13
        L28:
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.NANOSECONDS     // Catch: java.lang.InterruptedException -> L6a java.lang.Throwable -> L73
            boolean r2 = r15.tryLock(r9, r2)     // Catch: java.lang.InterruptedException -> L6a java.lang.Throwable -> L73
            if (r2 == 0) goto L60
        L30:
            boolean r2 = r12.isSatisfied()     // Catch: java.lang.Throwable -> L58 java.lang.InterruptedException -> L5d
            if (r2 == 0) goto L37
            goto L49
        L37:
            int r2 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r2 != 0) goto L41
            long r7 = m27736g(r13)     // Catch: java.lang.Throwable -> L58 java.lang.InterruptedException -> L5d
            r9 = r13
            goto L45
        L41:
            long r9 = m27737i(r7, r13)     // Catch: java.lang.Throwable -> L58 java.lang.InterruptedException -> L5d
        L45:
            boolean r6 = r11.m27740c(r12, r9, r0)     // Catch: java.lang.Throwable -> L58 java.lang.InterruptedException -> L5d
        L49:
            if (r6 != 0) goto L4e
            r15.unlock()     // Catch: java.lang.Throwable -> L73
        L4e:
            if (r1 == 0) goto L57
            java.lang.Thread r11 = java.lang.Thread.currentThread()
            r11.interrupt()
        L57:
            return r6
        L58:
            r11 = move-exception
            r15.unlock()     // Catch: java.lang.Throwable -> L73
            throw r11     // Catch: java.lang.Throwable -> L73
        L5d:
            r0 = r3
            r1 = r6
            goto L30
        L60:
            if (r1 == 0) goto L69
            java.lang.Thread r11 = java.lang.Thread.currentThread()
            r11.interrupt()
        L69:
            return r3
        L6a:
            long r9 = m27737i(r7, r13)     // Catch: java.lang.Throwable -> L70
            r1 = r6
            goto L28
        L70:
            r11 = move-exception
            r1 = r6
            goto L74
        L73:
            r11 = move-exception
        L74:
            if (r1 == 0) goto L7d
            java.lang.Thread r12 = java.lang.Thread.currentThread()
            r12.interrupt()
        L7d:
            throw r11
        L7e:
            java.lang.IllegalMonitorStateException r11 = new java.lang.IllegalMonitorStateException
            r11.<init>()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.enterWhenUninterruptibly(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }
}
