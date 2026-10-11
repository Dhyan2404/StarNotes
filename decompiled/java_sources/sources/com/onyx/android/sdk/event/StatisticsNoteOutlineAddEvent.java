package com.onyx.android.sdk.event;

import com.onyx.android.sdk.data.NoteOutlineAddFrom;
import com.onyx.android.sdk.data.StatisticConstant;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/event/StatisticsNoteOutlineAddEvent;", "Lcom/onyx/android/sdk/event/BaseStatisticsEvent;", "noteOutlineAddFrom", "Lcom/onyx/android/sdk/data/NoteOutlineAddFrom;", "(Lcom/onyx/android/sdk/data/NoteOutlineAddFrom;)V", "dataToMap", "", "", "getEventId", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class StatisticsNoteOutlineAddEvent implements BaseStatisticsEvent {

    @NotNull
    private final NoteOutlineAddFrom noteOutlineAddFrom;

    public StatisticsNoteOutlineAddEvent(@NotNull NoteOutlineAddFrom noteOutlineAddFrom) {
        Intrinsics.checkNotNullParameter(noteOutlineAddFrom, "noteOutlineAddFrom");
        this.noteOutlineAddFrom = noteOutlineAddFrom;
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public Map<String, String> dataToMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String lowerCase = this.noteOutlineAddFrom.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        linkedHashMap.put(StatisticConstant.EVENT_PARAM_NOTE_OUTLINE_ADD_FROM, lowerCase);
        return linkedHashMap;
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public String getEventId() {
        return StatisticConstant.EVENT_ID_NOTE_OUTLINE_ADD;
    }
}
