package com.onyx.galaxy.note.editor.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/AdjustViewControlType;", "", "(Ljava/lang/String;I)V", "TOP_LEFT", "TOP_MIDDLE", "TOP_RIGHT", "MIDDLE_LEFT", "MIDDLE_RIGHT", "BOTTOM_LEFT", "BOTTOM_MIDDLE", "BOTTOM_RIGHT", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class AdjustViewControlType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AdjustViewControlType[] $VALUES;
    public static final AdjustViewControlType TOP_LEFT = new AdjustViewControlType("TOP_LEFT", 0);
    public static final AdjustViewControlType TOP_MIDDLE = new AdjustViewControlType("TOP_MIDDLE", 1);
    public static final AdjustViewControlType TOP_RIGHT = new AdjustViewControlType("TOP_RIGHT", 2);
    public static final AdjustViewControlType MIDDLE_LEFT = new AdjustViewControlType("MIDDLE_LEFT", 3);
    public static final AdjustViewControlType MIDDLE_RIGHT = new AdjustViewControlType("MIDDLE_RIGHT", 4);
    public static final AdjustViewControlType BOTTOM_LEFT = new AdjustViewControlType("BOTTOM_LEFT", 5);
    public static final AdjustViewControlType BOTTOM_MIDDLE = new AdjustViewControlType("BOTTOM_MIDDLE", 6);
    public static final AdjustViewControlType BOTTOM_RIGHT = new AdjustViewControlType("BOTTOM_RIGHT", 7);

    private static final /* synthetic */ AdjustViewControlType[] $values() {
        return new AdjustViewControlType[]{TOP_LEFT, TOP_MIDDLE, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_MIDDLE, BOTTOM_RIGHT};
    }

    static {
        AdjustViewControlType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private AdjustViewControlType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<AdjustViewControlType> getEntries() {
        return $ENTRIES;
    }

    public static AdjustViewControlType valueOf(String str) {
        return (AdjustViewControlType) Enum.valueOf(AdjustViewControlType.class, str);
    }

    public static AdjustViewControlType[] values() {
        return (AdjustViewControlType[]) $VALUES.clone();
    }
}
