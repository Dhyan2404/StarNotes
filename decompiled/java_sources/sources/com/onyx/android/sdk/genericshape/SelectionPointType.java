package com.onyx.android.sdk.genericshape;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/SelectionPointType;", "", "(Ljava/lang/String;I)V", "SCALE", "DRAG", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SelectionPointType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SelectionPointType[] $VALUES;
    public static final SelectionPointType SCALE = new SelectionPointType("SCALE", 0);
    public static final SelectionPointType DRAG = new SelectionPointType("DRAG", 1);

    private static final /* synthetic */ SelectionPointType[] $values() {
        return new SelectionPointType[]{SCALE, DRAG};
    }

    static {
        SelectionPointType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private SelectionPointType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<SelectionPointType> getEntries() {
        return $ENTRIES;
    }

    public static SelectionPointType valueOf(String str) {
        return (SelectionPointType) Enum.valueOf(SelectionPointType.class, str);
    }

    public static SelectionPointType[] values() {
        return (SelectionPointType[]) $VALUES.clone();
    }
}
