package com.onyx.android.sdk.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/NoteOutlineAddFrom;", "", "(Ljava/lang/String;I)V", "OTHER_SETTINGS", "SLIDE_DOC_OVERVIEW_OPTION", "FULL_DOC_OVERVIEW_OPTION", "FULL_DOC_OVERVIEW_MULTI_SELECTION", "SLIDE_DOC_TOC", "FULL_DOC_TOC", "LONG_CLICK_MENU", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NoteOutlineAddFrom {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NoteOutlineAddFrom[] $VALUES;
    public static final NoteOutlineAddFrom OTHER_SETTINGS = new NoteOutlineAddFrom("OTHER_SETTINGS", 0);
    public static final NoteOutlineAddFrom SLIDE_DOC_OVERVIEW_OPTION = new NoteOutlineAddFrom("SLIDE_DOC_OVERVIEW_OPTION", 1);
    public static final NoteOutlineAddFrom FULL_DOC_OVERVIEW_OPTION = new NoteOutlineAddFrom("FULL_DOC_OVERVIEW_OPTION", 2);
    public static final NoteOutlineAddFrom FULL_DOC_OVERVIEW_MULTI_SELECTION = new NoteOutlineAddFrom("FULL_DOC_OVERVIEW_MULTI_SELECTION", 3);
    public static final NoteOutlineAddFrom SLIDE_DOC_TOC = new NoteOutlineAddFrom("SLIDE_DOC_TOC", 4);
    public static final NoteOutlineAddFrom FULL_DOC_TOC = new NoteOutlineAddFrom("FULL_DOC_TOC", 5);
    public static final NoteOutlineAddFrom LONG_CLICK_MENU = new NoteOutlineAddFrom("LONG_CLICK_MENU", 6);

    private static final /* synthetic */ NoteOutlineAddFrom[] $values() {
        return new NoteOutlineAddFrom[]{OTHER_SETTINGS, SLIDE_DOC_OVERVIEW_OPTION, FULL_DOC_OVERVIEW_OPTION, FULL_DOC_OVERVIEW_MULTI_SELECTION, SLIDE_DOC_TOC, FULL_DOC_TOC, LONG_CLICK_MENU};
    }

    static {
        NoteOutlineAddFrom[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private NoteOutlineAddFrom(String str, int i) {
    }

    @NotNull
    public static EnumEntries<NoteOutlineAddFrom> getEntries() {
        return $ENTRIES;
    }

    public static NoteOutlineAddFrom valueOf(String str) {
        return (NoteOutlineAddFrom) Enum.valueOf(NoteOutlineAddFrom.class, str);
    }

    public static NoteOutlineAddFrom[] values() {
        return (NoteOutlineAddFrom[]) $VALUES.clone();
    }
}
