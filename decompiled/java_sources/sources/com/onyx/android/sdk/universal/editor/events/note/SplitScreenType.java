package com.onyx.android.sdk.universal.editor.events.note;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;", "", "(Ljava/lang/String;I)V", "LEFT_RIGHT", "UP_DOWN", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SplitScreenType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SplitScreenType[] $VALUES;
    public static final SplitScreenType LEFT_RIGHT = new SplitScreenType("LEFT_RIGHT", 0);
    public static final SplitScreenType UP_DOWN = new SplitScreenType("UP_DOWN", 1);

    private static final /* synthetic */ SplitScreenType[] $values() {
        return new SplitScreenType[]{LEFT_RIGHT, UP_DOWN};
    }

    static {
        SplitScreenType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private SplitScreenType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<SplitScreenType> getEntries() {
        return $ENTRIES;
    }

    public static SplitScreenType valueOf(String str) {
        return (SplitScreenType) Enum.valueOf(SplitScreenType.class, str);
    }

    public static SplitScreenType[] values() {
        return (SplitScreenType[]) $VALUES.clone();
    }
}
