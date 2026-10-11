package com.onyx.android.sdk.replicator.note.data.annotation;

import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;", "", "(Ljava/lang/String;I)V", "isVertical", "", HwrRecognizerConstant.RECOGNIZER_UNKNOWN, "HORIZONTAL", "VERTICAL_RL", "VERTICAL_LR", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class WritingMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WritingMode[] $VALUES;
    public static final WritingMode UNKNOWN = new WritingMode(HwrRecognizerConstant.RECOGNIZER_UNKNOWN, 0);
    public static final WritingMode HORIZONTAL = new WritingMode("HORIZONTAL", 1);
    public static final WritingMode VERTICAL_RL = new WritingMode("VERTICAL_RL", 2);
    public static final WritingMode VERTICAL_LR = new WritingMode("VERTICAL_LR", 3);

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WritingMode.values().length];
            try {
                iArr[WritingMode.VERTICAL_LR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WritingMode.VERTICAL_RL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WritingMode.HORIZONTAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ WritingMode[] $values() {
        return new WritingMode[]{UNKNOWN, HORIZONTAL, VERTICAL_RL, VERTICAL_LR};
    }

    static {
        WritingMode[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private WritingMode(String str, int i) {
    }

    @NotNull
    public static EnumEntries<WritingMode> getEntries() {
        return $ENTRIES;
    }

    public static WritingMode valueOf(String str) {
        return (WritingMode) Enum.valueOf(WritingMode.class, str);
    }

    public static WritingMode[] values() {
        return (WritingMode[]) $VALUES.clone();
    }

    public final boolean isVertical() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        return i == 1 || i == 2;
    }
}
