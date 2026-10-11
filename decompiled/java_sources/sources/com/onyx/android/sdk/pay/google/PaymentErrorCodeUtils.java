package com.onyx.android.sdk.pay.google;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.pay.C7520R;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/google/PaymentErrorCodeUtils;", "", "()V", "ERROR_BILLING_CLIENT_NOT_INITIALIZE", "", "ERROR_CODE_NONE", "ERROR_CONSUME_FAILED", "ERROR_DEVELOPER_PARAMS_MAX_LENGTH", "ERROR_PAYMENT_RESULT_EMPTY", "ERROR_QUERY_PRODUCT_EMPTY", "ERROR_VERIFY_TOKEN_FAILED", "getErrorMessage", "", "errorCode", "isNoteErrorCode", "", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PaymentErrorCodeUtils {
    public static final int ERROR_BILLING_CLIENT_NOT_INITIALIZE = 1002;
    public static final int ERROR_CODE_NONE = -1;
    public static final int ERROR_CONSUME_FAILED = 2005;
    public static final int ERROR_DEVELOPER_PARAMS_MAX_LENGTH = 2002;
    public static final int ERROR_PAYMENT_RESULT_EMPTY = 2004;
    public static final int ERROR_QUERY_PRODUCT_EMPTY = 2001;
    public static final int ERROR_VERIFY_TOKEN_FAILED = 2003;

    @NotNull
    public static final PaymentErrorCodeUtils INSTANCE = new PaymentErrorCodeUtils();

    @NotNull
    public final String getErrorMessage(int errorCode) {
        if (errorCode == -2) {
            ResManager resManager = ResManager.INSTANCE;
            String format = String.format(resManager.getStringSafely(C7520R.string.payment_verify_error_tips), Arrays.copyOf(new Object[]{resManager.getStringSafely(C7520R.string.feature_not_supported)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            return format;
        }
        if (errorCode == 12) {
            ResManager resManager2 = ResManager.INSTANCE;
            String format2 = String.format(resManager2.getStringSafely(C7520R.string.payment_network_error_tips), Arrays.copyOf(new Object[]{resManager2.getStringSafely(C7520R.string.payment_network_error)}, 1));
            Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
            return format2;
        }
        if (errorCode == 1002) {
            ResManager resManager3 = ResManager.INSTANCE;
            String format3 = String.format(resManager3.getStringSafely(C7520R.string.payment_verify_error_tips), Arrays.copyOf(new Object[]{resManager3.getStringSafely(C7520R.string.error_billing_client_not_initialize)}, 1));
            Intrinsics.checkNotNullExpressionValue(format3, "format(...)");
            return format3;
        }
        switch (errorCode) {
            case 2:
                ResManager resManager4 = ResManager.INSTANCE;
                String format4 = String.format(resManager4.getStringSafely(C7520R.string.payment_network_error_tips), Arrays.copyOf(new Object[]{resManager4.getStringSafely(C7520R.string.service_unavailable)}, 1));
                Intrinsics.checkNotNullExpressionValue(format4, "format(...)");
                return format4;
            case 3:
                ResManager resManager5 = ResManager.INSTANCE;
                String format5 = String.format(resManager5.getStringSafely(C7520R.string.payment_verify_error_tips), Arrays.copyOf(new Object[]{resManager5.getStringSafely(C7520R.string.billing_unavailable)}, 1));
                Intrinsics.checkNotNullExpressionValue(format5, "format(...)");
                return format5;
            case 4:
                ResManager resManager6 = ResManager.INSTANCE;
                String format6 = String.format(resManager6.getStringSafely(C7520R.string.payment_verify_error_tips), Arrays.copyOf(new Object[]{resManager6.getStringSafely(C7520R.string.item_unavailable)}, 1));
                Intrinsics.checkNotNullExpressionValue(format6, "format(...)");
                return format6;
            case 5:
                ResManager resManager7 = ResManager.INSTANCE;
                String format7 = String.format(resManager7.getStringSafely(C7520R.string.payment_verify_error_tips), Arrays.copyOf(new Object[]{resManager7.getStringSafely(C7520R.string.developer_error)}, 1));
                Intrinsics.checkNotNullExpressionValue(format7, "format(...)");
                return format7;
            case 6:
                ResManager resManager8 = ResManager.INSTANCE;
                String format8 = String.format(resManager8.getStringSafely(C7520R.string.payment_verify_error_tips), Arrays.copyOf(new Object[]{resManager8.getStringSafely(C7520R.string.payment_error)}, 1));
                Intrinsics.checkNotNullExpressionValue(format8, "format(...)");
                return format8;
            case 7:
                ResManager resManager9 = ResManager.INSTANCE;
                String format9 = String.format(resManager9.getStringSafely(C7520R.string.payment_verify_error_tips), Arrays.copyOf(new Object[]{resManager9.getStringSafely(C7520R.string.item_already_owned)}, 1));
                Intrinsics.checkNotNullExpressionValue(format9, "format(...)");
                return format9;
            case 8:
                ResManager resManager10 = ResManager.INSTANCE;
                String format10 = String.format(resManager10.getStringSafely(C7520R.string.payment_verify_error_tips), Arrays.copyOf(new Object[]{resManager10.getStringSafely(C7520R.string.item_not_owned)}, 1));
                Intrinsics.checkNotNullExpressionValue(format10, "format(...)");
                return format10;
            default:
                switch (errorCode) {
                    case 2001:
                        ResManager resManager11 = ResManager.INSTANCE;
                        String format11 = String.format(resManager11.getStringSafely(C7520R.string.payment_verify_error_tips), Arrays.copyOf(new Object[]{resManager11.getStringSafely(C7520R.string.error_query_product_empty)}, 1));
                        Intrinsics.checkNotNullExpressionValue(format11, "format(...)");
                        return format11;
                    case 2002:
                        ResManager resManager12 = ResManager.INSTANCE;
                        String format12 = String.format(resManager12.getStringSafely(C7520R.string.payment_verify_error_tips), Arrays.copyOf(new Object[]{resManager12.getStringSafely(C7520R.string.error_developer_params_max_length)}, 1));
                        Intrinsics.checkNotNullExpressionValue(format12, "format(...)");
                        return format12;
                    case 2003:
                        ResManager resManager13 = ResManager.INSTANCE;
                        String format13 = String.format(resManager13.getStringSafely(C7520R.string.payment_verify_error_tips), Arrays.copyOf(new Object[]{resManager13.getStringSafely(C7520R.string.error_verify_token_failed)}, 1));
                        Intrinsics.checkNotNullExpressionValue(format13, "format(...)");
                        return format13;
                    case 2004:
                        ResManager resManager14 = ResManager.INSTANCE;
                        String format14 = String.format(resManager14.getStringSafely(C7520R.string.payment_verify_error_tips), Arrays.copyOf(new Object[]{resManager14.getStringSafely(C7520R.string.error_payment_result_empty)}, 1));
                        Intrinsics.checkNotNullExpressionValue(format14, "format(...)");
                        return format14;
                    case 2005:
                        ResManager resManager15 = ResManager.INSTANCE;
                        String format15 = String.format(resManager15.getStringSafely(C7520R.string.payment_verify_error_tips), Arrays.copyOf(new Object[]{resManager15.getStringSafely(C7520R.string.error_consume_failed)}, 1));
                        Intrinsics.checkNotNullExpressionValue(format15, "format(...)");
                        return format15;
                    default:
                        return "";
                }
        }
    }

    public final boolean isNoteErrorCode(int errorCode) {
        return errorCode == -1;
    }
}
