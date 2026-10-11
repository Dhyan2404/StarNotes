package com.onyx.galaxy.note.category.data;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteDisplayType;", "", "type", "", "(Ljava/lang/String;II)V", "getType", "()I", "setType", "(I)V", "isGrid", "", "reverse", "DISPLAY_GRID", "DISPLAY_LIST", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteDisplayType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NoteDisplayType[] $VALUES;
    public static final NoteDisplayType DISPLAY_GRID = new NoteDisplayType("DISPLAY_GRID", 0, 1);
    public static final NoteDisplayType DISPLAY_LIST = new NoteDisplayType("DISPLAY_LIST", 1, 2);
    private int type;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NoteDisplayType.values().length];
            try {
                iArr[NoteDisplayType.DISPLAY_GRID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NoteDisplayType.DISPLAY_LIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ NoteDisplayType[] $values() {
        return new NoteDisplayType[]{DISPLAY_GRID, DISPLAY_LIST};
    }

    static {
        NoteDisplayType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private NoteDisplayType(String str, int i, int i2) {
        this.type = i2;
    }

    @NotNull
    public static EnumEntries<NoteDisplayType> getEntries() {
        return $ENTRIES;
    }

    public static NoteDisplayType valueOf(String str) {
        return (NoteDisplayType) Enum.valueOf(NoteDisplayType.class, str);
    }

    public static NoteDisplayType[] values() {
        return (NoteDisplayType[]) $VALUES.clone();
    }

    public final int getType() {
        return this.type;
    }

    public final boolean isGrid() {
        return this == DISPLAY_GRID;
    }

    @NotNull
    public final NoteDisplayType reverse() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return DISPLAY_LIST;
        }
        if (i == 2) {
            return DISPLAY_GRID;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void setType(int i) {
        this.type = i;
    }
}
