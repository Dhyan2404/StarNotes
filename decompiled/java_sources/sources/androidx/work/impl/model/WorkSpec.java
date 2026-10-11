package androidx.work.impl.model;

import androidx.annotation.IntRange;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.room.ColumnInfo;
import androidx.room.Embedded;
import androidx.room.Entity;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import androidx.room.Relation;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import androidx.work.impl.model.WorkSpec;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\bE\b\u0087\b\u0018\u0000 f2\u00020\u0001:\u0003fghBé\u0001\u0012\u0006\u0010+\u001a\u00020\f\u0012\b\b\u0002\u0010,\u001a\u00020\u000f\u0012\u0006\u0010-\u001a\u00020\f\u0012\b\b\u0002\u0010.\u001a\u00020\f\u0012\b\b\u0002\u0010/\u001a\u00020\u0013\u0012\b\b\u0002\u00100\u001a\u00020\u0013\u0012\b\b\u0002\u00101\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u00102\u001a\u00020\u0019\u0012\b\b\u0003\u00103\u001a\u00020\u001b\u0012\b\b\u0002\u00104\u001a\u00020\u001d\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u00105\u001a\u00020\u0002\u0012\b\b\u0002\u00106\u001a\u00020\u0002\u0012\b\b\u0002\u00107\u001a\u00020\u0002\u0012\b\b\u0002\u00108\u001a\u00020\n\u0012\b\b\u0002\u00109\u001a\u00020$\u0012\b\b\u0002\u0010:\u001a\u00020\u001b\u0012\b\b\u0002\u0010;\u001a\u00020\u001b\u0012\b\b\u0002\u0010<\u001a\u00020\u0002\u0012\b\b\u0002\u0010=\u001a\u00020\u001b\u0012\b\b\u0002\u0010>\u001a\u00020\u001b¢\u0006\u0004\b`\u0010aB\u0019\b\u0016\u0012\u0006\u0010+\u001a\u00020\f\u0012\u0006\u0010b\u001a\u00020\f¢\u0006\u0004\b`\u0010cB\u0019\b\u0016\u0012\u0006\u0010d\u001a\u00020\f\u0012\u0006\u0010A\u001a\u00020\u0000¢\u0006\u0004\b`\u0010eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002J\u0006\u0010\t\u001a\u00020\u0002J\u0006\u0010\u000b\u001a\u00020\nJ\b\u0010\r\u001a\u00020\fH\u0016J\t\u0010\u000e\u001a\u00020\fHÆ\u0003J\t\u0010\u0010\u001a\u00020\u000fHÆ\u0003J\t\u0010\u0011\u001a\u00020\fHÆ\u0003J\t\u0010\u0012\u001a\u00020\fHÆ\u0003J\t\u0010\u0014\u001a\u00020\u0013HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0013HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0002HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0019HÆ\u0003J\t\u0010\u001c\u001a\u00020\u001bHÆ\u0003J\t\u0010\u001e\u001a\u00020\u001dHÆ\u0003J\t\u0010\u001f\u001a\u00020\u0002HÆ\u0003J\t\u0010 \u001a\u00020\u0002HÆ\u0003J\t\u0010!\u001a\u00020\u0002HÆ\u0003J\t\u0010\"\u001a\u00020\u0002HÆ\u0003J\t\u0010#\u001a\u00020\nHÆ\u0003J\t\u0010%\u001a\u00020$HÆ\u0003J\t\u0010&\u001a\u00020\u001bHÆ\u0003J\t\u0010'\u001a\u00020\u001bHÆ\u0003J\t\u0010(\u001a\u00020\u0002HÆ\u0003J\t\u0010)\u001a\u00020\u001bHÆ\u0003J\t\u0010*\u001a\u00020\u001bHÆ\u0003Jï\u0001\u0010?\u001a\u00020\u00002\b\b\u0002\u0010+\u001a\u00020\f2\b\b\u0002\u0010,\u001a\u00020\u000f2\b\b\u0002\u0010-\u001a\u00020\f2\b\b\u0002\u0010.\u001a\u00020\f2\b\b\u0002\u0010/\u001a\u00020\u00132\b\b\u0002\u00100\u001a\u00020\u00132\b\b\u0002\u00101\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u00102\u001a\u00020\u00192\b\b\u0003\u00103\u001a\u00020\u001b2\b\b\u0002\u00104\u001a\u00020\u001d2\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u00105\u001a\u00020\u00022\b\b\u0002\u00106\u001a\u00020\u00022\b\b\u0002\u00107\u001a\u00020\u00022\b\b\u0002\u00108\u001a\u00020\n2\b\b\u0002\u00109\u001a\u00020$2\b\b\u0002\u0010:\u001a\u00020\u001b2\b\b\u0002\u0010;\u001a\u00020\u001b2\b\b\u0002\u0010<\u001a\u00020\u00022\b\b\u0002\u0010=\u001a\u00020\u001b2\b\b\u0002\u0010>\u001a\u00020\u001bHÆ\u0001J\t\u0010@\u001a\u00020\u001bHÖ\u0001J\u0013\u0010B\u001a\u00020\n2\b\u0010A\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0014\u0010+\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b+\u0010CR\u0016\u0010,\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b,\u0010DR\u0016\u0010-\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b-\u0010CR\u0016\u0010.\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b.\u0010CR\u0016\u0010/\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b/\u0010ER\u0016\u00100\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b0\u0010ER\u0016\u00101\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b1\u0010FR\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010FR\u0016\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\b\u0010FR\u0016\u00102\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b2\u0010GR\u0016\u00103\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b3\u0010HR\u0016\u00104\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b4\u0010IR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010FR\u0016\u00105\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b5\u0010FR\u0016\u00106\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b6\u0010FR\u0016\u00107\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b7\u0010FR\u0016\u00108\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b8\u0010JR\u0016\u00109\u001a\u00020$8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b9\u0010KR\"\u0010:\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bL\u0010H\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\u001a\u0010;\u001a\u00020\u001b8\u0006X\u0087\u0004¢\u0006\f\n\u0004\bQ\u0010H\u001a\u0004\bR\u0010NR\"\u0010<\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bS\u0010F\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\"\u0010=\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bX\u0010H\u001a\u0004\bY\u0010N\"\u0004\bZ\u0010PR\u001a\u0010>\u001a\u00020\u001b8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b[\u0010H\u001a\u0004\b\\\u0010NR\u0011\u0010]\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b]\u0010^R\u0011\u0010_\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b_\u0010^¨\u0006i"}, m61528d2 = {"Landroidx/work/impl/model/WorkSpec;", "", "", "backoffDelayDuration", "", "setBackoffDelayDuration", "intervalDuration", "setPeriodic", "flexDuration", "calculateNextRunTime", "", "hasConstraints", "", "toString", "component1", "Landroidx/work/WorkInfo$State;", "component2", "component3", "component4", "Landroidx/work/Data;", "component5", "component6", "component7", "component8", "component9", "Landroidx/work/Constraints;", "component10", "", "component11", "Landroidx/work/BackoffPolicy;", "component12", "component13", "component14", "component15", "component16", "component17", "Landroidx/work/OutOfQuotaPolicy;", "component18", "component19", "component20", "component21", "component22", "component23", "id", "state", "workerClassName", "inputMergerClassName", "input", Constants.ELEMNAME_OUTPUT_STRING, "initialDelay", "constraints", "runAttemptCount", "backoffPolicy", "lastEnqueueTime", "minimumRetentionDuration", "scheduleRequestedAt", "expedited", "outOfQuotaPolicy", "periodCount", "generation", "nextScheduleTimeOverride", "nextScheduleTimeOverrideGeneration", "stopReason", "copy", "hashCode", Constants.ATTRVAL_OTHER, "equals", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "Landroidx/work/WorkInfo$State;", "Landroidx/work/Data;", "J", "Landroidx/work/Constraints;", "I", "Landroidx/work/BackoffPolicy;", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "Landroidx/work/OutOfQuotaPolicy;", "a", "getPeriodCount", "()I", "setPeriodCount", "(I)V", "b", "getGeneration", "c", "getNextScheduleTimeOverride", "()J", "setNextScheduleTimeOverride", "(J)V", "d", "getNextScheduleTimeOverrideGeneration", "setNextScheduleTimeOverrideGeneration", "e", "getStopReason", "isPeriodic", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "isBackedOff", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJII)V", "workerClassName_", "(Ljava/lang/String;Ljava/lang/String;)V", "newId", "(Ljava/lang/String;Landroidx/work/impl/model/WorkSpec;)V", "Companion", "IdAndState", "WorkInfoPojo", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@Entity(indices = {@Index({"schedule_requested_at"}), @Index({"last_enqueue_time"})})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nWorkSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkSpec.kt\nandroidx/work/impl/model/WorkSpec\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,544:1\n1549#2:545\n1620#2,3:546\n*S KotlinDebug\n*F\n+ 1 WorkSpec.kt\nandroidx/work/impl/model/WorkSpec\n*L\n482#1:545\n482#1:546,3\n*E\n"})
/* loaded from: classes3.dex */
public final /* data */ class WorkSpec {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final long SCHEDULE_NOT_REQUESTED_YET = -1;

    @JvmField
    @NotNull
    public static final Function<List<WorkInfoPojo>, List<WorkInfo>> WORK_INFO_MAPPER;

    /* renamed from: f */
    @NotNull
    public static final String f11804f;

    /* renamed from: a, reason: from kotlin metadata */
    @ColumnInfo(defaultValue = "0", name = "period_count")
    public int periodCount;

    /* renamed from: b, reason: from kotlin metadata */
    @ColumnInfo(defaultValue = "0")
    public final int generation;

    @JvmField
    @ColumnInfo(name = "backoff_delay_duration")
    public long backoffDelayDuration;

    @JvmField
    @ColumnInfo(name = "backoff_policy")
    @NotNull
    public BackoffPolicy backoffPolicy;

    /* renamed from: c, reason: from kotlin metadata */
    @ColumnInfo(defaultValue = "9223372036854775807", name = "next_schedule_time_override")
    public long nextScheduleTimeOverride;

    @Embedded
    @JvmField
    @NotNull
    public Constraints constraints;

    /* renamed from: d, reason: from kotlin metadata */
    @ColumnInfo(defaultValue = "0", name = "next_schedule_time_override_generation")
    public int nextScheduleTimeOverrideGeneration;

    /* renamed from: e, reason: from kotlin metadata */
    @ColumnInfo(defaultValue = "-256", name = "stop_reason")
    public final int stopReason;

    @JvmField
    @ColumnInfo(name = "run_in_foreground")
    public boolean expedited;

    @JvmField
    @ColumnInfo(name = "flex_duration")
    public long flexDuration;

    @PrimaryKey
    @JvmField
    @ColumnInfo(name = "id")
    @NotNull
    public final String id;

    @JvmField
    @ColumnInfo(name = "initial_delay")
    public long initialDelay;

    @JvmField
    @ColumnInfo(name = "input")
    @NotNull
    public Data input;

    @JvmField
    @ColumnInfo(name = "input_merger_class_name")
    @NotNull
    public String inputMergerClassName;

    @JvmField
    @ColumnInfo(name = "interval_duration")
    public long intervalDuration;

    @JvmField
    @ColumnInfo(defaultValue = "-1", name = "last_enqueue_time")
    public long lastEnqueueTime;

    @JvmField
    @ColumnInfo(name = "minimum_retention_duration")
    public long minimumRetentionDuration;

    @JvmField
    @ColumnInfo(name = "out_of_quota_policy")
    @NotNull
    public OutOfQuotaPolicy outOfQuotaPolicy;

    @JvmField
    @ColumnInfo(name = Constants.ELEMNAME_OUTPUT_STRING)
    @NotNull
    public Data output;

    @JvmField
    @ColumnInfo(name = "run_attempt_count")
    public int runAttemptCount;

    @JvmField
    @ColumnInfo(name = "schedule_requested_at")
    public long scheduleRequestedAt;

    @JvmField
    @ColumnInfo(name = "state")
    @NotNull
    public WorkInfo.State state;

    @JvmField
    @ColumnInfo(name = "worker_class_name")
    @NotNull
    public String workerClassName;

    @Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J^\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\u0007\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\t0\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, m61528d2 = {"Landroidx/work/impl/model/WorkSpec$Companion;", "", "()V", "SCHEDULE_NOT_REQUESTED_YET", "", "TAG", "", "WORK_INFO_MAPPER", "Landroidx/arch/core/util/Function;", "", "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "Landroidx/work/WorkInfo;", "calculateNextRunTime", "isBackedOff", "", "runAttemptCount", "", "backoffPolicy", "Landroidx/work/BackoffPolicy;", "backoffDelayDuration", "lastEnqueueTime", "periodCount", "isPeriodic", "initialDelay", "flexDuration", "intervalDuration", "nextScheduleTimeOverride", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long calculateNextRunTime(boolean isBackedOff, int runAttemptCount, @NotNull BackoffPolicy backoffPolicy, long backoffDelayDuration, long lastEnqueueTime, int periodCount, boolean isPeriodic, long initialDelay, long flexDuration, long intervalDuration, long nextScheduleTimeOverride) {
            long coerceAtMost;
            long coerceAtLeast;
            Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
            if (nextScheduleTimeOverride != Long.MAX_VALUE && isPeriodic) {
                if (periodCount == 0) {
                    return nextScheduleTimeOverride;
                }
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(nextScheduleTimeOverride, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS + lastEnqueueTime);
                return coerceAtLeast;
            }
            if (isBackedOff) {
                coerceAtMost = RangesKt___RangesKt.coerceAtMost(backoffPolicy == BackoffPolicy.LINEAR ? runAttemptCount * backoffDelayDuration : Math.scalb((float) backoffDelayDuration, runAttemptCount - 1), WorkRequest.MAX_BACKOFF_MILLIS);
                return lastEnqueueTime + coerceAtMost;
            }
            if (!isPeriodic) {
                if (lastEnqueueTime == -1) {
                    return Long.MAX_VALUE;
                }
                return lastEnqueueTime + initialDelay;
            }
            long j = periodCount == 0 ? lastEnqueueTime + initialDelay : lastEnqueueTime + intervalDuration;
            if ((flexDuration != intervalDuration) && periodCount == 0) {
                j += intervalDuration - flexDuration;
            }
            return j;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\t\u0010\b\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m61528d2 = {"Landroidx/work/impl/model/WorkSpec$IdAndState;", "", "id", "", "state", "Landroidx/work/WorkInfo$State;", "(Ljava/lang/String;Landroidx/work/WorkInfo$State;)V", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final /* data */ class IdAndState {

        @JvmField
        @ColumnInfo(name = "id")
        @NotNull
        public String id;

        @JvmField
        @ColumnInfo(name = "state")
        @NotNull
        public WorkInfo.State state;

        public IdAndState(@NotNull String id, @NotNull WorkInfo.State state) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            this.id = id;
            this.state = state;
        }

        public static /* synthetic */ IdAndState copy$default(IdAndState idAndState, String str, WorkInfo.State state, int i, Object obj) {
            if ((i & 1) != 0) {
                str = idAndState.id;
            }
            if ((i & 2) != 0) {
                state = idAndState.state;
            }
            return idAndState.copy(str, state);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final WorkInfo.State getState() {
            return this.state;
        }

        @NotNull
        public final IdAndState copy(@NotNull String id, @NotNull WorkInfo.State state) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            return new IdAndState(id, state);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) other;
            return Intrinsics.areEqual(this.id, idAndState.id) && this.state == idAndState.state;
        }

        public int hashCode() {
            return (this.id.hashCode() * 31) + this.state.hashCode();
        }

        @NotNull
        public String toString() {
            return "IdAndState(id=" + this.id + ", state=" + this.state + ')';
        }
    }

    static {
        String tagWithPrefix = Logger.tagWithPrefix("WorkSpec");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"WorkSpec\")");
        f11804f = tagWithPrefix;
        WORK_INFO_MAPPER = new Function() { // from class: com.sunia.HTREnginev2.lao
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                List m7112b;
                m7112b = WorkSpec.m7112b((List) obj);
                return m7112b;
            }
        };
    }

    public WorkSpec(@NotNull String id, @NotNull WorkInfo.State state, @NotNull String workerClassName, @NotNull String inputMergerClassName, @NotNull Data input, @NotNull Data output, long j, long j2, long j3, @NotNull Constraints constraints, @IntRange(from = 0) int i, @NotNull BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, @NotNull OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(inputMergerClassName, "inputMergerClassName");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        Intrinsics.checkNotNullParameter(outOfQuotaPolicy, "outOfQuotaPolicy");
        this.id = id;
        this.state = state;
        this.workerClassName = workerClassName;
        this.inputMergerClassName = inputMergerClassName;
        this.input = input;
        this.output = output;
        this.initialDelay = j;
        this.intervalDuration = j2;
        this.flexDuration = j3;
        this.constraints = constraints;
        this.runAttemptCount = i;
        this.backoffPolicy = backoffPolicy;
        this.backoffDelayDuration = j4;
        this.lastEnqueueTime = j5;
        this.minimumRetentionDuration = j6;
        this.scheduleRequestedAt = j7;
        this.expedited = z;
        this.outOfQuotaPolicy = outOfQuotaPolicy;
        this.periodCount = i2;
        this.generation = i3;
        this.nextScheduleTimeOverride = j8;
        this.nextScheduleTimeOverrideGeneration = i4;
        this.stopReason = i5;
    }

    /* renamed from: b */
    public static final List m7112b(List list) {
        int collectionSizeOrDefault;
        if (list == null) {
            return null;
        }
        List list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((WorkInfoPojo) it2.next()).toWorkInfo());
        }
        return arrayList;
    }

    public static /* synthetic */ WorkSpec copy$default(WorkSpec workSpec, String str, WorkInfo.State state, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, int i6, Object obj) {
        String str4 = (i6 & 1) != 0 ? workSpec.id : str;
        WorkInfo.State state2 = (i6 & 2) != 0 ? workSpec.state : state;
        String str5 = (i6 & 4) != 0 ? workSpec.workerClassName : str2;
        String str6 = (i6 & 8) != 0 ? workSpec.inputMergerClassName : str3;
        Data data3 = (i6 & 16) != 0 ? workSpec.input : data;
        Data data4 = (i6 & 32) != 0 ? workSpec.output : data2;
        long j9 = (i6 & 64) != 0 ? workSpec.initialDelay : j;
        long j10 = (i6 & 128) != 0 ? workSpec.intervalDuration : j2;
        long j11 = (i6 & 256) != 0 ? workSpec.flexDuration : j3;
        Constraints constraints2 = (i6 & 512) != 0 ? workSpec.constraints : constraints;
        return workSpec.copy(str4, state2, str5, str6, data3, data4, j9, j10, j11, constraints2, (i6 & 1024) != 0 ? workSpec.runAttemptCount : i, (i6 & 2048) != 0 ? workSpec.backoffPolicy : backoffPolicy, (i6 & 4096) != 0 ? workSpec.backoffDelayDuration : j4, (i6 & 8192) != 0 ? workSpec.lastEnqueueTime : j5, (i6 & 16384) != 0 ? workSpec.minimumRetentionDuration : j6, (i6 & 32768) != 0 ? workSpec.scheduleRequestedAt : j7, (i6 & 65536) != 0 ? workSpec.expedited : z, (131072 & i6) != 0 ? workSpec.outOfQuotaPolicy : outOfQuotaPolicy, (i6 & 262144) != 0 ? workSpec.periodCount : i2, (i6 & 524288) != 0 ? workSpec.generation : i3, (i6 & 1048576) != 0 ? workSpec.nextScheduleTimeOverride : j8, (i6 & 2097152) != 0 ? workSpec.nextScheduleTimeOverrideGeneration : i4, (i6 & 4194304) != 0 ? workSpec.stopReason : i5);
    }

    public final long calculateNextRunTime() {
        return INSTANCE.calculateNextRunTime(isBackedOff(), this.runAttemptCount, this.backoffPolicy, this.backoffDelayDuration, this.lastEnqueueTime, this.periodCount, isPeriodic(), this.initialDelay, this.flexDuration, this.intervalDuration, this.nextScheduleTimeOverride);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @NotNull
    /* renamed from: component10, reason: from getter */
    public final Constraints getConstraints() {
        return this.constraints;
    }

    /* renamed from: component11, reason: from getter */
    public final int getRunAttemptCount() {
        return this.runAttemptCount;
    }

    @NotNull
    /* renamed from: component12, reason: from getter */
    public final BackoffPolicy getBackoffPolicy() {
        return this.backoffPolicy;
    }

    /* renamed from: component13, reason: from getter */
    public final long getBackoffDelayDuration() {
        return this.backoffDelayDuration;
    }

    /* renamed from: component14, reason: from getter */
    public final long getLastEnqueueTime() {
        return this.lastEnqueueTime;
    }

    /* renamed from: component15, reason: from getter */
    public final long getMinimumRetentionDuration() {
        return this.minimumRetentionDuration;
    }

    /* renamed from: component16, reason: from getter */
    public final long getScheduleRequestedAt() {
        return this.scheduleRequestedAt;
    }

    /* renamed from: component17, reason: from getter */
    public final boolean getExpedited() {
        return this.expedited;
    }

    @NotNull
    /* renamed from: component18, reason: from getter */
    public final OutOfQuotaPolicy getOutOfQuotaPolicy() {
        return this.outOfQuotaPolicy;
    }

    /* renamed from: component19, reason: from getter */
    public final int getPeriodCount() {
        return this.periodCount;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final WorkInfo.State getState() {
        return this.state;
    }

    /* renamed from: component20, reason: from getter */
    public final int getGeneration() {
        return this.generation;
    }

    /* renamed from: component21, reason: from getter */
    public final long getNextScheduleTimeOverride() {
        return this.nextScheduleTimeOverride;
    }

    /* renamed from: component22, reason: from getter */
    public final int getNextScheduleTimeOverrideGeneration() {
        return this.nextScheduleTimeOverrideGeneration;
    }

    /* renamed from: component23, reason: from getter */
    public final int getStopReason() {
        return this.stopReason;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getWorkerClassName() {
        return this.workerClassName;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getInputMergerClassName() {
        return this.inputMergerClassName;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final Data getInput() {
        return this.input;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final Data getOutput() {
        return this.output;
    }

    /* renamed from: component7, reason: from getter */
    public final long getInitialDelay() {
        return this.initialDelay;
    }

    /* renamed from: component8, reason: from getter */
    public final long getIntervalDuration() {
        return this.intervalDuration;
    }

    /* renamed from: component9, reason: from getter */
    public final long getFlexDuration() {
        return this.flexDuration;
    }

    @NotNull
    public final WorkSpec copy(@NotNull String id, @NotNull WorkInfo.State state, @NotNull String workerClassName, @NotNull String inputMergerClassName, @NotNull Data input, @NotNull Data output, long initialDelay, long intervalDuration, long flexDuration, @NotNull Constraints constraints, @IntRange(from = 0) int runAttemptCount, @NotNull BackoffPolicy backoffPolicy, long backoffDelayDuration, long lastEnqueueTime, long minimumRetentionDuration, long scheduleRequestedAt, boolean expedited, @NotNull OutOfQuotaPolicy outOfQuotaPolicy, int periodCount, int generation, long nextScheduleTimeOverride, int nextScheduleTimeOverrideGeneration, int stopReason) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(inputMergerClassName, "inputMergerClassName");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        Intrinsics.checkNotNullParameter(outOfQuotaPolicy, "outOfQuotaPolicy");
        return new WorkSpec(id, state, workerClassName, inputMergerClassName, input, output, initialDelay, intervalDuration, flexDuration, constraints, runAttemptCount, backoffPolicy, backoffDelayDuration, lastEnqueueTime, minimumRetentionDuration, scheduleRequestedAt, expedited, outOfQuotaPolicy, periodCount, generation, nextScheduleTimeOverride, nextScheduleTimeOverrideGeneration, stopReason);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) other;
        return Intrinsics.areEqual(this.id, workSpec.id) && this.state == workSpec.state && Intrinsics.areEqual(this.workerClassName, workSpec.workerClassName) && Intrinsics.areEqual(this.inputMergerClassName, workSpec.inputMergerClassName) && Intrinsics.areEqual(this.input, workSpec.input) && Intrinsics.areEqual(this.output, workSpec.output) && this.initialDelay == workSpec.initialDelay && this.intervalDuration == workSpec.intervalDuration && this.flexDuration == workSpec.flexDuration && Intrinsics.areEqual(this.constraints, workSpec.constraints) && this.runAttemptCount == workSpec.runAttemptCount && this.backoffPolicy == workSpec.backoffPolicy && this.backoffDelayDuration == workSpec.backoffDelayDuration && this.lastEnqueueTime == workSpec.lastEnqueueTime && this.minimumRetentionDuration == workSpec.minimumRetentionDuration && this.scheduleRequestedAt == workSpec.scheduleRequestedAt && this.expedited == workSpec.expedited && this.outOfQuotaPolicy == workSpec.outOfQuotaPolicy && this.periodCount == workSpec.periodCount && this.generation == workSpec.generation && this.nextScheduleTimeOverride == workSpec.nextScheduleTimeOverride && this.nextScheduleTimeOverrideGeneration == workSpec.nextScheduleTimeOverrideGeneration && this.stopReason == workSpec.stopReason;
    }

    public final int getGeneration() {
        return this.generation;
    }

    public final long getNextScheduleTimeOverride() {
        return this.nextScheduleTimeOverride;
    }

    public final int getNextScheduleTimeOverrideGeneration() {
        return this.nextScheduleTimeOverrideGeneration;
    }

    public final int getPeriodCount() {
        return this.periodCount;
    }

    public final int getStopReason() {
        return this.stopReason;
    }

    public final boolean hasConstraints() {
        return !Intrinsics.areEqual(Constraints.NONE, this.constraints);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((((((((((((((((((((((this.id.hashCode() * 31) + this.state.hashCode()) * 31) + this.workerClassName.hashCode()) * 31) + this.inputMergerClassName.hashCode()) * 31) + this.input.hashCode()) * 31) + this.output.hashCode()) * 31) + Long.hashCode(this.initialDelay)) * 31) + Long.hashCode(this.intervalDuration)) * 31) + Long.hashCode(this.flexDuration)) * 31) + this.constraints.hashCode()) * 31) + Integer.hashCode(this.runAttemptCount)) * 31) + this.backoffPolicy.hashCode()) * 31) + Long.hashCode(this.backoffDelayDuration)) * 31) + Long.hashCode(this.lastEnqueueTime)) * 31) + Long.hashCode(this.minimumRetentionDuration)) * 31) + Long.hashCode(this.scheduleRequestedAt)) * 31;
        boolean z = this.expedited;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((((((((((hashCode + i) * 31) + this.outOfQuotaPolicy.hashCode()) * 31) + Integer.hashCode(this.periodCount)) * 31) + Integer.hashCode(this.generation)) * 31) + Long.hashCode(this.nextScheduleTimeOverride)) * 31) + Integer.hashCode(this.nextScheduleTimeOverrideGeneration)) * 31) + Integer.hashCode(this.stopReason);
    }

    public final boolean isBackedOff() {
        return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
    }

    public final boolean isPeriodic() {
        return this.intervalDuration != 0;
    }

    public final void setBackoffDelayDuration(long backoffDelayDuration) {
        long coerceIn;
        if (backoffDelayDuration > WorkRequest.MAX_BACKOFF_MILLIS) {
            Logger.get().warning(f11804f, "Backoff delay duration exceeds maximum value");
        }
        if (backoffDelayDuration < 10000) {
            Logger.get().warning(f11804f, "Backoff delay duration less than minimum value");
        }
        coerceIn = RangesKt___RangesKt.coerceIn(backoffDelayDuration, 10000L, WorkRequest.MAX_BACKOFF_MILLIS);
        this.backoffDelayDuration = coerceIn;
    }

    public final void setNextScheduleTimeOverride(long j) {
        this.nextScheduleTimeOverride = j;
    }

    public final void setNextScheduleTimeOverrideGeneration(int i) {
        this.nextScheduleTimeOverrideGeneration = i;
    }

    public final void setPeriodCount(int i) {
        this.periodCount = i;
    }

    public final void setPeriodic(long intervalDuration) {
        long coerceAtLeast;
        long coerceAtLeast2;
        if (intervalDuration < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(f11804f, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(intervalDuration, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS);
        coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(intervalDuration, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS);
        setPeriodic(coerceAtLeast, coerceAtLeast2);
    }

    @NotNull
    public String toString() {
        return "{WorkSpec: " + this.id + '}';
    }

    public final void setPeriodic(long intervalDuration, long flexDuration) {
        long coerceAtLeast;
        long coerceIn;
        if (intervalDuration < PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            Logger.get().warning(f11804f, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(intervalDuration, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS);
        this.intervalDuration = coerceAtLeast;
        if (flexDuration < 300000) {
            Logger.get().warning(f11804f, "Flex duration lesser than minimum allowed value; Changed to 300000");
        }
        if (flexDuration > this.intervalDuration) {
            Logger.get().warning(f11804f, "Flex duration greater than interval duration; Changed to " + intervalDuration);
        }
        coerceIn = RangesKt___RangesKt.coerceIn(flexDuration, 300000L, this.intervalDuration);
        this.flexDuration = coerceIn;
    }

    @Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b>\b\u0086\b\u0018\u00002\u00020\u0001B©\u0001\u0012\u0006\u0010 \u001a\u00020\b\u0012\u0006\u0010!\u001a\u00020\n\u0012\u0006\u0010\"\u001a\u00020\f\u0012\b\b\u0002\u0010#\u001a\u00020\u0004\u0012\b\b\u0002\u0010$\u001a\u00020\u0004\u0012\b\b\u0002\u0010%\u001a\u00020\u0004\u0012\u0006\u0010&\u001a\u00020\u0011\u0012\u0006\u0010'\u001a\u00020\u0013\u0012\b\b\u0002\u0010(\u001a\u00020\u0015\u0012\b\b\u0002\u0010)\u001a\u00020\u0004\u0012\b\b\u0002\u0010*\u001a\u00020\u0004\u0012\b\b\u0002\u0010+\u001a\u00020\u0013\u0012\u0006\u0010,\u001a\u00020\u0013\u0012\u0006\u0010-\u001a\u00020\u0004\u0012\u0006\u0010.\u001a\u00020\u0013\u0012\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\b0\u001d\u0012\f\u00100\u001a\b\u0012\u0004\u0012\u00020\f0\u001d¢\u0006\u0004\bq\u0010rJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\t\u0010\t\u001a\u00020\bHÆ\u0003J\t\u0010\u000b\u001a\u00020\nHÆ\u0003J\t\u0010\r\u001a\u00020\fHÆ\u0003J\t\u0010\u000e\u001a\u00020\u0004HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0011HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0013HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0015HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0013HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0013HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0013HÆ\u0003J\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\b0\u001dHÆ\u0003J\u000f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\f0\u001dHÆ\u0003J¿\u0001\u00101\u001a\u00020\u00002\b\b\u0002\u0010 \u001a\u00020\b2\b\b\u0002\u0010!\u001a\u00020\n2\b\b\u0002\u0010\"\u001a\u00020\f2\b\b\u0002\u0010#\u001a\u00020\u00042\b\b\u0002\u0010$\u001a\u00020\u00042\b\b\u0002\u0010%\u001a\u00020\u00042\b\b\u0002\u0010&\u001a\u00020\u00112\b\b\u0002\u0010'\u001a\u00020\u00132\b\b\u0002\u0010(\u001a\u00020\u00152\b\b\u0002\u0010)\u001a\u00020\u00042\b\b\u0002\u0010*\u001a\u00020\u00042\b\b\u0002\u0010+\u001a\u00020\u00132\b\b\u0002\u0010,\u001a\u00020\u00132\b\b\u0002\u0010-\u001a\u00020\u00042\b\b\u0002\u0010.\u001a\u00020\u00132\u000e\b\u0002\u0010/\u001a\b\u0012\u0004\u0012\u00020\b0\u001d2\u000e\b\u0002\u00100\u001a\b\u0012\u0004\u0012\u00020\f0\u001dHÆ\u0001J\t\u00102\u001a\u00020\bHÖ\u0001J\t\u00103\u001a\u00020\u0013HÖ\u0001J\u0013\u00106\u001a\u0002052\b\u00104\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001a\u0010 \u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0005\u00107\u001a\u0004\b8\u00109R\u001a\u0010!\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010:\u001a\u0004\b;\u0010<R\u001a\u0010\"\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u001a\u0010#\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u001a\u0010$\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\bE\u0010B\u001a\u0004\bF\u0010DR\u001a\u0010%\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\bG\u0010B\u001a\u0004\bH\u0010DR\u001a\u0010&\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\f\n\u0004\bI\u0010J\u001a\u0004\bK\u0010LR\u001a\u0010'\u001a\u00020\u00138\u0006X\u0087\u0004¢\u0006\f\n\u0004\bM\u0010N\u001a\u0004\bO\u0010PR\"\u0010(\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR\"\u0010)\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bW\u0010B\u001a\u0004\bX\u0010D\"\u0004\bY\u0010ZR\"\u0010*\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b[\u0010B\u001a\u0004\b\\\u0010D\"\u0004\b]\u0010ZR\"\u0010+\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b^\u0010N\u001a\u0004\b_\u0010P\"\u0004\b`\u0010aR\u001a\u0010,\u001a\u00020\u00138\u0006X\u0087\u0004¢\u0006\f\n\u0004\bb\u0010N\u001a\u0004\bc\u0010PR\u001a\u0010-\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\bd\u0010B\u001a\u0004\be\u0010DR\u001a\u0010.\u001a\u00020\u00138\u0006X\u0087\u0004¢\u0006\f\n\u0004\bf\u0010N\u001a\u0004\bg\u0010PR \u0010/\u001a\b\u0012\u0004\u0012\u00020\b0\u001d8\u0006X\u0087\u0004¢\u0006\f\n\u0004\bh\u0010i\u001a\u0004\bj\u0010kR \u00100\u001a\b\u0012\u0004\u0012\u00020\f0\u001d8\u0006X\u0087\u0004¢\u0006\f\n\u0004\bl\u0010i\u001a\u0004\bm\u0010kR\u0011\u0010n\u001a\u0002058F¢\u0006\u0006\u001a\u0004\bn\u0010oR\u0011\u0010p\u001a\u0002058F¢\u0006\u0006\u001a\u0004\bp\u0010o¨\u0006s"}, m61528d2 = {"Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "", "Landroidx/work/WorkInfo$PeriodicityInfo;", "b", "", "a", "Landroidx/work/WorkInfo;", "toWorkInfo", "", "component1", "Landroidx/work/WorkInfo$State;", "component2", "Landroidx/work/Data;", "component3", "component4", "component5", "component6", "Landroidx/work/Constraints;", "component7", "", "component8", "Landroidx/work/BackoffPolicy;", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "", "component16", "component17", "id", "state", Constants.ELEMNAME_OUTPUT_STRING, "initialDelay", "intervalDuration", "flexDuration", "constraints", "runAttemptCount", "backoffPolicy", "backoffDelayDuration", "lastEnqueueTime", "periodCount", "generation", "nextScheduleTimeOverride", "stopReason", "tags", "progress", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "Landroidx/work/WorkInfo$State;", "getState", "()Landroidx/work/WorkInfo$State;", "c", "Landroidx/work/Data;", "getOutput", "()Landroidx/work/Data;", "d", "J", "getInitialDelay", "()J", "e", "getIntervalDuration", C6997f.f39671c, "getFlexDuration", C6998g.f39679a, "Landroidx/work/Constraints;", "getConstraints", "()Landroidx/work/Constraints;", C6999h.f39688c, "I", "getRunAttemptCount", "()I", "i", "Landroidx/work/BackoffPolicy;", "getBackoffPolicy", "()Landroidx/work/BackoffPolicy;", "setBackoffPolicy", "(Landroidx/work/BackoffPolicy;)V", "j", "getBackoffDelayDuration", "setBackoffDelayDuration", "(J)V", C4921e.f26537n, "getLastEnqueueTime", "setLastEnqueueTime", "l", "getPeriodCount", "setPeriodCount", "(I)V", "m", "getGeneration", GoogleApiAvailabilityLight.f29016b, "getNextScheduleTimeOverride", C4921e.f26528e, "getStopReason", "p", "Ljava/util/List;", "getTags", "()Ljava/util/List;", "q", "getProgress", "isPeriodic", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "isBackedOff", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final /* data */ class WorkInfoPojo {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @ColumnInfo(name = "id")
        @NotNull
        public final String id;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        @ColumnInfo(name = "state")
        @NotNull
        public final WorkInfo.State state;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        @ColumnInfo(name = Constants.ELEMNAME_OUTPUT_STRING)
        @NotNull
        public final Data output;

        /* renamed from: d, reason: from kotlin metadata and from toString */
        @ColumnInfo(name = "initial_delay")
        public final long initialDelay;

        /* renamed from: e, reason: from kotlin metadata and from toString */
        @ColumnInfo(name = "interval_duration")
        public final long intervalDuration;

        /* renamed from: f, reason: from kotlin metadata and from toString */
        @ColumnInfo(name = "flex_duration")
        public final long flexDuration;

        /* renamed from: g, reason: from kotlin metadata and from toString */
        @Embedded
        @NotNull
        public final Constraints constraints;

        /* renamed from: h, reason: from kotlin metadata and from toString */
        @ColumnInfo(name = "run_attempt_count")
        public final int runAttemptCount;

        /* renamed from: i, reason: from kotlin metadata and from toString */
        @ColumnInfo(name = "backoff_policy")
        @NotNull
        public BackoffPolicy backoffPolicy;

        /* renamed from: j, reason: from kotlin metadata and from toString */
        @ColumnInfo(name = "backoff_delay_duration")
        public long backoffDelayDuration;

        /* renamed from: k, reason: from kotlin metadata and from toString */
        @ColumnInfo(name = "last_enqueue_time")
        public long lastEnqueueTime;

        /* renamed from: l, reason: from kotlin metadata and from toString */
        @ColumnInfo(defaultValue = "0", name = "period_count")
        public int periodCount;

        /* renamed from: m, reason: from kotlin metadata and from toString */
        @ColumnInfo(name = "generation")
        public final int generation;

        /* renamed from: n, reason: from kotlin metadata and from toString */
        @ColumnInfo(name = "next_schedule_time_override")
        public final long nextScheduleTimeOverride;

        /* renamed from: o, reason: from kotlin metadata and from toString */
        @ColumnInfo(name = "stop_reason")
        public final int stopReason;

        /* renamed from: p, reason: from kotlin metadata and from toString */
        @Relation(entity = WorkTag.class, entityColumn = "work_spec_id", parentColumn = "id", projection = {"tag"})
        @NotNull
        public final List<String> tags;

        /* renamed from: q, reason: from kotlin metadata and from toString */
        @Relation(entity = WorkProgress.class, entityColumn = "work_spec_id", parentColumn = "id", projection = {"progress"})
        @NotNull
        public final List<Data> progress;

        public WorkInfoPojo(@NotNull String id, @NotNull WorkInfo.State state, @NotNull Data output, long j, long j2, long j3, @NotNull Constraints constraints, int i, @NotNull BackoffPolicy backoffPolicy, long j4, long j5, int i2, int i3, long j6, int i4, @NotNull List<String> tags, @NotNull List<Data> progress) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(constraints, "constraints");
            Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
            Intrinsics.checkNotNullParameter(tags, "tags");
            Intrinsics.checkNotNullParameter(progress, "progress");
            this.id = id;
            this.state = state;
            this.output = output;
            this.initialDelay = j;
            this.intervalDuration = j2;
            this.flexDuration = j3;
            this.constraints = constraints;
            this.runAttemptCount = i;
            this.backoffPolicy = backoffPolicy;
            this.backoffDelayDuration = j4;
            this.lastEnqueueTime = j5;
            this.periodCount = i2;
            this.generation = i3;
            this.nextScheduleTimeOverride = j6;
            this.stopReason = i4;
            this.tags = tags;
            this.progress = progress;
        }

        /* renamed from: a */
        public final long m7113a() {
            if (this.state == WorkInfo.State.ENQUEUED) {
                return WorkSpec.INSTANCE.calculateNextRunTime(isBackedOff(), this.runAttemptCount, this.backoffPolicy, this.backoffDelayDuration, this.lastEnqueueTime, this.periodCount, isPeriodic(), this.initialDelay, this.flexDuration, this.intervalDuration, this.nextScheduleTimeOverride);
            }
            return Long.MAX_VALUE;
        }

        /* renamed from: b */
        public final WorkInfo.PeriodicityInfo m7114b() {
            long j = this.intervalDuration;
            if (j != 0) {
                return new WorkInfo.PeriodicityInfo(j, this.flexDuration);
            }
            return null;
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* renamed from: component10, reason: from getter */
        public final long getBackoffDelayDuration() {
            return this.backoffDelayDuration;
        }

        /* renamed from: component11, reason: from getter */
        public final long getLastEnqueueTime() {
            return this.lastEnqueueTime;
        }

        /* renamed from: component12, reason: from getter */
        public final int getPeriodCount() {
            return this.periodCount;
        }

        /* renamed from: component13, reason: from getter */
        public final int getGeneration() {
            return this.generation;
        }

        /* renamed from: component14, reason: from getter */
        public final long getNextScheduleTimeOverride() {
            return this.nextScheduleTimeOverride;
        }

        /* renamed from: component15, reason: from getter */
        public final int getStopReason() {
            return this.stopReason;
        }

        @NotNull
        public final List<String> component16() {
            return this.tags;
        }

        @NotNull
        public final List<Data> component17() {
            return this.progress;
        }

        @NotNull
        /* renamed from: component2, reason: from getter */
        public final WorkInfo.State getState() {
            return this.state;
        }

        @NotNull
        /* renamed from: component3, reason: from getter */
        public final Data getOutput() {
            return this.output;
        }

        /* renamed from: component4, reason: from getter */
        public final long getInitialDelay() {
            return this.initialDelay;
        }

        /* renamed from: component5, reason: from getter */
        public final long getIntervalDuration() {
            return this.intervalDuration;
        }

        /* renamed from: component6, reason: from getter */
        public final long getFlexDuration() {
            return this.flexDuration;
        }

        @NotNull
        /* renamed from: component7, reason: from getter */
        public final Constraints getConstraints() {
            return this.constraints;
        }

        /* renamed from: component8, reason: from getter */
        public final int getRunAttemptCount() {
            return this.runAttemptCount;
        }

        @NotNull
        /* renamed from: component9, reason: from getter */
        public final BackoffPolicy getBackoffPolicy() {
            return this.backoffPolicy;
        }

        @NotNull
        public final WorkInfoPojo copy(@NotNull String id, @NotNull WorkInfo.State state, @NotNull Data output, long initialDelay, long intervalDuration, long flexDuration, @NotNull Constraints constraints, int runAttemptCount, @NotNull BackoffPolicy backoffPolicy, long backoffDelayDuration, long lastEnqueueTime, int periodCount, int generation, long nextScheduleTimeOverride, int stopReason, @NotNull List<String> tags, @NotNull List<Data> progress) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(constraints, "constraints");
            Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
            Intrinsics.checkNotNullParameter(tags, "tags");
            Intrinsics.checkNotNullParameter(progress, "progress");
            return new WorkInfoPojo(id, state, output, initialDelay, intervalDuration, flexDuration, constraints, runAttemptCount, backoffPolicy, backoffDelayDuration, lastEnqueueTime, periodCount, generation, nextScheduleTimeOverride, stopReason, tags, progress);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof WorkInfoPojo)) {
                return false;
            }
            WorkInfoPojo workInfoPojo = (WorkInfoPojo) other;
            return Intrinsics.areEqual(this.id, workInfoPojo.id) && this.state == workInfoPojo.state && Intrinsics.areEqual(this.output, workInfoPojo.output) && this.initialDelay == workInfoPojo.initialDelay && this.intervalDuration == workInfoPojo.intervalDuration && this.flexDuration == workInfoPojo.flexDuration && Intrinsics.areEqual(this.constraints, workInfoPojo.constraints) && this.runAttemptCount == workInfoPojo.runAttemptCount && this.backoffPolicy == workInfoPojo.backoffPolicy && this.backoffDelayDuration == workInfoPojo.backoffDelayDuration && this.lastEnqueueTime == workInfoPojo.lastEnqueueTime && this.periodCount == workInfoPojo.periodCount && this.generation == workInfoPojo.generation && this.nextScheduleTimeOverride == workInfoPojo.nextScheduleTimeOverride && this.stopReason == workInfoPojo.stopReason && Intrinsics.areEqual(this.tags, workInfoPojo.tags) && Intrinsics.areEqual(this.progress, workInfoPojo.progress);
        }

        public final long getBackoffDelayDuration() {
            return this.backoffDelayDuration;
        }

        @NotNull
        public final BackoffPolicy getBackoffPolicy() {
            return this.backoffPolicy;
        }

        @NotNull
        public final Constraints getConstraints() {
            return this.constraints;
        }

        public final long getFlexDuration() {
            return this.flexDuration;
        }

        public final int getGeneration() {
            return this.generation;
        }

        @NotNull
        public final String getId() {
            return this.id;
        }

        public final long getInitialDelay() {
            return this.initialDelay;
        }

        public final long getIntervalDuration() {
            return this.intervalDuration;
        }

        public final long getLastEnqueueTime() {
            return this.lastEnqueueTime;
        }

        public final long getNextScheduleTimeOverride() {
            return this.nextScheduleTimeOverride;
        }

        @NotNull
        public final Data getOutput() {
            return this.output;
        }

        public final int getPeriodCount() {
            return this.periodCount;
        }

        @NotNull
        public final List<Data> getProgress() {
            return this.progress;
        }

        public final int getRunAttemptCount() {
            return this.runAttemptCount;
        }

        @NotNull
        public final WorkInfo.State getState() {
            return this.state;
        }

        public final int getStopReason() {
            return this.stopReason;
        }

        @NotNull
        public final List<String> getTags() {
            return this.tags;
        }

        public int hashCode() {
            return (((((((((((((((((((((((((((((((this.id.hashCode() * 31) + this.state.hashCode()) * 31) + this.output.hashCode()) * 31) + Long.hashCode(this.initialDelay)) * 31) + Long.hashCode(this.intervalDuration)) * 31) + Long.hashCode(this.flexDuration)) * 31) + this.constraints.hashCode()) * 31) + Integer.hashCode(this.runAttemptCount)) * 31) + this.backoffPolicy.hashCode()) * 31) + Long.hashCode(this.backoffDelayDuration)) * 31) + Long.hashCode(this.lastEnqueueTime)) * 31) + Integer.hashCode(this.periodCount)) * 31) + Integer.hashCode(this.generation)) * 31) + Long.hashCode(this.nextScheduleTimeOverride)) * 31) + Integer.hashCode(this.stopReason)) * 31) + this.tags.hashCode()) * 31) + this.progress.hashCode();
        }

        public final boolean isBackedOff() {
            return this.state == WorkInfo.State.ENQUEUED && this.runAttemptCount > 0;
        }

        public final boolean isPeriodic() {
            return this.intervalDuration != 0;
        }

        public final void setBackoffDelayDuration(long j) {
            this.backoffDelayDuration = j;
        }

        public final void setBackoffPolicy(@NotNull BackoffPolicy backoffPolicy) {
            Intrinsics.checkNotNullParameter(backoffPolicy, "<set-?>");
            this.backoffPolicy = backoffPolicy;
        }

        public final void setLastEnqueueTime(long j) {
            this.lastEnqueueTime = j;
        }

        public final void setPeriodCount(int i) {
            this.periodCount = i;
        }

        @NotNull
        public String toString() {
            return "WorkInfoPojo(id=" + this.id + ", state=" + this.state + ", output=" + this.output + ", initialDelay=" + this.initialDelay + ", intervalDuration=" + this.intervalDuration + ", flexDuration=" + this.flexDuration + ", constraints=" + this.constraints + ", runAttemptCount=" + this.runAttemptCount + ", backoffPolicy=" + this.backoffPolicy + ", backoffDelayDuration=" + this.backoffDelayDuration + ", lastEnqueueTime=" + this.lastEnqueueTime + ", periodCount=" + this.periodCount + ", generation=" + this.generation + ", nextScheduleTimeOverride=" + this.nextScheduleTimeOverride + ", stopReason=" + this.stopReason + ", tags=" + this.tags + ", progress=" + this.progress + ')';
        }

        @NotNull
        public final WorkInfo toWorkInfo() {
            Data progress = this.progress.isEmpty() ^ true ? this.progress.get(0) : Data.EMPTY;
            UUID fromString = UUID.fromString(this.id);
            Intrinsics.checkNotNullExpressionValue(fromString, "fromString(id)");
            WorkInfo.State state = this.state;
            HashSet hashSet = new HashSet(this.tags);
            Data data = this.output;
            Intrinsics.checkNotNullExpressionValue(progress, "progress");
            return new WorkInfo(fromString, state, hashSet, data, progress, this.runAttemptCount, this.generation, this.constraints, this.initialDelay, m7114b(), m7113a(), this.stopReason);
        }

        public /* synthetic */ WorkInfoPojo(String str, WorkInfo.State state, Data data, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, int i2, int i3, long j6, int i4, List list, List list2, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, state, data, (i5 & 8) != 0 ? 0L : j, (i5 & 16) != 0 ? 0L : j2, (i5 & 32) != 0 ? 0L : j3, constraints, i, (i5 & 256) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i5 & 512) != 0 ? 30000L : j4, (i5 & 1024) != 0 ? 0L : j5, (i5 & 2048) != 0 ? 0 : i2, i3, j6, i4, list, list2);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ WorkSpec(java.lang.String r35, androidx.work.WorkInfo.State r36, java.lang.String r37, java.lang.String r38, androidx.work.Data r39, androidx.work.Data r40, long r41, long r43, long r45, androidx.work.Constraints r47, int r48, androidx.work.BackoffPolicy r49, long r50, long r52, long r54, long r56, boolean r58, androidx.work.OutOfQuotaPolicy r59, int r60, int r61, long r62, int r64, int r65, int r66, kotlin.jvm.internal.DefaultConstructorMarker r67) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.model.WorkSpec.<init>(java.lang.String, androidx.work.WorkInfo$State, java.lang.String, java.lang.String, androidx.work.Data, androidx.work.Data, long, long, long, androidx.work.Constraints, int, androidx.work.BackoffPolicy, long, long, long, long, boolean, androidx.work.OutOfQuotaPolicy, int, int, long, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(@NotNull String id, @NotNull String workerClassName_) {
        this(id, null, workerClassName_, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, 8388602, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(workerClassName_, "workerClassName_");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(@NotNull String newId, @NotNull WorkSpec other) {
        this(newId, other.state, other.workerClassName, other.inputMergerClassName, new Data(other.input), new Data(other.output), other.initialDelay, other.intervalDuration, other.flexDuration, new Constraints(other.constraints), other.runAttemptCount, other.backoffPolicy, other.backoffDelayDuration, other.lastEnqueueTime, other.minimumRetentionDuration, other.scheduleRequestedAt, other.expedited, other.outOfQuotaPolicy, other.periodCount, 0, other.nextScheduleTimeOverride, other.nextScheduleTimeOverrideGeneration, other.stopReason, 524288, null);
        Intrinsics.checkNotNullParameter(newId, "newId");
        Intrinsics.checkNotNullParameter(other, "other");
    }
}
