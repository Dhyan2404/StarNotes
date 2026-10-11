package com.onyx.android.sdk.universal.editor.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;", "", "(Ljava/lang/String;I)V", "isRealtimeConvert", "", "SELECTION_CONVERT", "REALTIME_CONVERT", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class InkBeautifyConvertType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InkBeautifyConvertType[] $VALUES;
    public static final InkBeautifyConvertType SELECTION_CONVERT = new InkBeautifyConvertType("SELECTION_CONVERT", 0);
    public static final InkBeautifyConvertType REALTIME_CONVERT = new InkBeautifyConvertType("REALTIME_CONVERT", 1);

    private static final /* synthetic */ InkBeautifyConvertType[] $values() {
        return new InkBeautifyConvertType[]{SELECTION_CONVERT, REALTIME_CONVERT};
    }

    static {
        InkBeautifyConvertType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private InkBeautifyConvertType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<InkBeautifyConvertType> getEntries() {
        return $ENTRIES;
    }

    public static InkBeautifyConvertType valueOf(String str) {
        return (InkBeautifyConvertType) Enum.valueOf(InkBeautifyConvertType.class, str);
    }

    public static InkBeautifyConvertType[] values() {
        return (InkBeautifyConvertType[]) $VALUES.clone();
    }

    public final boolean isRealtimeConvert() {
        return this == REALTIME_CONVERT;
    }
}
