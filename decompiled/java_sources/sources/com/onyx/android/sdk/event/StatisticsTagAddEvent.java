package com.onyx.android.sdk.event;

import com.onyx.android.sdk.data.StatisticConstant;
import com.onyx.android.sdk.data.TagAddFrom;
import com.onyx.android.sdk.data.TagAddType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u0007\u001a\u00020\u0003HÂ\u0003J\t\u0010\b\u001a\u00020\u0005HÂ\u0003J\u001d\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000bH\u0016J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\b\u0010\u0011\u001a\u00020\fH\u0016J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\fHÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/event/StatisticsTagAddEvent;", "Lcom/onyx/android/sdk/event/BaseStatisticsEvent;", "tagAddFrom", "Lcom/onyx/android/sdk/data/TagAddFrom;", "tagAddType", "Lcom/onyx/android/sdk/data/TagAddType;", "(Lcom/onyx/android/sdk/data/TagAddFrom;Lcom/onyx/android/sdk/data/TagAddType;)V", "component1", "component2", "copy", "dataToMap", "", "", "equals", "", Constants.ATTRVAL_OTHER, "", "getEventId", "hashCode", "", "toString", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class StatisticsTagAddEvent implements BaseStatisticsEvent {

    @NotNull
    private final TagAddFrom tagAddFrom;

    @NotNull
    private final TagAddType tagAddType;

    public StatisticsTagAddEvent(@NotNull TagAddFrom tagAddFrom, @NotNull TagAddType tagAddType) {
        Intrinsics.checkNotNullParameter(tagAddFrom, "tagAddFrom");
        Intrinsics.checkNotNullParameter(tagAddType, "tagAddType");
        this.tagAddFrom = tagAddFrom;
        this.tagAddType = tagAddType;
    }

    /* renamed from: component1, reason: from getter */
    private final TagAddFrom getTagAddFrom() {
        return this.tagAddFrom;
    }

    /* renamed from: component2, reason: from getter */
    private final TagAddType getTagAddType() {
        return this.tagAddType;
    }

    public static /* synthetic */ StatisticsTagAddEvent copy$default(StatisticsTagAddEvent statisticsTagAddEvent, TagAddFrom tagAddFrom, TagAddType tagAddType, int i, Object obj) {
        if ((i & 1) != 0) {
            tagAddFrom = statisticsTagAddEvent.tagAddFrom;
        }
        if ((i & 2) != 0) {
            tagAddType = statisticsTagAddEvent.tagAddType;
        }
        return statisticsTagAddEvent.copy(tagAddFrom, tagAddType);
    }

    @NotNull
    public final StatisticsTagAddEvent copy(@NotNull TagAddFrom tagAddFrom, @NotNull TagAddType tagAddType) {
        Intrinsics.checkNotNullParameter(tagAddFrom, "tagAddFrom");
        Intrinsics.checkNotNullParameter(tagAddType, "tagAddType");
        return new StatisticsTagAddEvent(tagAddFrom, tagAddType);
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public Map<String, String> dataToMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String name = this.tagAddFrom.name();
        Locale locale = Locale.ROOT;
        String lowerCase = name.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        linkedHashMap.put(StatisticConstant.EVENT_PARAM_TAG_ADD_FROM, lowerCase);
        String lowerCase2 = this.tagAddType.name().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        linkedHashMap.put(StatisticConstant.EVENT_PARAM_TAG_ADD_TYPE, lowerCase2);
        return linkedHashMap;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StatisticsTagAddEvent)) {
            return false;
        }
        StatisticsTagAddEvent statisticsTagAddEvent = (StatisticsTagAddEvent) other;
        return this.tagAddFrom == statisticsTagAddEvent.tagAddFrom && this.tagAddType == statisticsTagAddEvent.tagAddType;
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public String getEventId() {
        return StatisticConstant.EVENT_ID_TAG_ADD;
    }

    public int hashCode() {
        return (this.tagAddFrom.hashCode() * 31) + this.tagAddType.hashCode();
    }

    @NotNull
    public String toString() {
        return "StatisticsTagAddEvent(tagAddFrom=" + this.tagAddFrom + ", tagAddType=" + this.tagAddType + ')';
    }
}
