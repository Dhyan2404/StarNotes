package com.onyx.android.sdk.event;

import com.onyx.android.sdk.data.GraphFillToggleFrom;
import com.onyx.android.sdk.data.SettingToggle;
import com.onyx.android.sdk.data.StatisticConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u0007\u001a\u00020\u0003HÂ\u0003J\t\u0010\b\u001a\u00020\u0005HÂ\u0003J\u001d\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000bH\u0016J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\b\u0010\u0011\u001a\u00020\fH\u0016J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\fHÖ\u0001R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;", "Lcom/onyx/android/sdk/event/BaseStatisticsEvent;", "settingToggle", "Lcom/onyx/android/sdk/data/SettingToggle;", "graphFillToggleFrom", "Lcom/onyx/android/sdk/data/GraphFillToggleFrom;", "(Lcom/onyx/android/sdk/data/SettingToggle;Lcom/onyx/android/sdk/data/GraphFillToggleFrom;)V", "component1", "component2", "copy", "dataToMap", "", "", "equals", "", Constants.ATTRVAL_OTHER, "", "getEventId", "hashCode", "", "toString", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class StatisticsNoteToolbarGraphFillToggleEvent implements BaseStatisticsEvent {

    @NotNull
    private final GraphFillToggleFrom graphFillToggleFrom;

    @NotNull
    private final SettingToggle settingToggle;

    public StatisticsNoteToolbarGraphFillToggleEvent(@NotNull SettingToggle settingToggle, @NotNull GraphFillToggleFrom graphFillToggleFrom) {
        Intrinsics.checkNotNullParameter(settingToggle, "settingToggle");
        Intrinsics.checkNotNullParameter(graphFillToggleFrom, "graphFillToggleFrom");
        this.settingToggle = settingToggle;
        this.graphFillToggleFrom = graphFillToggleFrom;
    }

    /* renamed from: component1, reason: from getter */
    private final SettingToggle getSettingToggle() {
        return this.settingToggle;
    }

    /* renamed from: component2, reason: from getter */
    private final GraphFillToggleFrom getGraphFillToggleFrom() {
        return this.graphFillToggleFrom;
    }

    public static /* synthetic */ StatisticsNoteToolbarGraphFillToggleEvent copy$default(StatisticsNoteToolbarGraphFillToggleEvent statisticsNoteToolbarGraphFillToggleEvent, SettingToggle settingToggle, GraphFillToggleFrom graphFillToggleFrom, int i, Object obj) {
        if ((i & 1) != 0) {
            settingToggle = statisticsNoteToolbarGraphFillToggleEvent.settingToggle;
        }
        if ((i & 2) != 0) {
            graphFillToggleFrom = statisticsNoteToolbarGraphFillToggleEvent.graphFillToggleFrom;
        }
        return statisticsNoteToolbarGraphFillToggleEvent.copy(settingToggle, graphFillToggleFrom);
    }

    @NotNull
    public final StatisticsNoteToolbarGraphFillToggleEvent copy(@NotNull SettingToggle settingToggle, @NotNull GraphFillToggleFrom graphFillToggleFrom) {
        Intrinsics.checkNotNullParameter(settingToggle, "settingToggle");
        Intrinsics.checkNotNullParameter(graphFillToggleFrom, "graphFillToggleFrom");
        return new StatisticsNoteToolbarGraphFillToggleEvent(settingToggle, graphFillToggleFrom);
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public Map<String, String> dataToMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String name = this.settingToggle.name();
        Locale locale = Locale.ROOT;
        String lowerCase = name.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        linkedHashMap.put(StatisticConstant.EVENT_PARAM_GRAPH_FILL_TOGGLE, lowerCase);
        String lowerCase2 = this.graphFillToggleFrom.name().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        linkedHashMap.put(StatisticConstant.EVENT_PARAM_GRAPH_FILL_TOGGLE_FROM, lowerCase2);
        return linkedHashMap;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StatisticsNoteToolbarGraphFillToggleEvent)) {
            return false;
        }
        StatisticsNoteToolbarGraphFillToggleEvent statisticsNoteToolbarGraphFillToggleEvent = (StatisticsNoteToolbarGraphFillToggleEvent) other;
        return this.settingToggle == statisticsNoteToolbarGraphFillToggleEvent.settingToggle && this.graphFillToggleFrom == statisticsNoteToolbarGraphFillToggleEvent.graphFillToggleFrom;
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public String getEventId() {
        return StatisticConstant.EVENT_ID_NOTE_TOOLBAR_GRAPH_FILL_TOGGLE;
    }

    public int hashCode() {
        return (this.settingToggle.hashCode() * 31) + this.graphFillToggleFrom.hashCode();
    }

    @NotNull
    public String toString() {
        return "StatisticsNoteToolbarGraphFillToggleEvent(settingToggle=" + this.settingToggle + ", graphFillToggleFrom=" + this.graphFillToggleFrom + ')';
    }
}
