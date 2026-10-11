package bolts;

import com.sunia.HTREnginev2.C13585ct;
import com.sunia.HTREnginev2.C14175oa;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class Task<TResult> {

    /* renamed from: j */
    public static volatile UnobservedExceptionHandler f12081j;

    /* renamed from: b */
    public boolean f12087b;

    /* renamed from: c */
    public boolean f12088c;

    /* renamed from: d */
    public TResult f12089d;

    /* renamed from: e */
    public Exception f12090e;

    /* renamed from: f */
    public boolean f12091f;

    /* renamed from: g */
    public C1710a f12092g;
    public static final ExecutorService BACKGROUND_EXECUTOR = C13585ct.m53505a();

    /* renamed from: i */
    public static final Executor f12080i = C13585ct.m53506b();
    public static final Executor UI_THREAD_EXECUTOR = C14175oa.m55927d();

    /* renamed from: k */
    public static Task<?> f12082k = new Task<>((Object) null);

    /* renamed from: l */
    public static Task<Boolean> f12083l = new Task<>(Boolean.TRUE);

    /* renamed from: m */
    public static Task<Boolean> f12084m = new Task<>(Boolean.FALSE);

    /* renamed from: n */
    public static Task<?> f12085n = new Task<>(true);

    /* renamed from: a */
    public final Object f12086a = new Object();

    /* renamed from: h */
    public List<Continuation<TResult, Void>> f12093h = new ArrayList();

    /* loaded from: classes3.dex */
    public class TaskCompletionSource extends bolts.TaskCompletionSource<TResult> {
        public TaskCompletionSource() {
        }
    }

    /* loaded from: classes3.dex */
    public interface UnobservedExceptionHandler {
        void unobservedException(Task<?> task, UnobservedTaskException unobservedTaskException);
    }

    /* renamed from: bolts.Task$a */
    /* loaded from: classes3.dex */
    public class C1695a implements Continuation<TResult, Void> {

        /* renamed from: a */
        public final /* synthetic */ bolts.TaskCompletionSource f12095a;

        /* renamed from: b */
        public final /* synthetic */ Continuation f12096b;

        /* renamed from: c */
        public final /* synthetic */ Executor f12097c;

        /* renamed from: d */
        public final /* synthetic */ CancellationToken f12098d;

        public C1695a(bolts.TaskCompletionSource taskCompletionSource, Continuation continuation, Executor executor, CancellationToken cancellationToken) {
            this.f12095a = taskCompletionSource;
            this.f12096b = continuation;
            this.f12097c = executor;
            this.f12098d = cancellationToken;
        }

        @Override // bolts.Continuation
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void then(Task<TResult> task) {
            Task.m7215d(this.f12095a, this.f12096b, task, this.f12097c, this.f12098d);
            return null;
        }
    }

    /* renamed from: bolts.Task$b */
    /* loaded from: classes3.dex */
    public class C1696b implements Continuation<TResult, Void> {

        /* renamed from: a */
        public final /* synthetic */ bolts.TaskCompletionSource f12100a;

        /* renamed from: b */
        public final /* synthetic */ Continuation f12101b;

        /* renamed from: c */
        public final /* synthetic */ Executor f12102c;

        /* renamed from: d */
        public final /* synthetic */ CancellationToken f12103d;

        public C1696b(bolts.TaskCompletionSource taskCompletionSource, Continuation continuation, Executor executor, CancellationToken cancellationToken) {
            this.f12100a = taskCompletionSource;
            this.f12101b = continuation;
            this.f12102c = executor;
            this.f12103d = cancellationToken;
        }

        @Override // bolts.Continuation
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void then(Task<TResult> task) {
            Task.m7214c(this.f12100a, this.f12101b, task, this.f12102c, this.f12103d);
            return null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [TContinuationResult] */
    /* renamed from: bolts.Task$c */
    /* loaded from: classes3.dex */
    public class C1697c<TContinuationResult> implements Continuation<TResult, Task<TContinuationResult>> {

        /* renamed from: a */
        public final /* synthetic */ CancellationToken f12105a;

        /* renamed from: b */
        public final /* synthetic */ Continuation f12106b;

        public C1697c(CancellationToken cancellationToken, Continuation continuation) {
            this.f12105a = cancellationToken;
            this.f12106b = continuation;
        }

        @Override // bolts.Continuation
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task<TContinuationResult> then(Task<TResult> task) {
            CancellationToken cancellationToken = this.f12105a;
            return (cancellationToken == null || !cancellationToken.isCancellationRequested()) ? task.isFaulted() ? Task.forError(task.getError()) : task.isCancelled() ? Task.cancelled() : task.continueWith(this.f12106b) : Task.cancelled();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [TContinuationResult] */
    /* renamed from: bolts.Task$d */
    /* loaded from: classes3.dex */
    public class C1698d<TContinuationResult> implements Continuation<TResult, Task<TContinuationResult>> {

        /* renamed from: a */
        public final /* synthetic */ CancellationToken f12108a;

        /* renamed from: b */
        public final /* synthetic */ Continuation f12109b;

        public C1698d(CancellationToken cancellationToken, Continuation continuation) {
            this.f12108a = cancellationToken;
            this.f12109b = continuation;
        }

        @Override // bolts.Continuation
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task<TContinuationResult> then(Task<TResult> task) {
            CancellationToken cancellationToken = this.f12108a;
            return (cancellationToken == null || !cancellationToken.isCancellationRequested()) ? task.isFaulted() ? Task.forError(task.getError()) : task.isCancelled() ? Task.cancelled() : task.continueWithTask(this.f12109b) : Task.cancelled();
        }
    }

    /* renamed from: bolts.Task$e */
    /* loaded from: classes3.dex */
    public static class RunnableC1699e implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ CancellationToken f12111e;

        /* renamed from: f */
        public final /* synthetic */ bolts.TaskCompletionSource f12112f;

        /* renamed from: g */
        public final /* synthetic */ Continuation f12113g;

        /* renamed from: h */
        public final /* synthetic */ Task f12114h;

        public RunnableC1699e(CancellationToken cancellationToken, bolts.TaskCompletionSource taskCompletionSource, Continuation continuation, Task task) {
            this.f12111e = cancellationToken;
            this.f12112f = taskCompletionSource;
            this.f12113g = continuation;
            this.f12114h = task;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            CancellationToken cancellationToken = this.f12111e;
            if (cancellationToken != null && cancellationToken.isCancellationRequested()) {
                this.f12112f.setCancelled();
                return;
            }
            try {
                this.f12112f.setResult(this.f12113g.then(this.f12114h));
            } catch (CancellationException unused) {
                this.f12112f.setCancelled();
            } catch (Exception e) {
                this.f12112f.setError(e);
            }
        }
    }

    /* renamed from: bolts.Task$f */
    /* loaded from: classes3.dex */
    public static class RunnableC1700f implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ CancellationToken f12115e;

        /* renamed from: f */
        public final /* synthetic */ bolts.TaskCompletionSource f12116f;

        /* renamed from: g */
        public final /* synthetic */ Continuation f12117g;

        /* renamed from: h */
        public final /* synthetic */ Task f12118h;

        /* JADX INFO: Add missing generic type declarations: [TContinuationResult] */
        /* renamed from: bolts.Task$f$a */
        /* loaded from: classes3.dex */
        public class a<TContinuationResult> implements Continuation<TContinuationResult, Void> {
            public a() {
            }

            @Override // bolts.Continuation
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void then(Task<TContinuationResult> task) {
                CancellationToken cancellationToken = RunnableC1700f.this.f12115e;
                if (cancellationToken != null && cancellationToken.isCancellationRequested()) {
                    RunnableC1700f.this.f12116f.setCancelled();
                    return null;
                }
                if (task.isCancelled()) {
                    RunnableC1700f.this.f12116f.setCancelled();
                } else if (task.isFaulted()) {
                    RunnableC1700f.this.f12116f.setError(task.getError());
                } else {
                    RunnableC1700f.this.f12116f.setResult(task.getResult());
                }
                return null;
            }
        }

        public RunnableC1700f(CancellationToken cancellationToken, bolts.TaskCompletionSource taskCompletionSource, Continuation continuation, Task task) {
            this.f12115e = cancellationToken;
            this.f12116f = taskCompletionSource;
            this.f12117g = continuation;
            this.f12118h = task;
        }

        @Override // java.lang.Runnable
        public void run() {
            CancellationToken cancellationToken = this.f12115e;
            if (cancellationToken != null && cancellationToken.isCancellationRequested()) {
                this.f12116f.setCancelled();
                return;
            }
            try {
                Task task = (Task) this.f12117g.then(this.f12118h);
                if (task == null) {
                    this.f12116f.setResult(null);
                } else {
                    task.continueWith(new a());
                }
            } catch (CancellationException unused) {
                this.f12116f.setCancelled();
            } catch (Exception e) {
                this.f12116f.setError(e);
            }
        }
    }

    /* renamed from: bolts.Task$g */
    /* loaded from: classes3.dex */
    public static class RunnableC1701g implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ bolts.TaskCompletionSource f12120e;

        public RunnableC1701g(bolts.TaskCompletionSource taskCompletionSource) {
            this.f12120e = taskCompletionSource;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f12120e.trySetResult(null);
        }
    }

    /* renamed from: bolts.Task$h */
    /* loaded from: classes3.dex */
    public static class RunnableC1702h implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ ScheduledFuture f12121e;

        /* renamed from: f */
        public final /* synthetic */ bolts.TaskCompletionSource f12122f;

        public RunnableC1702h(ScheduledFuture scheduledFuture, bolts.TaskCompletionSource taskCompletionSource) {
            this.f12121e = scheduledFuture;
            this.f12122f = taskCompletionSource;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f12121e.cancel(true);
            this.f12122f.trySetCancelled();
        }
    }

    /* renamed from: bolts.Task$i */
    /* loaded from: classes3.dex */
    public class C1703i implements Continuation<TResult, Task<Void>> {
        public C1703i() {
        }

        @Override // bolts.Continuation
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task<Void> then(Task<TResult> task) throws Exception {
            return task.isCancelled() ? Task.cancelled() : task.isFaulted() ? Task.forError(task.getError()) : Task.forResult(null);
        }
    }

    /* renamed from: bolts.Task$j */
    /* loaded from: classes3.dex */
    public static class RunnableC1704j implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ CancellationToken f12124e;

        /* renamed from: f */
        public final /* synthetic */ bolts.TaskCompletionSource f12125f;

        /* renamed from: g */
        public final /* synthetic */ Callable f12126g;

        public RunnableC1704j(CancellationToken cancellationToken, bolts.TaskCompletionSource taskCompletionSource, Callable callable) {
            this.f12124e = cancellationToken;
            this.f12125f = taskCompletionSource;
            this.f12126g = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            CancellationToken cancellationToken = this.f12124e;
            if (cancellationToken != null && cancellationToken.isCancellationRequested()) {
                this.f12125f.setCancelled();
                return;
            }
            try {
                this.f12125f.setResult(this.f12126g.call());
            } catch (CancellationException unused) {
                this.f12125f.setCancelled();
            } catch (Exception e) {
                this.f12125f.setError(e);
            }
        }
    }

    /* renamed from: bolts.Task$k */
    /* loaded from: classes3.dex */
    public static class C1705k implements Continuation<TResult, Void> {

        /* renamed from: a */
        public final /* synthetic */ AtomicBoolean f12127a;

        /* renamed from: b */
        public final /* synthetic */ bolts.TaskCompletionSource f12128b;

        public C1705k(AtomicBoolean atomicBoolean, bolts.TaskCompletionSource taskCompletionSource) {
            this.f12127a = atomicBoolean;
            this.f12128b = taskCompletionSource;
        }

        @Override // bolts.Continuation
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void then(Task<TResult> task) {
            if (this.f12127a.compareAndSet(false, true)) {
                this.f12128b.setResult(task);
                return null;
            }
            task.getError();
            return null;
        }
    }

    /* renamed from: bolts.Task$l */
    /* loaded from: classes3.dex */
    public static class C1706l implements Continuation<Object, Void> {

        /* renamed from: a */
        public final /* synthetic */ AtomicBoolean f12129a;

        /* renamed from: b */
        public final /* synthetic */ bolts.TaskCompletionSource f12130b;

        public C1706l(AtomicBoolean atomicBoolean, bolts.TaskCompletionSource taskCompletionSource) {
            this.f12129a = atomicBoolean;
            this.f12130b = taskCompletionSource;
        }

        @Override // bolts.Continuation
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void then(Task<Object> task) {
            if (this.f12129a.compareAndSet(false, true)) {
                this.f12130b.setResult(task);
                return null;
            }
            task.getError();
            return null;
        }
    }

    /* renamed from: bolts.Task$m */
    /* loaded from: classes3.dex */
    public static class C1707m implements Continuation<Void, List<TResult>> {

        /* renamed from: a */
        public final /* synthetic */ Collection f12131a;

        public C1707m(Collection collection) {
            this.f12131a = collection;
        }

        @Override // bolts.Continuation
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<TResult> then(Task<Void> task) throws Exception {
            if (this.f12131a.size() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            Iterator it2 = this.f12131a.iterator();
            while (it2.hasNext()) {
                arrayList.add(((Task) it2.next()).getResult());
            }
            return arrayList;
        }
    }

    /* renamed from: bolts.Task$n */
    /* loaded from: classes3.dex */
    public static class C1708n implements Continuation<Object, Void> {

        /* renamed from: a */
        public final /* synthetic */ Object f12132a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f12133b;

        /* renamed from: c */
        public final /* synthetic */ AtomicBoolean f12134c;

        /* renamed from: d */
        public final /* synthetic */ AtomicInteger f12135d;

        /* renamed from: e */
        public final /* synthetic */ bolts.TaskCompletionSource f12136e;

        public C1708n(Object obj, ArrayList arrayList, AtomicBoolean atomicBoolean, AtomicInteger atomicInteger, bolts.TaskCompletionSource taskCompletionSource) {
            this.f12132a = obj;
            this.f12133b = arrayList;
            this.f12134c = atomicBoolean;
            this.f12135d = atomicInteger;
            this.f12136e = taskCompletionSource;
        }

        @Override // bolts.Continuation
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void then(Task<Object> task) {
            if (task.isFaulted()) {
                synchronized (this.f12132a) {
                    this.f12133b.add(task.getError());
                }
            }
            if (task.isCancelled()) {
                this.f12134c.set(true);
            }
            if (this.f12135d.decrementAndGet() == 0) {
                if (this.f12133b.size() != 0) {
                    if (this.f12133b.size() == 1) {
                        this.f12136e.setError((Exception) this.f12133b.get(0));
                    } else {
                        this.f12136e.setError(new AggregateException(String.format("There were %d exceptions.", Integer.valueOf(this.f12133b.size())), this.f12133b));
                    }
                } else if (this.f12134c.get()) {
                    this.f12136e.setCancelled();
                } else {
                    this.f12136e.setResult(null);
                }
            }
            return null;
        }
    }

    /* renamed from: bolts.Task$o */
    /* loaded from: classes3.dex */
    public class C1709o implements Continuation<Void, Task<Void>> {

        /* renamed from: a */
        public final /* synthetic */ CancellationToken f12137a;

        /* renamed from: b */
        public final /* synthetic */ Callable f12138b;

        /* renamed from: c */
        public final /* synthetic */ Continuation f12139c;

        /* renamed from: d */
        public final /* synthetic */ Executor f12140d;

        /* renamed from: e */
        public final /* synthetic */ Capture f12141e;

        public C1709o(CancellationToken cancellationToken, Callable callable, Continuation continuation, Executor executor, Capture capture) {
            this.f12137a = cancellationToken;
            this.f12138b = callable;
            this.f12139c = continuation;
            this.f12140d = executor;
            this.f12141e = capture;
        }

        @Override // bolts.Continuation
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task<Void> then(Task<Void> task) throws Exception {
            CancellationToken cancellationToken = this.f12137a;
            return (cancellationToken == null || !cancellationToken.isCancellationRequested()) ? ((Boolean) this.f12138b.call()).booleanValue() ? Task.forResult(null).onSuccessTask(this.f12139c, this.f12140d).onSuccessTask((Continuation) this.f12141e.get(), this.f12140d) : Task.forResult(null) : Task.cancelled();
        }
    }

    public Task() {
    }

    /* renamed from: c */
    public static <TContinuationResult, TResult> void m7214c(bolts.TaskCompletionSource<TContinuationResult> taskCompletionSource, Continuation<TResult, Task<TContinuationResult>> continuation, Task<TResult> task, Executor executor, CancellationToken cancellationToken) {
        try {
            executor.execute(new RunnableC1700f(cancellationToken, taskCompletionSource, continuation, task));
        } catch (Exception e) {
            taskCompletionSource.setError(new ExecutorException(e));
        }
    }

    public static <TResult> Task<TResult> call(Callable<TResult> callable, Executor executor) {
        return call(callable, executor, null);
    }

    public static <TResult> Task<TResult> callInBackground(Callable<TResult> callable) {
        return call(callable, BACKGROUND_EXECUTOR, null);
    }

    public static <TResult> Task<TResult> cancelled() {
        return (Task<TResult>) f12085n;
    }

    public static <TResult> Task<TResult>.TaskCompletionSource create() {
        return new TaskCompletionSource();
    }

    /* renamed from: d */
    public static <TContinuationResult, TResult> void m7215d(bolts.TaskCompletionSource<TContinuationResult> taskCompletionSource, Continuation<TResult, TContinuationResult> continuation, Task<TResult> task, Executor executor, CancellationToken cancellationToken) {
        try {
            executor.execute(new RunnableC1699e(cancellationToken, taskCompletionSource, continuation, task));
        } catch (Exception e) {
            taskCompletionSource.setError(new ExecutorException(e));
        }
    }

    public static Task<Void> delay(long j) {
        return m7216e(j, C13585ct.m53508d(), null);
    }

    /* renamed from: e */
    public static Task<Void> m7216e(long j, ScheduledExecutorService scheduledExecutorService, CancellationToken cancellationToken) {
        if (cancellationToken != null && cancellationToken.isCancellationRequested()) {
            return cancelled();
        }
        if (j <= 0) {
            return forResult(null);
        }
        bolts.TaskCompletionSource taskCompletionSource = new bolts.TaskCompletionSource();
        ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new RunnableC1701g(taskCompletionSource), j, TimeUnit.MILLISECONDS);
        if (cancellationToken != null) {
            cancellationToken.register(new RunnableC1702h(schedule, taskCompletionSource));
        }
        return taskCompletionSource.getTask();
    }

    public static <TResult> Task<TResult> forError(Exception exc) {
        bolts.TaskCompletionSource taskCompletionSource = new bolts.TaskCompletionSource();
        taskCompletionSource.setError(exc);
        return taskCompletionSource.getTask();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <TResult> Task<TResult> forResult(TResult tresult) {
        if (tresult == 0) {
            return (Task<TResult>) f12082k;
        }
        if (tresult instanceof Boolean) {
            return ((Boolean) tresult).booleanValue() ? (Task<TResult>) f12083l : (Task<TResult>) f12084m;
        }
        bolts.TaskCompletionSource taskCompletionSource = new bolts.TaskCompletionSource();
        taskCompletionSource.setResult(tresult);
        return taskCompletionSource.getTask();
    }

    public static UnobservedExceptionHandler getUnobservedExceptionHandler() {
        return f12081j;
    }

    public static void setUnobservedExceptionHandler(UnobservedExceptionHandler unobservedExceptionHandler) {
        f12081j = unobservedExceptionHandler;
    }

    public static Task<Void> whenAll(Collection<? extends Task<?>> collection) {
        if (collection.size() == 0) {
            return forResult(null);
        }
        bolts.TaskCompletionSource taskCompletionSource = new bolts.TaskCompletionSource();
        ArrayList arrayList = new ArrayList();
        Object obj = new Object();
        AtomicInteger atomicInteger = new AtomicInteger(collection.size());
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Iterator<? extends Task<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            it2.next().continueWith(new C1708n(obj, arrayList, atomicBoolean, atomicInteger, taskCompletionSource));
        }
        return taskCompletionSource.getTask();
    }

    public static <TResult> Task<List<TResult>> whenAllResult(Collection<? extends Task<TResult>> collection) {
        return (Task<List<TResult>>) whenAll(collection).onSuccess(new C1707m(collection));
    }

    public static Task<Task<?>> whenAny(Collection<? extends Task<?>> collection) {
        if (collection.size() == 0) {
            return forResult(null);
        }
        bolts.TaskCompletionSource taskCompletionSource = new bolts.TaskCompletionSource();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Iterator<? extends Task<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            it2.next().continueWith(new C1706l(atomicBoolean, taskCompletionSource));
        }
        return taskCompletionSource.getTask();
    }

    public static <TResult> Task<Task<TResult>> whenAnyResult(Collection<? extends Task<TResult>> collection) {
        if (collection.size() == 0) {
            return forResult(null);
        }
        bolts.TaskCompletionSource taskCompletionSource = new bolts.TaskCompletionSource();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Iterator<? extends Task<TResult>> it2 = collection.iterator();
        while (it2.hasNext()) {
            it2.next().continueWith(new C1705k(atomicBoolean, taskCompletionSource));
        }
        return taskCompletionSource.getTask();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <TOut> Task<TOut> cast() {
        return this;
    }

    public Task<Void> continueWhile(Callable<Boolean> callable, Continuation<Void, Task<Void>> continuation) {
        return continueWhile(callable, continuation, f12080i, null);
    }

    public <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation, Executor executor) {
        return continueWith(continuation, executor, null);
    }

    public <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation, Executor executor) {
        return continueWithTask(continuation, executor, null);
    }

    /* renamed from: f */
    public final void m7217f() {
        synchronized (this.f12086a) {
            Iterator<Continuation<TResult, Void>> it2 = this.f12093h.iterator();
            while (it2.hasNext()) {
                try {
                    it2.next().then(this);
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            }
            this.f12093h = null;
        }
    }

    /* renamed from: g */
    public boolean m7218g() {
        synchronized (this.f12086a) {
            if (this.f12087b) {
                return false;
            }
            this.f12087b = true;
            this.f12088c = true;
            this.f12086a.notifyAll();
            m7217f();
            return true;
        }
    }

    public Exception getError() {
        Exception exc;
        synchronized (this.f12086a) {
            if (this.f12090e != null) {
                this.f12091f = true;
                C1710a c1710a = this.f12092g;
                if (c1710a != null) {
                    c1710a.m7232a();
                    this.f12092g = null;
                }
            }
            exc = this.f12090e;
        }
        return exc;
    }

    public TResult getResult() {
        TResult tresult;
        synchronized (this.f12086a) {
            tresult = this.f12089d;
        }
        return tresult;
    }

    /* renamed from: h */
    public boolean m7219h(Exception exc) {
        synchronized (this.f12086a) {
            if (this.f12087b) {
                return false;
            }
            this.f12087b = true;
            this.f12090e = exc;
            this.f12091f = false;
            this.f12086a.notifyAll();
            m7217f();
            if (!this.f12091f && getUnobservedExceptionHandler() != null) {
                this.f12092g = new C1710a(this);
            }
            return true;
        }
    }

    /* renamed from: i */
    public boolean m7220i(TResult tresult) {
        synchronized (this.f12086a) {
            if (this.f12087b) {
                return false;
            }
            this.f12087b = true;
            this.f12089d = tresult;
            this.f12086a.notifyAll();
            m7217f();
            return true;
        }
    }

    public boolean isCancelled() {
        boolean z;
        synchronized (this.f12086a) {
            z = this.f12088c;
        }
        return z;
    }

    public boolean isCompleted() {
        boolean z;
        synchronized (this.f12086a) {
            z = this.f12087b;
        }
        return z;
    }

    public boolean isFaulted() {
        boolean z;
        synchronized (this.f12086a) {
            z = getError() != null;
        }
        return z;
    }

    public Task<Void> makeVoid() {
        return continueWithTask(new C1703i());
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccess(Continuation<TResult, TContinuationResult> continuation, Executor executor) {
        return onSuccess(continuation, executor, null);
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(Continuation<TResult, Task<TContinuationResult>> continuation, Executor executor) {
        return onSuccessTask(continuation, executor, null);
    }

    public void waitForCompletion() throws InterruptedException {
        synchronized (this.f12086a) {
            if (!isCompleted()) {
                this.f12086a.wait();
            }
        }
    }

    public static <TResult> Task<TResult> call(Callable<TResult> callable, Executor executor, CancellationToken cancellationToken) {
        bolts.TaskCompletionSource taskCompletionSource = new bolts.TaskCompletionSource();
        try {
            executor.execute(new RunnableC1704j(cancellationToken, taskCompletionSource, callable));
        } catch (Exception e) {
            taskCompletionSource.setError(new ExecutorException(e));
        }
        return taskCompletionSource.getTask();
    }

    public static <TResult> Task<TResult> callInBackground(Callable<TResult> callable, CancellationToken cancellationToken) {
        return call(callable, BACKGROUND_EXECUTOR, cancellationToken);
    }

    public static Task<Void> delay(long j, CancellationToken cancellationToken) {
        return m7216e(j, C13585ct.m53508d(), cancellationToken);
    }

    public Task<Void> continueWhile(Callable<Boolean> callable, Continuation<Void, Task<Void>> continuation, CancellationToken cancellationToken) {
        return continueWhile(callable, continuation, f12080i, cancellationToken);
    }

    public <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation, Executor executor, CancellationToken cancellationToken) {
        boolean isCompleted;
        bolts.TaskCompletionSource taskCompletionSource = new bolts.TaskCompletionSource();
        synchronized (this.f12086a) {
            isCompleted = isCompleted();
            if (!isCompleted) {
                this.f12093h.add(new C1695a(taskCompletionSource, continuation, executor, cancellationToken));
            }
        }
        if (isCompleted) {
            m7215d(taskCompletionSource, continuation, this, executor, cancellationToken);
        }
        return taskCompletionSource.getTask();
    }

    public <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation, Executor executor, CancellationToken cancellationToken) {
        boolean isCompleted;
        bolts.TaskCompletionSource taskCompletionSource = new bolts.TaskCompletionSource();
        synchronized (this.f12086a) {
            isCompleted = isCompleted();
            if (!isCompleted) {
                this.f12093h.add(new C1696b(taskCompletionSource, continuation, executor, cancellationToken));
            }
        }
        if (isCompleted) {
            m7214c(taskCompletionSource, continuation, this, executor, cancellationToken);
        }
        return taskCompletionSource.getTask();
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccess(Continuation<TResult, TContinuationResult> continuation, Executor executor, CancellationToken cancellationToken) {
        return continueWithTask(new C1697c(cancellationToken, continuation), executor);
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(Continuation<TResult, Task<TContinuationResult>> continuation, Executor executor, CancellationToken cancellationToken) {
        return continueWithTask(new C1698d(cancellationToken, continuation), executor);
    }

    public Task<Void> continueWhile(Callable<Boolean> callable, Continuation<Void, Task<Void>> continuation, Executor executor) {
        return continueWhile(callable, continuation, executor, null);
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccess(Continuation<TResult, TContinuationResult> continuation) {
        return onSuccess(continuation, f12080i, null);
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(Continuation<TResult, Task<TContinuationResult>> continuation) {
        return onSuccessTask(continuation, f12080i);
    }

    public Task(TResult tresult) {
        m7220i(tresult);
    }

    public Task<Void> continueWhile(Callable<Boolean> callable, Continuation<Void, Task<Void>> continuation, Executor executor, CancellationToken cancellationToken) {
        Capture capture = new Capture();
        capture.set(new C1709o(cancellationToken, callable, continuation, executor, capture));
        return makeVoid().continueWithTask((Continuation<Void, Task<TContinuationResult>>) capture.get(), executor);
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccess(Continuation<TResult, TContinuationResult> continuation, CancellationToken cancellationToken) {
        return onSuccess(continuation, f12080i, cancellationToken);
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(Continuation<TResult, Task<TContinuationResult>> continuation, CancellationToken cancellationToken) {
        return onSuccessTask(continuation, f12080i, cancellationToken);
    }

    public boolean waitForCompletion(long j, TimeUnit timeUnit) throws InterruptedException {
        boolean isCompleted;
        synchronized (this.f12086a) {
            if (!isCompleted()) {
                this.f12086a.wait(timeUnit.toMillis(j));
            }
            isCompleted = isCompleted();
        }
        return isCompleted;
    }

    public static <TResult> Task<TResult> call(Callable<TResult> callable) {
        return call(callable, f12080i, null);
    }

    public static <TResult> Task<TResult> call(Callable<TResult> callable, CancellationToken cancellationToken) {
        return call(callable, f12080i, cancellationToken);
    }

    public Task(boolean z) {
        if (z) {
            m7218g();
        } else {
            m7220i(null);
        }
    }

    public <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation) {
        return continueWith(continuation, f12080i, null);
    }

    public <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation) {
        return continueWithTask(continuation, f12080i, null);
    }

    public <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation, CancellationToken cancellationToken) {
        return continueWith(continuation, f12080i, cancellationToken);
    }

    public <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation, CancellationToken cancellationToken) {
        return continueWithTask(continuation, f12080i, cancellationToken);
    }
}
