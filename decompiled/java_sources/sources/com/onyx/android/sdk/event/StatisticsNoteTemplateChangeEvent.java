package com.onyx.android.sdk.event;

import com.onyx.android.sdk.data.StatisticConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010%\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0003HÂ\u0003J\t\u0010\u0007\u001a\u00020\u0003HÂ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\nH\u0016J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\b\u0010\u000f\u001a\u00020\u0003H\u0016J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/event/StatisticsNoteTemplateChangeEvent;", "Lcom/onyx/android/sdk/event/BaseStatisticsEvent;", "noteTemplateName", "", "noteTemplateType", "(Ljava/lang/String;Ljava/lang/String;)V", "component1", "component2", "copy", "dataToMap", "", "equals", "", Constants.ATTRVAL_OTHER, "", "getEventId", "hashCode", "", "toString", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class StatisticsNoteTemplateChangeEvent implements BaseStatisticsEvent {

    @NotNull
    private final String noteTemplateName;

    @NotNull
    private final String noteTemplateType;

    public StatisticsNoteTemplateChangeEvent(@NotNull String noteTemplateName, @NotNull String noteTemplateType) {
        Intrinsics.checkNotNullParameter(noteTemplateName, "noteTemplateName");
        Intrinsics.checkNotNullParameter(noteTemplateType, "noteTemplateType");
        this.noteTemplateName = noteTemplateName;
        this.noteTemplateType = noteTemplateType;
    }

    /* renamed from: component1, reason: from getter */
    private final String getNoteTemplateName() {
        return this.noteTemplateName;
    }

    /* renamed from: component2, reason: from getter */
    private final String getNoteTemplateType() {
        return this.noteTemplateType;
    }

    public static /* synthetic */ StatisticsNoteTemplateChangeEvent copy$default(StatisticsNoteTemplateChangeEvent statisticsNoteTemplateChangeEvent, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = statisticsNoteTemplateChangeEvent.noteTemplateName;
        }
        if ((i & 2) != 0) {
            str2 = statisticsNoteTemplateChangeEvent.noteTemplateType;
        }
        return statisticsNoteTemplateChangeEvent.copy(str, str2);
    }

    @NotNull
    public final StatisticsNoteTemplateChangeEvent copy(@NotNull String noteTemplateName, @NotNull String noteTemplateType) {
        Intrinsics.checkNotNullParameter(noteTemplateName, "noteTemplateName");
        Intrinsics.checkNotNullParameter(noteTemplateType, "noteTemplateType");
        return new StatisticsNoteTemplateChangeEvent(noteTemplateName, noteTemplateType);
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public Map<String, String> dataToMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(StatisticConstant.EVENT_PARAM_NOTE_TEMPLATE_NAME, this.noteTemplateName);
        linkedHashMap.put(StatisticConstant.EVENT_PARAM_NOTE_TEMPLATE_TYPE, this.noteTemplateType);
        return linkedHashMap;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof StatisticsNoteTemplateChangeEvent)) {
            return false;
        }
        StatisticsNoteTemplateChangeEvent statisticsNoteTemplateChangeEvent = (StatisticsNoteTemplateChangeEvent) other;
        return Intrinsics.areEqual(this.noteTemplateName, statisticsNoteTemplateChangeEvent.noteTemplateName) && Intrinsics.areEqual(this.noteTemplateType, statisticsNoteTemplateChangeEvent.noteTemplateType);
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public String getEventId() {
        return StatisticConstant.EVENT_ID_NOTE_TEMPLATE_CHANGE;
    }

    public int hashCode() {
        return (this.noteTemplateName.hashCode() * 31) + this.noteTemplateType.hashCode();
    }

    @NotNull
    public String toString() {
        return "StatisticsNoteTemplateChangeEvent(noteTemplateName=" + this.noteTemplateName + ", noteTemplateType=" + this.noteTemplateType + ')';
    }
}
