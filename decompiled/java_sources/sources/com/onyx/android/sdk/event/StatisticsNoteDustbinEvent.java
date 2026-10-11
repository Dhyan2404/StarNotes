package com.onyx.android.sdk.event;

import com.onyx.android.sdk.data.NoteDustbinFuncType;
import com.onyx.android.sdk.data.StatisticConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0005\u001a\u00020\u0003HÂ\u0003J\u0013\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\bH\u0016J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\b\u0010\u000e\u001a\u00020\tH\u0016J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\tHÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/event/StatisticsNoteDustbinEvent;", "Lcom/onyx/android/sdk/event/BaseStatisticsEvent;", "noteDustbinFuncType", "Lcom/onyx/android/sdk/data/NoteDustbinFuncType;", "(Lcom/onyx/android/sdk/data/NoteDustbinFuncType;)V", "component1", "copy", "dataToMap", "", "", "equals", "", Constants.ATTRVAL_OTHER, "", "getEventId", "hashCode", "", "toString", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class StatisticsNoteDustbinEvent implements BaseStatisticsEvent {

    @NotNull
    private final NoteDustbinFuncType noteDustbinFuncType;

    public StatisticsNoteDustbinEvent(@NotNull NoteDustbinFuncType noteDustbinFuncType) {
        Intrinsics.checkNotNullParameter(noteDustbinFuncType, "noteDustbinFuncType");
        this.noteDustbinFuncType = noteDustbinFuncType;
    }

    /* renamed from: component1, reason: from getter */
    private final NoteDustbinFuncType getNoteDustbinFuncType() {
        return this.noteDustbinFuncType;
    }

    public static /* synthetic */ StatisticsNoteDustbinEvent copy$default(StatisticsNoteDustbinEvent statisticsNoteDustbinEvent, NoteDustbinFuncType noteDustbinFuncType, int i, Object obj) {
        if ((i & 1) != 0) {
            noteDustbinFuncType = statisticsNoteDustbinEvent.noteDustbinFuncType;
        }
        return statisticsNoteDustbinEvent.copy(noteDustbinFuncType);
    }

    @NotNull
    public final StatisticsNoteDustbinEvent copy(@NotNull NoteDustbinFuncType noteDustbinFuncType) {
        Intrinsics.checkNotNullParameter(noteDustbinFuncType, "noteDustbinFuncType");
        return new StatisticsNoteDustbinEvent(noteDustbinFuncType);
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public Map<String, String> dataToMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String lowerCase = this.noteDustbinFuncType.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        linkedHashMap.put(StatisticConstant.EVENT_PARAM_NOTE_DUSTBIN_FUNCTION, lowerCase);
        return linkedHashMap;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof StatisticsNoteDustbinEvent) && this.noteDustbinFuncType == ((StatisticsNoteDustbinEvent) other).noteDustbinFuncType;
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public String getEventId() {
        return StatisticConstant.EVENT_ID_NOTE_DUSTBIN;
    }

    public int hashCode() {
        return this.noteDustbinFuncType.hashCode();
    }

    @NotNull
    public String toString() {
        return "StatisticsNoteDustbinEvent(noteDustbinFuncType=" + this.noteDustbinFuncType + ')';
    }
}
