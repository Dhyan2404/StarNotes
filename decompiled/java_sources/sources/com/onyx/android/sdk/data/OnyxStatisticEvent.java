package com.onyx.android.sdk.data;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\b\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0017\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005HÆ\u0003J+\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0016\b\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u001f\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/data/OnyxStatisticEvent;", "", "eventId", "", "eventData", "", "(Ljava/lang/String;Ljava/util/Map;)V", "getEventData", "()Ljava/util/Map;", "getEventId", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class OnyxStatisticEvent {

    @Nullable
    private final Map<String, Object> eventData;

    @NotNull
    private final String eventId;

    public OnyxStatisticEvent(@NotNull String eventId, @Nullable Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        this.eventId = eventId;
        this.eventData = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OnyxStatisticEvent copy$default(OnyxStatisticEvent onyxStatisticEvent, String str, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = onyxStatisticEvent.eventId;
        }
        if ((i & 2) != 0) {
            map = onyxStatisticEvent.eventData;
        }
        return onyxStatisticEvent.copy(str, map);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getEventId() {
        return this.eventId;
    }

    @Nullable
    public final Map<String, Object> component2() {
        return this.eventData;
    }

    @NotNull
    public final OnyxStatisticEvent copy(@NotNull String eventId, @Nullable Map<String, ? extends Object> eventData) {
        Intrinsics.checkNotNullParameter(eventId, "eventId");
        return new OnyxStatisticEvent(eventId, eventData);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OnyxStatisticEvent)) {
            return false;
        }
        OnyxStatisticEvent onyxStatisticEvent = (OnyxStatisticEvent) other;
        return Intrinsics.areEqual(this.eventId, onyxStatisticEvent.eventId) && Intrinsics.areEqual(this.eventData, onyxStatisticEvent.eventData);
    }

    @Nullable
    public final Map<String, Object> getEventData() {
        return this.eventData;
    }

    @NotNull
    public final String getEventId() {
        return this.eventId;
    }

    public int hashCode() {
        int hashCode = this.eventId.hashCode() * 31;
        Map<String, Object> map = this.eventData;
        return hashCode + (map == null ? 0 : map.hashCode());
    }

    @NotNull
    public String toString() {
        return "OnyxStatisticEvent(eventId=" + this.eventId + ", eventData=" + this.eventData + ')';
    }

    public /* synthetic */ OnyxStatisticEvent(String str, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : map);
    }
}
