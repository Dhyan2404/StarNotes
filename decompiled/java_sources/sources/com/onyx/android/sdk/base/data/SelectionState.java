package com.onyx.android.sdk.base.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/SelectionState;", "", "(Ljava/lang/String;I)V", "ALL", "NOTHING", "PARTIAL", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SelectionState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SelectionState[] $VALUES;
    public static final SelectionState ALL = new SelectionState("ALL", 0);
    public static final SelectionState NOTHING = new SelectionState("NOTHING", 1);
    public static final SelectionState PARTIAL = new SelectionState("PARTIAL", 2);

    private static final /* synthetic */ SelectionState[] $values() {
        return new SelectionState[]{ALL, NOTHING, PARTIAL};
    }

    static {
        SelectionState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private SelectionState(String str, int i) {
    }

    @NotNull
    public static EnumEntries<SelectionState> getEntries() {
        return $ENTRIES;
    }

    public static SelectionState valueOf(String str) {
        return (SelectionState) Enum.valueOf(SelectionState.class, str);
    }

    public static SelectionState[] values() {
        return (SelectionState[]) $VALUES.clone();
    }
}
