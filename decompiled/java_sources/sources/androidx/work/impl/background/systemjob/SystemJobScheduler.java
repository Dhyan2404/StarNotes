package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Consumer;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoKt;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.IdGenerator;
import com.sunia.HTREnginev2.r6n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

@RequiresApi(23)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class SystemJobScheduler implements Scheduler {

    /* renamed from: j */
    public static final String f11671j = Logger.tagWithPrefix("SystemJobScheduler");

    /* renamed from: e */
    public final Context f11672e;

    /* renamed from: f */
    public final JobScheduler f11673f;

    /* renamed from: g */
    public final r6n f11674g;

    /* renamed from: h */
    public final WorkDatabase f11675h;

    /* renamed from: i */
    public final Configuration f11676i;

    public SystemJobScheduler(@NonNull Context context, @NonNull WorkDatabase workDatabase, @NonNull Configuration configuration) {
        this(context, workDatabase, configuration, (JobScheduler) context.getSystemService("jobscheduler"), new r6n(context, configuration.getClock()));
    }

    /* renamed from: a */
    public static void m7070a(@NonNull JobScheduler jobScheduler, int id) {
        try {
            jobScheduler.cancel(id);
        } catch (Throwable th) {
            Logger.get().error(f11671j, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(id)), th);
        }
    }

    @Nullable
    /* renamed from: b */
    public static List<Integer> m7071b(@NonNull Context context, @NonNull JobScheduler jobScheduler, @NonNull String workSpecId) {
        List<JobInfo> m7072c = m7072c(context, jobScheduler);
        if (m7072c == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : m7072c) {
            WorkGenerationalId m7073d = m7073d(jobInfo);
            if (m7073d != null && workSpecId.equals(m7073d.getWorkSpecId())) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: c */
    public static List<JobInfo> m7072c(@NonNull Context context, @NonNull JobScheduler jobScheduler) {
        List<JobInfo> list;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            Logger.get().error(f11671j, "getAllPendingJobs() is not reliable on this device.", th);
            list = null;
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : list) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    public static void cancelAll(@NonNull Context context) {
        List<JobInfo> m7072c;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null || (m7072c = m7072c(context, jobScheduler)) == null || m7072c.isEmpty()) {
            return;
        }
        Iterator<JobInfo> it2 = m7072c.iterator();
        while (it2.hasNext()) {
            m7070a(jobScheduler, it2.next().getId());
        }
    }

    @Nullable
    /* renamed from: d */
    public static WorkGenerationalId m7073d(@NonNull JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (!extras.containsKey(r6n.f82825d)) {
                return null;
            }
            return new WorkGenerationalId(extras.getString(r6n.f82825d), extras.getInt(r6n.f82827f, 0));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    public static boolean reconcileJobs(@NonNull Context context, @NonNull WorkDatabase workDatabase) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> m7072c = m7072c(context, jobScheduler);
        List<String> workSpecIds = workDatabase.systemIdInfoDao().getWorkSpecIds();
        boolean z = false;
        HashSet hashSet = new HashSet(m7072c != null ? m7072c.size() : 0);
        if (m7072c != null && !m7072c.isEmpty()) {
            for (JobInfo jobInfo : m7072c) {
                WorkGenerationalId m7073d = m7073d(jobInfo);
                if (m7073d != null) {
                    hashSet.add(m7073d.getWorkSpecId());
                } else {
                    m7070a(jobScheduler, jobInfo.getId());
                }
            }
        }
        Iterator<String> it2 = workSpecIds.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            if (!hashSet.contains(it2.next())) {
                Logger.get().debug(f11671j, "Reconciling jobs");
                z = true;
                break;
            }
        }
        if (z) {
            workDatabase.beginTransaction();
            try {
                WorkSpecDao workSpecDao = workDatabase.workSpecDao();
                Iterator<String> it3 = workSpecIds.iterator();
                while (it3.hasNext()) {
                    workSpecDao.markWorkSpecScheduled(it3.next(), -1L);
                }
                workDatabase.setTransactionSuccessful();
            } finally {
                workDatabase.endTransaction();
            }
        }
        return z;
    }

    @Override // androidx.work.impl.Scheduler
    public void cancel(@NonNull String workSpecId) {
        List<Integer> m7071b = m7071b(this.f11672e, this.f11673f, workSpecId);
        if (m7071b == null || m7071b.isEmpty()) {
            return;
        }
        Iterator<Integer> it2 = m7071b.iterator();
        while (it2.hasNext()) {
            m7070a(this.f11673f, it2.next().intValue());
        }
        this.f11675h.systemIdInfoDao().removeSystemIdInfo(workSpecId);
    }

    @Override // androidx.work.impl.Scheduler
    public boolean hasLimitedSchedulingSlots() {
        return true;
    }

    @Override // androidx.work.impl.Scheduler
    public void schedule(@NonNull WorkSpec... workSpecs) {
        IdGenerator idGenerator = new IdGenerator(this.f11675h);
        for (WorkSpec workSpec : workSpecs) {
            this.f11675h.beginTransaction();
            try {
                WorkSpec workSpec2 = this.f11675h.workSpecDao().getWorkSpec(workSpec.id);
                if (workSpec2 == null) {
                    Logger.get().warning(f11671j, "Skipping scheduling " + workSpec.id + " because it's no longer in the DB");
                    this.f11675h.setTransactionSuccessful();
                } else if (workSpec2.state != WorkInfo.State.ENQUEUED) {
                    Logger.get().warning(f11671j, "Skipping scheduling " + workSpec.id + " because it is no longer enqueued");
                    this.f11675h.setTransactionSuccessful();
                } else {
                    WorkGenerationalId generationalId = WorkSpecKt.generationalId(workSpec);
                    SystemIdInfo systemIdInfo = this.f11675h.systemIdInfoDao().getSystemIdInfo(generationalId);
                    int nextJobSchedulerIdWithRange = systemIdInfo != null ? systemIdInfo.systemId : idGenerator.nextJobSchedulerIdWithRange(this.f11676i.getMinJobSchedulerId(), this.f11676i.getMaxJobSchedulerId());
                    if (systemIdInfo == null) {
                        this.f11675h.systemIdInfoDao().insertSystemIdInfo(SystemIdInfoKt.systemIdInfo(generationalId, nextJobSchedulerIdWithRange));
                    }
                    scheduleInternal(workSpec, nextJobSchedulerIdWithRange);
                    this.f11675h.setTransactionSuccessful();
                }
            } finally {
                this.f11675h.endTransaction();
            }
        }
    }

    @VisibleForTesting
    public void scheduleInternal(@NonNull WorkSpec workSpec, int jobId) {
        JobInfo m56927a = this.f11674g.m56927a(workSpec, jobId);
        Logger logger = Logger.get();
        String str = f11671j;
        logger.debug(str, "Scheduling work ID " + workSpec.id + "Job ID " + jobId);
        try {
            if (this.f11673f.schedule(m56927a) == 0) {
                Logger.get().warning(str, "Unable to schedule work ID " + workSpec.id);
                if (workSpec.expedited && workSpec.outOfQuotaPolicy == OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST) {
                    workSpec.expedited = false;
                    Logger.get().debug(str, String.format("Scheduling a non-expedited job (work ID %s)", workSpec.id));
                    scheduleInternal(workSpec, jobId);
                }
            }
        } catch (IllegalStateException e) {
            List<JobInfo> m7072c = m7072c(this.f11672e, this.f11673f);
            String format = String.format(Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(m7072c != null ? m7072c.size() : 0), Integer.valueOf(this.f11675h.workSpecDao().getScheduledWork().size()), Integer.valueOf(this.f11676i.getMaxSchedulerLimit()));
            Logger.get().error(f11671j, format);
            IllegalStateException illegalStateException = new IllegalStateException(format, e);
            Consumer<Throwable> schedulingExceptionHandler = this.f11676i.getSchedulingExceptionHandler();
            if (schedulingExceptionHandler == null) {
                throw illegalStateException;
            }
            schedulingExceptionHandler.accept(illegalStateException);
        } catch (Throwable th) {
            Logger.get().error(f11671j, "Unable to schedule " + workSpec, th);
        }
    }

    @VisibleForTesting
    public SystemJobScheduler(@NonNull Context context, @NonNull WorkDatabase workDatabase, @NonNull Configuration configuration, @NonNull JobScheduler jobScheduler, @NonNull r6n systemJobInfoConverter) {
        this.f11672e = context;
        this.f11673f = jobScheduler;
        this.f11674g = systemJobInfoConverter;
        this.f11675h = workDatabase;
        this.f11676i = configuration;
    }
}
