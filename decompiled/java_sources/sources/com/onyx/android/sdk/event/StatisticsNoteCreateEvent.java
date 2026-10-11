package com.onyx.android.sdk.event;

import com.onyx.android.sdk.data.NoteCreateFrom;
import com.onyx.android.sdk.data.NoteCreateType;
import com.onyx.android.sdk.data.StatisticConstant;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\bH\u0016J\b\u0010\n\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/event/StatisticsNoteCreateEvent;", "Lcom/onyx/android/sdk/event/BaseStatisticsEvent;", "noteCreateFrom", "Lcom/onyx/android/sdk/data/NoteCreateFrom;", "noteCreateType", "Lcom/onyx/android/sdk/data/NoteCreateType;", "(Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/data/NoteCreateType;)V", "dataToMap", "", "", "getEventId", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class StatisticsNoteCreateEvent implements BaseStatisticsEvent {

    @NotNull
    private final NoteCreateFrom noteCreateFrom;

    @NotNull
    private final NoteCreateType noteCreateType;

    public StatisticsNoteCreateEvent(@NotNull NoteCreateFrom noteCreateFrom, @NotNull NoteCreateType noteCreateType) {
        Intrinsics.checkNotNullParameter(noteCreateFrom, "noteCreateFrom");
        Intrinsics.checkNotNullParameter(noteCreateType, "noteCreateType");
        this.noteCreateFrom = noteCreateFrom;
        this.noteCreateType = noteCreateType;
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public Map<String, String> dataToMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String name = this.noteCreateFrom.name();
        Locale locale = Locale.ROOT;
        String lowerCase = name.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        linkedHashMap.put(StatisticConstant.EVENT_PARAM_NOTE_CREATE_FROM, lowerCase);
        String lowerCase2 = this.noteCreateType.name().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        linkedHashMap.put(StatisticConstant.EVENT_PARAM_NOTE_CREATE_TYPE, lowerCase2);
        return linkedHashMap;
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public String getEventId() {
        return StatisticConstant.EVENT_ID_NOTE_CREATE;
    }
}
