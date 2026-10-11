package com.onyx.android.sdk.prediction;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.hihonor.android.magicx.app.penengine.estimate.HnStrokeEstimate;
import com.huawei.stylus.penengine.HwPenEngineManager;
import com.huawei.stylus.penengine.estimate.HwStrokeEstimate;
import com.miui.penengine.estimate.MiuiStrokeEstimate;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u0016\u0010\u0017J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\tR\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\fR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/prediction/EstimateCreator;", "", "Lcom/onyx/android/sdk/prediction/IEstimate;", "ensureEstimate", "", "c", "a", "b", "Landroid/content/Context;", "Landroid/content/Context;", "appContext", "", Constants.HASIDCALL_INDEX_SIG, "isCommonCustom", "isDeviceEstimateEnable", "d", "Lcom/onyx/android/sdk/prediction/IEstimate;", "estimateImpl", "Lcom/onyx/android/sdk/prediction/DeviceType;", "e", "Lcom/onyx/android/sdk/prediction/DeviceType;", "deviceType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "sdk-prediction_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEstimateCreator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EstimateCreator.kt\ncom/onyx/android/sdk/prediction/EstimateCreator\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,78:1\n86#2,4:79\n*S KotlinDebug\n*F\n+ 1 EstimateCreator.kt\ncom/onyx/android/sdk/prediction/EstimateCreator\n*L\n50#1:79,4\n*E\n"})
/* loaded from: classes8.dex */
public final class EstimateCreator {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Context appContext;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isCommonCustom;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isDeviceEstimateEnable;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public IEstimate estimateImpl;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public DeviceType deviceType;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DeviceType.values().length];
            try {
                iArr[DeviceType.HUAWEI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DeviceType.XIAOMI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DeviceType.OPPO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DeviceType.VIVO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DeviceType.HONOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DeviceType.COMMON.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public EstimateCreator(@NotNull Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.appContext = appContext;
        this.isCommonCustom = true;
        this.deviceType = DeviceType.COMMON;
    }

    /* renamed from: a */
    public final IEstimate m34461a() {
        IEstimate commonEstimateV2;
        switch (WhenMappings.$EnumSwitchMapping$0[this.deviceType.ordinal()]) {
            case 1:
                commonEstimateV2 = new CommonEstimateV2();
                break;
            case 2:
                commonEstimateV2 = new CommonEstimateV2();
                break;
            case 3:
                commonEstimateV2 = new OppoEstimate();
                break;
            case 4:
                commonEstimateV2 = new VivoEstimate();
                break;
            case 5:
                if (!BuildKt.isApiLevelAbove(34)) {
                    commonEstimateV2 = new HonorEstimateV2();
                    break;
                } else {
                    commonEstimateV2 = new HonorEstimate();
                    break;
                }
            case 6:
                commonEstimateV2 = new CommonEstimateV2();
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        if (!commonEstimateV2.preInit()) {
            commonEstimateV2 = new CommonEstimate();
        }
        Debug debug = Debug.INSTANCE;
        if (debug.getDebug()) {
            Log.d(debug.getTAG(), "using estimate:" + commonEstimateV2);
        }
        return commonEstimateV2;
    }

    /* renamed from: b */
    public final void m34462b() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.deviceType.ordinal()];
        if (i == 1) {
            this.isDeviceEstimateEnable = HwPenEngineManager.isEngineRuntimeAvailable(this.appContext) && HwStrokeEstimate.isFeatureEnable();
        } else if (i == 2) {
            this.isDeviceEstimateEnable = MiuiStrokeEstimate.isFeatureEnable(this.appContext);
        } else if (i != 5) {
            this.isDeviceEstimateEnable = true;
        } else {
            this.isDeviceEstimateEnable = HnStrokeEstimate.isFeatureEnable();
        }
        if (this.isDeviceEstimateEnable) {
            return;
        }
        this.deviceType = DeviceType.COMMON;
    }

    /* renamed from: c */
    public final void m34463c() {
        boolean equals;
        boolean equals2;
        boolean equals3;
        boolean equals4;
        boolean equals5;
        DeviceType deviceType = DeviceType.HUAWEI;
        String deviceName = deviceType.getDeviceName();
        String str = Build.BRAND;
        equals = StringsKt__StringsJVMKt.equals(deviceName, str, true);
        if (!equals) {
            deviceType = DeviceType.HONOR;
            equals2 = StringsKt__StringsJVMKt.equals(deviceType.getDeviceName(), str, true);
            if (!equals2) {
                deviceType = DeviceType.XIAOMI;
                equals3 = StringsKt__StringsJVMKt.equals(deviceType.getDeviceName(), str, true);
                if (!equals3) {
                    deviceType = DeviceType.VIVO;
                    equals4 = StringsKt__StringsJVMKt.equals(deviceType.getDeviceName(), str, true);
                    if (!equals4) {
                        deviceType = DeviceType.OPPO;
                        equals5 = StringsKt__StringsJVMKt.equals(deviceType.getDeviceName(), str, true);
                        if (!equals5) {
                            deviceType = DeviceType.COMMON;
                        }
                    }
                }
            }
        }
        this.deviceType = deviceType;
    }

    @NotNull
    public final IEstimate ensureEstimate() {
        if (this.estimateImpl == null) {
            m34463c();
            m34462b();
            this.estimateImpl = m34461a();
        }
        IEstimate iEstimate = this.estimateImpl;
        Intrinsics.checkNotNull(iEstimate);
        return iEstimate;
    }
}
