package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.work.Logger;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.background.systemalarm.SystemAlarmDispatcher;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkTimer;
import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.q2f;
import com.sunia.HTREnginev2.r2f;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Job;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class DelayMetCommandHandler implements OnConstraintsStateChangedListener, WorkTimer.TimeLimitExceededListener {

    /* renamed from: s */
    public static final String f11621s = Logger.tagWithPrefix("DelayMetCommandHandler");

    /* renamed from: t */
    public static final int f11622t = 0;

    /* renamed from: u */
    public static final int f11623u = 1;

    /* renamed from: v */
    public static final int f11624v = 2;

    /* renamed from: e */
    public final Context f11625e;

    /* renamed from: f */
    public final int f11626f;

    /* renamed from: g */
    public final WorkGenerationalId f11627g;

    /* renamed from: h */
    public final SystemAlarmDispatcher f11628h;

    /* renamed from: i */
    public final WorkConstraintsTracker f11629i;

    /* renamed from: j */
    public final Object f11630j;

    /* renamed from: k */
    public int f11631k;

    /* renamed from: l */
    public final Executor f11632l;

    /* renamed from: m */
    public final Executor f11633m;

    /* renamed from: n */
    @Nullable
    public PowerManager.WakeLock f11634n;

    /* renamed from: o */
    public boolean f11635o;

    /* renamed from: p */
    public final StartStopToken f11636p;

    /* renamed from: q */
    public final CoroutineDispatcher f11637q;

    /* renamed from: r */
    public volatile Job f11638r;

    public DelayMetCommandHandler(@NonNull Context context, int startId, @NonNull SystemAlarmDispatcher dispatcher, @NonNull StartStopToken startStopToken) {
        this.f11625e = context;
        this.f11626f = startId;
        this.f11628h = dispatcher;
        this.f11627g = startStopToken.getId();
        this.f11636p = startStopToken;
        Trackers trackers = dispatcher.m7060e().getTrackers();
        this.f11632l = dispatcher.m7059d().getSerialTaskExecutor();
        this.f11633m = dispatcher.m7059d().getMainThreadExecutor();
        this.f11637q = dispatcher.m7059d().getTaskCoroutineDispatcher();
        this.f11629i = new WorkConstraintsTracker(trackers);
        this.f11635o = false;
        this.f11631k = 0;
        this.f11630j = new Object();
    }

    /* renamed from: c */
    public final void m7051c() {
        synchronized (this.f11630j) {
            if (this.f11638r != null) {
                this.f11638r.cancel((CancellationException) null);
            }
            this.f11628h.m7061f().stopTimer(this.f11627g);
            PowerManager.WakeLock wakeLock = this.f11634n;
            if (wakeLock != null && wakeLock.isHeld()) {
                Logger.get().debug(f11621s, "Releasing wakelock " + this.f11634n + "for WorkSpec " + this.f11627g);
                this.f11634n.release();
            }
        }
    }

    @WorkerThread
    /* renamed from: d */
    public void m7052d() {
        String workSpecId = this.f11627g.getWorkSpecId();
        this.f11634n = WakeLocks.newWakeLock(this.f11625e, workSpecId + " (" + this.f11626f + MotionUtils.f31762d);
        Logger logger = Logger.get();
        String str = f11621s;
        logger.debug(str, "Acquiring wakelock " + this.f11634n + "for WorkSpec " + workSpecId);
        this.f11634n.acquire();
        WorkSpec workSpec = this.f11628h.m7060e().getWorkDatabase().workSpecDao().getWorkSpec(workSpecId);
        if (workSpec == null) {
            this.f11632l.execute(new q2f(this));
            return;
        }
        boolean hasConstraints = workSpec.hasConstraints();
        this.f11635o = hasConstraints;
        if (hasConstraints) {
            this.f11638r = WorkConstraintsTrackerKt.listen(this.f11629i, workSpec, this.f11637q, this);
            return;
        }
        Logger.get().debug(str, "No constraints for " + workSpecId);
        this.f11632l.execute(new r2f(this));
    }

    /* renamed from: e */
    public void m7053e(boolean needsReschedule) {
        Logger.get().debug(f11621s, "onExecuted " + this.f11627g + ", " + needsReschedule);
        m7051c();
        if (needsReschedule) {
            this.f11633m.execute(new SystemAlarmDispatcher.RunnableC1601b(this.f11628h, CommandHandler.m7034e(this.f11625e, this.f11627g), this.f11626f));
        }
        if (this.f11635o) {
            this.f11633m.execute(new SystemAlarmDispatcher.RunnableC1601b(this.f11628h, CommandHandler.m7030a(this.f11625e), this.f11626f));
        }
    }

    /* renamed from: f */
    public final void m7054f() {
        if (this.f11631k != 0) {
            Logger.get().debug(f11621s, "Already started work for " + this.f11627g);
            return;
        }
        this.f11631k = 1;
        Logger.get().debug(f11621s, "onAllConstraintsMet for " + this.f11627g);
        if (this.f11628h.m7058c().startWork(this.f11636p)) {
            this.f11628h.m7061f().startTimer(this.f11627g, 600000L, this);
        } else {
            m7051c();
        }
    }

    /* renamed from: g */
    public final void m7055g() {
        String workSpecId = this.f11627g.getWorkSpecId();
        if (this.f11631k >= 2) {
            Logger.get().debug(f11621s, "Already stopped work for " + workSpecId);
            return;
        }
        this.f11631k = 2;
        Logger logger = Logger.get();
        String str = f11621s;
        logger.debug(str, "Stopping work for WorkSpec " + workSpecId);
        this.f11633m.execute(new SystemAlarmDispatcher.RunnableC1601b(this.f11628h, CommandHandler.m7035f(this.f11625e, this.f11627g), this.f11626f));
        if (!this.f11628h.m7058c().isEnqueued(this.f11627g.getWorkSpecId())) {
            Logger.get().debug(str, "Processor does not have WorkSpec " + workSpecId + ". No need to reschedule");
            return;
        }
        Logger.get().debug(str, "WorkSpec " + workSpecId + " needs to be rescheduled");
        this.f11633m.execute(new SystemAlarmDispatcher.RunnableC1601b(this.f11628h, CommandHandler.m7034e(this.f11625e, this.f11627g), this.f11626f));
    }

    @Override // androidx.work.impl.constraints.OnConstraintsStateChangedListener
    public void onConstraintsStateChanged(@NonNull WorkSpec workSpec, @NonNull ConstraintsState state) {
        if (state instanceof ConstraintsState.ConstraintsMet) {
            this.f11632l.execute(new r2f(this));
        } else {
            this.f11632l.execute(new q2f(this));
        }
    }

    @Override // androidx.work.impl.utils.WorkTimer.TimeLimitExceededListener
    public void onTimeLimitExceeded(@NonNull WorkGenerationalId id) {
        Logger.get().debug(f11621s, "Exceeded time limits on execution for " + id);
        this.f11632l.execute(new q2f(this));
    }
}
