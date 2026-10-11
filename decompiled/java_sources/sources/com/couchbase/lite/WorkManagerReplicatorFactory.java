package com.couchbase.lite;

import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.OneTimeWorkRequest;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkRequest;
import com.couchbase.lite.internal.ReplicatorWorker;
import java.time.Duration;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\tH\u0002J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\b\u0010\f\u001a\u00020\rH\u0016J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0016J,\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u0015H\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0017"}, m61528d2 = {"Lcom/couchbase/lite/WorkManagerReplicatorFactory;", "", "tag", "", "getTag", "()Ljava/lang/String;", "buildRequest", "", "req", "Landroidx/work/WorkRequest$Builder;", "getConfig", "Lcom/couchbase/lite/WorkManagerReplicatorConfiguration;", "oneTimeWorkRequestBuilder", "Landroidx/work/OneTimeWorkRequest$Builder;", "periodicWorkRequestBuilder", "Landroidx/work/PeriodicWorkRequest$Builder;", "repeatInterval", "Ljava/time/Duration;", "flexInterval", "", "repeatIntervalTimeUnit", "Ljava/util/concurrent/TimeUnit;", "flexIntervalTimeUnit", "couchbase-lite-android-ee-ktx-3.2.2-21_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes4.dex */
public interface WorkManagerReplicatorFactory {

    @Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nWorkManagerReplication.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkManagerReplication.kt\ncom/couchbase/lite/WorkManagerReplicatorFactory$DefaultImpls\n+ 2 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n+ 3 PeriodicWorkRequest.kt\nandroidx/work/PeriodicWorkRequestKt\n*L\n1#1,213:1\n104#2:214\n253#3:215\n233#3,6:216\n*S KotlinDebug\n*F\n+ 1 WorkManagerReplication.kt\ncom/couchbase/lite/WorkManagerReplicatorFactory$DefaultImpls\n*L\n66#1:214\n75#1:215\n86#1:216,6\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        /* JADX WARN: Type inference failed for: r3v1, types: [androidx.work.WorkRequest$Builder] */
        private static void buildRequest(WorkManagerReplicatorFactory workManagerReplicatorFactory, WorkRequest.Builder<?, ?> builder) {
            ?? addTag = builder.addTag(workManagerReplicatorFactory.getTag());
            Data build = new Data.Builder().putString(ReplicatorWorker.KEY_REPLICATOR, workManagerReplicatorFactory.getClass().getCanonicalName()).build();
            Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …                 .build()");
            addTag.setInputData(build);
        }

        @NotNull
        public static OneTimeWorkRequest.Builder oneTimeWorkRequestBuilder(@NotNull WorkManagerReplicatorFactory workManagerReplicatorFactory) {
            OneTimeWorkRequest.Builder builder = new OneTimeWorkRequest.Builder(ReplicatorWorker.class);
            buildRequest(workManagerReplicatorFactory, builder);
            return builder;
        }

        @NotNull
        public static PeriodicWorkRequest.Builder periodicWorkRequestBuilder(@NotNull WorkManagerReplicatorFactory workManagerReplicatorFactory, @NotNull Duration repeatInterval, @NotNull Duration flexInterval) {
            Intrinsics.checkNotNullParameter(repeatInterval, "repeatInterval");
            Intrinsics.checkNotNullParameter(flexInterval, "flexInterval");
            PeriodicWorkRequest.Builder builder = new PeriodicWorkRequest.Builder((Class<? extends ListenableWorker>) ReplicatorWorker.class, repeatInterval, flexInterval);
            buildRequest(workManagerReplicatorFactory, builder);
            return builder;
        }

        public static /* synthetic */ PeriodicWorkRequest.Builder periodicWorkRequestBuilder$default(WorkManagerReplicatorFactory workManagerReplicatorFactory, Duration duration, Duration duration2, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: periodicWorkRequestBuilder");
            }
            if ((i & 2) != 0) {
                duration2 = duration;
            }
            return workManagerReplicatorFactory.periodicWorkRequestBuilder(duration, duration2);
        }

        public static /* synthetic */ PeriodicWorkRequest.Builder periodicWorkRequestBuilder$default(WorkManagerReplicatorFactory workManagerReplicatorFactory, long j, TimeUnit timeUnit, long j2, TimeUnit timeUnit2, int i, Object obj) {
            if (obj == null) {
                return workManagerReplicatorFactory.periodicWorkRequestBuilder(j, timeUnit, (i & 4) != 0 ? j : j2, (i & 8) != 0 ? timeUnit : timeUnit2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: periodicWorkRequestBuilder");
        }

        @NotNull
        public static PeriodicWorkRequest.Builder periodicWorkRequestBuilder(@NotNull WorkManagerReplicatorFactory workManagerReplicatorFactory, long j, @NotNull TimeUnit repeatIntervalTimeUnit, long j2, @NotNull TimeUnit flexIntervalTimeUnit) {
            Intrinsics.checkNotNullParameter(repeatIntervalTimeUnit, "repeatIntervalTimeUnit");
            Intrinsics.checkNotNullParameter(flexIntervalTimeUnit, "flexIntervalTimeUnit");
            PeriodicWorkRequest.Builder builder = new PeriodicWorkRequest.Builder(ReplicatorWorker.class, j, repeatIntervalTimeUnit, j2, flexIntervalTimeUnit);
            buildRequest(workManagerReplicatorFactory, builder);
            return builder;
        }
    }

    @Nullable
    WorkManagerReplicatorConfiguration getConfig();

    @NotNull
    String getTag();

    @NotNull
    OneTimeWorkRequest.Builder oneTimeWorkRequestBuilder();

    @NotNull
    PeriodicWorkRequest.Builder periodicWorkRequestBuilder(long repeatInterval, @NotNull TimeUnit repeatIntervalTimeUnit, long flexInterval, @NotNull TimeUnit flexIntervalTimeUnit);

    @NotNull
    PeriodicWorkRequest.Builder periodicWorkRequestBuilder(@NotNull Duration repeatInterval, @NotNull Duration flexInterval);
}
