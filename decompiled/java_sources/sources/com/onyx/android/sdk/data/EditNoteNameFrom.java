package com.onyx.android.sdk.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/data/EditNoteNameFrom;", "", "(Ljava/lang/String;I)V", "EDIT_DIALOG", "OTHER_SETTING", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class EditNoteNameFrom {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EditNoteNameFrom[] $VALUES;
    public static final EditNoteNameFrom EDIT_DIALOG = new EditNoteNameFrom("EDIT_DIALOG", 0);
    public static final EditNoteNameFrom OTHER_SETTING = new EditNoteNameFrom("OTHER_SETTING", 1);

    private static final /* synthetic */ EditNoteNameFrom[] $values() {
        return new EditNoteNameFrom[]{EDIT_DIALOG, OTHER_SETTING};
    }

    static {
        EditNoteNameFrom[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private EditNoteNameFrom(String str, int i) {
    }

    @NotNull
    public static EnumEntries<EditNoteNameFrom> getEntries() {
        return $ENTRIES;
    }

    public static EditNoteNameFrom valueOf(String str) {
        return (EditNoteNameFrom) Enum.valueOf(EditNoteNameFrom.class, str);
    }

    public static EditNoteNameFrom[] values() {
        return (EditNoteNameFrom[]) $VALUES.clone();
    }
}
