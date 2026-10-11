package com.onyx.galaxy.note.category.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/TemplateSourceType;", "", "(Ljava/lang/String;I)V", "OFFICIAL", "CUSTOM", "MATERIALS", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class TemplateSourceType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TemplateSourceType[] $VALUES;
    public static final TemplateSourceType OFFICIAL = new TemplateSourceType("OFFICIAL", 0);
    public static final TemplateSourceType CUSTOM = new TemplateSourceType("CUSTOM", 1);
    public static final TemplateSourceType MATERIALS = new TemplateSourceType("MATERIALS", 2);

    private static final /* synthetic */ TemplateSourceType[] $values() {
        return new TemplateSourceType[]{OFFICIAL, CUSTOM, MATERIALS};
    }

    static {
        TemplateSourceType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private TemplateSourceType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<TemplateSourceType> getEntries() {
        return $ENTRIES;
    }

    public static TemplateSourceType valueOf(String str) {
        return (TemplateSourceType) Enum.valueOf(TemplateSourceType.class, str);
    }

    public static TemplateSourceType[] values() {
        return (TemplateSourceType[]) $VALUES.clone();
    }
}
