package com.onyx.android.sdk.replicator.counter.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.replicator.counter.data.CounterType;
import com.sun.org.apache.xalan.internal.templates.Constants;
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

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0003R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0012\"\u0004\b\u001d\u0010\u0014¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "Ljava/io/Serializable;", "()V", "countList", "", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;", "getCountList", "()Ljava/util/List;", "setCountList", "(Ljava/util/List;)V", "duration", "", "getDuration", "()J", "status", "", "getStatus", "()I", "setStatus", "(I)V", "title", "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "type", "getType", "setType", "CountTimeSetting", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCounterTaskModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CounterTaskModel.kt\ncom/onyx/android/sdk/replicator/counter/model/CounterTaskModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"})
/* loaded from: classes8.dex */
public final class CounterTaskModel extends BaseReplicatorModel implements Serializable {
    private int status;

    @NotNull
    private String title = "";
    private int type = CounterType.COUNT_UP.ordinal();

    @NotNull
    private List<CountTimeSetting> countList = new ArrayList();

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;", "Ljava/io/Serializable;", "title", "", "duration", "", "(Ljava/lang/String;J)V", "getDuration", "()J", "setDuration", "(J)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final /* data */ class CountTimeSetting implements Serializable {
        private long duration;

        @Nullable
        private String title;

        public CountTimeSetting() {
            this(null, 0L, 3, null);
        }

        public static /* synthetic */ CountTimeSetting copy$default(CountTimeSetting countTimeSetting, String str, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                str = countTimeSetting.title;
            }
            if ((i & 2) != 0) {
                j = countTimeSetting.duration;
            }
            return countTimeSetting.copy(str, j);
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
        public final CountTimeSetting copy(@Nullable String title, long duration) {
            return new CountTimeSetting(title, duration);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CountTimeSetting)) {
                return false;
            }
            CountTimeSetting countTimeSetting = (CountTimeSetting) other;
            return Intrinsics.areEqual(this.title, countTimeSetting.title) && this.duration == countTimeSetting.duration;
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
            return "CountTimeSetting(title=" + this.title + ", duration=" + this.duration + ')';
        }

        public CountTimeSetting(@Nullable String str, long j) {
            this.title = str;
            this.duration = j;
        }

        public /* synthetic */ CountTimeSetting(String str, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? 0L : j);
        }
    }

    public CounterTaskModel() {
        ensureUniqueIdExist();
    }

    @NotNull
    public final List<CountTimeSetting> getCountList() {
        return this.countList;
    }

    public final long getDuration() {
        Iterator<T> it2 = this.countList.iterator();
        long j = 0;
        while (it2.hasNext()) {
            j += ((CountTimeSetting) it2.next()).getDuration();
        }
        return j;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    public final void setCountList(@NotNull List<CountTimeSetting> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.countList = list;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setType(int i) {
        this.type = i;
    }
}
