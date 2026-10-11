package com.onyx.android.sdk.event;

import com.onyx.android.sdk.data.StatisticConstant;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0003\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0014\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0007H\u0016J\b\u0010\b\u001a\u00020\u0003H\u0016R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/event/StatisticsStoolbarPageAdd;", "Lcom/onyx/android/sdk/event/BaseStatisticsEvent;", "postion", "", "pageAddFrom", "(Ljava/lang/String;Ljava/lang/String;)V", "dataToMap", "", "getEventId", "Companion", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class StatisticsStoolbarPageAdd implements BaseStatisticsEvent {

    @NotNull
    public static final String PAGE_ADD_FROM_CUSTOM = "custom";

    @NotNull
    public static final String PAGE_ADD_FROM_IMPORT_FILE = "import_file";

    @NotNull
    public static final String PAGE_ADD_FROM_IMPORT_PICTURE = "import_picture";

    @NotNull
    public static final String PAGE_ADD_FROM_MORE_TEMPLATE = "more_template";

    @NotNull
    public static final String PAGE_ADD_FROM_OTHER_DOC = "other_doc";

    @NotNull
    public static final String PAGE_ADD_FROM_PHOTO = "photo";

    @NotNull
    public static final String PAGE_ADD_FROM_RECENT = "recent";

    @NotNull
    public static final String PAGE_ADD_FROM_SCAN_DOC = "scan_doc";

    @NotNull
    private final String pageAddFrom;

    @NotNull
    private final String postion;

    public StatisticsStoolbarPageAdd(@NotNull String postion, @NotNull String pageAddFrom) {
        Intrinsics.checkNotNullParameter(postion, "postion");
        Intrinsics.checkNotNullParameter(pageAddFrom, "pageAddFrom");
        this.postion = postion;
        this.pageAddFrom = pageAddFrom;
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public Map<String, String> dataToMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(StatisticConstant.EVENT_PARAM_PAGE_ADD_FROM, this.pageAddFrom);
        linkedHashMap.put(StatisticConstant.EVENT_PARAM_PAGE_ADD_POSITION, this.postion);
        return linkedHashMap;
    }

    @Override // com.onyx.android.sdk.event.BaseStatisticsEvent
    @NotNull
    public String getEventId() {
        return StatisticConstant.EVENT_ID_STOOLBAR_PAGE_ADD;
    }
}
