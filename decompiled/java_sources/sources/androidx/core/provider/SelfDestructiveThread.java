package androidx.core.provider;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.sunia.HTREnginev2.zmd;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@Deprecated
/* loaded from: classes3.dex */
public class SelfDestructiveThread {

    /* renamed from: i */
    public static final int f5574i = 1;

    /* renamed from: j */
    public static final int f5575j = 0;

    /* renamed from: b */
    @GuardedBy("mLock")
    public HandlerThread f5577b;

    /* renamed from: c */
    @GuardedBy("mLock")
    public Handler f5578c;

    /* renamed from: f */
    public final int f5581f;

    /* renamed from: g */
    public final int f5582g;

    /* renamed from: h */
    public final String f5583h;

    /* renamed from: a */
    public final Object f5576a = new Object();

    /* renamed from: e */
    public Handler.Callback f5580e = new C0721a();

    /* renamed from: d */
    @GuardedBy("mLock")
    public int f5579d = 0;

    /* loaded from: classes3.dex */
    public interface ReplyCallback<T> {
        void onReply(T t);
    }

    /* renamed from: androidx.core.provider.SelfDestructiveThread$a */
    /* loaded from: classes3.dex */
    public class C0721a implements Handler.Callback {
        public C0721a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                SelfDestructiveThread.this.m3163a();
                return true;
            }
            if (i != 1) {
                return true;
            }
            SelfDestructiveThread.this.m3164b((Runnable) message.obj);
            return true;
        }
    }

    /* renamed from: androidx.core.provider.SelfDestructiveThread$b */
    /* loaded from: classes3.dex */
    public class RunnableC0722b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Callable f5585e;

        /* renamed from: f */
        public final /* synthetic */ Handler f5586f;

        /* renamed from: g */
        public final /* synthetic */ ReplyCallback f5587g;

        /* renamed from: androidx.core.provider.SelfDestructiveThread$b$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ Object f5589e;

            public a(Object obj) {
                this.f5589e = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC0722b.this.f5587g.onReply(this.f5589e);
            }
        }

        public RunnableC0722b(Callable callable, Handler handler, ReplyCallback replyCallback) {
            this.f5585e = callable;
            this.f5586f = handler;
            this.f5587g = replyCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            try {
                obj = this.f5585e.call();
            } catch (Exception unused) {
                obj = null;
            }
            this.f5586f.post(new a(obj));
        }
    }

    /* renamed from: androidx.core.provider.SelfDestructiveThread$c */
    /* loaded from: classes3.dex */
    public class RunnableC0723c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ AtomicReference f5591e;

        /* renamed from: f */
        public final /* synthetic */ Callable f5592f;

        /* renamed from: g */
        public final /* synthetic */ ReentrantLock f5593g;

        /* renamed from: h */
        public final /* synthetic */ AtomicBoolean f5594h;

        /* renamed from: i */
        public final /* synthetic */ Condition f5595i;

        public RunnableC0723c(AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
            this.f5591e = atomicReference;
            this.f5592f = callable;
            this.f5593g = reentrantLock;
            this.f5594h = atomicBoolean;
            this.f5595i = condition;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f5591e.set(this.f5592f.call());
            } catch (Exception unused) {
            }
            this.f5593g.lock();
            try {
                this.f5594h.set(false);
                this.f5595i.signal();
            } finally {
                this.f5593g.unlock();
            }
        }
    }

    public SelfDestructiveThread(String str, int i, int i2) {
        this.f5583h = str;
        this.f5582g = i;
        this.f5581f = i2;
    }

    /* renamed from: a */
    public void m3163a() {
        synchronized (this.f5576a) {
            if (this.f5578c.hasMessages(1)) {
                return;
            }
            this.f5577b.quit();
            this.f5577b = null;
            this.f5578c = null;
        }
    }

    /* renamed from: b */
    public void m3164b(Runnable runnable) {
        runnable.run();
        synchronized (this.f5576a) {
            this.f5578c.removeMessages(0);
            Handler handler = this.f5578c;
            handler.sendMessageDelayed(handler.obtainMessage(0), this.f5581f);
        }
    }

    /* renamed from: c */
    public final void m3165c(Runnable runnable) {
        synchronized (this.f5576a) {
            if (this.f5577b == null) {
                HandlerThread handlerThread = new HandlerThread(this.f5583h, this.f5582g);
                this.f5577b = handlerThread;
                handlerThread.start();
                this.f5578c = new Handler(this.f5577b.getLooper(), this.f5580e);
                this.f5579d++;
            }
            this.f5578c.removeMessages(0);
            Handler handler = this.f5578c;
            handler.sendMessage(handler.obtainMessage(1, runnable));
        }
    }

    @VisibleForTesting
    public int getGeneration() {
        int i;
        synchronized (this.f5576a) {
            i = this.f5579d;
        }
        return i;
    }

    @VisibleForTesting
    public boolean isRunning() {
        boolean z;
        synchronized (this.f5576a) {
            z = this.f5577b != null;
        }
        return z;
    }

    public <T> void postAndReply(Callable<T> callable, ReplyCallback<T> replyCallback) {
        m3165c(new RunnableC0722b(callable, zmd.m58730a(), replyCallback));
    }

    public <T> T postAndWait(Callable<T> callable, int i) throws InterruptedException {
        ReentrantLock reentrantLock = new ReentrantLock();
        Condition newCondition = reentrantLock.newCondition();
        AtomicReference atomicReference = new AtomicReference();
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        m3165c(new RunnableC0723c(atomicReference, callable, reentrantLock, atomicBoolean, newCondition));
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                return (T) atomicReference.get();
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(i);
            do {
                try {
                    nanos = newCondition.awaitNanos(nanos);
                } catch (InterruptedException unused) {
                }
                if (!atomicBoolean.get()) {
                    return (T) atomicReference.get();
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } finally {
            reentrantLock.unlock();
        }
    }
}
