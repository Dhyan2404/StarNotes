package org.apache.http.impl.conn.tsccm;

import java.util.Date;
import java.util.concurrent.locks.Condition;
import org.apache.http.util.Args;

@Deprecated
/* loaded from: classes12.dex */
public class WaitingThread {

    /* renamed from: a */
    public final Condition f110830a;

    /* renamed from: b */
    public final RouteSpecificPool f110831b;

    /* renamed from: c */
    public Thread f110832c;

    /* renamed from: d */
    public boolean f110833d;

    public WaitingThread(Condition condition, RouteSpecificPool routeSpecificPool) {
        Args.notNull(condition, "Condition");
        this.f110830a = condition;
        this.f110831b = routeSpecificPool;
    }

    public boolean await(Date date) throws InterruptedException {
        boolean z;
        if (this.f110832c != null) {
            throw new IllegalStateException("A thread is already waiting on this object.\ncaller: " + Thread.currentThread() + "\nwaiter: " + this.f110832c);
        }
        if (this.f110833d) {
            throw new InterruptedException("Operation interrupted");
        }
        this.f110832c = Thread.currentThread();
        try {
            if (date != null) {
                z = this.f110830a.awaitUntil(date);
            } else {
                this.f110830a.await();
                z = true;
            }
            if (this.f110833d) {
                throw new InterruptedException("Operation interrupted");
            }
            return z;
        } finally {
            this.f110832c = null;
        }
    }

    public final Condition getCondition() {
        return this.f110830a;
    }

    public final RouteSpecificPool getPool() {
        return this.f110831b;
    }

    public final Thread getThread() {
        return this.f110832c;
    }

    public void interrupt() {
        this.f110833d = true;
        this.f110830a.signalAll();
    }

    public void wakeup() {
        if (this.f110832c == null) {
            throw new IllegalStateException("Nobody waiting on this object.");
        }
        this.f110830a.signalAll();
    }
}
