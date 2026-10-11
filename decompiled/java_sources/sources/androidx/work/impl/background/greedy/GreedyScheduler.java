package androidx.work.impl.background.greedy;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.RunnableScheduler;
import androidx.work.WorkInfo;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkLauncher;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.ProcessUtils;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.Job;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class GreedyScheduler implements Scheduler, OnConstraintsStateChangedListener, ExecutionListener {

    /* renamed from: s */
    public static final String f11571s = Logger.tagWithPrefix("GreedyScheduler");

    /* renamed from: t */
    public static final int f11572t = 5;

    /* renamed from: e */
    public final Context f11573e;

    /* renamed from: g */
    public DelayedWorkTracker f11575g;

    /* renamed from: h */
    public boolean f11576h;

    /* renamed from: k */
    public final Processor f11579k;

    /* renamed from: l */
    public final WorkLauncher f11580l;

    /* renamed from: m */
    public final Configuration f11581m;

    /* renamed from: o */
    public Boolean f11583o;

    /* renamed from: p */
    public final WorkConstraintsTracker f11584p;

    /* renamed from: q */
    public final TaskExecutor f11585q;

    /* renamed from: r */
    public final TimeLimiter f11586r;

    /* renamed from: f */
    public final Map<WorkGenerationalId, Job> f11574f = new HashMap();

    /* renamed from: i */
    public final Object f11577i = new Object();

    /* renamed from: j */
    public final StartStopTokens f11578j = new StartStopTokens();

    /* renamed from: n */
    public final Map<WorkGenerationalId, C1598b> f11582n = new HashMap();

    /* renamed from: androidx.work.impl.background.greedy.GreedyScheduler$b */
    /* loaded from: classes3.dex */
    public static class C1598b {

        /* renamed from: a */
        public final int f11587a;

        /* renamed from: b */
        public final long f11588b;

        public C1598b(int runAttemptCount, long timeStamp) {
            this.f11587a = runAttemptCount;
            this.f11588b = timeStamp;
        }
    }

    public GreedyScheduler(@NonNull Context context, @NonNull Configuration configuration, @NonNull Trackers trackers, @NonNull Processor processor, @NonNull WorkLauncher workLauncher, @NonNull TaskExecutor taskExecutor) {
        this.f11573e = context;
        RunnableScheduler runnableScheduler = configuration.getRunnableScheduler();
        this.f11575g = new DelayedWorkTracker(this, runnableScheduler, configuration.getClock());
        this.f11586r = new TimeLimiter(runnableScheduler, workLauncher);
        this.f11585q = taskExecutor;
        this.f11584p = new WorkConstraintsTracker(trackers);
        this.f11581m = configuration;
        this.f11579k = processor;
        this.f11580l = workLauncher;
    }

    /* renamed from: a */
    public final void m7024a() {
        this.f11583o = Boolean.valueOf(ProcessUtils.isDefaultProcess(this.f11573e, this.f11581m));
    }

    /* renamed from: b */
    public final void m7025b() {
        if (this.f11576h) {
            return;
        }
        this.f11579k.addExecutionListener(this);
        this.f11576h = true;
    }

    /* renamed from: c */
    public final void m7026c(@NonNull WorkGenerationalId id) {
        Job remove;
        synchronized (this.f11577i) {
            remove = this.f11574f.remove(id);
        }
        if (remove != null) {
            Logger.get().debug(f11571s, "Stopping tracking for " + id);
            remove.cancel((CancellationException) null);
        }
    }

    @Override // androidx.work.impl.Scheduler
    public void cancel(@NonNull String workSpecId) {
        if (this.f11583o == null) {
            m7024a();
        }
        if (!this.f11583o.booleanValue()) {
            Logger.get().info(f11571s, "Ignoring schedule request in non-main process");
            return;
        }
        m7025b();
        Logger.get().debug(f11571s, "Cancelling work ID " + workSpecId);
        DelayedWorkTracker delayedWorkTracker = this.f11575g;
        if (delayedWorkTracker != null) {
            delayedWorkTracker.unschedule(workSpecId);
        }
        for (StartStopToken startStopToken : this.f11578j.remove(workSpecId)) {
            this.f11586r.cancel(startStopToken);
            this.f11580l.stopWork(startStopToken);
        }
    }

    /* renamed from: d */
    public final long m7027d(WorkSpec workSpec) {
        long max;
        synchronized (this.f11577i) {
            WorkGenerationalId generationalId = WorkSpecKt.generationalId(workSpec);
            C1598b c1598b = this.f11582n.get(generationalId);
            if (c1598b == null) {
                c1598b = new C1598b(workSpec.runAttemptCount, this.f11581m.getClock().currentTimeMillis());
                this.f11582n.put(generationalId, c1598b);
            }
            max = c1598b.f11588b + (Math.max((workSpec.runAttemptCount - c1598b.f11587a) - 5, 0) * 30000);
        }
        return max;
    }

    @Override // androidx.work.impl.Scheduler
    public boolean hasLimitedSchedulingSlots() {
        return false;
    }

    @Override // androidx.work.impl.constraints.OnConstraintsStateChangedListener
    public void onConstraintsStateChanged(@NonNull WorkSpec workSpec, @NonNull ConstraintsState state) {
        WorkGenerationalId generationalId = WorkSpecKt.generationalId(workSpec);
        if (state instanceof ConstraintsState.ConstraintsMet) {
            if (this.f11578j.contains(generationalId)) {
                return;
            }
            Logger.get().debug(f11571s, "Constraints met: Scheduling work ID " + generationalId);
            StartStopToken startStopToken = this.f11578j.tokenFor(generationalId);
            this.f11586r.track(startStopToken);
            this.f11580l.startWork(startStopToken);
            return;
        }
        Logger.get().debug(f11571s, "Constraints not met: Cancelling work ID " + generationalId);
        StartStopToken remove = this.f11578j.remove(generationalId);
        if (remove != null) {
            this.f11586r.cancel(remove);
            this.f11580l.stopWorkWithReason(remove, ((ConstraintsState.ConstraintsNotMet) state).getReason());
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public void onExecuted(@NonNull WorkGenerationalId id, boolean needsReschedule) {
        StartStopToken remove = this.f11578j.remove(id);
        if (remove != null) {
            this.f11586r.cancel(remove);
        }
        m7026c(id);
        if (needsReschedule) {
            return;
        }
        synchronized (this.f11577i) {
            this.f11582n.remove(id);
        }
    }

    @Override // androidx.work.impl.Scheduler
    public void schedule(@NonNull WorkSpec... workSpecs) {
        if (this.f11583o == null) {
            m7024a();
        }
        if (!this.f11583o.booleanValue()) {
            Logger.get().info(f11571s, "Ignoring schedule request in a secondary process");
            return;
        }
        m7025b();
        HashSet<WorkSpec> hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (WorkSpec workSpec : workSpecs) {
            if (!this.f11578j.contains(WorkSpecKt.generationalId(workSpec))) {
                long max = Math.max(workSpec.calculateNextRunTime(), m7027d(workSpec));
                long currentTimeMillis = this.f11581m.getClock().currentTimeMillis();
                if (workSpec.state == WorkInfo.State.ENQUEUED) {
                    if (currentTimeMillis < max) {
                        DelayedWorkTracker delayedWorkTracker = this.f11575g;
                        if (delayedWorkTracker != null) {
                            delayedWorkTracker.schedule(workSpec, max);
                        }
                    } else if (workSpec.hasConstraints()) {
                        if (workSpec.constraints.getRequiresDeviceIdle()) {
                            Logger.get().debug(f11571s, "Ignoring " + workSpec + ". Requires device idle.");
                        } else if (workSpec.constraints.hasContentUriTriggers()) {
                            Logger.get().debug(f11571s, "Ignoring " + workSpec + ". Requires ContentUri triggers.");
                        } else {
                            hashSet.add(workSpec);
                            hashSet2.add(workSpec.id);
                        }
                    } else if (!this.f11578j.contains(WorkSpecKt.generationalId(workSpec))) {
                        Logger.get().debug(f11571s, "Starting work for " + workSpec.id);
                        StartStopToken startStopToken = this.f11578j.tokenFor(workSpec);
                        this.f11586r.track(startStopToken);
                        this.f11580l.startWork(startStopToken);
                    }
                }
            }
        }
        synchronized (this.f11577i) {
            if (!hashSet.isEmpty()) {
                Logger.get().debug(f11571s, "Starting tracking for " + TextUtils.join(",", hashSet2));
                for (WorkSpec workSpec2 : hashSet) {
                    WorkGenerationalId generationalId = WorkSpecKt.generationalId(workSpec2);
                    if (!this.f11574f.containsKey(generationalId)) {
                        this.f11574f.put(generationalId, WorkConstraintsTrackerKt.listen(this.f11584p, workSpec2, this.f11585q.getTaskCoroutineDispatcher(), this));
                    }
                }
            }
        }
    }

    @VisibleForTesting
    public void setDelayedWorkTracker(@NonNull DelayedWorkTracker delayedWorkTracker) {
        this.f11575g = delayedWorkTracker;
    }
}
