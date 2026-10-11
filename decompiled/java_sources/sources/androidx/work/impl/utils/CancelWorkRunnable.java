package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.work.Operation;
import androidx.work.WorkInfo;
import androidx.work.impl.OperationImpl;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpecDao;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.UUID;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public abstract class CancelWorkRunnable implements Runnable {

    /* renamed from: e */
    public final OperationImpl f11909e = new OperationImpl();

    /* renamed from: androidx.work.impl.utils.CancelWorkRunnable$a */
    /* loaded from: classes3.dex */
    public class C1663a extends CancelWorkRunnable {

        /* renamed from: f */
        public final /* synthetic */ WorkManagerImpl f11910f;

        /* renamed from: g */
        public final /* synthetic */ UUID f11911g;

        public C1663a(final WorkManagerImpl val$workManagerImpl, final UUID val$id) {
            this.f11910f = val$workManagerImpl;
            this.f11911g = val$id;
        }

        @Override // androidx.work.impl.utils.CancelWorkRunnable
        @WorkerThread
        /* renamed from: d */
        public void mo7134d() {
            WorkDatabase workDatabase = this.f11910f.getWorkDatabase();
            workDatabase.beginTransaction();
            try {
                m7131a(this.f11910f, this.f11911g.toString());
                workDatabase.setTransactionSuccessful();
                workDatabase.endTransaction();
                m7133c(this.f11910f);
            } catch (Throwable th) {
                workDatabase.endTransaction();
                throw th;
            }
        }
    }

    /* renamed from: androidx.work.impl.utils.CancelWorkRunnable$b */
    /* loaded from: classes3.dex */
    public class C1664b extends CancelWorkRunnable {

        /* renamed from: f */
        public final /* synthetic */ WorkManagerImpl f11912f;

        /* renamed from: g */
        public final /* synthetic */ String f11913g;

        public C1664b(final WorkManagerImpl val$workManagerImpl, final String val$tag) {
            this.f11912f = val$workManagerImpl;
            this.f11913g = val$tag;
        }

        @Override // androidx.work.impl.utils.CancelWorkRunnable
        @WorkerThread
        /* renamed from: d */
        public void mo7134d() {
            WorkDatabase workDatabase = this.f11912f.getWorkDatabase();
            workDatabase.beginTransaction();
            try {
                Iterator<String> it2 = workDatabase.workSpecDao().getUnfinishedWorkWithTag(this.f11913g).iterator();
                while (it2.hasNext()) {
                    m7131a(this.f11912f, it2.next());
                }
                workDatabase.setTransactionSuccessful();
                workDatabase.endTransaction();
                m7133c(this.f11912f);
            } catch (Throwable th) {
                workDatabase.endTransaction();
                throw th;
            }
        }
    }

    /* renamed from: androidx.work.impl.utils.CancelWorkRunnable$c */
    /* loaded from: classes3.dex */
    public class C1665c extends CancelWorkRunnable {

        /* renamed from: f */
        public final /* synthetic */ WorkManagerImpl f11914f;

        /* renamed from: g */
        public final /* synthetic */ String f11915g;

        /* renamed from: h */
        public final /* synthetic */ boolean f11916h;

        public C1665c(final WorkManagerImpl val$workManagerImpl, final String val$name, final boolean val$allowReschedule) {
            this.f11914f = val$workManagerImpl;
            this.f11915g = val$name;
            this.f11916h = val$allowReschedule;
        }

        @Override // androidx.work.impl.utils.CancelWorkRunnable
        @WorkerThread
        /* renamed from: d */
        public void mo7134d() {
            WorkDatabase workDatabase = this.f11914f.getWorkDatabase();
            workDatabase.beginTransaction();
            try {
                Iterator<String> it2 = workDatabase.workSpecDao().getUnfinishedWorkWithName(this.f11915g).iterator();
                while (it2.hasNext()) {
                    m7131a(this.f11914f, it2.next());
                }
                workDatabase.setTransactionSuccessful();
                workDatabase.endTransaction();
                if (this.f11916h) {
                    m7133c(this.f11914f);
                }
            } catch (Throwable th) {
                workDatabase.endTransaction();
                throw th;
            }
        }
    }

    /* renamed from: androidx.work.impl.utils.CancelWorkRunnable$d */
    /* loaded from: classes3.dex */
    public class C1666d extends CancelWorkRunnable {

        /* renamed from: f */
        public final /* synthetic */ WorkManagerImpl f11917f;

        public C1666d(final WorkManagerImpl val$workManagerImpl) {
            this.f11917f = val$workManagerImpl;
        }

        @Override // androidx.work.impl.utils.CancelWorkRunnable
        @WorkerThread
        /* renamed from: d */
        public void mo7134d() {
            WorkDatabase workDatabase = this.f11917f.getWorkDatabase();
            workDatabase.beginTransaction();
            try {
                Iterator<String> it2 = workDatabase.workSpecDao().getAllUnfinishedWork().iterator();
                while (it2.hasNext()) {
                    m7131a(this.f11917f, it2.next());
                }
                new PreferenceUtils(this.f11917f.getWorkDatabase()).setLastCancelAllTimeMillis(this.f11917f.getConfiguration().getClock().currentTimeMillis());
                workDatabase.setTransactionSuccessful();
            } finally {
                workDatabase.endTransaction();
            }
        }
    }

    @NonNull
    public static CancelWorkRunnable forAll(@NonNull final WorkManagerImpl workManagerImpl) {
        return new C1666d(workManagerImpl);
    }

    @NonNull
    public static CancelWorkRunnable forId(@NonNull final UUID id, @NonNull final WorkManagerImpl workManagerImpl) {
        return new C1663a(workManagerImpl, id);
    }

    @NonNull
    public static CancelWorkRunnable forName(@NonNull final String name, @NonNull final WorkManagerImpl workManagerImpl, final boolean allowReschedule) {
        return new C1665c(workManagerImpl, name, allowReschedule);
    }

    @NonNull
    public static CancelWorkRunnable forTag(@NonNull final String tag, @NonNull final WorkManagerImpl workManagerImpl) {
        return new C1664b(workManagerImpl, tag);
    }

    /* renamed from: a */
    public void m7131a(WorkManagerImpl workManagerImpl, String workSpecId) {
        m7132b(workManagerImpl.getWorkDatabase(), workSpecId);
        workManagerImpl.getProcessor().stopAndCancelWork(workSpecId, 1);
        Iterator<Scheduler> it2 = workManagerImpl.getSchedulers().iterator();
        while (it2.hasNext()) {
            it2.next().cancel(workSpecId);
        }
    }

    /* renamed from: b */
    public final void m7132b(WorkDatabase workDatabase, String workSpecId) {
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        DependencyDao dependencyDao = workDatabase.dependencyDao();
        LinkedList linkedList = new LinkedList();
        linkedList.add(workSpecId);
        while (!linkedList.isEmpty()) {
            String str = (String) linkedList.remove();
            WorkInfo.State state = workSpecDao.getState(str);
            if (state != WorkInfo.State.SUCCEEDED && state != WorkInfo.State.FAILED) {
                workSpecDao.setCancelledState(str);
            }
            linkedList.addAll(dependencyDao.getDependentWorkIds(str));
        }
    }

    /* renamed from: c */
    public void m7133c(WorkManagerImpl workManagerImpl) {
        Schedulers.schedule(workManagerImpl.getConfiguration(), workManagerImpl.getWorkDatabase(), workManagerImpl.getSchedulers());
    }

    /* renamed from: d */
    public abstract void mo7134d();

    @NonNull
    public Operation getOperation() {
        return this.f11909e;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            mo7134d();
            this.f11909e.markState(Operation.SUCCESS);
        } catch (Throwable th) {
            this.f11909e.markState(new Operation.State.FAILURE(th));
        }
    }
}
