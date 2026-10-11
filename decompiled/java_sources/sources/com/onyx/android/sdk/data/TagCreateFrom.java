package com.onyx.android.sdk.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/data/TagCreateFrom;", "", "(Ljava/lang/String;I)V", "HOME_FUNC_ROOT_TAG_CREATE", "HOME_FUNC_SUB_TAG_CREATE", "HOME_FUNC_TAG_MOVE_CREATE", "HOME_LIST_ITEM_TAG_EDIT_CREATE", "NEW_NOTE_CREATE", "EDIT_NOTE_POPUP_MENU_CREATE", "EDIT_NOTE_SETTINGS_MENU_TAG_EDIT_CREATE", "HOME_FUNC_TAG_MOVE_MANGE_CREATE", "HOME_LIST_ITEM_TAG_EDIT_MANGE_CREATE", "NEW_NOTE_MANAGE_CREATE", "EDIT_NOTE_POPUP_MENU_MANAGE_CREATE", "EDIT_NOTE_SETTINGS_MENU_TAG_EDIT_MANAGE_CREATE", "EDIT_NOTE_TOOL_EDIT_TAG_CREATE", "EDIT_NOTE_TOOL_EDIT_TAG_MANAGE_CREATE", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TagCreateFrom {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TagCreateFrom[] $VALUES;
    public static final TagCreateFrom HOME_FUNC_ROOT_TAG_CREATE = new TagCreateFrom("HOME_FUNC_ROOT_TAG_CREATE", 0);
    public static final TagCreateFrom HOME_FUNC_SUB_TAG_CREATE = new TagCreateFrom("HOME_FUNC_SUB_TAG_CREATE", 1);
    public static final TagCreateFrom HOME_FUNC_TAG_MOVE_CREATE = new TagCreateFrom("HOME_FUNC_TAG_MOVE_CREATE", 2);
    public static final TagCreateFrom HOME_LIST_ITEM_TAG_EDIT_CREATE = new TagCreateFrom("HOME_LIST_ITEM_TAG_EDIT_CREATE", 3);
    public static final TagCreateFrom NEW_NOTE_CREATE = new TagCreateFrom("NEW_NOTE_CREATE", 4);
    public static final TagCreateFrom EDIT_NOTE_POPUP_MENU_CREATE = new TagCreateFrom("EDIT_NOTE_POPUP_MENU_CREATE", 5);
    public static final TagCreateFrom EDIT_NOTE_SETTINGS_MENU_TAG_EDIT_CREATE = new TagCreateFrom("EDIT_NOTE_SETTINGS_MENU_TAG_EDIT_CREATE", 6);
    public static final TagCreateFrom HOME_FUNC_TAG_MOVE_MANGE_CREATE = new TagCreateFrom("HOME_FUNC_TAG_MOVE_MANGE_CREATE", 7);
    public static final TagCreateFrom HOME_LIST_ITEM_TAG_EDIT_MANGE_CREATE = new TagCreateFrom("HOME_LIST_ITEM_TAG_EDIT_MANGE_CREATE", 8);
    public static final TagCreateFrom NEW_NOTE_MANAGE_CREATE = new TagCreateFrom("NEW_NOTE_MANAGE_CREATE", 9);
    public static final TagCreateFrom EDIT_NOTE_POPUP_MENU_MANAGE_CREATE = new TagCreateFrom("EDIT_NOTE_POPUP_MENU_MANAGE_CREATE", 10);
    public static final TagCreateFrom EDIT_NOTE_SETTINGS_MENU_TAG_EDIT_MANAGE_CREATE = new TagCreateFrom("EDIT_NOTE_SETTINGS_MENU_TAG_EDIT_MANAGE_CREATE", 11);
    public static final TagCreateFrom EDIT_NOTE_TOOL_EDIT_TAG_CREATE = new TagCreateFrom("EDIT_NOTE_TOOL_EDIT_TAG_CREATE", 12);
    public static final TagCreateFrom EDIT_NOTE_TOOL_EDIT_TAG_MANAGE_CREATE = new TagCreateFrom("EDIT_NOTE_TOOL_EDIT_TAG_MANAGE_CREATE", 13);

    private static final /* synthetic */ TagCreateFrom[] $values() {
        return new TagCreateFrom[]{HOME_FUNC_ROOT_TAG_CREATE, HOME_FUNC_SUB_TAG_CREATE, HOME_FUNC_TAG_MOVE_CREATE, HOME_LIST_ITEM_TAG_EDIT_CREATE, NEW_NOTE_CREATE, EDIT_NOTE_POPUP_MENU_CREATE, EDIT_NOTE_SETTINGS_MENU_TAG_EDIT_CREATE, HOME_FUNC_TAG_MOVE_MANGE_CREATE, HOME_LIST_ITEM_TAG_EDIT_MANGE_CREATE, NEW_NOTE_MANAGE_CREATE, EDIT_NOTE_POPUP_MENU_MANAGE_CREATE, EDIT_NOTE_SETTINGS_MENU_TAG_EDIT_MANAGE_CREATE, EDIT_NOTE_TOOL_EDIT_TAG_CREATE, EDIT_NOTE_TOOL_EDIT_TAG_MANAGE_CREATE};
    }

    static {
        TagCreateFrom[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private TagCreateFrom(String str, int i) {
    }

    @NotNull
    public static EnumEntries<TagCreateFrom> getEntries() {
        return $ENTRIES;
    }

    public static TagCreateFrom valueOf(String str) {
        return (TagCreateFrom) Enum.valueOf(TagCreateFrom.class, str);
    }

    public static TagCreateFrom[] values() {
        return (TagCreateFrom[]) $VALUES.clone();
    }
}
