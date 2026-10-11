package com.onyx.android.sdk.device.bean;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/device/bean/WindowModeType;", "", "(Ljava/lang/String;I)V", "FULL_SCREEN", "FREEDOM_MODE", "MULTI_WINDOW_MODE", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class WindowModeType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WindowModeType[] $VALUES;
    public static final WindowModeType FULL_SCREEN = new WindowModeType("FULL_SCREEN", 0);
    public static final WindowModeType FREEDOM_MODE = new WindowModeType("FREEDOM_MODE", 1);
    public static final WindowModeType MULTI_WINDOW_MODE = new WindowModeType("MULTI_WINDOW_MODE", 2);

    private static final /* synthetic */ WindowModeType[] $values() {
        return new WindowModeType[]{FULL_SCREEN, FREEDOM_MODE, MULTI_WINDOW_MODE};
    }

    static {
        WindowModeType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private WindowModeType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<WindowModeType> getEntries() {
        return $ENTRIES;
    }

    public static WindowModeType valueOf(String str) {
        return (WindowModeType) Enum.valueOf(WindowModeType.class, str);
    }

    public static WindowModeType[] values() {
        return (WindowModeType[]) $VALUES.clone();
    }
}
