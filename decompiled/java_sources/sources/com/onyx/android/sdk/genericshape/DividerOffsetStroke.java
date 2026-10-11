package com.onyx.android.sdk.genericshape;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/DividerOffsetStroke;", "", "(Ljava/lang/String;I)V", "NONE", "LEFT_OR_TOP", "RIGHT_OR_BOTTOM", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DividerOffsetStroke {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DividerOffsetStroke[] $VALUES;
    public static final DividerOffsetStroke NONE = new DividerOffsetStroke("NONE", 0);
    public static final DividerOffsetStroke LEFT_OR_TOP = new DividerOffsetStroke("LEFT_OR_TOP", 1);
    public static final DividerOffsetStroke RIGHT_OR_BOTTOM = new DividerOffsetStroke("RIGHT_OR_BOTTOM", 2);

    private static final /* synthetic */ DividerOffsetStroke[] $values() {
        return new DividerOffsetStroke[]{NONE, LEFT_OR_TOP, RIGHT_OR_BOTTOM};
    }

    static {
        DividerOffsetStroke[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private DividerOffsetStroke(String str, int i) {
    }

    @NotNull
    public static EnumEntries<DividerOffsetStroke> getEntries() {
        return $ENTRIES;
    }

    public static DividerOffsetStroke valueOf(String str) {
        return (DividerOffsetStroke) Enum.valueOf(DividerOffsetStroke.class, str);
    }

    public static DividerOffsetStroke[] values() {
        return (DividerOffsetStroke[]) $VALUES.clone();
    }
}
