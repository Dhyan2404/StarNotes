package com.onyx.android.sdk.hwr.data.constant;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;", "", "(Ljava/lang/String;I)V", "PEN", "TOUCH", "ERASER", "MOUSE", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRPointerType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HWRPointerType[] $VALUES;
    public static final HWRPointerType PEN = new HWRPointerType("PEN", 0);
    public static final HWRPointerType TOUCH = new HWRPointerType("TOUCH", 1);
    public static final HWRPointerType ERASER = new HWRPointerType("ERASER", 2);
    public static final HWRPointerType MOUSE = new HWRPointerType("MOUSE", 3);

    private static final /* synthetic */ HWRPointerType[] $values() {
        return new HWRPointerType[]{PEN, TOUCH, ERASER, MOUSE};
    }

    static {
        HWRPointerType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private HWRPointerType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<HWRPointerType> getEntries() {
        return $ENTRIES;
    }

    public static HWRPointerType valueOf(String str) {
        return (HWRPointerType) Enum.valueOf(HWRPointerType.class, str);
    }

    public static HWRPointerType[] values() {
        return (HWRPointerType[]) $VALUES.clone();
    }
}
