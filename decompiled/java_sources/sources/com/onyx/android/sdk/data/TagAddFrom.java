package com.onyx.android.sdk.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/TagAddFrom;", "", "(Ljava/lang/String;I)V", "NOTE_OPTION", "DRAG", "PAGE_LONG_CLICK", "NOTE_TOOLBAR_TAG", "EDIT_NOTE_SETTING_NOTE_TAG", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TagAddFrom {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TagAddFrom[] $VALUES;
    public static final TagAddFrom NOTE_OPTION = new TagAddFrom("NOTE_OPTION", 0);
    public static final TagAddFrom DRAG = new TagAddFrom("DRAG", 1);
    public static final TagAddFrom PAGE_LONG_CLICK = new TagAddFrom("PAGE_LONG_CLICK", 2);
    public static final TagAddFrom NOTE_TOOLBAR_TAG = new TagAddFrom("NOTE_TOOLBAR_TAG", 3);
    public static final TagAddFrom EDIT_NOTE_SETTING_NOTE_TAG = new TagAddFrom("EDIT_NOTE_SETTING_NOTE_TAG", 4);

    private static final /* synthetic */ TagAddFrom[] $values() {
        return new TagAddFrom[]{NOTE_OPTION, DRAG, PAGE_LONG_CLICK, NOTE_TOOLBAR_TAG, EDIT_NOTE_SETTING_NOTE_TAG};
    }

    static {
        TagAddFrom[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private TagAddFrom(String str, int i) {
    }

    @NotNull
    public static EnumEntries<TagAddFrom> getEntries() {
        return $ENTRIES;
    }

    public static TagAddFrom valueOf(String str) {
        return (TagAddFrom) Enum.valueOf(TagAddFrom.class, str);
    }

    public static TagAddFrom[] values() {
        return (TagAddFrom[]) $VALUES.clone();
    }
}
