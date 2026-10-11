package com.onyx.android.sdk.note.common.data.shape;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformState;", "", "(Ljava/lang/String;I)V", "START", "PROGRESSING", "FINISH", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeTransformState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ShapeTransformState[] $VALUES;
    public static final ShapeTransformState START = new ShapeTransformState("START", 0);
    public static final ShapeTransformState PROGRESSING = new ShapeTransformState("PROGRESSING", 1);
    public static final ShapeTransformState FINISH = new ShapeTransformState("FINISH", 2);

    private static final /* synthetic */ ShapeTransformState[] $values() {
        return new ShapeTransformState[]{START, PROGRESSING, FINISH};
    }

    static {
        ShapeTransformState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private ShapeTransformState(String str, int i) {
    }

    @NotNull
    public static EnumEntries<ShapeTransformState> getEntries() {
        return $ENTRIES;
    }

    public static ShapeTransformState valueOf(String str) {
        return (ShapeTransformState) Enum.valueOf(ShapeTransformState.class, str);
    }

    public static ShapeTransformState[] values() {
        return (ShapeTransformState[]) $VALUES.clone();
    }
}
