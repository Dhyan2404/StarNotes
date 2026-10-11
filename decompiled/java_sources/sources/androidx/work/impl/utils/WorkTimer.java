package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.Logger;
import androidx.work.RunnableScheduler;
import androidx.work.impl.model.WorkGenerationalId;
import java.util.HashMap;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class WorkTimer {

    /* renamed from: e */
    public static final String f11996e = Logger.tagWithPrefix("WorkTimer");

    /* renamed from: a */
    public final RunnableScheduler f11997a;

    /* renamed from: b */
    public final Map<WorkGenerationalId, WorkTimerRunnable> f11998b = new HashMap();

    /* renamed from: c */
    public final Map<WorkGenerationalId, TimeLimitExceededListener> f11999c = new HashMap();

    /* renamed from: d */
    public final Object f12000d = new Object();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes3.dex */
    public interface TimeLimitExceededListener {
        void onTimeLimitExceeded(@NonNull WorkGenerationalId id);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes3.dex */
    public static class WorkTimerRunnable implements Runnable {

        /* renamed from: g */
        public static final String f12001g = "WrkTimerRunnable";

        /* renamed from: e */
        public final WorkTimer f12002e;

        /* renamed from: f */
        public final WorkGenerationalId f12003f;

        public WorkTimerRunnable(@NonNull WorkTimer workTimer, @NonNull WorkGenerationalId id) {
            this.f12002e = workTimer;
            this.f12003f = id;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f12002e.f12000d) {
                if (this.f12002e.f11998b.remove(this.f12003f) != null) {
                    TimeLimitExceededListener remove = this.f12002e.f11999c.remove(this.f12003f);
                    if (remove != null) {
                        remove.onTimeLimitExceeded(this.f12003f);
                    }
                } else {
                    Logger.get().debug(f12001g, String.format("Timer with %s is already marked as complete.", this.f12003f));
                }
            }
        }
    }

    public WorkTimer(@NonNull RunnableScheduler scheduler) {
        this.f11997a = scheduler;
    }

    @NonNull
    @VisibleForTesting
    public Map<WorkGenerationalId, TimeLimitExceededListener> getListeners() {
        Map<WorkGenerationalId, TimeLimitExceededListener> map;
        synchronized (this.f12000d) {
            map = this.f11999c;
        }
        return map;
    }

    @NonNull
    @VisibleForTesting
    public Map<WorkGenerationalId, WorkTimerRunnable> getTimerMap() {
        Map<WorkGenerationalId, WorkTimerRunnable> map;
        synchronized (this.f12000d) {
            map = this.f11998b;
        }
        return map;
    }

    public void startTimer(@NonNull final WorkGenerationalId id, long processingTimeMillis, @NonNull TimeLimitExceededListener listener) {
        synchronized (this.f12000d) {
            Logger.get().debug(f11996e, "Starting timer for " + id);
            stopTimer(id);
            WorkTimerRunnable workTimerRunnable = new WorkTimerRunnable(this, id);
            this.f11998b.put(id, workTimerRunnable);
            this.f11999c.put(id, listener);
            this.f11997a.scheduleWithDelay(processingTimeMillis, workTimerRunnable);
        }
    }

    public void stopTimer(@NonNull final WorkGenerationalId id) {
        synchronized (this.f12000d) {
            if (this.f11998b.remove(id) != null) {
                Logger.get().debug(f11996e, "Stopping timer for " + id);
                this.f11999c.remove(id);
            }
        }
    }
}
