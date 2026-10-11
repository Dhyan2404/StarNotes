package com.onyx.android.sdk.replicator.note.data.shape;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;", "", "(Ljava/lang/String;I)V", "NONE", "T_TO_S", "S_TO_T", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteChineseConvertType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NoteChineseConvertType[] $VALUES;
    public static final NoteChineseConvertType NONE = new NoteChineseConvertType("NONE", 0);
    public static final NoteChineseConvertType T_TO_S = new NoteChineseConvertType("T_TO_S", 1);
    public static final NoteChineseConvertType S_TO_T = new NoteChineseConvertType("S_TO_T", 2);

    private static final /* synthetic */ NoteChineseConvertType[] $values() {
        return new NoteChineseConvertType[]{NONE, T_TO_S, S_TO_T};
    }

    static {
        NoteChineseConvertType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private NoteChineseConvertType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<NoteChineseConvertType> getEntries() {
        return $ENTRIES;
    }

    public static NoteChineseConvertType valueOf(String str) {
        return (NoteChineseConvertType) Enum.valueOf(NoteChineseConvertType.class, str);
    }

    public static NoteChineseConvertType[] values() {
        return (NoteChineseConvertType[]) $VALUES.clone();
    }
}
