package androidx.work.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.work.Clock;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.InputMerger;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.PackageManagerHelper;
import androidx.work.impl.utils.SynchronousExecutor;
import androidx.work.impl.utils.WorkForegroundRunnable;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.utils.WorkProgressUpdater;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class WorkerWrapper implements Runnable {

    /* renamed from: w */
    public static final String f11532w = Logger.tagWithPrefix("WorkerWrapper");

    /* renamed from: e */
    public Context f11533e;

    /* renamed from: f */
    public final String f11534f;

    /* renamed from: g */
    public WorkerParameters.RuntimeExtras f11535g;

    /* renamed from: h */
    public WorkSpec f11536h;

    /* renamed from: i */
    public ListenableWorker f11537i;

    /* renamed from: j */
    public TaskExecutor f11538j;

    /* renamed from: l */
    public Configuration f11540l;

    /* renamed from: m */
    public Clock f11541m;

    /* renamed from: n */
    public ForegroundProcessor f11542n;

    /* renamed from: o */
    public WorkDatabase f11543o;

    /* renamed from: p */
    public WorkSpecDao f11544p;

    /* renamed from: q */
    public DependencyDao f11545q;

    /* renamed from: r */
    public List<String> f11546r;

    /* renamed from: s */
    public String f11547s;

    /* renamed from: k */
    @NonNull
    public ListenableWorker.Result f11539k = ListenableWorker.Result.failure();

    /* renamed from: t */
    @NonNull
    public SettableFuture<Boolean> f11548t = SettableFuture.create();

    /* renamed from: u */
    @NonNull
    public final SettableFuture<ListenableWorker.Result> f11549u = SettableFuture.create();

    /* renamed from: v */
    public volatile int f11550v = -256;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a */
        @NonNull
        public Context f11551a;

        /* renamed from: b */
        @Nullable
        public ListenableWorker f11552b;

        /* renamed from: c */
        @NonNull
        public ForegroundProcessor f11553c;

        /* renamed from: d */
        @NonNull
        public TaskExecutor f11554d;

        /* renamed from: e */
        @NonNull
        public Configuration f11555e;

        /* renamed from: f */
        @NonNull
        public WorkDatabase f11556f;

        /* renamed from: g */
        @NonNull
        public WorkSpec f11557g;

        /* renamed from: h */
        public final List<String> f11558h;

        /* renamed from: i */
        @NonNull
        public WorkerParameters.RuntimeExtras f11559i = new WorkerParameters.RuntimeExtras();

        @SuppressLint({"LambdaLast"})
        public Builder(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor workTaskExecutor, @NonNull ForegroundProcessor foregroundProcessor, @NonNull WorkDatabase database, @NonNull WorkSpec workSpec, @NonNull List<String> tags) {
            this.f11551a = context.getApplicationContext();
            this.f11554d = workTaskExecutor;
            this.f11553c = foregroundProcessor;
            this.f11555e = configuration;
            this.f11556f = database;
            this.f11557g = workSpec;
            this.f11558h = tags;
        }

        @NonNull
        public WorkerWrapper build() {
            return new WorkerWrapper(this);
        }

        @NonNull
        public Builder withRuntimeExtras(@Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
            if (runtimeExtras != null) {
                this.f11559i = runtimeExtras;
            }
            return this;
        }

        @NonNull
        @VisibleForTesting
        public Builder withWorker(@NonNull ListenableWorker worker) {
            this.f11552b = worker;
            return this;
        }
    }

    /* renamed from: androidx.work.impl.WorkerWrapper$a */
    /* loaded from: classes3.dex */
    public class RunnableC1594a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ ListenableFuture f11560e;

        public RunnableC1594a(final ListenableFuture val$runExpedited) {
            this.f11560e = val$runExpedited;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (WorkerWrapper.this.f11549u.isCancelled()) {
                return;
            }
            try {
                this.f11560e.get();
                Logger.get().debug(WorkerWrapper.f11532w, "Starting work for " + WorkerWrapper.this.f11536h.workerClassName);
                WorkerWrapper workerWrapper = WorkerWrapper.this;
                workerWrapper.f11549u.setFuture(workerWrapper.f11537i.startWork());
            } catch (Throwable th) {
                WorkerWrapper.this.f11549u.setException(th);
            }
        }
    }

    /* renamed from: androidx.work.impl.WorkerWrapper$b */
    /* loaded from: classes3.dex */
    public class RunnableC1595b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ String f11562e;

        public RunnableC1595b(final String val$workDescription) {
            this.f11562e = val$workDescription;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v3, types: [androidx.work.impl.WorkerWrapper] */
        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    ListenableWorker.Result result = WorkerWrapper.this.f11549u.get();
                    if (result == null) {
                        Logger.get().error(WorkerWrapper.f11532w, WorkerWrapper.this.f11536h.workerClassName + " returned a null result. Treating it as a failure.");
                    } else {
                        Logger.get().debug(WorkerWrapper.f11532w, WorkerWrapper.this.f11536h.workerClassName + " returned a " + result + ".");
                        WorkerWrapper.this.f11539k = result;
                    }
                } catch (InterruptedException | ExecutionException e) {
                    Logger.get().error(WorkerWrapper.f11532w, this.f11562e + " failed because it threw an exception/error", e);
                } catch (CancellationException e2) {
                    Logger.get().info(WorkerWrapper.f11532w, this.f11562e + " was cancelled", e2);
                }
            } finally {
                WorkerWrapper.this.m7013f();
            }
        }
    }

    public WorkerWrapper(@NonNull Builder builder) {
        this.f11533e = builder.f11551a;
        this.f11538j = builder.f11554d;
        this.f11542n = builder.f11553c;
        WorkSpec workSpec = builder.f11557g;
        this.f11536h = workSpec;
        this.f11534f = workSpec.id;
        this.f11535g = builder.f11559i;
        this.f11537i = builder.f11552b;
        Configuration configuration = builder.f11555e;
        this.f11540l = configuration;
        this.f11541m = configuration.getClock();
        WorkDatabase workDatabase = builder.f11556f;
        this.f11543o = workDatabase;
        this.f11544p = workDatabase.workSpecDao();
        this.f11545q = this.f11543o.dependencyDao();
        this.f11546r = builder.f11558h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m7009e(ListenableFuture listenableFuture) {
        if (this.f11549u.isCancelled()) {
            listenableFuture.cancel(true);
        }
    }

    /* renamed from: b */
    public final String m7010b(List<String> tags) {
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.f11534f);
        sb.append(", tags={ ");
        boolean z = true;
        for (String str : tags) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(" } ]");
        return sb.toString();
    }

    /* renamed from: c */
    public final void m7011c(ListenableWorker.Result result) {
        if (result instanceof ListenableWorker.Result.Success) {
            Logger.get().info(f11532w, "Worker result SUCCESS for " + this.f11547s);
            if (this.f11536h.isPeriodic()) {
                m7015h();
                return;
            } else {
                m7020m();
                return;
            }
        }
        if (result instanceof ListenableWorker.Result.Retry) {
            Logger.get().info(f11532w, "Worker result RETRY for " + this.f11547s);
            m7014g();
            return;
        }
        Logger.get().info(f11532w, "Worker result FAILURE for " + this.f11547s);
        if (this.f11536h.isPeriodic()) {
            m7015h();
        } else {
            m7019l();
        }
    }

    /* renamed from: d */
    public final void m7012d(String workSpecId) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(workSpecId);
        while (!linkedList.isEmpty()) {
            String str = (String) linkedList.remove();
            if (this.f11544p.getState(str) != WorkInfo.State.CANCELLED) {
                this.f11544p.setState(WorkInfo.State.FAILED, str);
            }
            linkedList.addAll(this.f11545q.getDependentWorkIds(str));
        }
    }

    /* renamed from: f */
    public void m7013f() {
        if (m7021n()) {
            return;
        }
        this.f11543o.beginTransaction();
        try {
            WorkInfo.State state = this.f11544p.getState(this.f11534f);
            this.f11543o.workProgressDao().delete(this.f11534f);
            if (state == null) {
                m7016i(false);
            } else if (state == WorkInfo.State.RUNNING) {
                m7011c(this.f11539k);
            } else if (!state.isFinished()) {
                this.f11550v = WorkInfo.STOP_REASON_UNKNOWN;
                m7014g();
            }
            this.f11543o.setTransactionSuccessful();
        } finally {
            this.f11543o.endTransaction();
        }
    }

    /* renamed from: g */
    public final void m7014g() {
        this.f11543o.beginTransaction();
        try {
            this.f11544p.setState(WorkInfo.State.ENQUEUED, this.f11534f);
            this.f11544p.setLastEnqueueTime(this.f11534f, this.f11541m.currentTimeMillis());
            this.f11544p.resetWorkSpecNextScheduleTimeOverride(this.f11534f, this.f11536h.getNextScheduleTimeOverrideGeneration());
            this.f11544p.markWorkSpecScheduled(this.f11534f, -1L);
            this.f11543o.setTransactionSuccessful();
        } finally {
            this.f11543o.endTransaction();
            m7016i(true);
        }
    }

    @NonNull
    public ListenableFuture<Boolean> getFuture() {
        return this.f11548t;
    }

    @NonNull
    public WorkGenerationalId getWorkGenerationalId() {
        return WorkSpecKt.generationalId(this.f11536h);
    }

    @NonNull
    public WorkSpec getWorkSpec() {
        return this.f11536h;
    }

    /* renamed from: h */
    public final void m7015h() {
        this.f11543o.beginTransaction();
        try {
            this.f11544p.setLastEnqueueTime(this.f11534f, this.f11541m.currentTimeMillis());
            this.f11544p.setState(WorkInfo.State.ENQUEUED, this.f11534f);
            this.f11544p.resetWorkSpecRunAttemptCount(this.f11534f);
            this.f11544p.resetWorkSpecNextScheduleTimeOverride(this.f11534f, this.f11536h.getNextScheduleTimeOverrideGeneration());
            this.f11544p.incrementPeriodCount(this.f11534f);
            this.f11544p.markWorkSpecScheduled(this.f11534f, -1L);
            this.f11543o.setTransactionSuccessful();
        } finally {
            this.f11543o.endTransaction();
            m7016i(false);
        }
    }

    /* renamed from: i */
    public final void m7016i(final boolean needsReschedule) {
        this.f11543o.beginTransaction();
        try {
            if (!this.f11543o.workSpecDao().hasUnfinishedWork()) {
                PackageManagerHelper.setComponentEnabled(this.f11533e, RescheduleReceiver.class, false);
            }
            if (needsReschedule) {
                this.f11544p.setState(WorkInfo.State.ENQUEUED, this.f11534f);
                this.f11544p.setStopReason(this.f11534f, this.f11550v);
                this.f11544p.markWorkSpecScheduled(this.f11534f, -1L);
            }
            this.f11543o.setTransactionSuccessful();
            this.f11543o.endTransaction();
            this.f11548t.set(Boolean.valueOf(needsReschedule));
        } catch (Throwable th) {
            this.f11543o.endTransaction();
            throw th;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void interrupt(int stopReason) {
        this.f11550v = stopReason;
        m7021n();
        this.f11549u.cancel(true);
        if (this.f11537i != null && this.f11549u.isCancelled()) {
            this.f11537i.stop(stopReason);
            return;
        }
        Logger.get().debug(f11532w, "WorkSpec " + this.f11536h + " is already done. Not interrupting.");
    }

    /* renamed from: j */
    public final void m7017j() {
        WorkInfo.State state = this.f11544p.getState(this.f11534f);
        if (state == WorkInfo.State.RUNNING) {
            Logger.get().debug(f11532w, "Status for " + this.f11534f + " is RUNNING; not doing any work and rescheduling for later execution");
            m7016i(true);
            return;
        }
        Logger.get().debug(f11532w, "Status for " + this.f11534f + " is " + state + " ; not doing any work");
        m7016i(false);
    }

    /* renamed from: k */
    public final void m7018k() {
        Data merge;
        if (m7021n()) {
            return;
        }
        this.f11543o.beginTransaction();
        try {
            WorkSpec workSpec = this.f11536h;
            if (workSpec.state != WorkInfo.State.ENQUEUED) {
                m7017j();
                this.f11543o.setTransactionSuccessful();
                Logger.get().debug(f11532w, this.f11536h.workerClassName + " is not in ENQUEUED state. Nothing more to do");
                return;
            }
            if ((workSpec.isPeriodic() || this.f11536h.isBackedOff()) && this.f11541m.currentTimeMillis() < this.f11536h.calculateNextRunTime()) {
                Logger.get().debug(f11532w, String.format("Delaying execution for %s because it is being executed before schedule.", this.f11536h.workerClassName));
                m7016i(true);
                this.f11543o.setTransactionSuccessful();
                return;
            }
            this.f11543o.setTransactionSuccessful();
            this.f11543o.endTransaction();
            if (this.f11536h.isPeriodic()) {
                merge = this.f11536h.input;
            } else {
                InputMerger createInputMergerWithDefaultFallback = this.f11540l.getInputMergerFactory().createInputMergerWithDefaultFallback(this.f11536h.inputMergerClassName);
                if (createInputMergerWithDefaultFallback == null) {
                    Logger.get().error(f11532w, "Could not create Input Merger " + this.f11536h.inputMergerClassName);
                    m7019l();
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.f11536h.input);
                arrayList.addAll(this.f11544p.getInputsFromPrerequisites(this.f11534f));
                merge = createInputMergerWithDefaultFallback.merge(arrayList);
            }
            Data data = merge;
            UUID fromString = UUID.fromString(this.f11534f);
            List<String> list = this.f11546r;
            WorkerParameters.RuntimeExtras runtimeExtras = this.f11535g;
            WorkSpec workSpec2 = this.f11536h;
            WorkerParameters workerParameters = new WorkerParameters(fromString, data, list, runtimeExtras, workSpec2.runAttemptCount, workSpec2.getGeneration(), this.f11540l.getExecutor(), this.f11538j, this.f11540l.getWorkerFactory(), new WorkProgressUpdater(this.f11543o, this.f11538j), new WorkForegroundUpdater(this.f11543o, this.f11542n, this.f11538j));
            if (this.f11537i == null) {
                this.f11537i = this.f11540l.getWorkerFactory().createWorkerWithDefaultFallback(this.f11533e, this.f11536h.workerClassName, workerParameters);
            }
            ListenableWorker listenableWorker = this.f11537i;
            if (listenableWorker == null) {
                Logger.get().error(f11532w, "Could not create Worker " + this.f11536h.workerClassName);
                m7019l();
                return;
            }
            if (listenableWorker.isUsed()) {
                Logger.get().error(f11532w, "Received an already-used Worker " + this.f11536h.workerClassName + "; Worker Factory should return new instances");
                m7019l();
                return;
            }
            this.f11537i.setUsed();
            if (!m7022o()) {
                m7017j();
                return;
            }
            if (m7021n()) {
                return;
            }
            WorkForegroundRunnable workForegroundRunnable = new WorkForegroundRunnable(this.f11533e, this.f11536h, this.f11537i, workerParameters.getForegroundUpdater(), this.f11538j);
            this.f11538j.getMainThreadExecutor().execute(workForegroundRunnable);
            final ListenableFuture<Void> future = workForegroundRunnable.getFuture();
            this.f11549u.addListener(new Runnable() { // from class: com.sunia.HTREnginev2.vao
                @Override // java.lang.Runnable
                public final void run() {
                    WorkerWrapper.this.m7009e(future);
                }
            }, new SynchronousExecutor());
            future.addListener(new RunnableC1594a(future), this.f11538j.getMainThreadExecutor());
            this.f11549u.addListener(new RunnableC1595b(this.f11547s), this.f11538j.getSerialTaskExecutor());
        } finally {
            this.f11543o.endTransaction();
        }
    }

    @VisibleForTesting
    /* renamed from: l */
    public void m7019l() {
        this.f11543o.beginTransaction();
        try {
            m7012d(this.f11534f);
            Data outputData = ((ListenableWorker.Result.Failure) this.f11539k).getOutputData();
            this.f11544p.resetWorkSpecNextScheduleTimeOverride(this.f11534f, this.f11536h.getNextScheduleTimeOverrideGeneration());
            this.f11544p.setOutput(this.f11534f, outputData);
            this.f11543o.setTransactionSuccessful();
        } finally {
            this.f11543o.endTransaction();
            m7016i(false);
        }
    }

    /* renamed from: m */
    public final void m7020m() {
        this.f11543o.beginTransaction();
        try {
            this.f11544p.setState(WorkInfo.State.SUCCEEDED, this.f11534f);
            this.f11544p.setOutput(this.f11534f, ((ListenableWorker.Result.Success) this.f11539k).getOutputData());
            long currentTimeMillis = this.f11541m.currentTimeMillis();
            for (String str : this.f11545q.getDependentWorkIds(this.f11534f)) {
                if (this.f11544p.getState(str) == WorkInfo.State.BLOCKED && this.f11545q.hasCompletedAllPrerequisites(str)) {
                    Logger.get().info(f11532w, "Setting status to enqueued for " + str);
                    this.f11544p.setState(WorkInfo.State.ENQUEUED, str);
                    this.f11544p.setLastEnqueueTime(str, currentTimeMillis);
                }
            }
            this.f11543o.setTransactionSuccessful();
        } finally {
            this.f11543o.endTransaction();
            m7016i(false);
        }
    }

    /* renamed from: n */
    public final boolean m7021n() {
        if (this.f11550v == -256) {
            return false;
        }
        Logger.get().debug(f11532w, "Work interrupted for " + this.f11547s);
        if (this.f11544p.getState(this.f11534f) == null) {
            m7016i(false);
        } else {
            m7016i(!r0.isFinished());
        }
        return true;
    }

    /* renamed from: o */
    public final boolean m7022o() {
        boolean z;
        this.f11543o.beginTransaction();
        try {
            if (this.f11544p.getState(this.f11534f) == WorkInfo.State.ENQUEUED) {
                this.f11544p.setState(WorkInfo.State.RUNNING, this.f11534f);
                this.f11544p.incrementWorkSpecRunAttemptCount(this.f11534f);
                this.f11544p.setStopReason(this.f11534f, -256);
                z = true;
            } else {
                z = false;
            }
            this.f11543o.setTransactionSuccessful();
            return z;
        } finally {
            this.f11543o.endTransaction();
        }
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public void run() {
        this.f11547s = m7010b(this.f11546r);
        m7018k();
    }
}
