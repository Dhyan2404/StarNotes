package androidx.work.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.LiveData;
import androidx.work.ArrayCreatingInputMerger;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.Operation;
import androidx.work.WorkContinuation;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import androidx.work.impl.utils.EnqueueRunnable;
import androidx.work.impl.utils.StatusRunnable;
import androidx.work.impl.workers.CombineContinuationsWorker;
import com.google.android.material.motion.MotionUtils;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class WorkContinuationImpl extends WorkContinuation {

    /* renamed from: j */
    public static final String f11474j = Logger.tagWithPrefix("WorkContinuationImpl");

    /* renamed from: a */
    public final WorkManagerImpl f11475a;

    /* renamed from: b */
    public final String f11476b;

    /* renamed from: c */
    public final ExistingWorkPolicy f11477c;

    /* renamed from: d */
    public final List<? extends WorkRequest> f11478d;

    /* renamed from: e */
    public final List<String> f11479e;

    /* renamed from: f */
    public final List<String> f11480f;

    /* renamed from: g */
    public final List<WorkContinuationImpl> f11481g;

    /* renamed from: h */
    public boolean f11482h;

    /* renamed from: i */
    public Operation f11483i;

    public WorkContinuationImpl(@NonNull WorkManagerImpl workManagerImpl, @NonNull List<? extends WorkRequest> work) {
        this(workManagerImpl, null, ExistingWorkPolicy.KEEP, work, null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: a */
    public static boolean m6980a(@NonNull WorkContinuationImpl continuation, @NonNull Set<String> visited) {
        visited.addAll(continuation.getIds());
        Set<String> prerequisitesFor = prerequisitesFor(continuation);
        Iterator<String> it2 = visited.iterator();
        while (it2.hasNext()) {
            if (prerequisitesFor.contains(it2.next())) {
                return true;
            }
        }
        List<WorkContinuationImpl> parents = continuation.getParents();
        if (parents != null && !parents.isEmpty()) {
            Iterator<WorkContinuationImpl> it3 = parents.iterator();
            while (it3.hasNext()) {
                if (m6980a(it3.next(), visited)) {
                    return true;
                }
            }
        }
        visited.removeAll(continuation.getIds());
        return false;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static Set<String> prerequisitesFor(@NonNull WorkContinuationImpl continuation) {
        HashSet hashSet = new HashSet();
        List<WorkContinuationImpl> parents = continuation.getParents();
        if (parents != null && !parents.isEmpty()) {
            Iterator<WorkContinuationImpl> it2 = parents.iterator();
            while (it2.hasNext()) {
                hashSet.addAll(it2.next().getIds());
            }
        }
        return hashSet;
    }

    @Override // androidx.work.WorkContinuation
    @NonNull
    public WorkContinuation combineInternal(@NonNull List<WorkContinuation> continuations) {
        OneTimeWorkRequest build = new OneTimeWorkRequest.Builder(CombineContinuationsWorker.class).setInputMerger(ArrayCreatingInputMerger.class).build();
        ArrayList arrayList = new ArrayList(continuations.size());
        Iterator<WorkContinuation> it2 = continuations.iterator();
        while (it2.hasNext()) {
            arrayList.add((WorkContinuationImpl) it2.next());
        }
        return new WorkContinuationImpl(this.f11475a, null, ExistingWorkPolicy.KEEP, Collections.singletonList(build), arrayList);
    }

    @Override // androidx.work.WorkContinuation
    @NonNull
    public Operation enqueue() {
        if (this.f11482h) {
            Logger.get().warning(f11474j, "Already enqueued work ids (" + TextUtils.join(", ", this.f11479e) + MotionUtils.f31762d);
        } else {
            EnqueueRunnable enqueueRunnable = new EnqueueRunnable(this);
            this.f11475a.getWorkTaskExecutor().executeOnTaskThread(enqueueRunnable);
            this.f11483i = enqueueRunnable.getOperation();
        }
        return this.f11483i;
    }

    @NonNull
    public List<String> getAllIds() {
        return this.f11480f;
    }

    @NonNull
    public ExistingWorkPolicy getExistingWorkPolicy() {
        return this.f11477c;
    }

    @NonNull
    public List<String> getIds() {
        return this.f11479e;
    }

    @Nullable
    public String getName() {
        return this.f11476b;
    }

    @Nullable
    public List<WorkContinuationImpl> getParents() {
        return this.f11481g;
    }

    @NonNull
    public List<? extends WorkRequest> getWork() {
        return this.f11478d;
    }

    @Override // androidx.work.WorkContinuation
    @NonNull
    public ListenableFuture<List<WorkInfo>> getWorkInfos() {
        StatusRunnable<List<WorkInfo>> forStringIds = StatusRunnable.forStringIds(this.f11475a, this.f11480f);
        this.f11475a.getWorkTaskExecutor().executeOnTaskThread(forStringIds);
        return forStringIds.getFuture();
    }

    @Override // androidx.work.WorkContinuation
    @NonNull
    public LiveData<List<WorkInfo>> getWorkInfosLiveData() {
        return this.f11475a.m6995a(this.f11480f);
    }

    @NonNull
    public WorkManagerImpl getWorkManagerImpl() {
        return this.f11475a;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean hasCycles() {
        return m6980a(this, new HashSet());
    }

    public boolean isEnqueued() {
        return this.f11482h;
    }

    public void markEnqueued() {
        this.f11482h = true;
    }

    @Override // androidx.work.WorkContinuation
    @NonNull
    public WorkContinuation then(@NonNull List<OneTimeWorkRequest> work) {
        return work.isEmpty() ? this : new WorkContinuationImpl(this.f11475a, this.f11476b, ExistingWorkPolicy.KEEP, work, Collections.singletonList(this));
    }

    public WorkContinuationImpl(@NonNull WorkManagerImpl workManagerImpl, @Nullable String name, @NonNull ExistingWorkPolicy existingWorkPolicy, @NonNull List<? extends WorkRequest> work) {
        this(workManagerImpl, name, existingWorkPolicy, work, null);
    }

    public WorkContinuationImpl(@NonNull WorkManagerImpl workManagerImpl, @Nullable String name, @NonNull ExistingWorkPolicy existingWorkPolicy, @NonNull List<? extends WorkRequest> work, @Nullable List<WorkContinuationImpl> parents) {
        this.f11475a = workManagerImpl;
        this.f11476b = name;
        this.f11477c = existingWorkPolicy;
        this.f11478d = work;
        this.f11481g = parents;
        this.f11479e = new ArrayList(work.size());
        this.f11480f = new ArrayList();
        if (parents != null) {
            Iterator<WorkContinuationImpl> it2 = parents.iterator();
            while (it2.hasNext()) {
                this.f11480f.addAll(it2.next().f11480f);
            }
        }
        for (int i = 0; i < work.size(); i++) {
            if (existingWorkPolicy == ExistingWorkPolicy.REPLACE && work.get(i).getWorkSpec().getNextScheduleTimeOverride() != Long.MAX_VALUE) {
                throw new IllegalArgumentException("Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP");
            }
            String stringId = work.get(i).getStringId();
            this.f11479e.add(stringId);
            this.f11480f.add(stringId);
        }
    }
}
