package com.onyx.galaxy.note.category.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteSelectType;", "", "(Ljava/lang/String;I)V", "TAB_ALL", "TAB_NOTE", "TAB_PDF", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteSelectType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NoteSelectType[] $VALUES;
    public static final NoteSelectType TAB_ALL = new NoteSelectType("TAB_ALL", 0);
    public static final NoteSelectType TAB_NOTE = new NoteSelectType("TAB_NOTE", 1);
    public static final NoteSelectType TAB_PDF = new NoteSelectType("TAB_PDF", 2);

    private static final /* synthetic */ NoteSelectType[] $values() {
        return new NoteSelectType[]{TAB_ALL, TAB_NOTE, TAB_PDF};
    }

    static {
        NoteSelectType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private NoteSelectType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<NoteSelectType> getEntries() {
        return $ENTRIES;
    }

    public static NoteSelectType valueOf(String str) {
        return (NoteSelectType) Enum.valueOf(NoteSelectType.class, str);
    }

    public static NoteSelectType[] values() {
        return (NoteSelectType[]) $VALUES.clone();
    }
}
