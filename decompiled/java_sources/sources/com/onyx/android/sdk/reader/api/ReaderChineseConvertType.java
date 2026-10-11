package com.onyx.android.sdk.reader.api;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;", "", "(Ljava/lang/String;I)V", "NONE", "SIMPLIFIED_TO_TRADITIONAL", "TRADITIONAL_TO_SIMPLIFIED", "SIMPLIFIED_TO_TRADITIONAL_TW", "SIMPLIFIED_TO_TRADITIONAL_HK", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderChineseConvertType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReaderChineseConvertType[] $VALUES;
    public static final ReaderChineseConvertType NONE = new ReaderChineseConvertType("NONE", 0);
    public static final ReaderChineseConvertType SIMPLIFIED_TO_TRADITIONAL = new ReaderChineseConvertType("SIMPLIFIED_TO_TRADITIONAL", 1);
    public static final ReaderChineseConvertType TRADITIONAL_TO_SIMPLIFIED = new ReaderChineseConvertType("TRADITIONAL_TO_SIMPLIFIED", 2);
    public static final ReaderChineseConvertType SIMPLIFIED_TO_TRADITIONAL_TW = new ReaderChineseConvertType("SIMPLIFIED_TO_TRADITIONAL_TW", 3);
    public static final ReaderChineseConvertType SIMPLIFIED_TO_TRADITIONAL_HK = new ReaderChineseConvertType("SIMPLIFIED_TO_TRADITIONAL_HK", 4);

    private static final /* synthetic */ ReaderChineseConvertType[] $values() {
        return new ReaderChineseConvertType[]{NONE, SIMPLIFIED_TO_TRADITIONAL, TRADITIONAL_TO_SIMPLIFIED, SIMPLIFIED_TO_TRADITIONAL_TW, SIMPLIFIED_TO_TRADITIONAL_HK};
    }

    static {
        ReaderChineseConvertType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private ReaderChineseConvertType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<ReaderChineseConvertType> getEntries() {
        return $ENTRIES;
    }

    public static ReaderChineseConvertType valueOf(String str) {
        return (ReaderChineseConvertType) Enum.valueOf(ReaderChineseConvertType.class, str);
    }

    public static ReaderChineseConvertType[] values() {
        return (ReaderChineseConvertType[]) $VALUES.clone();
    }
}
