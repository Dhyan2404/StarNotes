package androidx.work;

import android.annotation.SuppressLint;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.DurationApi26Impl;
import com.sun.org.apache.bcel.internal.Constants;
import java.time.Duration;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\r\b&\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001b\u001aB'\b\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0007¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0007¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0017\u001a\u00020\u000f8G¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001c"}, m61528d2 = {"Landroidx/work/WorkRequest;", "", "Ljava/util/UUID;", "a", "Ljava/util/UUID;", "getId", "()Ljava/util/UUID;", "id", "Landroidx/work/impl/model/WorkSpec;", "b", "Landroidx/work/impl/model/WorkSpec;", "getWorkSpec", "()Landroidx/work/impl/model/WorkSpec;", "workSpec", "", "", "c", "Ljava/util/Set;", "getTags", "()Ljava/util/Set;", "tags", "getStringId", "()Ljava/lang/String;", "stringId", Constants.CONSTRUCTOR_NAME, "(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V", "Companion", "Builder", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class WorkRequest {
    public static final long DEFAULT_BACKOFF_DELAY_MILLIS = 30000;

    @SuppressLint({"MinMaxConstant"})
    public static final long MAX_BACKOFF_MILLIS = 18000000;

    @SuppressLint({"MinMaxConstant"})
    public static final long MIN_BACKOFF_MILLIS = 10000;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final UUID id;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final WorkSpec workSpec;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Set<String> tags;

    public WorkRequest(@NotNull UUID id, @NotNull WorkSpec workSpec, @NotNull Set<String> tags) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.id = id;
        this.workSpec = workSpec;
        this.tags = tags;
    }

    @NotNull
    public UUID getId() {
        return this.id;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final String getStringId() {
        String uuid = getId().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "id.toString()");
        return uuid;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final Set<String> getTags() {
        return this.tags;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final WorkSpec getWorkSpec() {
        return this.workSpec;
    }

    @Metadata(m61527d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010#\n\u0002\b\u000b\b&\u0018\u0000*\u0012\b\u0000\u0010\u0001*\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\u0000*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0004B\u0019\b\u0000\u0012\u000e\u0010>\u001a\n\u0012\u0006\b\u0001\u0012\u00020908¢\u0006\u0004\b^\u0010_J\u0015\u0010\u0007\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\u000f\u001a\u00028\u00002\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u000f\u001a\u00028\u00002\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u000f\u0010\u0013J\u0015\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u00028\u00002\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u001d\u0010 \u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b \u0010!J\u0017\u0010 \u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b \u0010\"J\u001f\u0010#\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b#\u0010!J\u0017\u0010#\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0017¢\u0006\u0004\b#\u0010\"J\u0017\u0010&\u001a\u00028\u00002\u0006\u0010%\u001a\u00020$H\u0017¢\u0006\u0004\b&\u0010'J\r\u0010(\u001a\u00028\u0001¢\u0006\u0004\b(\u0010)J\u000f\u0010+\u001a\u00028\u0001H ¢\u0006\u0004\b*\u0010)J\u0017\u0010.\u001a\u00028\u00002\u0006\u0010-\u001a\u00020,H\u0007¢\u0006\u0004\b.\u0010/J\u0017\u00102\u001a\u00028\u00002\u0006\u00101\u001a\u000200H\u0007¢\u0006\u0004\b2\u00103J\u001f\u00105\u001a\u00028\u00002\u0006\u00104\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b5\u0010!J\u001f\u00107\u001a\u00028\u00002\u0006\u00106\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b7\u0010!R\"\u0010>\u001a\n\u0012\u0006\b\u0001\u0012\u000209088\u0000X\u0080\u0004¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R\"\u0010F\u001a\u00020?8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\"\u0010\u0006\u001a\u00020\u00058\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\"\u0010T\u001a\u00020M8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bN\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR \u0010Z\u001a\b\u0012\u0004\u0012\u00020\u001c0U8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010YR\u0014\u0010]\u001a\u00028\u00008 X \u0004¢\u0006\u0006\u001a\u0004\b[\u0010\\¨\u0006`"}, m61528d2 = {"Landroidx/work/WorkRequest$Builder;", "B", "Landroidx/work/WorkRequest;", "W", "", "Ljava/util/UUID;", "id", "setId", "(Ljava/util/UUID;)Landroidx/work/WorkRequest$Builder;", "Landroidx/work/BackoffPolicy;", "backoffPolicy", "", "backoffDelay", "Ljava/util/concurrent/TimeUnit;", "timeUnit", "setBackoffCriteria", "(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;", "Ljava/time/Duration;", "duration", "(Landroidx/work/BackoffPolicy;Ljava/time/Duration;)Landroidx/work/WorkRequest$Builder;", "Landroidx/work/Constraints;", "constraints", "setConstraints", "(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;", "Landroidx/work/Data;", "inputData", "setInputData", "(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;", "", "tag", "addTag", "(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;", "keepResultsForAtLeast", "(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;", "(Ljava/time/Duration;)Landroidx/work/WorkRequest$Builder;", "setInitialDelay", "Landroidx/work/OutOfQuotaPolicy;", "policy", "setExpedited", "(Landroidx/work/OutOfQuotaPolicy;)Landroidx/work/WorkRequest$Builder;", PrivilegedApp.f6529f, "()Landroidx/work/WorkRequest;", "buildInternal$work_runtime_release", "buildInternal", "Landroidx/work/WorkInfo$State;", "state", "setInitialState", "(Landroidx/work/WorkInfo$State;)Landroidx/work/WorkRequest$Builder;", "", "runAttemptCount", "setInitialRunAttemptCount", "(I)Landroidx/work/WorkRequest$Builder;", "lastEnqueueTime", "setLastEnqueueTime", "scheduleRequestedAt", "setScheduleRequestedAt", "Ljava/lang/Class;", "Landroidx/work/ListenableWorker;", "a", "Ljava/lang/Class;", "getWorkerClass$work_runtime_release", "()Ljava/lang/Class;", "workerClass", "", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getBackoffCriteriaSet$work_runtime_release", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setBackoffCriteriaSet$work_runtime_release", "(Z)V", "backoffCriteriaSet", "c", "Ljava/util/UUID;", "getId$work_runtime_release", "()Ljava/util/UUID;", "setId$work_runtime_release", "(Ljava/util/UUID;)V", "Landroidx/work/impl/model/WorkSpec;", "d", "Landroidx/work/impl/model/WorkSpec;", "getWorkSpec$work_runtime_release", "()Landroidx/work/impl/model/WorkSpec;", "setWorkSpec$work_runtime_release", "(Landroidx/work/impl/model/WorkSpec;)V", "workSpec", "", "e", "Ljava/util/Set;", "getTags$work_runtime_release", "()Ljava/util/Set;", "tags", "getThisObject$work_runtime_release", "()Landroidx/work/WorkRequest$Builder;", "thisObject", Constants.CONSTRUCTOR_NAME, "(Ljava/lang/Class;)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    @SourceDebugExtension({"SMAP\nWorkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkRequest.kt\nandroidx/work/WorkRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,356:1\n1#2:357\n*E\n"})
    /* loaded from: classes3.dex */
    public static abstract class Builder<B extends Builder<B, ?>, W extends WorkRequest> {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final Class<? extends ListenableWorker> workerClass;

        /* renamed from: b, reason: from kotlin metadata */
        public boolean backoffCriteriaSet;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public UUID id;

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public WorkSpec workSpec;

        /* renamed from: e, reason: from kotlin metadata */
        @NotNull
        public final Set<String> tags;

        public Builder(@NotNull Class<? extends ListenableWorker> workerClass) {
            Set<String> mutableSetOf;
            Intrinsics.checkNotNullParameter(workerClass, "workerClass");
            this.workerClass = workerClass;
            UUID randomUUID = UUID.randomUUID();
            Intrinsics.checkNotNullExpressionValue(randomUUID, "randomUUID()");
            this.id = randomUUID;
            String uuid = this.id.toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "id.toString()");
            String name = workerClass.getName();
            Intrinsics.checkNotNullExpressionValue(name, "workerClass.name");
            this.workSpec = new WorkSpec(uuid, name);
            String name2 = workerClass.getName();
            Intrinsics.checkNotNullExpressionValue(name2, "workerClass.name");
            mutableSetOf = SetsKt__SetsKt.mutableSetOf(name2);
            this.tags = mutableSetOf;
        }

        @NotNull
        public final B addTag(@NotNull String tag) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            this.tags.add(tag);
            return getThisObject$work_runtime_release();
        }

        @NotNull
        public final W build() {
            W buildInternal$work_runtime_release = buildInternal$work_runtime_release();
            Constraints constraints = this.workSpec.constraints;
            boolean z = constraints.hasContentUriTriggers() || constraints.getRequiresBatteryNotLow() || constraints.getRequiresCharging() || constraints.getRequiresDeviceIdle();
            WorkSpec workSpec = this.workSpec;
            if (workSpec.expedited) {
                if (!(!z)) {
                    throw new IllegalArgumentException("Expedited jobs only support network and storage constraints".toString());
                }
                if (!(workSpec.initialDelay <= 0)) {
                    throw new IllegalArgumentException("Expedited jobs cannot be delayed".toString());
                }
            }
            UUID randomUUID = UUID.randomUUID();
            Intrinsics.checkNotNullExpressionValue(randomUUID, "randomUUID()");
            setId(randomUUID);
            return buildInternal$work_runtime_release;
        }

        @NotNull
        public abstract W buildInternal$work_runtime_release();

        /* renamed from: getBackoffCriteriaSet$work_runtime_release, reason: from getter */
        public final boolean getBackoffCriteriaSet() {
            return this.backoffCriteriaSet;
        }

        @NotNull
        /* renamed from: getId$work_runtime_release, reason: from getter */
        public final UUID getId() {
            return this.id;
        }

        @NotNull
        public final Set<String> getTags$work_runtime_release() {
            return this.tags;
        }

        @NotNull
        public abstract B getThisObject$work_runtime_release();

        @NotNull
        /* renamed from: getWorkSpec$work_runtime_release, reason: from getter */
        public final WorkSpec getWorkSpec() {
            return this.workSpec;
        }

        @NotNull
        public final Class<? extends ListenableWorker> getWorkerClass$work_runtime_release() {
            return this.workerClass;
        }

        @NotNull
        public final B keepResultsForAtLeast(long duration, @NotNull TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            this.workSpec.minimumRetentionDuration = timeUnit.toMillis(duration);
            return getThisObject$work_runtime_release();
        }

        @NotNull
        public final B setBackoffCriteria(@NotNull BackoffPolicy backoffPolicy, long backoffDelay, @NotNull TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            this.backoffCriteriaSet = true;
            WorkSpec workSpec = this.workSpec;
            workSpec.backoffPolicy = backoffPolicy;
            workSpec.setBackoffDelayDuration(timeUnit.toMillis(backoffDelay));
            return getThisObject$work_runtime_release();
        }

        public final void setBackoffCriteriaSet$work_runtime_release(boolean z) {
            this.backoffCriteriaSet = z;
        }

        @NotNull
        public final B setConstraints(@NotNull Constraints constraints) {
            Intrinsics.checkNotNullParameter(constraints, "constraints");
            this.workSpec.constraints = constraints;
            return getThisObject$work_runtime_release();
        }

        @SuppressLint({"MissingGetterMatchingBuilder"})
        @NotNull
        public B setExpedited(@NotNull OutOfQuotaPolicy policy) {
            Intrinsics.checkNotNullParameter(policy, "policy");
            WorkSpec workSpec = this.workSpec;
            workSpec.expedited = true;
            workSpec.outOfQuotaPolicy = policy;
            return getThisObject$work_runtime_release();
        }

        @NotNull
        public final B setId(@NotNull UUID id) {
            Intrinsics.checkNotNullParameter(id, "id");
            this.id = id;
            String uuid = id.toString();
            Intrinsics.checkNotNullExpressionValue(uuid, "id.toString()");
            this.workSpec = new WorkSpec(uuid, this.workSpec);
            return getThisObject$work_runtime_release();
        }

        public final void setId$work_runtime_release(@NotNull UUID uuid) {
            Intrinsics.checkNotNullParameter(uuid, "<set-?>");
            this.id = uuid;
        }

        @NotNull
        public B setInitialDelay(long duration, @NotNull TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            this.workSpec.initialDelay = timeUnit.toMillis(duration);
            if (Long.MAX_VALUE - System.currentTimeMillis() > this.workSpec.initialDelay) {
                return getThisObject$work_runtime_release();
            }
            throw new IllegalArgumentException("The given initial delay is too large and will cause an overflow!".toString());
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @VisibleForTesting
        @NotNull
        public final B setInitialRunAttemptCount(int runAttemptCount) {
            this.workSpec.runAttemptCount = runAttemptCount;
            return getThisObject$work_runtime_release();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @VisibleForTesting
        @NotNull
        public final B setInitialState(@NotNull WorkInfo.State state) {
            Intrinsics.checkNotNullParameter(state, "state");
            this.workSpec.state = state;
            return getThisObject$work_runtime_release();
        }

        @NotNull
        public final B setInputData(@NotNull Data inputData) {
            Intrinsics.checkNotNullParameter(inputData, "inputData");
            this.workSpec.input = inputData;
            return getThisObject$work_runtime_release();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @VisibleForTesting
        @NotNull
        public final B setLastEnqueueTime(long lastEnqueueTime, @NotNull TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            this.workSpec.lastEnqueueTime = timeUnit.toMillis(lastEnqueueTime);
            return getThisObject$work_runtime_release();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @VisibleForTesting
        @NotNull
        public final B setScheduleRequestedAt(long scheduleRequestedAt, @NotNull TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            this.workSpec.scheduleRequestedAt = timeUnit.toMillis(scheduleRequestedAt);
            return getThisObject$work_runtime_release();
        }

        public final void setWorkSpec$work_runtime_release(@NotNull WorkSpec workSpec) {
            Intrinsics.checkNotNullParameter(workSpec, "<set-?>");
            this.workSpec = workSpec;
        }

        @RequiresApi(26)
        @NotNull
        public final B keepResultsForAtLeast(@NotNull Duration duration) {
            Intrinsics.checkNotNullParameter(duration, "duration");
            this.workSpec.minimumRetentionDuration = DurationApi26Impl.toMillisCompat(duration);
            return getThisObject$work_runtime_release();
        }

        @RequiresApi(26)
        @NotNull
        public final B setBackoffCriteria(@NotNull BackoffPolicy backoffPolicy, @NotNull Duration duration) {
            Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
            Intrinsics.checkNotNullParameter(duration, "duration");
            this.backoffCriteriaSet = true;
            WorkSpec workSpec = this.workSpec;
            workSpec.backoffPolicy = backoffPolicy;
            workSpec.setBackoffDelayDuration(DurationApi26Impl.toMillisCompat(duration));
            return getThisObject$work_runtime_release();
        }

        @RequiresApi(26)
        @NotNull
        public B setInitialDelay(@NotNull Duration duration) {
            Intrinsics.checkNotNullParameter(duration, "duration");
            this.workSpec.initialDelay = DurationApi26Impl.toMillisCompat(duration);
            if (Long.MAX_VALUE - System.currentTimeMillis() > this.workSpec.initialDelay) {
                return getThisObject$work_runtime_release();
            }
            throw new IllegalArgumentException("The given initial delay is too large and will cause an overflow!".toString());
        }
    }
}
