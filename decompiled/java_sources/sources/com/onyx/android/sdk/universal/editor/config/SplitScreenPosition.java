package com.onyx.android.sdk.universal.editor.config;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/config/SplitScreenPosition;", "", "(Ljava/lang/String;I)V", "LEFT", "TOP", "RIGHT", "BOTTOM", "AUTO", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SplitScreenPosition {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SplitScreenPosition[] $VALUES;
    public static final SplitScreenPosition LEFT = new SplitScreenPosition("LEFT", 0);
    public static final SplitScreenPosition TOP = new SplitScreenPosition("TOP", 1);
    public static final SplitScreenPosition RIGHT = new SplitScreenPosition("RIGHT", 2);
    public static final SplitScreenPosition BOTTOM = new SplitScreenPosition("BOTTOM", 3);
    public static final SplitScreenPosition AUTO = new SplitScreenPosition("AUTO", 4);

    private static final /* synthetic */ SplitScreenPosition[] $values() {
        return new SplitScreenPosition[]{LEFT, TOP, RIGHT, BOTTOM, AUTO};
    }

    static {
        SplitScreenPosition[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private SplitScreenPosition(String str, int i) {
    }

    @NotNull
    public static EnumEntries<SplitScreenPosition> getEntries() {
        return $ENTRIES;
    }

    public static SplitScreenPosition valueOf(String str) {
        return (SplitScreenPosition) Enum.valueOf(SplitScreenPosition.class, str);
    }

    public static SplitScreenPosition[] values() {
        return (SplitScreenPosition[]) $VALUES.clone();
    }
}
