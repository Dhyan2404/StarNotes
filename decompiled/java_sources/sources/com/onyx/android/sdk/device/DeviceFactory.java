package com.onyx.android.sdk.device;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0006R\u001b\u0010\f\u001a\u00020\u00028FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/device/DeviceFactory;", "", "Lcom/onyx/android/sdk/device/CommonBaseDevice;", "getDevice", "Lcom/onyx/android/sdk/device/INotch;", "getNotchDevice", "Lcom/onyx/android/sdk/device/IScreen;", "getScreenDevice", "a", "Lkotlin/Lazy;", "getCurrentDevice", "()Lcom/onyx/android/sdk/device/CommonBaseDevice;", "currentDevice", Constants.CONSTRUCTOR_NAME, "()V", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DeviceFactory {

    @NotNull
    public static final DeviceFactory INSTANCE = new DeviceFactory();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy currentDevice;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<CommonBaseDevice>() { // from class: com.onyx.android.sdk.device.DeviceFactory$currentDevice$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CommonBaseDevice invoke() {
                return DeviceFactory.INSTANCE.getDevice();
            }
        });
        currentDevice = lazy;
    }

    @NotNull
    public final CommonBaseDevice getCurrentDevice() {
        return (CommonBaseDevice) currentDevice.getValue();
    }

    @NotNull
    public final CommonBaseDevice getDevice() {
        DeviceUtils deviceUtils = DeviceUtils.INSTANCE;
        return deviceUtils.isLenovoDevice() ? new LenovoDevice() : deviceUtils.isSamsungDevice() ? new SamsungDevice() : deviceUtils.isXiaomiDevice() ? new XiaomiDevice() : deviceUtils.isVivoDevice() ? new VivoDevice() : deviceUtils.isHuaWeiDevice() ? new HuaWeiDevice() : deviceUtils.isOppoDevice() ? new OppoDevice() : deviceUtils.isHonorDevice() ? new HonorDevice() : deviceUtils.isOnePlusDevice() ? new OnePlusDevice() : deviceUtils.isTalDevice() ? new TalDevice() : new CommonBaseDevice();
    }

    @NotNull
    public final INotch getNotchDevice() {
        return (BuildKt.isApiLevelAbove(28) || BuildKt.isApiLevelBelow(26)) ? new CommonBaseDevice() : getDevice();
    }

    @NotNull
    public final IScreen getScreenDevice() {
        return getDevice();
    }
}
