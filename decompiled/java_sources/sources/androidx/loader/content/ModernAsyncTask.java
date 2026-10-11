package androidx.loader.content;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import androidx.annotation.RestrictTo;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public abstract class ModernAsyncTask<Params, Progress, Result> {

    /* renamed from: j */
    public static final String f8051j = "AsyncTask";

    /* renamed from: k */
    public static final int f8052k = 5;

    /* renamed from: l */
    public static final int f8053l = 128;

    /* renamed from: m */
    public static final int f8054m = 1;

    /* renamed from: n */
    public static final ThreadFactory f8055n;

    /* renamed from: o */
    public static final BlockingQueue<Runnable> f8056o;

    /* renamed from: p */
    public static final Executor f8057p;

    /* renamed from: q */
    public static final int f8058q = 1;

    /* renamed from: r */
    public static final int f8059r = 2;

    /* renamed from: s */
    public static HandlerC1173f f8060s;

    /* renamed from: t */
    public static volatile Executor f8061t;

    /* renamed from: e */
    public final AbstractCallableC1174g<Params, Result> f8062e;

    /* renamed from: f */
    public final FutureTask<Result> f8063f;

    /* renamed from: g */
    public volatile Status f8064g = Status.PENDING;

    /* renamed from: h */
    public final AtomicBoolean f8065h = new AtomicBoolean();

    /* renamed from: i */
    public final AtomicBoolean f8066i = new AtomicBoolean();

    /* loaded from: classes3.dex */
    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* renamed from: androidx.loader.content.ModernAsyncTask$a */
    /* loaded from: classes3.dex */
    public static class ThreadFactoryC1168a implements ThreadFactory {

        /* renamed from: e */
        public final AtomicInteger f8067e = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "ModernAsyncTask #" + this.f8067e.getAndIncrement());
        }
    }

    /* renamed from: androidx.loader.content.ModernAsyncTask$b */
    /* loaded from: classes3.dex */
    public class C1169b extends AbstractCallableC1174g<Params, Result> {
        public C1169b() {
        }

        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            ModernAsyncTask.this.f8066i.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                result = (Result) ModernAsyncTask.this.mo4967b(this.f8073e);
                Binder.flushPendingCommands();
                return result;
            } finally {
            }
        }
    }

    /* renamed from: androidx.loader.content.ModernAsyncTask$c */
    /* loaded from: classes3.dex */
    public class C1170c extends FutureTask<Result> {
        public C1170c(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            try {
                ModernAsyncTask.this.m4987r(get());
            } catch (InterruptedException e) {
                Log.w(ModernAsyncTask.f8051j, e);
            } catch (CancellationException unused) {
                ModernAsyncTask.this.m4987r(null);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    }

    /* renamed from: androidx.loader.content.ModernAsyncTask$d */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C1171d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8070a;

        static {
            int[] iArr = new int[Status.values().length];
            f8070a = iArr;
            try {
                iArr[Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8070a[Status.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: androidx.loader.content.ModernAsyncTask$e */
    /* loaded from: classes3.dex */
    public static class C1172e<Data> {

        /* renamed from: a */
        public final ModernAsyncTask f8071a;

        /* renamed from: b */
        public final Data[] f8072b;

        public C1172e(ModernAsyncTask modernAsyncTask, Data... dataArr) {
            this.f8071a = modernAsyncTask;
            this.f8072b = dataArr;
        }
    }

    /* renamed from: androidx.loader.content.ModernAsyncTask$f */
    /* loaded from: classes3.dex */
    public static class HandlerC1173f extends Handler {
        public HandlerC1173f() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C1172e c1172e = (C1172e) message.obj;
            int i = message.what;
            if (i == 1) {
                c1172e.f8071a.m4978f(c1172e.f8072b[0]);
            } else {
                if (i != 2) {
                    return;
                }
                c1172e.f8071a.m4985p(c1172e.f8072b);
            }
        }
    }

    /* renamed from: androidx.loader.content.ModernAsyncTask$g */
    /* loaded from: classes3.dex */
    public static abstract class AbstractCallableC1174g<Params, Result> implements Callable<Result> {

        /* renamed from: e */
        public Params[] f8073e;
    }

    static {
        ThreadFactoryC1168a threadFactoryC1168a = new ThreadFactoryC1168a();
        f8055n = threadFactoryC1168a;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        f8056o = linkedBlockingQueue;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, linkedBlockingQueue, threadFactoryC1168a);
        f8057p = threadPoolExecutor;
        f8061t = threadPoolExecutor;
    }

    public ModernAsyncTask() {
        C1169b c1169b = new C1169b();
        this.f8062e = c1169b;
        this.f8063f = new C1170c(c1169b);
    }

    /* renamed from: d */
    public static void m4972d(Runnable runnable) {
        f8061t.execute(runnable);
    }

    /* renamed from: i */
    public static Handler m4973i() {
        HandlerC1173f handlerC1173f;
        synchronized (ModernAsyncTask.class) {
            if (f8060s == null) {
                f8060s = new HandlerC1173f();
            }
            handlerC1173f = f8060s;
        }
        return handlerC1173f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: t */
    public static void m4974t(Executor executor) {
        f8061t = executor;
    }

    /* renamed from: a */
    public final boolean m4975a(boolean z) {
        this.f8065h.set(true);
        return this.f8063f.cancel(z);
    }

    /* renamed from: b */
    public abstract Result mo4967b(Params... paramsArr);

    /* renamed from: c */
    public final ModernAsyncTask<Params, Progress, Result> m4976c(Params... paramsArr) {
        return m4977e(f8061t, paramsArr);
    }

    /* renamed from: e */
    public final ModernAsyncTask<Params, Progress, Result> m4977e(Executor executor, Params... paramsArr) {
        if (this.f8064g == Status.PENDING) {
            this.f8064g = Status.RUNNING;
            m4984o();
            this.f8062e.f8073e = paramsArr;
            executor.execute(this.f8063f);
            return this;
        }
        int i = C1171d.f8070a[this.f8064g.ordinal()];
        if (i == 1) {
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        }
        if (i != 2) {
            throw new IllegalStateException("We should never reach this state");
        }
        throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
    }

    /* renamed from: f */
    public void m4978f(Result result) {
        if (m4982k()) {
            mo4968m(result);
        } else {
            mo4969n(result);
        }
        this.f8064g = Status.FINISHED;
    }

    /* renamed from: g */
    public final Result m4979g() throws InterruptedException, ExecutionException {
        return this.f8063f.get();
    }

    /* renamed from: h */
    public final Result m4980h(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f8063f.get(j, timeUnit);
    }

    /* renamed from: j */
    public final Status m4981j() {
        return this.f8064g;
    }

    /* renamed from: k */
    public final boolean m4982k() {
        return this.f8065h.get();
    }

    /* renamed from: l */
    public void m4983l() {
    }

    /* renamed from: m */
    public void mo4968m(Result result) {
        m4983l();
    }

    /* renamed from: n */
    public void mo4969n(Result result) {
    }

    /* renamed from: o */
    public void m4984o() {
    }

    /* renamed from: p */
    public void m4985p(Progress... progressArr) {
    }

    /* renamed from: q */
    public Result m4986q(Result result) {
        m4973i().obtainMessage(1, new C1172e(this, result)).sendToTarget();
        return result;
    }

    /* renamed from: r */
    public void m4987r(Result result) {
        if (this.f8066i.get()) {
            return;
        }
        m4986q(result);
    }

    /* renamed from: s */
    public final void m4988s(Progress... progressArr) {
        if (m4982k()) {
            return;
        }
        m4973i().obtainMessage(2, new C1172e(this, progressArr)).sendToTarget();
    }
}
