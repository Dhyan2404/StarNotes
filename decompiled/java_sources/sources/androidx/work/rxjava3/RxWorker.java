package androidx.work.rxjava3;

import android.content.Context;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.Data;
import androidx.work.ForegroundInfo;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.utils.SynchronousExecutor;
import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public abstract class RxWorker extends ListenableWorker {

    /* renamed from: f */
    public static final Executor f12061f = new SynchronousExecutor();

    /* renamed from: e */
    @Nullable
    public RunnableC1692a<ListenableWorker.Result> f12062e;

    /* renamed from: androidx.work.rxjava3.RxWorker$a */
    /* loaded from: classes3.dex */
    public static class RunnableC1692a<T> implements SingleObserver<T>, Runnable {

        /* renamed from: e */
        public final SettableFuture<T> f12063e;

        /* renamed from: f */
        @Nullable
        public Disposable f12064f;

        public RunnableC1692a() {
            SettableFuture<T> create = SettableFuture.create();
            this.f12063e = create;
            create.addListener(this, RxWorker.f12061f);
        }

        /* renamed from: a */
        public void m7198a() {
            Disposable disposable = this.f12064f;
            if (disposable != null) {
                disposable.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable th) {
            this.f12063e.setException(th);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f12064f = disposable;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T t) {
            this.f12063e.set(t);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f12063e.isCancelled()) {
                m7198a();
            }
        }
    }

    public RxWorker(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    /* renamed from: a */
    public final <T> ListenableFuture<T> m7197a(RunnableC1692a<T> runnableC1692a, Single<T> single) {
        single.subscribeOn(getBackgroundScheduler()).observeOn(Schedulers.from(getTaskExecutor().getSerialTaskExecutor(), true, true)).subscribe(runnableC1692a);
        return runnableC1692a.f12063e;
    }

    @NonNull
    @MainThread
    public abstract Single<ListenableWorker.Result> createWork();

    @NonNull
    public Scheduler getBackgroundScheduler() {
        return Schedulers.from(getBackgroundExecutor(), true, true);
    }

    @NonNull
    public Single<ForegroundInfo> getForegroundInfo() {
        return Single.error(new IllegalStateException("Expedited WorkRequests require a RxWorker to provide an implementation for `getForegroundInfo()`"));
    }

    @Override // androidx.work.ListenableWorker
    @NonNull
    public ListenableFuture<ForegroundInfo> getForegroundInfoAsync() {
        return m7197a(new RunnableC1692a(), getForegroundInfo());
    }

    @Override // androidx.work.ListenableWorker
    @CallSuper
    public void onStopped() {
        super.onStopped();
        RunnableC1692a<ListenableWorker.Result> runnableC1692a = this.f12062e;
        if (runnableC1692a != null) {
            runnableC1692a.m7198a();
            this.f12062e = null;
        }
    }

    @NonNull
    public final Completable setCompletableProgress(@NonNull Data data) {
        return Completable.fromFuture(setProgressAsync(data));
    }

    @NonNull
    public final Completable setForeground(@NonNull ForegroundInfo foregroundInfo) {
        return Completable.fromFuture(setForegroundAsync(foregroundInfo));
    }

    @Override // androidx.work.ListenableWorker
    @NonNull
    public final ListenableFuture<ListenableWorker.Result> startWork() {
        RunnableC1692a<ListenableWorker.Result> runnableC1692a = new RunnableC1692a<>();
        this.f12062e = runnableC1692a;
        return m7197a(runnableC1692a, createWork());
    }
}
