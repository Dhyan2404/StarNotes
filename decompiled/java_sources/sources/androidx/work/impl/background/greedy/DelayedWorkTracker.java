package androidx.work.impl.background.greedy;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Clock;
import androidx.work.Logger;
import androidx.work.RunnableScheduler;
import androidx.work.impl.Scheduler;
import androidx.work.impl.model.WorkSpec;
import java.util.HashMap;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class DelayedWorkTracker {

    /* renamed from: e */
    public static final String f11564e = Logger.tagWithPrefix("DelayedWorkTracker");

    /* renamed from: a */
    public final Scheduler f11565a;

    /* renamed from: b */
    public final RunnableScheduler f11566b;

    /* renamed from: c */
    public final Clock f11567c;

    /* renamed from: d */
    public final Map<String, Runnable> f11568d = new HashMap();

    /* renamed from: androidx.work.impl.background.greedy.DelayedWorkTracker$a */
    /* loaded from: classes3.dex */
    public class RunnableC1596a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ WorkSpec f11569e;

        public RunnableC1596a(final WorkSpec val$workSpec) {
            this.f11569e = val$workSpec;
        }

        @Override // java.lang.Runnable
        public void run() {
            Logger.get().debug(DelayedWorkTracker.f11564e, "Scheduling work " + this.f11569e.id);
            DelayedWorkTracker.this.f11565a.schedule(this.f11569e);
        }
    }

    public DelayedWorkTracker(@NonNull Scheduler immediateScheduler, @NonNull RunnableScheduler runnableScheduler, @NonNull Clock clock) {
        this.f11565a = immediateScheduler;
        this.f11566b = runnableScheduler;
        this.f11567c = clock;
    }

    public void schedule(@NonNull final WorkSpec workSpec, long nextRunTime) {
        Runnable remove = this.f11568d.remove(workSpec.id);
        if (remove != null) {
            this.f11566b.cancel(remove);
        }
        RunnableC1596a runnableC1596a = new RunnableC1596a(workSpec);
        this.f11568d.put(workSpec.id, runnableC1596a);
        this.f11566b.scheduleWithDelay(nextRunTime - this.f11567c.currentTimeMillis(), runnableC1596a);
    }

    public void unschedule(@NonNull String workSpecId) {
        Runnable remove = this.f11568d.remove(workSpecId);
        if (remove != null) {
            this.f11566b.cancel(remove);
        }
    }
}
