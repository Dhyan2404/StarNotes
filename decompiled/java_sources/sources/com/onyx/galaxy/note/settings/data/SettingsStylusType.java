package com.onyx.galaxy.note.settings.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/SettingsStylusType;", "", "(Ljava/lang/String;I)V", "STYLUS_NORMAL", "STYLUS_BYD", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SettingsStylusType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SettingsStylusType[] $VALUES;
    public static final SettingsStylusType STYLUS_NORMAL = new SettingsStylusType("STYLUS_NORMAL", 0);
    public static final SettingsStylusType STYLUS_BYD = new SettingsStylusType("STYLUS_BYD", 1);

    private static final /* synthetic */ SettingsStylusType[] $values() {
        return new SettingsStylusType[]{STYLUS_NORMAL, STYLUS_BYD};
    }

    static {
        SettingsStylusType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private SettingsStylusType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<SettingsStylusType> getEntries() {
        return $ENTRIES;
    }

    public static SettingsStylusType valueOf(String str) {
        return (SettingsStylusType) Enum.valueOf(SettingsStylusType.class, str);
    }

    public static SettingsStylusType[] values() {
        return (SettingsStylusType[]) $VALUES.clone();
    }
}
