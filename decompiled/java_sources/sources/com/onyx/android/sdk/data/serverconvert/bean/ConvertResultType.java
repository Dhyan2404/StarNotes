package com.onyx.android.sdk.data.serverconvert.bean;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;", "", "(Ljava/lang/String;I)V", "RESULT_NONE", "RESULT_SUCCESS", "RESULT_FAILED", "RESULT_UN_SUPPORT", "RESULT_WAITING", "RESULT_PROCESSING", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ConvertResultType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ConvertResultType[] $VALUES;
    public static final ConvertResultType RESULT_NONE = new ConvertResultType("RESULT_NONE", 0);
    public static final ConvertResultType RESULT_SUCCESS = new ConvertResultType("RESULT_SUCCESS", 1);
    public static final ConvertResultType RESULT_FAILED = new ConvertResultType("RESULT_FAILED", 2);
    public static final ConvertResultType RESULT_UN_SUPPORT = new ConvertResultType("RESULT_UN_SUPPORT", 3);
    public static final ConvertResultType RESULT_WAITING = new ConvertResultType("RESULT_WAITING", 4);
    public static final ConvertResultType RESULT_PROCESSING = new ConvertResultType("RESULT_PROCESSING", 5);

    private static final /* synthetic */ ConvertResultType[] $values() {
        return new ConvertResultType[]{RESULT_NONE, RESULT_SUCCESS, RESULT_FAILED, RESULT_UN_SUPPORT, RESULT_WAITING, RESULT_PROCESSING};
    }

    static {
        ConvertResultType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private ConvertResultType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<ConvertResultType> getEntries() {
        return $ENTRIES;
    }

    public static ConvertResultType valueOf(String str) {
        return (ConvertResultType) Enum.valueOf(ConvertResultType.class, str);
    }

    public static ConvertResultType[] values() {
        return (ConvertResultType[]) $VALUES.clone();
    }
}
