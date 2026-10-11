package com.onyx.android.sdk.prediction;

import com.google.android.gms.stats.CodePackage;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/prediction/DeviceType;", "", "deviceName", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getDeviceName", "()Ljava/lang/String;", "setDeviceName", "(Ljava/lang/String;)V", "HUAWEI", "XIAOMI", "OPPO", "VIVO", CodePackage.COMMON, "HONOR", "sdk-prediction_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class DeviceType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DeviceType[] $VALUES;

    @NotNull
    private String deviceName;
    public static final DeviceType HUAWEI = new DeviceType("HUAWEI", 0, LoginAuthConst.HUAWEI_AUTH);
    public static final DeviceType XIAOMI = new DeviceType("XIAOMI", 1, "xiaomi");
    public static final DeviceType OPPO = new DeviceType("OPPO", 2, "oppo");
    public static final DeviceType VIVO = new DeviceType("VIVO", 3, "vivo");
    public static final DeviceType COMMON = new DeviceType(CodePackage.COMMON, 4, "common");
    public static final DeviceType HONOR = new DeviceType("HONOR", 5, "honor");

    private static final /* synthetic */ DeviceType[] $values() {
        return new DeviceType[]{HUAWEI, XIAOMI, OPPO, VIVO, COMMON, HONOR};
    }

    static {
        DeviceType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private DeviceType(String str, int i, String str2) {
        this.deviceName = str2;
    }

    @NotNull
    public static EnumEntries<DeviceType> getEntries() {
        return $ENTRIES;
    }

    public static DeviceType valueOf(String str) {
        return (DeviceType) Enum.valueOf(DeviceType.class, str);
    }

    public static DeviceType[] values() {
        return (DeviceType[]) $VALUES.clone();
    }

    @NotNull
    public final String getDeviceName() {
        return this.deviceName;
    }

    public final void setDeviceName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.deviceName = str;
    }
}
