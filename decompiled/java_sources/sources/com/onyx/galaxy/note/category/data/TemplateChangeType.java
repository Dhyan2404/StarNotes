package com.onyx.galaxy.note.category.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/TemplateChangeType;", "", "(Ljava/lang/String;I)V", "CHANGE_ALL", "CHANGE_COVER", "CHANGE_PAPER", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class TemplateChangeType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TemplateChangeType[] $VALUES;
    public static final TemplateChangeType CHANGE_ALL = new TemplateChangeType("CHANGE_ALL", 0);
    public static final TemplateChangeType CHANGE_COVER = new TemplateChangeType("CHANGE_COVER", 1);
    public static final TemplateChangeType CHANGE_PAPER = new TemplateChangeType("CHANGE_PAPER", 2);

    private static final /* synthetic */ TemplateChangeType[] $values() {
        return new TemplateChangeType[]{CHANGE_ALL, CHANGE_COVER, CHANGE_PAPER};
    }

    static {
        TemplateChangeType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private TemplateChangeType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<TemplateChangeType> getEntries() {
        return $ENTRIES;
    }

    public static TemplateChangeType valueOf(String str) {
        return (TemplateChangeType) Enum.valueOf(TemplateChangeType.class, str);
    }

    public static TemplateChangeType[] values() {
        return (TemplateChangeType[]) $VALUES.clone();
    }
}
