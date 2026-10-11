package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.work.Configuration;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class Processor implements ForegroundProcessor {

    /* renamed from: l */
    public static final String f11456l = Logger.tagWithPrefix("Processor");

    /* renamed from: m */
    public static final String f11457m = "ProcessorForegroundLck";

    /* renamed from: b */
    public Context f11459b;

    /* renamed from: c */
    public Configuration f11460c;

    /* renamed from: d */
    public TaskExecutor f11461d;

    /* renamed from: e */
    public WorkDatabase f11462e;

    /* renamed from: g */
    public Map<String, WorkerWrapper> f11464g = new HashMap();

    /* renamed from: f */
    public Map<String, WorkerWrapper> f11463f = new HashMap();

    /* renamed from: i */
    public Set<String> f11466i = new HashSet();

    /* renamed from: j */
    public final List<ExecutionListener> f11467j = new ArrayList();

    /* renamed from: a */
    @Nullable
    public PowerManager.WakeLock f11458a = null;

    /* renamed from: k */
    public final Object f11468k = new Object();

    /* renamed from: h */
    public Map<String, Set<StartStopToken>> f11465h = new HashMap();

    public Processor(@NonNull Context appContext, @NonNull Configuration configuration, @NonNull TaskExecutor workTaskExecutor, @NonNull WorkDatabase workDatabase) {
        this.f11459b = appContext;
        this.f11460c = configuration;
        this.f11461d = workTaskExecutor;
        this.f11462e = workDatabase;
    }

    /* renamed from: f */
    public static boolean m6964f(@NonNull String id, @Nullable WorkerWrapper wrapper, int stopReason) {
        if (wrapper == null) {
            Logger.get().debug(f11456l, "WorkerWrapper could not be found for " + id);
            return false;
        }
        wrapper.interrupt(stopReason);
        Logger.get().debug(f11456l, "WorkerWrapper interrupted for " + id);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m6965g(WorkGenerationalId workGenerationalId, boolean z) {
        synchronized (this.f11468k) {
            Iterator<ExecutionListener> it2 = this.f11467j.iterator();
            while (it2.hasNext()) {
                it2.next().onExecuted(workGenerationalId, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ WorkSpec m6966h(ArrayList arrayList, String str) throws Exception {
        arrayList.addAll(this.f11462e.workTagDao().getTagsForWorkSpecId(str));
        return this.f11462e.workSpecDao().getWorkSpec(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    public /* synthetic */ void m6967i(ListenableFuture listenableFuture, WorkerWrapper workerWrapper) {
        boolean z;
        try {
            z = ((Boolean) listenableFuture.get()).booleanValue();
        } catch (InterruptedException | ExecutionException unused) {
            z = true;
        }
        m6970j(workerWrapper, z);
    }

    public void addExecutionListener(@NonNull ExecutionListener executionListener) {
        synchronized (this.f11468k) {
            this.f11467j.add(executionListener);
        }
    }

    @Nullable
    /* renamed from: d */
    public final WorkerWrapper m6968d(@NonNull String id) {
        WorkerWrapper remove = this.f11463f.remove(id);
        boolean z = remove != null;
        if (!z) {
            remove = this.f11464g.remove(id);
        }
        this.f11465h.remove(id);
        if (z) {
            m6972l();
        }
        return remove;
    }

    @Nullable
    /* renamed from: e */
    public final WorkerWrapper m6969e(@NonNull String workSpecId) {
        WorkerWrapper workerWrapper = this.f11463f.get(workSpecId);
        return workerWrapper == null ? this.f11464g.get(workSpecId) : workerWrapper;
    }

    @Nullable
    public WorkSpec getRunningWorkSpec(@NonNull String workSpecId) {
        synchronized (this.f11468k) {
            WorkerWrapper m6969e = m6969e(workSpecId);
            if (m6969e == null) {
                return null;
            }
            return m6969e.getWorkSpec();
        }
    }

    public boolean hasWork() {
        boolean z;
        synchronized (this.f11468k) {
            z = (this.f11464g.isEmpty() && this.f11463f.isEmpty()) ? false : true;
        }
        return z;
    }

    public boolean isCancelled(@NonNull String id) {
        boolean contains;
        synchronized (this.f11468k) {
            contains = this.f11466i.contains(id);
        }
        return contains;
    }

    public boolean isEnqueued(@NonNull String workSpecId) {
        boolean z;
        synchronized (this.f11468k) {
            z = m6969e(workSpecId) != null;
        }
        return z;
    }

    /* renamed from: j */
    public final void m6970j(@NonNull WorkerWrapper wrapper, boolean needsReschedule) {
        synchronized (this.f11468k) {
            WorkGenerationalId workGenerationalId = wrapper.getWorkGenerationalId();
            String workSpecId = workGenerationalId.getWorkSpecId();
            if (m6969e(workSpecId) == wrapper) {
                m6968d(workSpecId);
            }
            Logger.get().debug(f11456l, getClass().getSimpleName() + " " + workSpecId + " executed; reschedule = " + needsReschedule);
            Iterator<ExecutionListener> it2 = this.f11467j.iterator();
            while (it2.hasNext()) {
                it2.next().onExecuted(workGenerationalId, needsReschedule);
            }
        }
    }

    /* renamed from: k */
    public final void m6971k(@NonNull final WorkGenerationalId id, final boolean needsReschedule) {
        this.f11461d.getMainThreadExecutor().execute(new Runnable() { // from class: com.sunia.HTREnginev2.c8l
            @Override // java.lang.Runnable
            public final void run() {
                Processor.this.m6965g(id, needsReschedule);
            }
        });
    }

    /* renamed from: l */
    public final void m6972l() {
        synchronized (this.f11468k) {
            if (!(!this.f11463f.isEmpty())) {
                try {
                    this.f11459b.startService(SystemForegroundDispatcher.createStopForegroundIntent(this.f11459b));
                } catch (Throwable th) {
                    Logger.get().error(f11456l, "Unable to stop foreground service", th);
                }
                PowerManager.WakeLock wakeLock = this.f11458a;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.f11458a = null;
                }
            }
        }
    }

    public void removeExecutionListener(@NonNull ExecutionListener executionListener) {
        synchronized (this.f11468k) {
            this.f11467j.remove(executionListener);
        }
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public void startForeground(@NonNull String workSpecId, @NonNull ForegroundInfo foregroundInfo) {
        synchronized (this.f11468k) {
            Logger.get().info(f11456l, "Moving WorkSpec (" + workSpecId + ") to the foreground");
            WorkerWrapper remove = this.f11464g.remove(workSpecId);
            if (remove != null) {
                if (this.f11458a == null) {
                    PowerManager.WakeLock newWakeLock = WakeLocks.newWakeLock(this.f11459b, f11457m);
                    this.f11458a = newWakeLock;
                    newWakeLock.acquire();
                }
                this.f11463f.put(workSpecId, remove);
                ContextCompat.startForegroundService(this.f11459b, SystemForegroundDispatcher.createStartForegroundIntent(this.f11459b, remove.getWorkGenerationalId(), foregroundInfo));
            }
        }
    }

    public boolean startWork(@NonNull StartStopToken id) {
        return startWork(id, null);
    }

    public boolean stopAndCancelWork(@NonNull String id, int reason) {
        WorkerWrapper m6968d;
        synchronized (this.f11468k) {
            Logger.get().debug(f11456l, "Processor cancelling " + id);
            this.f11466i.add(id);
            m6968d = m6968d(id);
        }
        return m6964f(id, m6968d, reason);
    }

    public boolean stopForegroundWork(@NonNull StartStopToken token, int reason) {
        WorkerWrapper m6968d;
        String workSpecId = token.getId().getWorkSpecId();
        synchronized (this.f11468k) {
            m6968d = m6968d(workSpecId);
        }
        return m6964f(workSpecId, m6968d, reason);
    }

    public boolean stopWork(@NonNull StartStopToken runId, int reason) {
        String workSpecId = runId.getId().getWorkSpecId();
        synchronized (this.f11468k) {
            if (this.f11463f.get(workSpecId) == null) {
                Set<StartStopToken> set = this.f11465h.get(workSpecId);
                if (set != null && set.contains(runId)) {
                    return m6964f(workSpecId, m6968d(workSpecId), reason);
                }
                return false;
            }
            Logger.get().debug(f11456l, "Ignored stopWork. WorkerWrapper " + workSpecId + " is in foreground");
            return false;
        }
    }

    public boolean startWork(@NonNull StartStopToken startStopToken, @Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
        WorkGenerationalId id = startStopToken.getId();
        final String workSpecId = id.getWorkSpecId();
        final ArrayList arrayList = new ArrayList();
        WorkSpec workSpec = (WorkSpec) this.f11462e.runInTransaction(new Callable() { // from class: com.sunia.HTREnginev2.a8l
            @Override // java.util.concurrent.Callable
            public final Object call() {
                WorkSpec m6966h;
                m6966h = Processor.this.m6966h(arrayList, workSpecId);
                return m6966h;
            }
        });
        if (workSpec == null) {
            Logger.get().warning(f11456l, "Didn't find WorkSpec for id " + id);
            m6971k(id, false);
            return false;
        }
        synchronized (this.f11468k) {
            if (isEnqueued(workSpecId)) {
                Set<StartStopToken> set = this.f11465h.get(workSpecId);
                if (set.iterator().next().getId().getGeneration() == id.getGeneration()) {
                    set.add(startStopToken);
                    Logger.get().debug(f11456l, "Work " + id + " is already enqueued for processing");
                } else {
                    m6971k(id, false);
                }
                return false;
            }
            if (workSpec.getGeneration() != id.getGeneration()) {
                m6971k(id, false);
                return false;
            }
            final WorkerWrapper build = new WorkerWrapper.Builder(this.f11459b, this.f11460c, this.f11461d, this, this.f11462e, workSpec, arrayList).withRuntimeExtras(runtimeExtras).build();
            final ListenableFuture<Boolean> future = build.getFuture();
            future.addListener(new Runnable() { // from class: com.sunia.HTREnginev2.b8l
                @Override // java.lang.Runnable
                public final void run() {
                    Processor.this.m6967i(future, build);
                }
            }, this.f11461d.getMainThreadExecutor());
            this.f11464g.put(workSpecId, build);
            HashSet hashSet = new HashSet();
            hashSet.add(startStopToken);
            this.f11465h.put(workSpecId, hashSet);
            this.f11461d.getSerialTaskExecutor().execute(build);
            Logger.get().debug(f11456l, getClass().getSimpleName() + ": processing " + id);
            return true;
        }
    }
}
