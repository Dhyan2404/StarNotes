package com.onyx.android.sdk.device.bean;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\f\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/device/bean/MultiWindowType;", "", "location", "", "(Ljava/lang/String;II)V", "getLocation", "()I", "setLocation", "(I)V", "isWindowAtTheBottom", "", "isWindowAtTheLeft", "isWindowAtTheRight", "isWindowAtTheTop", "MULTI_WINDOW_NONE", "MULTI_WINDOW_UN_KNOW", "MULTI_WINDOW_H_1_2", "MULTI_WINDOW_H_1_3", "MULTI_WINDOW_H_2_3", "MULTI_WINDOW_V_1_2", "MULTI_WINDOW_V_1_3", "MULTI_WINDOW_V_2_3", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MultiWindowType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MultiWindowType[] $VALUES;
    public static final MultiWindowType MULTI_WINDOW_H_1_2;
    public static final MultiWindowType MULTI_WINDOW_H_1_3;
    public static final MultiWindowType MULTI_WINDOW_H_2_3;
    public static final MultiWindowType MULTI_WINDOW_NONE = new MultiWindowType("MULTI_WINDOW_NONE", 0, 0, 1, null);
    public static final MultiWindowType MULTI_WINDOW_UN_KNOW;
    public static final MultiWindowType MULTI_WINDOW_V_1_2;
    public static final MultiWindowType MULTI_WINDOW_V_1_3;
    public static final MultiWindowType MULTI_WINDOW_V_2_3;
    private int location;

    private static final /* synthetic */ MultiWindowType[] $values() {
        return new MultiWindowType[]{MULTI_WINDOW_NONE, MULTI_WINDOW_UN_KNOW, MULTI_WINDOW_H_1_2, MULTI_WINDOW_H_1_3, MULTI_WINDOW_H_2_3, MULTI_WINDOW_V_1_2, MULTI_WINDOW_V_1_3, MULTI_WINDOW_V_2_3};
    }

    static {
        int i = 0;
        int i2 = 1;
        DefaultConstructorMarker defaultConstructorMarker = null;
        MULTI_WINDOW_UN_KNOW = new MultiWindowType("MULTI_WINDOW_UN_KNOW", 1, i, i2, defaultConstructorMarker);
        int i3 = 0;
        int i4 = 1;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        MULTI_WINDOW_H_1_2 = new MultiWindowType("MULTI_WINDOW_H_1_2", 2, i3, i4, defaultConstructorMarker2);
        MULTI_WINDOW_H_1_3 = new MultiWindowType("MULTI_WINDOW_H_1_3", 3, i, i2, defaultConstructorMarker);
        MULTI_WINDOW_H_2_3 = new MultiWindowType("MULTI_WINDOW_H_2_3", 4, i3, i4, defaultConstructorMarker2);
        MULTI_WINDOW_V_1_2 = new MultiWindowType("MULTI_WINDOW_V_1_2", 5, i, i2, defaultConstructorMarker);
        MULTI_WINDOW_V_1_3 = new MultiWindowType("MULTI_WINDOW_V_1_3", 6, i3, i4, defaultConstructorMarker2);
        MULTI_WINDOW_V_2_3 = new MultiWindowType("MULTI_WINDOW_V_2_3", 7, i, i2, defaultConstructorMarker);
        MultiWindowType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private MultiWindowType(String str, int i, int i2) {
        this.location = i2;
    }

    @NotNull
    public static EnumEntries<MultiWindowType> getEntries() {
        return $ENTRIES;
    }

    public static MultiWindowType valueOf(String str) {
        return (MultiWindowType) Enum.valueOf(MultiWindowType.class, str);
    }

    public static MultiWindowType[] values() {
        return (MultiWindowType[]) $VALUES.clone();
    }

    public final int getLocation() {
        return this.location;
    }

    public final boolean isWindowAtTheBottom() {
        return this.location == 3;
    }

    public final boolean isWindowAtTheLeft() {
        return this.location == 0;
    }

    public final boolean isWindowAtTheRight() {
        return this.location == 1;
    }

    public final boolean isWindowAtTheTop() {
        return this.location == 2;
    }

    public final void setLocation(int i) {
        this.location = i;
    }

    public /* synthetic */ MultiWindowType(String str, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, (i3 & 1) != 0 ? -1 : i2);
    }
}
