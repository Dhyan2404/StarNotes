package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.work.WorkInfo;
import androidx.work.WorkQuery;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.UUID;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public abstract class StatusRunnable<T> implements Runnable {

    /* renamed from: e */
    public final SettableFuture<T> f11955e = SettableFuture.create();

    /* renamed from: androidx.work.impl.utils.StatusRunnable$a */
    /* loaded from: classes3.dex */
    public class C1669a extends StatusRunnable<List<WorkInfo>> {

        /* renamed from: f */
        public final /* synthetic */ WorkManagerImpl f11956f;

        /* renamed from: g */
        public final /* synthetic */ List f11957g;

        public C1669a(final WorkManagerImpl val$workManager, final List val$ids) {
            this.f11956f = val$workManager;
            this.f11957g = val$ids;
        }

        @Override // androidx.work.impl.utils.StatusRunnable
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<WorkInfo> mo7155a() {
            return WorkSpec.WORK_INFO_MAPPER.apply(this.f11956f.getWorkDatabase().workSpecDao().getWorkStatusPojoForIds(this.f11957g));
        }
    }

    /* renamed from: androidx.work.impl.utils.StatusRunnable$b */
    /* loaded from: classes3.dex */
    public class C1670b extends StatusRunnable<WorkInfo> {

        /* renamed from: f */
        public final /* synthetic */ WorkManagerImpl f11958f;

        /* renamed from: g */
        public final /* synthetic */ UUID f11959g;

        public C1670b(final WorkManagerImpl val$workManager, final UUID val$id) {
            this.f11958f = val$workManager;
            this.f11959g = val$id;
        }

        @Override // androidx.work.impl.utils.StatusRunnable
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public WorkInfo mo7155a() {
            WorkSpec.WorkInfoPojo workStatusPojoForId = this.f11958f.getWorkDatabase().workSpecDao().getWorkStatusPojoForId(this.f11959g.toString());
            if (workStatusPojoForId != null) {
                return workStatusPojoForId.toWorkInfo();
            }
            return null;
        }
    }

    /* renamed from: androidx.work.impl.utils.StatusRunnable$c */
    /* loaded from: classes3.dex */
    public class C1671c extends StatusRunnable<List<WorkInfo>> {

        /* renamed from: f */
        public final /* synthetic */ WorkManagerImpl f11960f;

        /* renamed from: g */
        public final /* synthetic */ String f11961g;

        public C1671c(final WorkManagerImpl val$workManager, final String val$tag) {
            this.f11960f = val$workManager;
            this.f11961g = val$tag;
        }

        @Override // androidx.work.impl.utils.StatusRunnable
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<WorkInfo> mo7155a() {
            return WorkSpec.WORK_INFO_MAPPER.apply(this.f11960f.getWorkDatabase().workSpecDao().getWorkStatusPojoForTag(this.f11961g));
        }
    }

    /* renamed from: androidx.work.impl.utils.StatusRunnable$d */
    /* loaded from: classes3.dex */
    public class C1672d extends StatusRunnable<List<WorkInfo>> {

        /* renamed from: f */
        public final /* synthetic */ WorkManagerImpl f11962f;

        /* renamed from: g */
        public final /* synthetic */ String f11963g;

        public C1672d(final WorkManagerImpl val$workManager, final String val$name) {
            this.f11962f = val$workManager;
            this.f11963g = val$name;
        }

        @Override // androidx.work.impl.utils.StatusRunnable
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<WorkInfo> mo7155a() {
            return WorkSpec.WORK_INFO_MAPPER.apply(this.f11962f.getWorkDatabase().workSpecDao().getWorkStatusPojoForName(this.f11963g));
        }
    }

    /* renamed from: androidx.work.impl.utils.StatusRunnable$e */
    /* loaded from: classes3.dex */
    public class C1673e extends StatusRunnable<List<WorkInfo>> {

        /* renamed from: f */
        public final /* synthetic */ WorkManagerImpl f11964f;

        /* renamed from: g */
        public final /* synthetic */ WorkQuery f11965g;

        public C1673e(final WorkManagerImpl val$workManager, final WorkQuery val$querySpec) {
            this.f11964f = val$workManager;
            this.f11965g = val$querySpec;
        }

        @Override // androidx.work.impl.utils.StatusRunnable
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<WorkInfo> mo7155a() {
            return WorkSpec.WORK_INFO_MAPPER.apply(this.f11964f.getWorkDatabase().rawWorkInfoDao().getWorkInfoPojos(RawQueries.toRawQuery(this.f11965g)));
        }
    }

    @NonNull
    public static StatusRunnable<List<WorkInfo>> forStringIds(@NonNull final WorkManagerImpl workManager, @NonNull final List<String> ids) {
        return new C1669a(workManager, ids);
    }

    @NonNull
    public static StatusRunnable<List<WorkInfo>> forTag(@NonNull final WorkManagerImpl workManager, @NonNull final String tag) {
        return new C1671c(workManager, tag);
    }

    @NonNull
    public static StatusRunnable<WorkInfo> forUUID(@NonNull final WorkManagerImpl workManager, @NonNull final UUID id) {
        return new C1670b(workManager, id);
    }

    @NonNull
    public static StatusRunnable<List<WorkInfo>> forUniqueWork(@NonNull final WorkManagerImpl workManager, @NonNull final String name) {
        return new C1672d(workManager, name);
    }

    @NonNull
    public static StatusRunnable<List<WorkInfo>> forWorkQuerySpec(@NonNull final WorkManagerImpl workManager, @NonNull final WorkQuery querySpec) {
        return new C1673e(workManager, querySpec);
    }

    @WorkerThread
    /* renamed from: a */
    public abstract T mo7155a();

    @NonNull
    public ListenableFuture<T> getFuture() {
        return this.f11955e;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f11955e.set(mo7155a());
        } catch (Throwable th) {
            this.f11955e.setException(th);
        }
    }
}
