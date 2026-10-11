package com.sunia.HTREnginev2;

import android.os.Process;
import androidx.annotation.GuardedBy;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.C5115c;
import com.google.android.gms.measurement.internal.zzhv;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;

/* loaded from: classes5.dex */
public final class olp extends Thread {

    /* renamed from: e */
    public final Object f79909e;

    /* renamed from: f */
    public final BlockingQueue<C5115c<?>> f79910f;

    /* renamed from: g */
    @GuardedBy("threadLifeCycleLock")
    public boolean f79911g = false;

    /* renamed from: h */
    public final /* synthetic */ zzhv f79912h;

    public olp(zzhv zzhvVar, String str, BlockingQueue<C5115c<?>> blockingQueue) {
        this.f79912h = zzhvVar;
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(blockingQueue);
        this.f79909e = new Object();
        this.f79910f = blockingQueue;
        setName(str);
    }

    /* renamed from: a */
    public final void m56082a() {
        synchronized (this.f79909e) {
            this.f79909e.notifyAll();
        }
    }

    /* renamed from: b */
    public final void m56083b(InterruptedException interruptedException) {
        this.f79912h.zzj().zzu().zza(getName() + " was interrupted", interruptedException);
    }

    /* renamed from: c */
    public final void m56084c() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        olp olpVar;
        olp olpVar2;
        obj = this.f79912h.f29842h;
        synchronized (obj) {
            if (!this.f79911g) {
                semaphore = this.f79912h.f29843i;
                semaphore.release();
                obj2 = this.f79912h.f29842h;
                obj2.notifyAll();
                olpVar = this.f79912h.f29836b;
                if (this == olpVar) {
                    this.f79912h.f29836b = null;
                } else {
                    olpVar2 = this.f79912h.f29837c;
                    if (this == olpVar2) {
                        this.f79912h.f29837c = null;
                    } else {
                        this.f79912h.zzj().zzg().zza("Current scheduler thread is neither worker nor network");
                    }
                }
                this.f79911g = true;
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Semaphore semaphore;
        Object obj;
        boolean z;
        boolean z2 = false;
        while (!z2) {
            try {
                semaphore = this.f79912h.f29843i;
                semaphore.acquire();
                z2 = true;
            } catch (InterruptedException e) {
                m56083b(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                C5115c<?> poll = this.f79910f.poll();
                if (poll != null) {
                    Process.setThreadPriority(poll.f29667f ? threadPriority : 10);
                    poll.run();
                } else {
                    synchronized (this.f79909e) {
                        if (this.f79910f.peek() == null) {
                            z = this.f79912h.f29844j;
                            if (!z) {
                                try {
                                    this.f79909e.wait(30000L);
                                } catch (InterruptedException e2) {
                                    m56083b(e2);
                                }
                            }
                        }
                    }
                    obj = this.f79912h.f29842h;
                    synchronized (obj) {
                        if (this.f79910f.peek() == null) {
                            m56084c();
                            return;
                        }
                    }
                }
            }
        } finally {
            m56084c();
        }
    }
}
