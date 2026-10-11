package com.onyx.android.sdk.event;

import com.onyx.android.sdk.data.StatisticConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010%\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0005\u001a\u00020\u0003HÂ\u0003J\u0013\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\bH\u0016J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\b\u0010\r\u001a\u00020\u0003H\u0016J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/event/StatisticsFullDocSidebarEvent;", "Lcom/onyx/android/sdk/event/BaseStatisticsEvent;", "noteOutlineType", "", "(Ljava/lang/String;)V", "component1", "copy", "dataToMap", "", "equals", "", Constants.ATTRVAL_OTHER, "", "getEventId", "hashCode", "", "toString", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class StatisticsFullDocSidebarEvent implements BaseStatisticsEvent {

    @NotNull
    private final String noteOutlineType;

    public StatisticsFullDocSidebarEvent(@NotNull String noteOutlineType) {
        Intrinsics.checkNotNullParameter(noteOutlineType, "noteOutlineType");
        this.noteOutlineType = noteOutlineType;
    }

    /* renamed from: component1, reason: from getter */
    private final String getNoteOutlineType() {
        return this.noteOutlineType;
    }

    public static /* synthetic */ StatisticsFullDocSidebarEvent copy$default(StatisticsFullDocSidebarEvent statisticsFullDocSidebarEvent, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = statisticsFullDocSidebarEvent.noteOutlineType;
        }
        return statisticsFullDocSidebarEvent.copy(str);
    }

    @NotNull
    public final StatisticsFullDocSidebarEvent copy(@NotNull String noteOutlineType) {
        Intrinsics.checkNotNullParameter(noteOutlineType, "noteOutlineType");
        return new StatisticsFullDocSidebarEvent(noteOutlineType);
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public Map<String, String> dataToMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(StatisticConstant.EVENT_PARAM_SIDEBAR_TYPE, this.noteOutlineType);
        return linkedHashMap;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof StatisticsFullDocSidebarEvent) && Intrinsics.areEqual(this.noteOutlineType, ((StatisticsFullDocSidebarEvent) other).noteOutlineType);
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public String getEventId() {
        return StatisticConstant.EVENT_ID_FULL_DOC_SIDEBAR;
    }

    public int hashCode() {
        return this.noteOutlineType.hashCode();
    }

    @NotNull
    public String toString() {
        return "StatisticsFullDocSidebarEvent(noteOutlineType=" + this.noteOutlineType + ')';
    }
}
