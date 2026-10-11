package com.onyx.android.sdk.statistics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/statistics/StatisticsType;", "", "(Ljava/lang/String;I)V", "Empty", "UMeng", "GOOGLE", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class StatisticsType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StatisticsType[] $VALUES;
    public static final StatisticsType Empty = new StatisticsType("Empty", 0);
    public static final StatisticsType UMeng = new StatisticsType("UMeng", 1);
    public static final StatisticsType GOOGLE = new StatisticsType("GOOGLE", 2);

    private static final /* synthetic */ StatisticsType[] $values() {
        return new StatisticsType[]{Empty, UMeng, GOOGLE};
    }

    static {
        StatisticsType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private StatisticsType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<StatisticsType> getEntries() {
        return $ENTRIES;
    }

    public static StatisticsType valueOf(String str) {
        return (StatisticsType) Enum.valueOf(StatisticsType.class, str);
    }

    public static StatisticsType[] values() {
        return (StatisticsType[]) $VALUES.clone();
    }
}
