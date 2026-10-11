package com.onyx.android.sdk.pay.utils;

import com.caverock.androidsvg.SVGParser;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.OnyxStatisticEvent;
import com.onyx.android.sdk.pay.PayBundle;
import com.onyx.android.sdk.pay.data.OrderArgs;
import com.onyx.android.sdk.pay.data.PayResult;
import com.onyx.android.sdk.pay.data.PayType;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0016\u0010\u0012\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\rH\u0002¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/utils/PayStatisticUtils;", "", "Lcom/onyx/android/sdk/pay/data/OrderArgs;", "args", "", "reportPayDialogView", "", "duration", "reportPayDialogClose", "Lcom/onyx/android/sdk/pay/data/PayType;", "payment", "reportAppPay", "orderArgs", "Lcom/onyx/android/sdk/pay/data/PayResult;", "payResult", "", "isQrcode", "reportNormalPayResult", "reportHuaweiPayResult", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PayStatisticUtils {

    @NotNull
    public static final PayStatisticUtils INSTANCE = new PayStatisticUtils();

    /* renamed from: a */
    public final String m34348a(PayResult payResult) {
        int status = payResult.getStatus();
        return status != 0 ? status != 2 ? "cancel" : OneDriverConstants.CONFLICT_BEHAVIOR_FAIL : FirebaseAnalytics.Param.SUCCESS;
    }

    public final void reportAppPay(@NotNull OrderArgs args, @NotNull PayType payment, long duration) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(payment, "payment");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_FUNCTION_FROM, args.getStatisticSource());
        linkedHashMap.put(OnyxStatisticConstant.KEY_OPERATION_CODE, args.getOperationCode());
        linkedHashMap.put(OnyxStatisticConstant.KEY_TRIGGER_PAYMENT_METHODS, PayType.getPaymentMethod$default(payment, false, 1, null));
        linkedHashMap.put(OnyxStatisticConstant.KEY_STAY_DURATION, Long.valueOf(duration));
        linkedHashMap.put(OnyxStatisticConstant.KEY_DEVICE_SYSTEM, OnyxStatisticConstant.INSTANCE.getTriggerSystem());
        PayBundle.INSTANCE.reportStatisticEvent(new OnyxStatisticEvent(OnyxStatisticConstant.ID_CLICK_STARNOTE_PAYMENT_POPUPS_APP_PAY, linkedHashMap));
    }

    public final void reportHuaweiPayResult(@NotNull OrderArgs orderArgs, @NotNull PayResult payResult) {
        Intrinsics.checkNotNullParameter(orderArgs, "orderArgs");
        Intrinsics.checkNotNullParameter(payResult, "payResult");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_FUNCTION_FROM, orderArgs.getStatisticSource());
        linkedHashMap.put(OnyxStatisticConstant.KEY_OPERATION_CODE, orderArgs.getOperationCode());
        String interfaceFrom = orderArgs.getInterfaceFrom();
        if (interfaceFrom == null) {
            interfaceFrom = SVGParser.f16048t;
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_INTERFACE_FROM, interfaceFrom);
        linkedHashMap.put(OnyxStatisticConstant.KEY_HUAWEI_PAY_RESULT, m34348a(payResult));
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_AMOUNT, Long.valueOf(orderArgs.getNoteAmount()));
        linkedHashMap.put(OnyxStatisticConstant.KEY_DEVICE_SYSTEM, OnyxStatisticConstant.INSTANCE.getTriggerSystem());
        PayBundle.INSTANCE.reportStatisticEvent(new OnyxStatisticEvent(OnyxStatisticConstant.ID_STATE_HUAWEI_PAY, linkedHashMap));
    }

    public final void reportNormalPayResult(@NotNull OrderArgs orderArgs, @NotNull PayResult payResult, boolean isQrcode) {
        Intrinsics.checkNotNullParameter(orderArgs, "orderArgs");
        Intrinsics.checkNotNullParameter(payResult, "payResult");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_FUNCTION_FROM, orderArgs.getStatisticSource());
        linkedHashMap.put(OnyxStatisticConstant.KEY_OPERATION_CODE, orderArgs.getOperationCode());
        String interfaceFrom = orderArgs.getInterfaceFrom();
        if (StringKt.isNotBlank(interfaceFrom)) {
            linkedHashMap.put(OnyxStatisticConstant.KEY_INTERFACE_FROM, interfaceFrom);
        } else {
            linkedHashMap.put(OnyxStatisticConstant.KEY_INTERFACE_FROM, SVGParser.f16048t);
        }
        linkedHashMap.put(OnyxStatisticConstant.KEY_TRIGGER_PAYMENT_METHODS, payResult.getPayType().getPaymentMethod(isQrcode));
        linkedHashMap.put(OnyxStatisticConstant.KEY_STARNOTE_PAY_RESULT, m34348a(payResult));
        linkedHashMap.put(OnyxStatisticConstant.KEY_NOTE_AMOUNT, Long.valueOf(orderArgs.getNoteAmount()));
        linkedHashMap.put(OnyxStatisticConstant.KEY_DEVICE_SYSTEM, OnyxStatisticConstant.INSTANCE.getTriggerSystem());
        PayBundle.INSTANCE.reportStatisticEvent(new OnyxStatisticEvent(OnyxStatisticConstant.ID_STATE_STARNOTE_PAYMENT_POPUPS_PAY_RESULT, linkedHashMap));
    }

    public final void reportPayDialogClose(@NotNull OrderArgs args, long duration) {
        Intrinsics.checkNotNullParameter(args, "args");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_FUNCTION_FROM, args.getStatisticSource());
        linkedHashMap.put(OnyxStatisticConstant.KEY_OPERATION_CODE, args.getOperationCode());
        linkedHashMap.put(OnyxStatisticConstant.KEY_STAY_DURATION, Long.valueOf(duration));
        linkedHashMap.put(OnyxStatisticConstant.KEY_DEVICE_SYSTEM, OnyxStatisticConstant.INSTANCE.getTriggerSystem());
        PayBundle.INSTANCE.reportStatisticEvent(new OnyxStatisticEvent(OnyxStatisticConstant.ID_CLICK_STARNOTE_PAYMENT_POPUPS_CLOSE, linkedHashMap));
    }

    public final void reportPayDialogView(@NotNull OrderArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OnyxStatisticConstant.KEY_FUNCTION_FROM, args.getStatisticSource());
        linkedHashMap.put(OnyxStatisticConstant.KEY_OPERATION_CODE, args.getOperationCode());
        linkedHashMap.put(OnyxStatisticConstant.KEY_DEVICE_SYSTEM, OnyxStatisticConstant.INSTANCE.getTriggerSystem());
        PayBundle.INSTANCE.reportStatisticEvent(new OnyxStatisticEvent(OnyxStatisticConstant.ID_VIEW_STARNOTE_PAYMENT_POPUPS, linkedHashMap));
    }
}
