package com.onyx.android.sdk.device.bean;

import com.blankj.utilcode.constant.PermissionConstants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;", "", "(Ljava/lang/String;I)V", PermissionConstants.PHONE, "PAD", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ScreenDisplayType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ScreenDisplayType[] $VALUES;
    public static final ScreenDisplayType PHONE = new ScreenDisplayType(PermissionConstants.PHONE, 0);
    public static final ScreenDisplayType PAD = new ScreenDisplayType("PAD", 1);

    private static final /* synthetic */ ScreenDisplayType[] $values() {
        return new ScreenDisplayType[]{PHONE, PAD};
    }

    static {
        ScreenDisplayType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private ScreenDisplayType(String str, int i) {
    }

    @NotNull
    public static EnumEntries<ScreenDisplayType> getEntries() {
        return $ENTRIES;
    }

    public static ScreenDisplayType valueOf(String str) {
        return (ScreenDisplayType) Enum.valueOf(ScreenDisplayType.class, str);
    }

    public static ScreenDisplayType[] values() {
        return (ScreenDisplayType[]) $VALUES.clone();
    }
}
