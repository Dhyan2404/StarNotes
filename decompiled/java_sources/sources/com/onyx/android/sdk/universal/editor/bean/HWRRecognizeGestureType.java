package com.onyx.android.sdk.universal.editor.bean;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeGestureType;", "", "(Ljava/lang/String;I)V", "UNKNOWN_GESTURE", "HOLD_GESTURE", "PEN_UP_GESTURE", "DOUBLE_GESTURE", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class HWRRecognizeGestureType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HWRRecognizeGestureType[] $VALUES;
    public static final HWRRecognizeGestureType UNKNOWN_GESTURE = new HWRRecognizeGestureType("UNKNOWN_GESTURE", 0);
    public static final HWRRecognizeGestureType HOLD_GESTURE = new HWRRecognizeGestureType("HOLD_GESTURE", 1);
    public static final HWRRecognizeGestureType PEN_UP_GESTURE = new HWRRecognizeGestureType("PEN_UP_GESTURE", 2);
    public static final HWRRecognizeGestureType DOUBLE_GESTURE = new HWRRecognizeGestureType("DOUBLE_GESTURE", 3);

    private static final /* synthetic */ HWRRecognizeGestureType[] $values() {
        return new HWRRecognizeGestureType[]{UNKNOWN_GESTURE, HOLD_GESTURE, PEN_UP_GESTURE, DOUBLE_GESTURE};
    }

    static {
        HWRRecognizeGestureType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private HWRRecognizeGestureType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<HWRRecognizeGestureType> getEntries() {
        return $ENTRIES;
    }

    public static HWRRecognizeGestureType valueOf(String str) {
        return (HWRRecognizeGestureType) Enum.valueOf(HWRRecognizeGestureType.class, str);
    }

    public static HWRRecognizeGestureType[] values() {
        return (HWRRecognizeGestureType[]) $VALUES.clone();
    }
}
