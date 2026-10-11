package com.onyx.android.sdk.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/data/TagAddType;", "", "(Ljava/lang/String;I)V", "NOTE", "PAGE", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TagAddType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TagAddType[] $VALUES;
    public static final TagAddType NOTE = new TagAddType("NOTE", 0);
    public static final TagAddType PAGE = new TagAddType("PAGE", 1);

    private static final /* synthetic */ TagAddType[] $values() {
        return new TagAddType[]{NOTE, PAGE};
    }

    static {
        TagAddType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private TagAddType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<TagAddType> getEntries() {
        return $ENTRIES;
    }

    public static TagAddType valueOf(String str) {
        return (TagAddType) Enum.valueOf(TagAddType.class, str);
    }

    public static TagAddType[] values() {
        return (TagAddType[]) $VALUES.clone();
    }
}
