package com.onyx.galaxy.note.editor.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "", "(Ljava/lang/String;I)V", "SLIDE_OUTLINE", "SLIDE_MORE_SETTING", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SlideBarType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SlideBarType[] $VALUES;
    public static final SlideBarType SLIDE_OUTLINE = new SlideBarType("SLIDE_OUTLINE", 0);
    public static final SlideBarType SLIDE_MORE_SETTING = new SlideBarType("SLIDE_MORE_SETTING", 1);

    private static final /* synthetic */ SlideBarType[] $values() {
        return new SlideBarType[]{SLIDE_OUTLINE, SLIDE_MORE_SETTING};
    }

    static {
        SlideBarType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private SlideBarType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<SlideBarType> getEntries() {
        return $ENTRIES;
    }

    public static SlideBarType valueOf(String str) {
        return (SlideBarType) Enum.valueOf(SlideBarType.class, str);
    }

    public static SlideBarType[] values() {
        return (SlideBarType[]) $VALUES.clone();
    }
}
