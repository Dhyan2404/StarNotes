package androidx.work.impl;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.lifecycle.LiveData;
import androidx.work.Configuration;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.Operation;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkContinuation;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.WorkQuery;
import androidx.work.WorkRequest;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.RawWorkInfoDaoKt;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDaoKt;
import androidx.work.impl.utils.CancelWorkRunnable;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.LiveDataUtils;
import androidx.work.impl.utils.PreferenceUtils;
import androidx.work.impl.utils.PruneWorkRunnable;
import androidx.work.impl.utils.RawQueries;
import androidx.work.impl.utils.StatusRunnable;
import androidx.work.impl.utils.StopWorkRunnable;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.multiprocess.RemoteWorkManager;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import kotlinx.coroutines.flow.Flow;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class WorkManagerImpl extends WorkManager {
    public static final int CONTENT_URI_TRIGGER_API_LEVEL = 24;
    public static final int MAX_PRE_JOB_SCHEDULER_API_LEVEL = 22;
    public static final int MIN_JOB_SCHEDULER_API_LEVEL = 23;
    public static final String REMOTE_WORK_MANAGER_CLIENT = "androidx.work.multiprocess.RemoteWorkManagerClient";

    /* renamed from: l */
    public static final String f11512l = Logger.tagWithPrefix("WorkManagerImpl");

    /* renamed from: m */
    public static WorkManagerImpl f11513m = null;

    /* renamed from: n */
    public static WorkManagerImpl f11514n = null;

    /* renamed from: o */
    public static final Object f11515o = new Object();

    /* renamed from: a */
    public Context f11516a;

    /* renamed from: b */
    public Configuration f11517b;

    /* renamed from: c */
    public WorkDatabase f11518c;

    /* renamed from: d */
    public TaskExecutor f11519d;

    /* renamed from: e */
    public List<Scheduler> f11520e;

    /* renamed from: f */
    public Processor f11521f;

    /* renamed from: g */
    public PreferenceUtils f11522g;

    /* renamed from: h */
    public boolean f11523h = false;

    /* renamed from: i */
    public BroadcastReceiver.PendingResult f11524i;

    /* renamed from: j */
    public volatile RemoteWorkManager f11525j;

    /* renamed from: k */
    public final Trackers f11526k;

    /* renamed from: androidx.work.impl.WorkManagerImpl$a */
    /* loaded from: classes3.dex */
    public class RunnableC1591a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ SettableFuture f11527e;

        /* renamed from: f */
        public final /* synthetic */ PreferenceUtils f11528f;

        public RunnableC1591a(final SettableFuture val$future, final PreferenceUtils val$preferenceUtils) {
            this.f11527e = val$future;
            this.f11528f = val$preferenceUtils;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f11527e.set(Long.valueOf(this.f11528f.getLastCancelAllTimeMillis()));
            } catch (Throwable th) {
                this.f11527e.setException(th);
            }
        }
    }

    /* renamed from: androidx.work.impl.WorkManagerImpl$b */
    /* loaded from: classes3.dex */
    public class C1592b implements Function<List<WorkSpec.WorkInfoPojo>, WorkInfo> {
        public C1592b() {
        }

        @Override // androidx.arch.core.util.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public WorkInfo apply(List<WorkSpec.WorkInfoPojo> input) {
            if (input == null || input.size() <= 0) {
                return null;
            }
            return input.get(0).toWorkInfo();
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.work.impl.WorkManagerImpl$c */
    /* loaded from: classes3.dex */
    public static class C1593c {
        @DoNotInline
        /* renamed from: a */
        public static boolean m6998a(Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WorkManagerImpl(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor workTaskExecutor, @NonNull WorkDatabase workDatabase, @NonNull List<Scheduler> schedulers, @NonNull Processor processor, @NonNull Trackers trackers) {
        Context applicationContext = context.getApplicationContext();
        if (C1593c.m6998a(applicationContext)) {
            throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        Logger.setLogger(new Logger.LogcatLogger(configuration.getMinimumLoggingLevel()));
        this.f11516a = applicationContext;
        this.f11519d = workTaskExecutor;
        this.f11518c = workDatabase;
        this.f11521f = processor;
        this.f11526k = trackers;
        this.f11517b = configuration;
        this.f11520e = schedulers;
        this.f11522g = new PreferenceUtils(workDatabase);
        Schedulers.registerRescheduling(schedulers, this.f11521f, workTaskExecutor.getSerialTaskExecutor(), this.f11518c, configuration);
        this.f11519d.executeOnTaskThread(new ForceStopRunnable(applicationContext, this));
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Deprecated
    public static WorkManagerImpl getInstance() {
        synchronized (f11515o) {
            WorkManagerImpl workManagerImpl = f11513m;
            if (workManagerImpl != null) {
                return workManagerImpl;
            }
            return f11514n;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0016, code lost:
    
        r3 = r3.getApplicationContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x001c, code lost:
    
        if (androidx.work.impl.WorkManagerImpl.f11514n != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x001e, code lost:
    
        androidx.work.impl.WorkManagerImpl.f11514n = androidx.work.impl.WorkManagerImplExtKt.createWorkManager(r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0024, code lost:
    
        androidx.work.impl.WorkManagerImpl.f11513m = androidx.work.impl.WorkManagerImpl.f11514n;
     */
    @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void initialize(@androidx.annotation.NonNull android.content.Context r3, @androidx.annotation.NonNull androidx.work.Configuration r4) {
        /*
            java.lang.Object r0 = androidx.work.impl.WorkManagerImpl.f11515o
            monitor-enter(r0)
            androidx.work.impl.WorkManagerImpl r1 = androidx.work.impl.WorkManagerImpl.f11513m     // Catch: java.lang.Throwable -> L2a
            if (r1 == 0) goto L14
            androidx.work.impl.WorkManagerImpl r2 = androidx.work.impl.WorkManagerImpl.f11514n     // Catch: java.lang.Throwable -> L2a
            if (r2 != 0) goto Lc
            goto L14
        Lc:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2a
            java.lang.String r4 = "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L2a
            throw r3     // Catch: java.lang.Throwable -> L2a
        L14:
            if (r1 != 0) goto L28
            android.content.Context r3 = r3.getApplicationContext()     // Catch: java.lang.Throwable -> L2a
            androidx.work.impl.WorkManagerImpl r1 = androidx.work.impl.WorkManagerImpl.f11514n     // Catch: java.lang.Throwable -> L2a
            if (r1 != 0) goto L24
            androidx.work.impl.WorkManagerImpl r3 = androidx.work.impl.WorkManagerImplExtKt.createWorkManager(r3, r4)     // Catch: java.lang.Throwable -> L2a
            androidx.work.impl.WorkManagerImpl.f11514n = r3     // Catch: java.lang.Throwable -> L2a
        L24:
            androidx.work.impl.WorkManagerImpl r3 = androidx.work.impl.WorkManagerImpl.f11514n     // Catch: java.lang.Throwable -> L2a
            androidx.work.impl.WorkManagerImpl.f11513m = r3     // Catch: java.lang.Throwable -> L2a
        L28:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
            return
        L2a:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.WorkManagerImpl.initialize(android.content.Context, androidx.work.Configuration):void");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static boolean isInitialized() {
        return getInstance() != null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void setDelegate(@Nullable WorkManagerImpl delegate) {
        synchronized (f11515o) {
            f11513m = delegate;
        }
    }

    /* renamed from: a */
    public LiveData<List<WorkInfo>> m6995a(@NonNull List<String> workSpecIds) {
        return LiveDataUtils.dedupedMappedLiveDataFor(this.f11518c.workSpecDao().getWorkStatusPojoLiveDataForIds(workSpecIds), WorkSpec.WORK_INFO_MAPPER, this.f11519d);
    }

    /* renamed from: b */
    public final void m6996b() {
        try {
            this.f11525j = (RemoteWorkManager) Class.forName(REMOTE_WORK_MANAGER_CLIENT).getConstructor(Context.class, WorkManagerImpl.class).newInstance(this.f11516a, this);
        } catch (Throwable th) {
            Logger.get().debug(f11512l, "Unable to initialize multi-process support", th);
        }
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public WorkContinuation beginUniqueWork(@NonNull String uniqueWorkName, @NonNull ExistingWorkPolicy existingWorkPolicy, @NonNull List<OneTimeWorkRequest> work) {
        if (work.isEmpty()) {
            throw new IllegalArgumentException("beginUniqueWork needs at least one OneTimeWorkRequest.");
        }
        return new WorkContinuationImpl(this, uniqueWorkName, existingWorkPolicy, work);
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public WorkContinuation beginWith(@NonNull List<OneTimeWorkRequest> work) {
        if (work.isEmpty()) {
            throw new IllegalArgumentException("beginWith needs at least one OneTimeWorkRequest.");
        }
        return new WorkContinuationImpl(this, work);
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation cancelAllWork() {
        CancelWorkRunnable forAll = CancelWorkRunnable.forAll(this);
        this.f11519d.executeOnTaskThread(forAll);
        return forAll.getOperation();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation cancelAllWorkByTag(@NonNull final String tag) {
        CancelWorkRunnable forTag = CancelWorkRunnable.forTag(tag, this);
        this.f11519d.executeOnTaskThread(forTag);
        return forTag.getOperation();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation cancelUniqueWork(@NonNull String uniqueWorkName) {
        CancelWorkRunnable forName = CancelWorkRunnable.forName(uniqueWorkName, this, true);
        this.f11519d.executeOnTaskThread(forName);
        return forName.getOperation();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation cancelWorkById(@NonNull UUID id) {
        CancelWorkRunnable forId = CancelWorkRunnable.forId(id, this);
        this.f11519d.executeOnTaskThread(forId);
        return forId.getOperation();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public PendingIntent createCancelPendingIntent(@NonNull UUID id) {
        return PendingIntent.getService(this.f11516a, 0, SystemForegroundDispatcher.createCancelWorkIntent(this.f11516a, id.toString()), Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728);
    }

    @NonNull
    public WorkContinuationImpl createWorkContinuationForUniquePeriodicWork(@NonNull String uniqueWorkName, @NonNull ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, @NonNull PeriodicWorkRequest periodicWork) {
        return new WorkContinuationImpl(this, uniqueWorkName, existingPeriodicWorkPolicy == ExistingPeriodicWorkPolicy.KEEP ? ExistingWorkPolicy.KEEP : ExistingWorkPolicy.REPLACE, Collections.singletonList(periodicWork));
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation enqueue(@NonNull List<? extends WorkRequest> requests) {
        if (requests.isEmpty()) {
            throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
        }
        return new WorkContinuationImpl(this, requests).enqueue();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation enqueueUniquePeriodicWork(@NonNull String uniqueWorkName, @NonNull ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, @NonNull PeriodicWorkRequest periodicWork) {
        return existingPeriodicWorkPolicy == ExistingPeriodicWorkPolicy.UPDATE ? WorkerUpdater.enqueueUniquelyNamedPeriodic(this, uniqueWorkName, periodicWork) : createWorkContinuationForUniquePeriodicWork(uniqueWorkName, existingPeriodicWorkPolicy, periodicWork).enqueue();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation enqueueUniqueWork(@NonNull String uniqueWorkName, @NonNull ExistingWorkPolicy existingWorkPolicy, @NonNull List<OneTimeWorkRequest> work) {
        return new WorkContinuationImpl(this, uniqueWorkName, existingWorkPolicy, work).enqueue();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Context getApplicationContext() {
        return this.f11516a;
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Configuration getConfiguration() {
        return this.f11517b;
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public ListenableFuture<Long> getLastCancelAllTimeMillis() {
        SettableFuture create = SettableFuture.create();
        this.f11519d.executeOnTaskThread(new RunnableC1591a(create, this.f11522g));
        return create;
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public LiveData<Long> getLastCancelAllTimeMillisLiveData() {
        return this.f11522g.getLastCancelAllTimeMillisLiveData();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PreferenceUtils getPreferenceUtils() {
        return this.f11522g;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Processor getProcessor() {
        return this.f11521f;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteWorkManager getRemoteWorkManager() {
        if (this.f11525j == null) {
            synchronized (f11515o) {
                if (this.f11525j == null) {
                    m6996b();
                    if (this.f11525j == null && !TextUtils.isEmpty(this.f11517b.getDefaultProcessName())) {
                        throw new IllegalStateException("Invalid multiprocess configuration. Define an `implementation` dependency on :work:work-multiprocess library");
                    }
                }
            }
        }
        return this.f11525j;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public List<Scheduler> getSchedulers() {
        return this.f11520e;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Trackers getTrackers() {
        return this.f11526k;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WorkDatabase getWorkDatabase() {
        return this.f11518c;
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public ListenableFuture<WorkInfo> getWorkInfoById(@NonNull UUID id) {
        StatusRunnable<WorkInfo> forUUID = StatusRunnable.forUUID(this, id);
        this.f11519d.getSerialTaskExecutor().execute(forUUID);
        return forUUID.getFuture();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Flow<WorkInfo> getWorkInfoByIdFlow(@NonNull UUID id) {
        return WorkSpecDaoKt.getWorkStatusPojoFlowDataForIds(getWorkDatabase().workSpecDao(), id);
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public LiveData<WorkInfo> getWorkInfoByIdLiveData(@NonNull UUID id) {
        return LiveDataUtils.dedupedMappedLiveDataFor(this.f11518c.workSpecDao().getWorkStatusPojoLiveDataForIds(Collections.singletonList(id.toString())), new C1592b(), this.f11519d);
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public ListenableFuture<List<WorkInfo>> getWorkInfos(@NonNull WorkQuery workQuery) {
        StatusRunnable<List<WorkInfo>> forWorkQuerySpec = StatusRunnable.forWorkQuerySpec(this, workQuery);
        this.f11519d.getSerialTaskExecutor().execute(forWorkQuerySpec);
        return forWorkQuerySpec.getFuture();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public ListenableFuture<List<WorkInfo>> getWorkInfosByTag(@NonNull String tag) {
        StatusRunnable<List<WorkInfo>> forTag = StatusRunnable.forTag(this, tag);
        this.f11519d.getSerialTaskExecutor().execute(forTag);
        return forTag.getFuture();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Flow<List<WorkInfo>> getWorkInfosByTagFlow(@NonNull String tag) {
        return WorkSpecDaoKt.getWorkStatusPojoFlowForTag(this.f11518c.workSpecDao(), this.f11519d.getTaskCoroutineDispatcher(), tag);
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public LiveData<List<WorkInfo>> getWorkInfosByTagLiveData(@NonNull String tag) {
        return LiveDataUtils.dedupedMappedLiveDataFor(this.f11518c.workSpecDao().getWorkStatusPojoLiveDataForTag(tag), WorkSpec.WORK_INFO_MAPPER, this.f11519d);
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Flow<List<WorkInfo>> getWorkInfosFlow(@NonNull WorkQuery workQuery) {
        return RawWorkInfoDaoKt.getWorkInfoPojosFlow(this.f11518c.rawWorkInfoDao(), this.f11519d.getTaskCoroutineDispatcher(), RawQueries.toRawQuery(workQuery));
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public ListenableFuture<List<WorkInfo>> getWorkInfosForUniqueWork(@NonNull String uniqueWorkName) {
        StatusRunnable<List<WorkInfo>> forUniqueWork = StatusRunnable.forUniqueWork(this, uniqueWorkName);
        this.f11519d.getSerialTaskExecutor().execute(forUniqueWork);
        return forUniqueWork.getFuture();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Flow<List<WorkInfo>> getWorkInfosForUniqueWorkFlow(@NonNull String uniqueWorkName) {
        return WorkSpecDaoKt.getWorkStatusPojoFlowForName(this.f11518c.workSpecDao(), this.f11519d.getTaskCoroutineDispatcher(), uniqueWorkName);
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public LiveData<List<WorkInfo>> getWorkInfosForUniqueWorkLiveData(@NonNull String uniqueWorkName) {
        return LiveDataUtils.dedupedMappedLiveDataFor(this.f11518c.workSpecDao().getWorkStatusPojoLiveDataForName(uniqueWorkName), WorkSpec.WORK_INFO_MAPPER, this.f11519d);
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public LiveData<List<WorkInfo>> getWorkInfosLiveData(@NonNull WorkQuery workQuery) {
        return LiveDataUtils.dedupedMappedLiveDataFor(this.f11518c.rawWorkInfoDao().getWorkInfoPojosLiveData(RawQueries.toRawQuery(workQuery)), WorkSpec.WORK_INFO_MAPPER, this.f11519d);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public TaskExecutor getWorkTaskExecutor() {
        return this.f11519d;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onForceStopRunnableCompleted() {
        synchronized (f11515o) {
            this.f11523h = true;
            BroadcastReceiver.PendingResult pendingResult = this.f11524i;
            if (pendingResult != null) {
                pendingResult.finish();
                this.f11524i = null;
            }
        }
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation pruneWork() {
        PruneWorkRunnable pruneWorkRunnable = new PruneWorkRunnable(this);
        this.f11519d.executeOnTaskThread(pruneWorkRunnable);
        return pruneWorkRunnable.getOperation();
    }

    public void rescheduleEligibleWork() {
        SystemJobScheduler.cancelAll(getApplicationContext());
        getWorkDatabase().workSpecDao().resetScheduledState();
        Schedulers.schedule(getConfiguration(), getWorkDatabase(), getSchedulers());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setReschedulePendingResult(@NonNull BroadcastReceiver.PendingResult rescheduleReceiverResult) {
        synchronized (f11515o) {
            BroadcastReceiver.PendingResult pendingResult = this.f11524i;
            if (pendingResult != null) {
                pendingResult.finish();
            }
            this.f11524i = rescheduleReceiverResult;
            if (this.f11523h) {
                rescheduleReceiverResult.finish();
                this.f11524i = null;
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void stopForegroundWork(@NonNull WorkGenerationalId id) {
        this.f11519d.executeOnTaskThread(new StopWorkRunnable(this.f11521f, new StartStopToken(id), true));
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public ListenableFuture<WorkManager.UpdateResult> updateWork(@NonNull WorkRequest request) {
        return WorkerUpdater.updateWorkImpl(this, request);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static WorkManagerImpl getInstance(@NonNull Context context) {
        WorkManagerImpl workManagerImpl;
        synchronized (f11515o) {
            workManagerImpl = getInstance();
            if (workManagerImpl == null) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext instanceof Configuration.Provider) {
                    initialize(applicationContext, ((Configuration.Provider) applicationContext).getWorkManagerConfiguration());
                    workManagerImpl = getInstance(applicationContext);
                } else {
                    throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                }
            }
        }
        return workManagerImpl;
    }
}
