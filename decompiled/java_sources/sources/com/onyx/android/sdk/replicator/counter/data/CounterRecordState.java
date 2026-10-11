package com.onyx.android.sdk.replicator.counter.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/counter/data/CounterRecordState;", "", "(Ljava/lang/String;I)V", "IDLE", "IN_PROGRESS", "DONE", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class CounterRecordState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CounterRecordState[] $VALUES;
    public static final CounterRecordState IDLE = new CounterRecordState("IDLE", 0);
    public static final CounterRecordState IN_PROGRESS = new CounterRecordState("IN_PROGRESS", 1);
    public static final CounterRecordState DONE = new CounterRecordState("DONE", 2);

    private static final /* synthetic */ CounterRecordState[] $values() {
        return new CounterRecordState[]{IDLE, IN_PROGRESS, DONE};
    }

    static {
        CounterRecordState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private CounterRecordState(String str, int i) {
    }

    @NotNull
    public static EnumEntries<CounterRecordState> getEntries() {
        return $ENTRIES;
    }

    public static CounterRecordState valueOf(String str) {
        return (CounterRecordState) Enum.valueOf(CounterRecordState.class, str);
    }

    public static CounterRecordState[] values() {
        return (CounterRecordState[]) $VALUES.clone();
    }
}
