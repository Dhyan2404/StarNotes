package com.onyx.android.sdk.hwr.data.constant;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;
import org.mortbay.jetty.HttpMethods;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;", "", "(Ljava/lang/String;I)V", "DOWN", HttpMethods.MOVE, "UP", "CANCEL", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HWRPointerEventType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HWRPointerEventType[] $VALUES;
    public static final HWRPointerEventType DOWN = new HWRPointerEventType("DOWN", 0);
    public static final HWRPointerEventType MOVE = new HWRPointerEventType(HttpMethods.MOVE, 1);

    /* renamed from: UP */
    public static final HWRPointerEventType f42542UP = new HWRPointerEventType("UP", 2);
    public static final HWRPointerEventType CANCEL = new HWRPointerEventType("CANCEL", 3);

    private static final /* synthetic */ HWRPointerEventType[] $values() {
        return new HWRPointerEventType[]{DOWN, MOVE, f42542UP, CANCEL};
    }

    static {
        HWRPointerEventType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private HWRPointerEventType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<HWRPointerEventType> getEntries() {
        return $ENTRIES;
    }

    public static HWRPointerEventType valueOf(String str) {
        return (HWRPointerEventType) Enum.valueOf(HWRPointerEventType.class, str);
    }

    public static HWRPointerEventType[] values() {
        return (HWRPointerEventType[]) $VALUES.clone();
    }
}
