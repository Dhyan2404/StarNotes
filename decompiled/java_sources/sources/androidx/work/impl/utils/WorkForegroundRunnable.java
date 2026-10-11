package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.ForegroundInfo;
import androidx.work.ForegroundUpdater;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WorkForegroundRunnable;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class WorkForegroundRunnable implements Runnable {

    /* renamed from: k */
    public static final String f11971k = Logger.tagWithPrefix("WorkForegroundRunnable");

    /* renamed from: e */
    public final SettableFuture<Void> f11972e = SettableFuture.create();

    /* renamed from: f */
    public final Context f11973f;

    /* renamed from: g */
    public final WorkSpec f11974g;

    /* renamed from: h */
    public final ListenableWorker f11975h;

    /* renamed from: i */
    public final ForegroundUpdater f11976i;

    /* renamed from: j */
    public final TaskExecutor f11977j;

    /* renamed from: androidx.work.impl.utils.WorkForegroundRunnable$a */
    /* loaded from: classes3.dex */
    public class RunnableC1674a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ SettableFuture f11978e;

        public RunnableC1674a(final SettableFuture val$foregroundFuture) {
            this.f11978e = val$foregroundFuture;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            if (WorkForegroundRunnable.this.f11972e.isCancelled()) {
                return;
            }
            try {
                ForegroundInfo foregroundInfo = (ForegroundInfo) this.f11978e.get();
                if (foregroundInfo == null) {
                    throw new IllegalStateException("Worker was marked important (" + WorkForegroundRunnable.this.f11974g.workerClassName + ") but did not provide ForegroundInfo");
                }
                Logger.get().debug(WorkForegroundRunnable.f11971k, "Updating notification for " + WorkForegroundRunnable.this.f11974g.workerClassName);
                WorkForegroundRunnable workForegroundRunnable = WorkForegroundRunnable.this;
                workForegroundRunnable.f11972e.setFuture(workForegroundRunnable.f11976i.setForegroundAsync(workForegroundRunnable.f11973f, workForegroundRunnable.f11975h.getId(), foregroundInfo));
            } catch (Throwable th) {
                WorkForegroundRunnable.this.f11972e.setException(th);
            }
        }
    }

    @SuppressLint({"LambdaLast"})
    public WorkForegroundRunnable(@NonNull Context context, @NonNull WorkSpec workSpec, @NonNull ListenableWorker worker, @NonNull ForegroundUpdater foregroundUpdater, @NonNull TaskExecutor taskExecutor) {
        this.f11973f = context;
        this.f11974g = workSpec;
        this.f11975h = worker;
        this.f11976i = foregroundUpdater;
        this.f11977j = taskExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m7162b(SettableFuture settableFuture) {
        if (this.f11972e.isCancelled()) {
            settableFuture.cancel(true);
        } else {
            settableFuture.setFuture(this.f11975h.getForegroundInfoAsync());
        }
    }

    @NonNull
    public ListenableFuture<Void> getFuture() {
        return this.f11972e;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"UnsafeExperimentalUsageError"})
    public void run() {
        if (!this.f11974g.expedited || Build.VERSION.SDK_INT >= 31) {
            this.f11972e.set(null);
            return;
        }
        final SettableFuture create = SettableFuture.create();
        this.f11977j.getMainThreadExecutor().execute(new Runnable() { // from class: com.sunia.HTREnginev2.iao
            @Override // java.lang.Runnable
            public final void run() {
                WorkForegroundRunnable.this.m7162b(create);
            }
        });
        create.addListener(new RunnableC1674a(create), this.f11977j.getMainThreadExecutor());
    }
}
