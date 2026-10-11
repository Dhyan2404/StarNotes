package com.onyx.android.sdk.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/data/NoteExcerptType;", "", "(Ljava/lang/String;I)V", "TEXT_EXCERPT", "RECT_EXCERPT", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NoteExcerptType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NoteExcerptType[] $VALUES;
    public static final NoteExcerptType TEXT_EXCERPT = new NoteExcerptType("TEXT_EXCERPT", 0);
    public static final NoteExcerptType RECT_EXCERPT = new NoteExcerptType("RECT_EXCERPT", 1);

    private static final /* synthetic */ NoteExcerptType[] $values() {
        return new NoteExcerptType[]{TEXT_EXCERPT, RECT_EXCERPT};
    }

    static {
        NoteExcerptType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private NoteExcerptType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<NoteExcerptType> getEntries() {
        return $ENTRIES;
    }

    public static NoteExcerptType valueOf(String str) {
        return (NoteExcerptType) Enum.valueOf(NoteExcerptType.class, str);
    }

    public static NoteExcerptType[] values() {
        return (NoteExcerptType[]) $VALUES.clone();
    }
}
