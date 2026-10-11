package com.onyx.android.sdk.replicator.counter.model;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.replicator.counter.data.CounterRecordState;
import com.onyx.android.sdk.replicator.counter.data.CounterType;
import com.onyx.galaxy.note.usercenter.data.JavascriptArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u0000 *2\u00020\u00012\u00020\u0002:\u0002*+B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0019J\u0006\u0010'\u001a\u00020%J\u0006\u0010(\u001a\u00020%J\u0006\u0010)\u001a\u00020%R\u0011\u0010\u0004\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R \u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0014\"\u0004\b \u0010\u0016R\u001a\u0010!\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u000b\"\u0004\b#\u0010\r¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "Ljava/io/Serializable;", "()V", "duration", "", "getDuration", "()J", "state", "", "getState", "()I", "setState", "(I)V", "status", "getStatus", "setStatus", JavascriptArgs.KEY_TASK_ID, "", "getTaskId", "()Ljava/lang/String;", "setTaskId", "(Ljava/lang/String;)V", "timeList", "", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;", "getTimeList", "()Ljava/util/List;", "setTimeList", "(Ljava/util/List;)V", "title", "getTitle", "setTitle", "type", "getType", "setType", "addRecord", "", "timeRecord", "complete", OneDriverConstants.OPERATION_STATUS_PROGRESS, Constants.RESET, "Companion", "TimeRecord", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCounterRecordModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CounterRecordModel.kt\ncom/onyx/android/sdk/replicator/counter/model/CounterRecordModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"})
/* loaded from: classes8.dex */
public final class CounterRecordModel extends BaseReplicatorModel implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int status;

    @Nullable
    private String taskId;

    @NotNull
    private String title = "";
    private int type = CounterType.COUNT_UP.ordinal();
    private int state = CounterRecordState.IDLE.ordinal();

    @NotNull
    private List<TimeRecord> timeList = new ArrayList();

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$Companion;", "", "()V", "createFromTaskModel", "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;", "taskModel", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CounterRecordModel createFromTaskModel(@NotNull CounterTaskModel taskModel) {
            Intrinsics.checkNotNullParameter(taskModel, "taskModel");
            CounterRecordModel counterRecordModel = new CounterRecordModel();
            counterRecordModel.setTaskId(taskModel.getUniqueId());
            counterRecordModel.setTitle(taskModel.getTitle());
            counterRecordModel.setType(taskModel.getType());
            return counterRecordModel;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel$TimeRecord;", "Ljava/io/Serializable;", "title", "", "duration", "", "(Ljava/lang/String;J)V", "getDuration", "()J", "setDuration", "(J)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final /* data */ class TimeRecord implements Serializable {
        private long duration;

        @Nullable
        private String title;

        public TimeRecord() {
            this(null, 0L, 3, null);
        }

        public static /* synthetic */ TimeRecord copy$default(TimeRecord timeRecord, String str, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                str = timeRecord.title;
            }
            if ((i & 2) != 0) {
                j = timeRecord.duration;
            }
            return timeRecord.copy(str, j);
        }

        @Nullable
        /* renamed from: component1, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        /* renamed from: component2, reason: from getter */
        public final long getDuration() {
            return this.duration;
        }

        @NotNull
        public final TimeRecord copy(@Nullable String title, long duration) {
            return new TimeRecord(title, duration);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof TimeRecord)) {
                return false;
            }
            TimeRecord timeRecord = (TimeRecord) other;
            return Intrinsics.areEqual(this.title, timeRecord.title) && this.duration == timeRecord.duration;
        }

        public final long getDuration() {
            return this.duration;
        }

        @Nullable
        public final String getTitle() {
            return this.title;
        }

        public int hashCode() {
            String str = this.title;
            return ((str == null ? 0 : str.hashCode()) * 31) + Long.hashCode(this.duration);
        }

        public final void setDuration(long j) {
            this.duration = j;
        }

        public final void setTitle(@Nullable String str) {
            this.title = str;
        }

        @NotNull
        public String toString() {
            return "TimeRecord(title=" + this.title + ", duration=" + this.duration + ')';
        }

        public TimeRecord(@Nullable String str, long j) {
            this.title = str;
            this.duration = j;
        }

        public /* synthetic */ TimeRecord(String str, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? 0L : j);
        }
    }

    public final void addRecord(@NotNull TimeRecord timeRecord) {
        Intrinsics.checkNotNullParameter(timeRecord, "timeRecord");
        this.timeList.add(timeRecord);
    }

    public final void complete() {
        this.state = CounterRecordState.DONE.ordinal();
    }

    public final long getDuration() {
        Iterator<T> it2 = this.timeList.iterator();
        long j = 0;
        while (it2.hasNext()) {
            j += ((TimeRecord) it2.next()).getDuration();
        }
        return j;
    }

    public final int getState() {
        return this.state;
    }

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final String getTaskId() {
        return this.taskId;
    }

    @NotNull
    public final List<TimeRecord> getTimeList() {
        return this.timeList;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    public final void inProgress() {
        this.state = CounterRecordState.IN_PROGRESS.ordinal();
    }

    public final void reset() {
        this.state = CounterRecordState.IDLE.ordinal();
        this.timeList.clear();
    }

    public final void setState(int i) {
        this.state = i;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTaskId(@Nullable String str) {
        this.taskId = str;
    }

    public final void setTimeList(@NotNull List<TimeRecord> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.timeList = list;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
