package com.onyx.android.sdk.universal.editor.bean;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;
import org.mortbay.log.Log;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/bean/HWRRecognizeState;", "", "(Ljava/lang/String;I)V", "IDLE", "RECOGNIZING", "CONVERTING", "SUCCESS", Log.IGNORED, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class HWRRecognizeState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HWRRecognizeState[] $VALUES;
    public static final HWRRecognizeState IDLE = new HWRRecognizeState("IDLE", 0);
    public static final HWRRecognizeState RECOGNIZING = new HWRRecognizeState("RECOGNIZING", 1);
    public static final HWRRecognizeState CONVERTING = new HWRRecognizeState("CONVERTING", 2);
    public static final HWRRecognizeState SUCCESS = new HWRRecognizeState("SUCCESS", 3);
    public static final HWRRecognizeState IGNORED = new HWRRecognizeState(Log.IGNORED, 4);

    private static final /* synthetic */ HWRRecognizeState[] $values() {
        return new HWRRecognizeState[]{IDLE, RECOGNIZING, CONVERTING, SUCCESS, IGNORED};
    }

    static {
        HWRRecognizeState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private HWRRecognizeState(String str, int i) {
    }

    @NotNull
    public static EnumEntries<HWRRecognizeState> getEntries() {
        return $ENTRIES;
    }

    public static HWRRecognizeState valueOf(String str) {
        return (HWRRecognizeState) Enum.valueOf(HWRRecognizeState.class, str);
    }

    public static HWRRecognizeState[] values() {
        return (HWRRecognizeState[]) $VALUES.clone();
    }
}
