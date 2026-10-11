package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import androidx.core.os.UserManagerCompat;
import androidx.core.util.Consumer;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabasePathHelper;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import com.sunia.HTREnginev2.wsg;
import java.util.List;
import java.util.concurrent.TimeUnit;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class ForceStopRunnable implements Runnable {

    /* renamed from: j */
    @VisibleForTesting
    public static final String f11922j = "ACTION_FORCE_STOP_RESCHEDULE";

    /* renamed from: k */
    @VisibleForTesting
    public static final int f11923k = 3;

    /* renamed from: l */
    public static final int f11924l = -1;

    /* renamed from: m */
    public static final long f11925m = 300;

    /* renamed from: e */
    public final Context f11927e;

    /* renamed from: f */
    public final WorkManagerImpl f11928f;

    /* renamed from: g */
    public final PreferenceUtils f11929g;

    /* renamed from: h */
    public int f11930h = 0;

    /* renamed from: i */
    public static final String f11921i = Logger.tagWithPrefix("ForceStopRunnable");

    /* renamed from: n */
    public static final long f11926n = TimeUnit.DAYS.toMillis(3650);

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes3.dex */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* renamed from: a */
        public static final String f11931a = Logger.tagWithPrefix("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NonNull Context context, @Nullable Intent intent) {
            if (intent == null || !ForceStopRunnable.f11922j.equals(intent.getAction())) {
                return;
            }
            Logger.get().verbose(f11931a, "Rescheduling alarm that keeps track of force-stops.");
            ForceStopRunnable.m7141c(context);
        }
    }

    public ForceStopRunnable(@NonNull Context context, @NonNull WorkManagerImpl workManager) {
        this.f11927e = context.getApplicationContext();
        this.f11928f = workManager;
        this.f11929g = workManager.getPreferenceUtils();
    }

    @VisibleForTesting
    /* renamed from: a */
    public static Intent m7139a(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
        intent.setAction(f11922j);
        return intent;
    }

    /* renamed from: b */
    public static PendingIntent m7140b(Context context, int flags) {
        return PendingIntent.getBroadcast(context, -1, m7139a(context), flags);
    }

    @SuppressLint({"ClassVerificationFailure"})
    /* renamed from: c */
    public static void m7141c(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent m7140b = m7140b(context, Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728);
        long currentTimeMillis = System.currentTimeMillis() + f11926n;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis, m7140b);
        }
    }

    @VisibleForTesting
    public boolean cleanUp() {
        boolean reconcileJobs = SystemJobScheduler.reconcileJobs(this.f11927e, this.f11928f.getWorkDatabase());
        WorkDatabase workDatabase = this.f11928f.getWorkDatabase();
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        WorkProgressDao workProgressDao = workDatabase.workProgressDao();
        workDatabase.beginTransaction();
        try {
            List<WorkSpec> runningWork = workSpecDao.getRunningWork();
            boolean z = (runningWork == null || runningWork.isEmpty()) ? false : true;
            if (z) {
                for (WorkSpec workSpec : runningWork) {
                    workSpecDao.setState(WorkInfo.State.ENQUEUED, workSpec.id);
                    workSpecDao.setStopReason(workSpec.id, WorkInfo.STOP_REASON_UNKNOWN);
                    workSpecDao.markWorkSpecScheduled(workSpec.id, -1L);
                }
            }
            workProgressDao.deleteAll();
            workDatabase.setTransactionSuccessful();
            return z || reconcileJobs;
        } finally {
            workDatabase.endTransaction();
        }
    }

    @VisibleForTesting
    public void forceStopRunnable() {
        boolean cleanUp = cleanUp();
        if (shouldRescheduleWorkers()) {
            Logger.get().debug(f11921i, "Rescheduling Workers.");
            this.f11928f.rescheduleEligibleWork();
            this.f11928f.getPreferenceUtils().setNeedsReschedule(false);
        } else if (isForceStopped()) {
            Logger.get().debug(f11921i, "Application was force-stopped, rescheduling.");
            this.f11928f.rescheduleEligibleWork();
            this.f11929g.setLastForceStopEventMillis(this.f11928f.getConfiguration().getClock().currentTimeMillis());
        } else if (cleanUp) {
            Logger.get().debug(f11921i, "Found unfinished work, scheduling it.");
            Schedulers.schedule(this.f11928f.getConfiguration(), this.f11928f.getWorkDatabase(), this.f11928f.getSchedulers());
        }
    }

    @SuppressLint({"ClassVerificationFailure"})
    @VisibleForTesting
    public boolean isForceStopped() {
        List historicalProcessExitReasons;
        int reason;
        long timestamp;
        try {
            int i = Build.VERSION.SDK_INT;
            PendingIntent m7140b = m7140b(this.f11927e, i >= 31 ? 570425344 : 536870912);
            if (i >= 30) {
                if (m7140b != null) {
                    m7140b.cancel();
                }
                historicalProcessExitReasons = ((ActivityManager) this.f11927e.getSystemService(ActivityChooserModel.f1429r)).getHistoricalProcessExitReasons(null, 0, 0);
                if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                    long lastForceStopEventMillis = this.f11929g.getLastForceStopEventMillis();
                    for (int i2 = 0; i2 < historicalProcessExitReasons.size(); i2++) {
                        ApplicationExitInfo m58135a = wsg.m58135a(historicalProcessExitReasons.get(i2));
                        reason = m58135a.getReason();
                        if (reason == 10) {
                            timestamp = m58135a.getTimestamp();
                            if (timestamp >= lastForceStopEventMillis) {
                                return true;
                            }
                        }
                    }
                }
            } else if (m7140b == null) {
                m7141c(this.f11927e);
                return true;
            }
            return false;
        } catch (IllegalArgumentException | SecurityException e) {
            Logger.get().warning(f11921i, "Ignoring exception", e);
            return true;
        }
    }

    @VisibleForTesting
    public boolean multiProcessChecks() {
        Configuration configuration = this.f11928f.getConfiguration();
        if (TextUtils.isEmpty(configuration.getDefaultProcessName())) {
            Logger.get().debug(f11921i, "The default process name was not specified.");
            return true;
        }
        boolean isDefaultProcess = ProcessUtils.isDefaultProcess(this.f11927e, configuration);
        Logger.get().debug(f11921i, "Is default app process = " + isDefaultProcess);
        return isDefaultProcess;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (multiProcessChecks()) {
                while (true) {
                    try {
                        WorkDatabasePathHelper.migrateDatabase(this.f11927e);
                        Logger.get().debug(f11921i, "Performing cleanup operations.");
                        try {
                            forceStopRunnable();
                            break;
                        } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteDiskIOException | SQLiteTableLockedException e) {
                            int i = this.f11930h + 1;
                            this.f11930h = i;
                            if (i >= 3) {
                                String str = UserManagerCompat.isUserUnlocked(this.f11927e) ? "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store." : "WorkManager can't be accessed from direct boot, because credential encrypted storage isn't accessible.\nDon't access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot";
                                Logger logger = Logger.get();
                                String str2 = f11921i;
                                logger.error(str2, str, e);
                                IllegalStateException illegalStateException = new IllegalStateException(str, e);
                                Consumer<Throwable> initializationExceptionHandler = this.f11928f.getConfiguration().getInitializationExceptionHandler();
                                if (initializationExceptionHandler == null) {
                                    throw illegalStateException;
                                }
                                Logger.get().debug(str2, "Routing exception to the specified exception handler", illegalStateException);
                                initializationExceptionHandler.accept(illegalStateException);
                            } else {
                                Logger.get().debug(f11921i, "Retrying after " + (i * 300), e);
                                sleep(((long) this.f11930h) * 300);
                            }
                        }
                    } catch (SQLiteException e2) {
                        Logger.get().error(f11921i, "Unexpected SQLite exception during migrations");
                        IllegalStateException illegalStateException2 = new IllegalStateException("Unexpected SQLite exception during migrations", e2);
                        Consumer<Throwable> initializationExceptionHandler2 = this.f11928f.getConfiguration().getInitializationExceptionHandler();
                        if (initializationExceptionHandler2 == null) {
                            throw illegalStateException2;
                        }
                        initializationExceptionHandler2.accept(illegalStateException2);
                    }
                }
            }
        } finally {
            this.f11928f.onForceStopRunnableCompleted();
        }
    }

    @VisibleForTesting
    public boolean shouldRescheduleWorkers() {
        return this.f11928f.getPreferenceUtils().getNeedsReschedule();
    }

    @VisibleForTesting
    public void sleep(long duration) {
        try {
            Thread.sleep(duration);
        } catch (InterruptedException unused) {
        }
    }
}
