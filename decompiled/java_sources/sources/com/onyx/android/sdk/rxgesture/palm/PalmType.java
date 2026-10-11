package com.onyx.android.sdk.rxgesture.palm;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/palm/PalmType;", "", "(Ljava/lang/String;I)V", "isBigPalmPress", "", "isPalmPress", "NORMAL_SIZE", "PALM_SIZE", "BIG_PALM_SIZE", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PalmType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PalmType[] $VALUES;
    public static final PalmType NORMAL_SIZE = new PalmType("NORMAL_SIZE", 0);
    public static final PalmType PALM_SIZE = new PalmType("PALM_SIZE", 1);
    public static final PalmType BIG_PALM_SIZE = new PalmType("BIG_PALM_SIZE", 2);

    private static final /* synthetic */ PalmType[] $values() {
        return new PalmType[]{NORMAL_SIZE, PALM_SIZE, BIG_PALM_SIZE};
    }

    static {
        PalmType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private PalmType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<PalmType> getEntries() {
        return $ENTRIES;
    }

    public static PalmType valueOf(String str) {
        return (PalmType) Enum.valueOf(PalmType.class, str);
    }

    public static PalmType[] values() {
        return (PalmType[]) $VALUES.clone();
    }

    public final boolean isBigPalmPress() {
        return this == BIG_PALM_SIZE;
    }

    public final boolean isPalmPress() {
        return this == PALM_SIZE || this == BIG_PALM_SIZE;
    }
}
