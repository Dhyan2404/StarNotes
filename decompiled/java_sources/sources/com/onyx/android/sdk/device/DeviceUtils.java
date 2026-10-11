package com.onyx.android.sdk.device;

import android.os.Build;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0018\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\"\u0010#J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0002J\u0006\u0010\b\u001a\u00020\u0002J\u0006\u0010\t\u001a\u00020\u0002J\u0006\u0010\n\u001a\u00020\u0002J\u0006\u0010\u000b\u001a\u00020\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u000eR\u0014\u0010\u0015\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u000eR\u0014\u0010\u0017\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u000eR\u0014\u0010\u0019\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u000eR\u0014\u0010\u001b\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u000eR\u0014\u0010\u001d\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u000eR\u0014\u0010\u001f\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u000eR\u0014\u0010!\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b \u0010\u000e¨\u0006$"}, m61528d2 = {"Lcom/onyx/android/sdk/device/DeviceUtils;", "", "", "isHuaWeiDevice", "isHonorDevice", "isXiaomiDevice", "isOppoDevice", "isVivoDevice", "isSamsungDevice", "isLenovoDevice", "isOnePlusDevice", "isTalDevice", "", "a", Constants.STRING_SIG, "XIAOMI", "b", DeviceUtils.REDMI, "c", "HUAWEI", "d", "HONOR", "e", "OPPO", C6997f.f39671c, "VIVO", C6998g.f39679a, "SAMSUNG", C6999h.f39688c, "LENOVO", "i", DeviceUtils.ONEPLUS, "j", DeviceUtils.TAL, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DeviceUtils {

    @NotNull
    public static final DeviceUtils INSTANCE = new DeviceUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String XIAOMI = "XIAOMI";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String REDMI = "REDMI";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String HUAWEI = "HUAWEI";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final String HONOR = "HONOR";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final String OPPO = "OPPO";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final String VIVO = "VIVO";

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final String SAMSUNG = "SAMSUNG";

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static final String LENOVO = "LENOVO";

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public static final String ONEPLUS = "ONEPLUS";

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public static final String TAL = "TAL";

    public final boolean isHonorDevice() {
        boolean equals;
        equals = StringsKt__StringsJVMKt.equals(Build.BRAND, "HONOR", true);
        return equals;
    }

    public final boolean isHuaWeiDevice() {
        boolean equals;
        equals = StringsKt__StringsJVMKt.equals(Build.BRAND, "HUAWEI", true);
        return equals;
    }

    public final boolean isLenovoDevice() {
        boolean equals;
        equals = StringsKt__StringsJVMKt.equals(Build.BRAND, "LENOVO", true);
        return equals;
    }

    public final boolean isOnePlusDevice() {
        boolean equals;
        equals = StringsKt__StringsJVMKt.equals(Build.BRAND, ONEPLUS, true);
        return equals;
    }

    public final boolean isOppoDevice() {
        boolean equals;
        equals = StringsKt__StringsJVMKt.equals(Build.BRAND, "OPPO", true);
        return equals;
    }

    public final boolean isSamsungDevice() {
        boolean equals;
        equals = StringsKt__StringsJVMKt.equals(Build.BRAND, "SAMSUNG", true);
        return equals;
    }

    public final boolean isTalDevice() {
        boolean startsWith;
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        startsWith = StringsKt__StringsJVMKt.startsWith(MODEL, TAL, true);
        return startsWith;
    }

    public final boolean isVivoDevice() {
        boolean equals;
        equals = StringsKt__StringsJVMKt.equals(Build.BRAND, "VIVO", true);
        return equals;
    }

    public final boolean isXiaomiDevice() {
        boolean equals;
        boolean equals2;
        String str = Build.BRAND;
        equals = StringsKt__StringsJVMKt.equals(str, "XIAOMI", true);
        if (equals) {
            return true;
        }
        equals2 = StringsKt__StringsJVMKt.equals(str, REDMI, true);
        return equals2;
    }
}
