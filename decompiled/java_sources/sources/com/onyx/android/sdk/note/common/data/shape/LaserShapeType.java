package com.onyx.android.sdk.note.common.data.shape;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;", "", "(Ljava/lang/String;I)V", "DOT", "LINE", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class LaserShapeType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LaserShapeType[] $VALUES;
    public static final LaserShapeType DOT = new LaserShapeType("DOT", 0);
    public static final LaserShapeType LINE = new LaserShapeType("LINE", 1);

    private static final /* synthetic */ LaserShapeType[] $values() {
        return new LaserShapeType[]{DOT, LINE};
    }

    static {
        LaserShapeType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private LaserShapeType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<LaserShapeType> getEntries() {
        return $ENTRIES;
    }

    public static LaserShapeType valueOf(String str) {
        return (LaserShapeType) Enum.valueOf(LaserShapeType.class, str);
    }

    public static LaserShapeType[] values() {
        return (LaserShapeType[]) $VALUES.clone();
    }
}
