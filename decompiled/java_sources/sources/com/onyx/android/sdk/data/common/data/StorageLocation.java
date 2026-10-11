package com.onyx.android.sdk.data.common.data;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/StorageLocation;", "", "(Ljava/lang/String;I)V", "CACHE", "PRIVATE_FILE", "EXTERNAL_FILE", "PUBLIC_FILE", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class StorageLocation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StorageLocation[] $VALUES;
    public static final StorageLocation CACHE = new StorageLocation("CACHE", 0);
    public static final StorageLocation PRIVATE_FILE = new StorageLocation("PRIVATE_FILE", 1);
    public static final StorageLocation EXTERNAL_FILE = new StorageLocation("EXTERNAL_FILE", 2);
    public static final StorageLocation PUBLIC_FILE = new StorageLocation("PUBLIC_FILE", 3);

    private static final /* synthetic */ StorageLocation[] $values() {
        return new StorageLocation[]{CACHE, PRIVATE_FILE, EXTERNAL_FILE, PUBLIC_FILE};
    }

    static {
        StorageLocation[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private StorageLocation(String str, int i) {
    }

    @NotNull
    public static EnumEntries<StorageLocation> getEntries() {
        return $ENTRIES;
    }

    public static StorageLocation valueOf(String str) {
        return (StorageLocation) Enum.valueOf(StorageLocation.class, str);
    }

    public static StorageLocation[] values() {
        return (StorageLocation[]) $VALUES.clone();
    }
}
