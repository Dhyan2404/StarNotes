package com.onyx.android.sdk.hwr.data.constant;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/constant/HWRStatus;", "", "(Ljava/lang/String;I)V", "DRAWING", "HOLDING", "RECOGNIZING", "UP", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HWRStatus[] $VALUES;
    public static final HWRStatus DRAWING = new HWRStatus("DRAWING", 0);
    public static final HWRStatus HOLDING = new HWRStatus("HOLDING", 1);
    public static final HWRStatus RECOGNIZING = new HWRStatus("RECOGNIZING", 2);

    /* renamed from: UP */
    public static final HWRStatus f42544UP = new HWRStatus("UP", 3);

    private static final /* synthetic */ HWRStatus[] $values() {
        return new HWRStatus[]{DRAWING, HOLDING, RECOGNIZING, f42544UP};
    }

    static {
        HWRStatus[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private HWRStatus(String str, int i) {
    }

    @NotNull
    public static EnumEntries<HWRStatus> getEntries() {
        return $ENTRIES;
    }

    public static HWRStatus valueOf(String str) {
        return (HWRStatus) Enum.valueOf(HWRStatus.class, str);
    }

    public static HWRStatus[] values() {
        return (HWRStatus[]) $VALUES.clone();
    }
}
