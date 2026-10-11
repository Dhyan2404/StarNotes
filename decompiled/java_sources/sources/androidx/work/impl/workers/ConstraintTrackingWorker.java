package androidx.work.impl.workers;

import android.content.Context;
import android.os.Build;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.SynchronousExecutor;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import com.google.common.util.concurrent.ListenableFuture;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b'\u0010(J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\u0006H\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R8\u0010\u001e\u001a&\u0012\f\u0012\n \u001b*\u0004\u0018\u00010\u00040\u0004 \u001b*\u0012\u0012\f\u0012\n \u001b*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u001a0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR(\u0010$\u001a\u0004\u0018\u00010\u00012\b\u0010\u001f\u001a\u0004\u0018\u00010\u00018G@BX\u0086\u000e¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#¨\u0006)"}, m61528d2 = {"Landroidx/work/impl/workers/ConstraintTrackingWorker;", "Landroidx/work/ListenableWorker;", "Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;", "Lcom/google/common/util/concurrent/ListenableFuture;", "Landroidx/work/ListenableWorker$Result;", "startWork", "", "onStopped", "Landroidx/work/impl/model/WorkSpec;", "workSpec", "Landroidx/work/impl/constraints/ConstraintsState;", "state", "onConstraintsStateChanged", "d", "Landroidx/work/WorkerParameters;", "e", "Landroidx/work/WorkerParameters;", "workerParameters", "", C6997f.f39671c, Constants.OBJECT_SIG, DevicePushAction.LOCK_DEVICE, "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "areConstraintsUnmet", "Landroidx/work/impl/utils/futures/SettableFuture;", "kotlin.jvm.PlatformType", C6999h.f39688c, "Landroidx/work/impl/utils/futures/SettableFuture;", "future", "<set-?>", "i", "Landroidx/work/ListenableWorker;", "getDelegate", "()Landroidx/work/ListenableWorker;", "delegate", "Landroid/content/Context;", "appContext", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nConstraintTrackingWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstraintTrackingWorker.kt\nandroidx/work/impl/workers/ConstraintTrackingWorker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,167:1\n1#2:168\n*E\n"})
/* loaded from: classes3.dex */
public final class ConstraintTrackingWorker extends ListenableWorker implements OnConstraintsStateChangedListener {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final WorkerParameters workerParameters;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Object lock;

    /* renamed from: g, reason: from kotlin metadata */
    public volatile boolean areConstraintsUnmet;

    /* renamed from: h, reason: from kotlin metadata */
    public final SettableFuture<ListenableWorker.Result> future;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public ListenableWorker delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(@NotNull Context appContext, @NotNull WorkerParameters workerParameters) {
        super(appContext, workerParameters);
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(workerParameters, "workerParameters");
        this.workerParameters = workerParameters;
        this.lock = new Object();
        this.future = SettableFuture.create();
    }

    /* renamed from: e */
    public static final void m7186e(Job job) {
        Intrinsics.checkNotNullParameter(job, "$job");
        job.cancel((CancellationException) null);
    }

    /* renamed from: f */
    public static final void m7187f(ConstraintTrackingWorker this$0, ListenableFuture innerFuture) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(innerFuture, "$innerFuture");
        synchronized (this$0.lock) {
            if (this$0.areConstraintsUnmet) {
                SettableFuture<ListenableWorker.Result> future = this$0.future;
                Intrinsics.checkNotNullExpressionValue(future, "future");
                ConstraintTrackingWorkerKt.m7191b(future);
            } else {
                this$0.future.setFuture(innerFuture);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* renamed from: g */
    public static final void m7188g(ConstraintTrackingWorker this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m7189d();
    }

    /* renamed from: d */
    public final void m7189d() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        if (this.future.isCancelled()) {
            return;
        }
        String string = getInputData().getString(ConstraintTrackingWorkerKt.ARGUMENT_CLASS_NAME);
        Logger logger = Logger.get();
        Intrinsics.checkNotNullExpressionValue(logger, "get()");
        if (string == null || string.length() == 0) {
            str6 = ConstraintTrackingWorkerKt.f12042a;
            logger.error(str6, "No worker to delegate to.");
            SettableFuture<ListenableWorker.Result> future = this.future;
            Intrinsics.checkNotNullExpressionValue(future, "future");
            ConstraintTrackingWorkerKt.m7190a(future);
            return;
        }
        ListenableWorker createWorkerWithDefaultFallback = getWorkerFactory().createWorkerWithDefaultFallback(getApplicationContext(), string, this.workerParameters);
        this.delegate = createWorkerWithDefaultFallback;
        if (createWorkerWithDefaultFallback == null) {
            str5 = ConstraintTrackingWorkerKt.f12042a;
            logger.debug(str5, "No worker to delegate to.");
            SettableFuture<ListenableWorker.Result> future2 = this.future;
            Intrinsics.checkNotNullExpressionValue(future2, "future");
            ConstraintTrackingWorkerKt.m7190a(future2);
            return;
        }
        WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(getApplicationContext());
        Intrinsics.checkNotNullExpressionValue(workManagerImpl, "getInstance(applicationContext)");
        WorkSpecDao workSpecDao = workManagerImpl.getWorkDatabase().workSpecDao();
        String uuid = getId().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "id.toString()");
        WorkSpec workSpec = workSpecDao.getWorkSpec(uuid);
        if (workSpec == null) {
            SettableFuture<ListenableWorker.Result> future3 = this.future;
            Intrinsics.checkNotNullExpressionValue(future3, "future");
            ConstraintTrackingWorkerKt.m7190a(future3);
            return;
        }
        Trackers trackers = workManagerImpl.getTrackers();
        Intrinsics.checkNotNullExpressionValue(trackers, "workManagerImpl.trackers");
        WorkConstraintsTracker workConstraintsTracker = new WorkConstraintsTracker(trackers);
        CoroutineDispatcher taskCoroutineDispatcher = workManagerImpl.getWorkTaskExecutor().getTaskCoroutineDispatcher();
        Intrinsics.checkNotNullExpressionValue(taskCoroutineDispatcher, "workManagerImpl.workTask…r.taskCoroutineDispatcher");
        final Job listen = WorkConstraintsTrackerKt.listen(workConstraintsTracker, workSpec, taskCoroutineDispatcher, this);
        this.future.addListener(new Runnable() { // from class: com.sunia.HTREnginev2.eae
            @Override // java.lang.Runnable
            public final void run() {
                ConstraintTrackingWorker.m7186e(Job.this);
            }
        }, new SynchronousExecutor());
        if (!workConstraintsTracker.areAllConstraintsMet(workSpec)) {
            str = ConstraintTrackingWorkerKt.f12042a;
            logger.debug(str, "Constraints not met for delegate " + string + ". Requesting retry.");
            SettableFuture<ListenableWorker.Result> future4 = this.future;
            Intrinsics.checkNotNullExpressionValue(future4, "future");
            ConstraintTrackingWorkerKt.m7191b(future4);
            return;
        }
        str2 = ConstraintTrackingWorkerKt.f12042a;
        logger.debug(str2, "Constraints met for delegate " + string);
        try {
            ListenableWorker listenableWorker = this.delegate;
            Intrinsics.checkNotNull(listenableWorker);
            final ListenableFuture<ListenableWorker.Result> startWork = listenableWorker.startWork();
            Intrinsics.checkNotNullExpressionValue(startWork, "delegate!!.startWork()");
            startWork.addListener(new Runnable() { // from class: com.sunia.HTREnginev2.fae
                @Override // java.lang.Runnable
                public final void run() {
                    ConstraintTrackingWorker.m7187f(ConstraintTrackingWorker.this, startWork);
                }
            }, getBackgroundExecutor());
        } catch (Throwable th) {
            str3 = ConstraintTrackingWorkerKt.f12042a;
            logger.debug(str3, "Delegated worker " + string + " threw exception in startWork.", th);
            synchronized (this.lock) {
                if (!this.areConstraintsUnmet) {
                    SettableFuture<ListenableWorker.Result> future5 = this.future;
                    Intrinsics.checkNotNullExpressionValue(future5, "future");
                    ConstraintTrackingWorkerKt.m7190a(future5);
                } else {
                    str4 = ConstraintTrackingWorkerKt.f12042a;
                    logger.debug(str4, "Constraints were unmet, Retrying.");
                    SettableFuture<ListenableWorker.Result> future6 = this.future;
                    Intrinsics.checkNotNullExpressionValue(future6, "future");
                    ConstraintTrackingWorkerKt.m7191b(future6);
                }
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    @Nullable
    public final ListenableWorker getDelegate() {
        return this.delegate;
    }

    @Override // androidx.work.impl.constraints.OnConstraintsStateChangedListener
    public void onConstraintsStateChanged(@NotNull WorkSpec workSpec, @NotNull ConstraintsState state) {
        String str;
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        Intrinsics.checkNotNullParameter(state, "state");
        Logger logger = Logger.get();
        str = ConstraintTrackingWorkerKt.f12042a;
        logger.debug(str, "Constraints changed for " + workSpec);
        if (state instanceof ConstraintsState.ConstraintsNotMet) {
            synchronized (this.lock) {
                this.areConstraintsUnmet = true;
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.delegate;
        if (listenableWorker == null || listenableWorker.isStopped()) {
            return;
        }
        listenableWorker.stop(Build.VERSION.SDK_INT >= 31 ? getStopReason() : 0);
    }

    @Override // androidx.work.ListenableWorker
    @NotNull
    public ListenableFuture<ListenableWorker.Result> startWork() {
        getBackgroundExecutor().execute(new Runnable() { // from class: com.sunia.HTREnginev2.dae
            @Override // java.lang.Runnable
            public final void run() {
                ConstraintTrackingWorker.m7188g(ConstraintTrackingWorker.this);
            }
        });
        SettableFuture<ListenableWorker.Result> future = this.future;
        Intrinsics.checkNotNullExpressionValue(future, "future");
        return future;
    }
}
