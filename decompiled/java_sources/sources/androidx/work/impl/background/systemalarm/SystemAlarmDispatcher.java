package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkLauncher;
import androidx.work.impl.WorkLauncherImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkTimer;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class SystemAlarmDispatcher implements ExecutionListener {

    /* renamed from: p */
    public static final String f11640p = Logger.tagWithPrefix("SystemAlarmDispatcher");

    /* renamed from: q */
    public static final String f11641q = "ProcessCommand";

    /* renamed from: r */
    public static final String f11642r = "KEY_START_ID";

    /* renamed from: s */
    public static final int f11643s = 0;

    /* renamed from: e */
    public final Context f11644e;

    /* renamed from: f */
    public final TaskExecutor f11645f;

    /* renamed from: g */
    public final WorkTimer f11646g;

    /* renamed from: h */
    public final Processor f11647h;

    /* renamed from: i */
    public final WorkManagerImpl f11648i;

    /* renamed from: j */
    public final CommandHandler f11649j;

    /* renamed from: k */
    public final List<Intent> f11650k;

    /* renamed from: l */
    public Intent f11651l;

    /* renamed from: m */
    @Nullable
    public InterfaceC1602c f11652m;

    /* renamed from: n */
    public StartStopTokens f11653n;

    /* renamed from: o */
    public final WorkLauncher f11654o;

    /* renamed from: androidx.work.impl.background.systemalarm.SystemAlarmDispatcher$a */
    /* loaded from: classes3.dex */
    public class RunnableC1600a implements Runnable {
        public RunnableC1600a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Executor mainThreadExecutor;
            RunnableC1603d runnableC1603d;
            synchronized (SystemAlarmDispatcher.this.f11650k) {
                SystemAlarmDispatcher systemAlarmDispatcher = SystemAlarmDispatcher.this;
                systemAlarmDispatcher.f11651l = systemAlarmDispatcher.f11650k.get(0);
            }
            Intent intent = SystemAlarmDispatcher.this.f11651l;
            if (intent != null) {
                String action = intent.getAction();
                int intExtra = SystemAlarmDispatcher.this.f11651l.getIntExtra(SystemAlarmDispatcher.f11642r, 0);
                Logger logger = Logger.get();
                String str = SystemAlarmDispatcher.f11640p;
                logger.debug(str, "Processing command " + SystemAlarmDispatcher.this.f11651l + ", " + intExtra);
                PowerManager.WakeLock newWakeLock = WakeLocks.newWakeLock(SystemAlarmDispatcher.this.f11644e, action + " (" + intExtra + MotionUtils.f31762d);
                try {
                    Logger.get().debug(str, "Acquiring operation wake lock (" + action + ") " + newWakeLock);
                    newWakeLock.acquire();
                    SystemAlarmDispatcher systemAlarmDispatcher2 = SystemAlarmDispatcher.this;
                    systemAlarmDispatcher2.f11649j.m7047p(systemAlarmDispatcher2.f11651l, intExtra, systemAlarmDispatcher2);
                    Logger.get().debug(str, "Releasing operation wake lock (" + action + ") " + newWakeLock);
                    newWakeLock.release();
                    mainThreadExecutor = SystemAlarmDispatcher.this.f11645f.getMainThreadExecutor();
                    runnableC1603d = new RunnableC1603d(SystemAlarmDispatcher.this);
                } catch (Throwable th) {
                    try {
                        Logger logger2 = Logger.get();
                        String str2 = SystemAlarmDispatcher.f11640p;
                        logger2.error(str2, "Unexpected error in onHandleIntent", th);
                        Logger.get().debug(str2, "Releasing operation wake lock (" + action + ") " + newWakeLock);
                        newWakeLock.release();
                        mainThreadExecutor = SystemAlarmDispatcher.this.f11645f.getMainThreadExecutor();
                        runnableC1603d = new RunnableC1603d(SystemAlarmDispatcher.this);
                    } catch (Throwable th2) {
                        Logger.get().debug(SystemAlarmDispatcher.f11640p, "Releasing operation wake lock (" + action + ") " + newWakeLock);
                        newWakeLock.release();
                        SystemAlarmDispatcher.this.f11645f.getMainThreadExecutor().execute(new RunnableC1603d(SystemAlarmDispatcher.this));
                        throw th2;
                    }
                }
                mainThreadExecutor.execute(runnableC1603d);
            }
        }
    }

    /* renamed from: androidx.work.impl.background.systemalarm.SystemAlarmDispatcher$b */
    /* loaded from: classes3.dex */
    public static class RunnableC1601b implements Runnable {

        /* renamed from: e */
        public final SystemAlarmDispatcher f11656e;

        /* renamed from: f */
        public final Intent f11657f;

        /* renamed from: g */
        public final int f11658g;

        public RunnableC1601b(@NonNull SystemAlarmDispatcher dispatcher, @NonNull Intent intent, int startId) {
            this.f11656e = dispatcher;
            this.f11657f = intent;
            this.f11658g = startId;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f11656e.add(this.f11657f, this.f11658g);
        }
    }

    /* renamed from: androidx.work.impl.background.systemalarm.SystemAlarmDispatcher$c */
    /* loaded from: classes3.dex */
    public interface InterfaceC1602c {
        void onAllCommandsCompleted();
    }

    /* renamed from: androidx.work.impl.background.systemalarm.SystemAlarmDispatcher$d */
    /* loaded from: classes3.dex */
    public static class RunnableC1603d implements Runnable {

        /* renamed from: e */
        public final SystemAlarmDispatcher f11659e;

        public RunnableC1603d(@NonNull SystemAlarmDispatcher dispatcher) {
            this.f11659e = dispatcher;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f11659e.m7057b();
        }
    }

    public SystemAlarmDispatcher(@NonNull Context context) {
        this(context, null, null, null);
    }

    /* renamed from: a */
    public final void m7056a() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    @MainThread
    public boolean add(@NonNull final Intent intent, final int startId) {
        Logger logger = Logger.get();
        String str = f11640p;
        logger.debug(str, "Adding command " + intent + " (" + startId + MotionUtils.f31762d);
        m7056a();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            Logger.get().warning(str, "Unknown command. Ignoring");
            return false;
        }
        if (CommandHandler.f11598n.equals(action) && m7063h(CommandHandler.f11598n)) {
            return false;
        }
        intent.putExtra(f11642r, startId);
        synchronized (this.f11650k) {
            boolean z = this.f11650k.isEmpty() ? false : true;
            this.f11650k.add(intent);
            if (!z) {
                m7065j();
            }
        }
        return true;
    }

    @MainThread
    /* renamed from: b */
    public void m7057b() {
        Logger logger = Logger.get();
        String str = f11640p;
        logger.debug(str, "Checking if commands are complete.");
        m7056a();
        synchronized (this.f11650k) {
            if (this.f11651l != null) {
                Logger.get().debug(str, "Removing command " + this.f11651l);
                if (!this.f11650k.remove(0).equals(this.f11651l)) {
                    throw new IllegalStateException("Dequeue-d command is not the first.");
                }
                this.f11651l = null;
            }
            SerialExecutor serialTaskExecutor = this.f11645f.getSerialTaskExecutor();
            if (!this.f11649j.m7046o() && this.f11650k.isEmpty() && !serialTaskExecutor.hasPendingTasks()) {
                Logger.get().debug(str, "No more commands & intents.");
                InterfaceC1602c interfaceC1602c = this.f11652m;
                if (interfaceC1602c != null) {
                    interfaceC1602c.onAllCommandsCompleted();
                }
            } else if (!this.f11650k.isEmpty()) {
                m7065j();
            }
        }
    }

    /* renamed from: c */
    public Processor m7058c() {
        return this.f11647h;
    }

    /* renamed from: d */
    public TaskExecutor m7059d() {
        return this.f11645f;
    }

    /* renamed from: e */
    public WorkManagerImpl m7060e() {
        return this.f11648i;
    }

    /* renamed from: f */
    public WorkTimer m7061f() {
        return this.f11646g;
    }

    /* renamed from: g */
    public WorkLauncher m7062g() {
        return this.f11654o;
    }

    @MainThread
    /* renamed from: h */
    public final boolean m7063h(@NonNull String action) {
        m7056a();
        synchronized (this.f11650k) {
            Iterator<Intent> it2 = this.f11650k.iterator();
            while (it2.hasNext()) {
                if (action.equals(it2.next().getAction())) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: i */
    public void m7064i() {
        Logger.get().debug(f11640p, "Destroying SystemAlarmDispatcher");
        this.f11647h.removeExecutionListener(this);
        this.f11652m = null;
    }

    @MainThread
    /* renamed from: j */
    public final void m7065j() {
        m7056a();
        PowerManager.WakeLock newWakeLock = WakeLocks.newWakeLock(this.f11644e, f11641q);
        try {
            newWakeLock.acquire();
            this.f11648i.getWorkTaskExecutor().executeOnTaskThread(new RunnableC1600a());
        } finally {
            newWakeLock.release();
        }
    }

    /* renamed from: k */
    public void m7066k(@NonNull InterfaceC1602c listener) {
        if (this.f11652m != null) {
            Logger.get().error(f11640p, "A completion listener for SystemAlarmDispatcher already exists.");
        } else {
            this.f11652m = listener;
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public void onExecuted(@NonNull WorkGenerationalId id, boolean needsReschedule) {
        this.f11645f.getMainThreadExecutor().execute(new RunnableC1601b(this, CommandHandler.m7032c(this.f11644e, id, needsReschedule), 0));
    }

    @VisibleForTesting
    public SystemAlarmDispatcher(@NonNull Context context, @Nullable Processor processor, @Nullable WorkManagerImpl workManager, @Nullable WorkLauncher launcher) {
        Context applicationContext = context.getApplicationContext();
        this.f11644e = applicationContext;
        this.f11653n = new StartStopTokens();
        workManager = workManager == null ? WorkManagerImpl.getInstance(context) : workManager;
        this.f11648i = workManager;
        this.f11649j = new CommandHandler(applicationContext, workManager.getConfiguration().getClock(), this.f11653n);
        this.f11646g = new WorkTimer(workManager.getConfiguration().getRunnableScheduler());
        processor = processor == null ? workManager.getProcessor() : processor;
        this.f11647h = processor;
        TaskExecutor workTaskExecutor = workManager.getWorkTaskExecutor();
        this.f11645f = workTaskExecutor;
        this.f11654o = launcher == null ? new WorkLauncherImpl(processor, workTaskExecutor) : launcher;
        processor.addExecutionListener(this);
        this.f11650k = new ArrayList();
        this.f11651l = null;
    }
}
