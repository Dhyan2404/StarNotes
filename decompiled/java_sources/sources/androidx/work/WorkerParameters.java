package androidx.work;

import android.net.Network;
import android.net.Uri;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class WorkerParameters {

    /* renamed from: a */
    @NonNull
    public UUID f11441a;

    /* renamed from: b */
    @NonNull
    public Data f11442b;

    /* renamed from: c */
    @NonNull
    public Set<String> f11443c;

    /* renamed from: d */
    @NonNull
    public RuntimeExtras f11444d;

    /* renamed from: e */
    public int f11445e;

    /* renamed from: f */
    @NonNull
    public Executor f11446f;

    /* renamed from: g */
    @NonNull
    public TaskExecutor f11447g;

    /* renamed from: h */
    @NonNull
    public WorkerFactory f11448h;

    /* renamed from: i */
    @NonNull
    public ProgressUpdater f11449i;

    /* renamed from: j */
    @NonNull
    public ForegroundUpdater f11450j;

    /* renamed from: k */
    public int f11451k;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes3.dex */
    public static class RuntimeExtras {

        @Nullable
        @RequiresApi(28)
        public Network network;

        @NonNull
        public List<String> triggeredContentAuthorities = Collections.emptyList();

        @NonNull
        public List<Uri> triggeredContentUris = Collections.emptyList();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WorkerParameters(@NonNull UUID id, @NonNull Data inputData, @NonNull Collection<String> tags, @NonNull RuntimeExtras runtimeExtras, @IntRange(from = 0) int runAttemptCount, @IntRange(from = 0) int generation, @NonNull Executor backgroundExecutor, @NonNull TaskExecutor workTaskExecutor, @NonNull WorkerFactory workerFactory, @NonNull ProgressUpdater progressUpdater, @NonNull ForegroundUpdater foregroundUpdater) {
        this.f11441a = id;
        this.f11442b = inputData;
        this.f11443c = new HashSet(tags);
        this.f11444d = runtimeExtras;
        this.f11445e = runAttemptCount;
        this.f11451k = generation;
        this.f11446f = backgroundExecutor;
        this.f11447g = workTaskExecutor;
        this.f11448h = workerFactory;
        this.f11449i = progressUpdater;
        this.f11450j = foregroundUpdater;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Executor getBackgroundExecutor() {
        return this.f11446f;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ForegroundUpdater getForegroundUpdater() {
        return this.f11450j;
    }

    @IntRange(from = 0)
    public int getGeneration() {
        return this.f11451k;
    }

    @NonNull
    public UUID getId() {
        return this.f11441a;
    }

    @NonNull
    public Data getInputData() {
        return this.f11442b;
    }

    @Nullable
    @RequiresApi(28)
    public Network getNetwork() {
        return this.f11444d.network;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ProgressUpdater getProgressUpdater() {
        return this.f11449i;
    }

    @IntRange(from = 0)
    public int getRunAttemptCount() {
        return this.f11445e;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public RuntimeExtras getRuntimeExtras() {
        return this.f11444d;
    }

    @NonNull
    public Set<String> getTags() {
        return this.f11443c;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public TaskExecutor getTaskExecutor() {
        return this.f11447g;
    }

    @NonNull
    @RequiresApi(24)
    public List<String> getTriggeredContentAuthorities() {
        return this.f11444d.triggeredContentAuthorities;
    }

    @NonNull
    @RequiresApi(24)
    public List<Uri> getTriggeredContentUris() {
        return this.f11444d.triggeredContentUris;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WorkerFactory getWorkerFactory() {
        return this.f11448h;
    }
}
