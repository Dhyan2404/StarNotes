package com.onyx.android.sdk.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/FolderCreateFrom;", "", "(Ljava/lang/String;I)V", "HOME_FUNC_ROOT_FOLDER_CREATE", "HOME_FUNC_SUB_FOLDER_CREATE", "HOME_LIST_ITEM_HEADER_CREATE", "HOME_FUNC_FOLDER_MOVE_CREATE", "HOME_LIST_ITEM_MOVE_CREATE", "HOME_FUNC_FOLDER_MOVE_MANGE_CREATE", "HOME_LIST_ITEM_MOVE_MANGE_CREATE", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FolderCreateFrom {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FolderCreateFrom[] $VALUES;
    public static final FolderCreateFrom HOME_FUNC_ROOT_FOLDER_CREATE = new FolderCreateFrom("HOME_FUNC_ROOT_FOLDER_CREATE", 0);
    public static final FolderCreateFrom HOME_FUNC_SUB_FOLDER_CREATE = new FolderCreateFrom("HOME_FUNC_SUB_FOLDER_CREATE", 1);
    public static final FolderCreateFrom HOME_LIST_ITEM_HEADER_CREATE = new FolderCreateFrom("HOME_LIST_ITEM_HEADER_CREATE", 2);
    public static final FolderCreateFrom HOME_FUNC_FOLDER_MOVE_CREATE = new FolderCreateFrom("HOME_FUNC_FOLDER_MOVE_CREATE", 3);
    public static final FolderCreateFrom HOME_LIST_ITEM_MOVE_CREATE = new FolderCreateFrom("HOME_LIST_ITEM_MOVE_CREATE", 4);
    public static final FolderCreateFrom HOME_FUNC_FOLDER_MOVE_MANGE_CREATE = new FolderCreateFrom("HOME_FUNC_FOLDER_MOVE_MANGE_CREATE", 5);
    public static final FolderCreateFrom HOME_LIST_ITEM_MOVE_MANGE_CREATE = new FolderCreateFrom("HOME_LIST_ITEM_MOVE_MANGE_CREATE", 6);

    private static final /* synthetic */ FolderCreateFrom[] $values() {
        return new FolderCreateFrom[]{HOME_FUNC_ROOT_FOLDER_CREATE, HOME_FUNC_SUB_FOLDER_CREATE, HOME_LIST_ITEM_HEADER_CREATE, HOME_FUNC_FOLDER_MOVE_CREATE, HOME_LIST_ITEM_MOVE_CREATE, HOME_FUNC_FOLDER_MOVE_MANGE_CREATE, HOME_LIST_ITEM_MOVE_MANGE_CREATE};
    }

    static {
        FolderCreateFrom[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private FolderCreateFrom(String str, int i) {
    }

    @NotNull
    public static EnumEntries<FolderCreateFrom> getEntries() {
        return $ENTRIES;
    }

    public static FolderCreateFrom valueOf(String str) {
        return (FolderCreateFrom) Enum.valueOf(FolderCreateFrom.class, str);
    }

    public static FolderCreateFrom[] values() {
        return (FolderCreateFrom[]) $VALUES.clone();
    }
}
