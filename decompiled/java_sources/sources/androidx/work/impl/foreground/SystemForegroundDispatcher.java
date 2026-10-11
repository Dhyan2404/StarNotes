package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.android.material.motion.MotionUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.Job;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class SystemForegroundDispatcher implements OnConstraintsStateChangedListener, ExecutionListener {

    /* renamed from: o */
    public static final String f11726o = Logger.tagWithPrefix("SystemFgDispatcher");

    /* renamed from: p */
    public static final String f11727p = "KEY_NOTIFICATION";

    /* renamed from: q */
    public static final String f11728q = "KEY_NOTIFICATION_ID";

    /* renamed from: r */
    public static final String f11729r = "KEY_FOREGROUND_SERVICE_TYPE";

    /* renamed from: s */
    public static final String f11730s = "KEY_WORKSPEC_ID";

    /* renamed from: t */
    public static final String f11731t = "KEY_GENERATION";

    /* renamed from: u */
    public static final String f11732u = "ACTION_START_FOREGROUND";

    /* renamed from: v */
    public static final String f11733v = "ACTION_NOTIFY";

    /* renamed from: w */
    public static final String f11734w = "ACTION_CANCEL_WORK";

    /* renamed from: x */
    public static final String f11735x = "ACTION_STOP_FOREGROUND";

    /* renamed from: e */
    public Context f11736e;

    /* renamed from: f */
    public WorkManagerImpl f11737f;

    /* renamed from: g */
    public final TaskExecutor f11738g;

    /* renamed from: h */
    public final Object f11739h;

    /* renamed from: i */
    public WorkGenerationalId f11740i;

    /* renamed from: j */
    public final Map<WorkGenerationalId, ForegroundInfo> f11741j;

    /* renamed from: k */
    public final Map<WorkGenerationalId, WorkSpec> f11742k;

    /* renamed from: l */
    public final Map<WorkGenerationalId, Job> f11743l;

    /* renamed from: m */
    public final WorkConstraintsTracker f11744m;

    /* renamed from: n */
    @Nullable
    public InterfaceC1613b f11745n;

    /* renamed from: androidx.work.impl.foreground.SystemForegroundDispatcher$a */
    /* loaded from: classes3.dex */
    public class RunnableC1612a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ String f11746e;

        public RunnableC1612a(final String val$workSpecId) {
            this.f11746e = val$workSpecId;
        }

        @Override // java.lang.Runnable
        public void run() {
            WorkSpec runningWorkSpec = SystemForegroundDispatcher.this.f11737f.getProcessor().getRunningWorkSpec(this.f11746e);
            if (runningWorkSpec == null || !runningWorkSpec.hasConstraints()) {
                return;
            }
            synchronized (SystemForegroundDispatcher.this.f11739h) {
                SystemForegroundDispatcher.this.f11742k.put(WorkSpecKt.generationalId(runningWorkSpec), runningWorkSpec);
                SystemForegroundDispatcher systemForegroundDispatcher = SystemForegroundDispatcher.this;
                SystemForegroundDispatcher.this.f11743l.put(WorkSpecKt.generationalId(runningWorkSpec), WorkConstraintsTrackerKt.listen(systemForegroundDispatcher.f11744m, runningWorkSpec, systemForegroundDispatcher.f11738g.getTaskCoroutineDispatcher(), SystemForegroundDispatcher.this));
            }
        }
    }

    /* renamed from: androidx.work.impl.foreground.SystemForegroundDispatcher$b */
    /* loaded from: classes3.dex */
    public interface InterfaceC1613b {
        void cancelNotification(int notificationId);

        void notify(int notificationId, @NonNull Notification notification);

        void startForeground(int notificationId, int notificationType, @NonNull Notification notification);

        void stop();
    }

    public SystemForegroundDispatcher(@NonNull Context context) {
        this.f11736e = context;
        this.f11739h = new Object();
        WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(context);
        this.f11737f = workManagerImpl;
        this.f11738g = workManagerImpl.getWorkTaskExecutor();
        this.f11740i = null;
        this.f11741j = new LinkedHashMap();
        this.f11743l = new HashMap();
        this.f11742k = new HashMap();
        this.f11744m = new WorkConstraintsTracker(this.f11737f.getTrackers());
        this.f11737f.getProcessor().addExecutionListener(this);
    }

    @NonNull
    public static Intent createCancelWorkIntent(@NonNull Context context, @NonNull String workSpecId) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction(f11734w);
        intent.setData(Uri.parse("workspec://" + workSpecId));
        intent.putExtra("KEY_WORKSPEC_ID", workSpecId);
        return intent;
    }

    @NonNull
    public static Intent createNotifyIntent(@NonNull Context context, @NonNull WorkGenerationalId id, @NonNull ForegroundInfo info) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction(f11733v);
        intent.putExtra(f11728q, info.getNotificationId());
        intent.putExtra(f11729r, info.getForegroundServiceType());
        intent.putExtra(f11727p, info.getNotification());
        intent.putExtra("KEY_WORKSPEC_ID", id.getWorkSpecId());
        intent.putExtra(f11731t, id.getGeneration());
        return intent;
    }

    @NonNull
    public static Intent createStartForegroundIntent(@NonNull Context context, @NonNull WorkGenerationalId id, @NonNull ForegroundInfo info) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction(f11732u);
        intent.putExtra("KEY_WORKSPEC_ID", id.getWorkSpecId());
        intent.putExtra(f11731t, id.getGeneration());
        intent.putExtra(f11728q, info.getNotificationId());
        intent.putExtra(f11729r, info.getForegroundServiceType());
        intent.putExtra(f11727p, info.getNotification());
        return intent;
    }

    @NonNull
    public static Intent createStopForegroundIntent(@NonNull Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction(f11735x);
        return intent;
    }

    @MainThread
    /* renamed from: c */
    public final void m7086c(@NonNull Intent intent) {
        Logger.get().info(f11726o, "Stopping foreground work for " + intent);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f11737f.cancelWorkById(UUID.fromString(stringExtra));
    }

    @MainThread
    /* renamed from: d */
    public final void m7087d(@NonNull Intent intent) {
        int i = 0;
        int intExtra = intent.getIntExtra(f11728q, 0);
        int intExtra2 = intent.getIntExtra(f11729r, 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        WorkGenerationalId workGenerationalId = new WorkGenerationalId(stringExtra, intent.getIntExtra(f11731t, 0));
        Notification notification = (Notification) intent.getParcelableExtra(f11727p);
        Logger.get().debug(f11726o, "Notifying with (id:" + intExtra + ", workSpecId: " + stringExtra + ", notificationType :" + intExtra2 + MotionUtils.f31762d);
        if (notification == null || this.f11745n == null) {
            return;
        }
        this.f11741j.put(workGenerationalId, new ForegroundInfo(intExtra, notification, intExtra2));
        if (this.f11740i == null) {
            this.f11740i = workGenerationalId;
            this.f11745n.startForeground(intExtra, intExtra2, notification);
            return;
        }
        this.f11745n.notify(intExtra, notification);
        if (intExtra2 != 0) {
            Iterator<Map.Entry<WorkGenerationalId, ForegroundInfo>> it2 = this.f11741j.entrySet().iterator();
            while (it2.hasNext()) {
                i |= it2.next().getValue().getForegroundServiceType();
            }
            ForegroundInfo foregroundInfo = this.f11741j.get(this.f11740i);
            if (foregroundInfo != null) {
                this.f11745n.startForeground(foregroundInfo.getNotificationId(), i, foregroundInfo.getNotification());
            }
        }
    }

    @MainThread
    /* renamed from: e */
    public final void m7088e(@NonNull Intent intent) {
        Logger.get().info(f11726o, "Started foreground service " + intent);
        this.f11738g.executeOnTaskThread(new RunnableC1612a(intent.getStringExtra("KEY_WORKSPEC_ID")));
    }

    @MainThread
    /* renamed from: f */
    public void m7089f(@NonNull Intent intent) {
        Logger.get().info(f11726o, "Stopping foreground service");
        InterfaceC1613b interfaceC1613b = this.f11745n;
        if (interfaceC1613b != null) {
            interfaceC1613b.stop();
        }
    }

    @MainThread
    /* renamed from: g */
    public void m7090g() {
        this.f11745n = null;
        synchronized (this.f11739h) {
            Iterator<Job> it2 = this.f11743l.values().iterator();
            while (it2.hasNext()) {
                it2.next().cancel((CancellationException) null);
            }
        }
        this.f11737f.getProcessor().removeExecutionListener(this);
    }

    /* renamed from: h */
    public void m7091h(@NonNull Intent intent) {
        String action = intent.getAction();
        if (f11732u.equals(action)) {
            m7088e(intent);
            m7087d(intent);
        } else if (f11733v.equals(action)) {
            m7087d(intent);
        } else if (f11734w.equals(action)) {
            m7086c(intent);
        } else if (f11735x.equals(action)) {
            m7089f(intent);
        }
    }

    @MainThread
    /* renamed from: i */
    public void m7092i(@NonNull InterfaceC1613b callback) {
        if (this.f11745n != null) {
            Logger.get().error(f11726o, "A callback already exists.");
        } else {
            this.f11745n = callback;
        }
    }

    @Override // androidx.work.impl.constraints.OnConstraintsStateChangedListener
    public void onConstraintsStateChanged(@NonNull WorkSpec workSpec, @NonNull ConstraintsState state) {
        if (state instanceof ConstraintsState.ConstraintsNotMet) {
            String str = workSpec.id;
            Logger.get().debug(f11726o, "Constraints unmet for WorkSpec " + str);
            this.f11737f.stopForegroundWork(WorkSpecKt.generationalId(workSpec));
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    @MainThread
    public void onExecuted(@NonNull WorkGenerationalId id, boolean needsReschedule) {
        Map.Entry<WorkGenerationalId, ForegroundInfo> entry;
        synchronized (this.f11739h) {
            Job remove = this.f11742k.remove(id) != null ? this.f11743l.remove(id) : null;
            if (remove != null) {
                remove.cancel((CancellationException) null);
            }
        }
        ForegroundInfo remove2 = this.f11741j.remove(id);
        if (id.equals(this.f11740i)) {
            if (this.f11741j.size() > 0) {
                Iterator<Map.Entry<WorkGenerationalId, ForegroundInfo>> it2 = this.f11741j.entrySet().iterator();
                Map.Entry<WorkGenerationalId, ForegroundInfo> next = it2.next();
                while (true) {
                    entry = next;
                    if (!it2.hasNext()) {
                        break;
                    } else {
                        next = it2.next();
                    }
                }
                this.f11740i = entry.getKey();
                if (this.f11745n != null) {
                    ForegroundInfo value = entry.getValue();
                    this.f11745n.startForeground(value.getNotificationId(), value.getForegroundServiceType(), value.getNotification());
                    this.f11745n.cancelNotification(value.getNotificationId());
                }
            } else {
                this.f11740i = null;
            }
        }
        InterfaceC1613b interfaceC1613b = this.f11745n;
        if (remove2 == null || interfaceC1613b == null) {
            return;
        }
        Logger.get().debug(f11726o, "Removing Notification (id: " + remove2.getNotificationId() + ", workSpecId: " + id + ", notificationType: " + remove2.getForegroundServiceType());
        interfaceC1613b.cancelNotification(remove2.getNotificationId());
    }

    @VisibleForTesting
    public SystemForegroundDispatcher(@NonNull Context context, @NonNull WorkManagerImpl workManagerImpl, @NonNull WorkConstraintsTracker tracker) {
        this.f11736e = context;
        this.f11739h = new Object();
        this.f11737f = workManagerImpl;
        this.f11738g = workManagerImpl.getWorkTaskExecutor();
        this.f11740i = null;
        this.f11741j = new LinkedHashMap();
        this.f11743l = new HashMap();
        this.f11742k = new HashMap();
        this.f11744m = tracker;
        this.f11737f.getProcessor().addExecutionListener(this);
    }
}
