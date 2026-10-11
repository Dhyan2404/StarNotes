package com.onyx.android.sdk.replicator.bean;

import com.tencent.cos.xml.model.tag.DomainConfiguration;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/DataFetchType;", "", "(Ljava/lang/String;I)V", "ALL", DomainConfiguration.STATUS_ENABLED, "REMOVED", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DataFetchType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DataFetchType[] $VALUES;
    public static final DataFetchType ALL = new DataFetchType("ALL", 0);
    public static final DataFetchType ENABLED = new DataFetchType(DomainConfiguration.STATUS_ENABLED, 1);
    public static final DataFetchType REMOVED = new DataFetchType("REMOVED", 2);

    private static final /* synthetic */ DataFetchType[] $values() {
        return new DataFetchType[]{ALL, ENABLED, REMOVED};
    }

    static {
        DataFetchType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private DataFetchType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<DataFetchType> getEntries() {
        return $ENTRIES;
    }

    public static DataFetchType valueOf(String str) {
        return (DataFetchType) Enum.valueOf(DataFetchType.class, str);
    }

    public static DataFetchType[] values() {
        return (DataFetchType[]) $VALUES.clone();
    }
}
