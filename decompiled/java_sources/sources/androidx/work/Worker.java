package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import androidx.work.ListenableWorker;
import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes3.dex */
public abstract class Worker extends ListenableWorker {

    /* renamed from: e */
    public SettableFuture<ListenableWorker.Result> f11436e;

    /* renamed from: androidx.work.Worker$a */
    /* loaded from: classes3.dex */
    public class RunnableC1587a implements Runnable {
        public RunnableC1587a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Worker.this.f11436e.set(Worker.this.doWork());
            } catch (Throwable th) {
                Worker.this.f11436e.setException(th);
            }
        }
    }

    /* renamed from: androidx.work.Worker$b */
    /* loaded from: classes3.dex */
    public class RunnableC1588b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ SettableFuture f11438e;

        public RunnableC1588b(final SettableFuture val$future) {
            this.f11438e = val$future;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f11438e.set(Worker.this.getForegroundInfo());
            } catch (Throwable th) {
                this.f11438e.setException(th);
            }
        }
    }

    public Worker(@NonNull Context context, @NonNull WorkerParameters workerParams) {
        super(context, workerParams);
    }

    @NonNull
    @WorkerThread
    public abstract ListenableWorker.Result doWork();

    @NonNull
    @WorkerThread
    public ForegroundInfo getForegroundInfo() {
        throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for \n `getForegroundInfo()`");
    }

    @Override // androidx.work.ListenableWorker
    @NonNull
    public ListenableFuture<ForegroundInfo> getForegroundInfoAsync() {
        SettableFuture create = SettableFuture.create();
        getBackgroundExecutor().execute(new RunnableC1588b(create));
        return create;
    }

    @Override // androidx.work.ListenableWorker
    @NonNull
    public final ListenableFuture<ListenableWorker.Result> startWork() {
        this.f11436e = SettableFuture.create();
        getBackgroundExecutor().execute(new RunnableC1587a());
        return this.f11436e;
    }
}
