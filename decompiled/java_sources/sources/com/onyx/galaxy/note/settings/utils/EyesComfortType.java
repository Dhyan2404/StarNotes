package com.onyx.galaxy.note.settings.utils;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/utils/EyesComfortType;", "", "(Ljava/lang/String;I)V", "RECOMMEND", "READING", "OUTDOOR", "DARK", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class EyesComfortType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EyesComfortType[] $VALUES;
    public static final EyesComfortType RECOMMEND = new EyesComfortType("RECOMMEND", 0);
    public static final EyesComfortType READING = new EyesComfortType("READING", 1);
    public static final EyesComfortType OUTDOOR = new EyesComfortType("OUTDOOR", 2);
    public static final EyesComfortType DARK = new EyesComfortType("DARK", 3);

    private static final /* synthetic */ EyesComfortType[] $values() {
        return new EyesComfortType[]{RECOMMEND, READING, OUTDOOR, DARK};
    }

    static {
        EyesComfortType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private EyesComfortType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<EyesComfortType> getEntries() {
        return $ENTRIES;
    }

    public static EyesComfortType valueOf(String str) {
        return (EyesComfortType) Enum.valueOf(EyesComfortType.class, str);
    }

    public static EyesComfortType[] values() {
        return (EyesComfortType[]) $VALUES.clone();
    }
}
