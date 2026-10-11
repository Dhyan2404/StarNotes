package com.onyx.android.sdk.data.account.bean;

import com.blankj.utilcode.constant.PermissionConstants;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.pay.constants.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountVerifyMethods;", "", "()V", "EMAIL", "", "HUAWEI", "PASSWORD", PermissionConstants.PHONE, Constants.PAY_TYPE_WECHAT, "getMethodDisplayName", "type", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountVerifyMethods {

    @NotNull
    public static final String EMAIL = "Email";

    @NotNull
    public static final String HUAWEI = "Huawei";

    @NotNull
    public static final AccountVerifyMethods INSTANCE = new AccountVerifyMethods();

    @NotNull
    public static final String PASSWORD = "Password";

    @NotNull
    public static final String PHONE = "Phone";

    @NotNull
    public static final String WECHAT = "Wechat";

    private AccountVerifyMethods() {
    }

    @NotNull
    public final String getMethodDisplayName(@NotNull String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        switch (type.hashCode()) {
            case -2122609145:
                if (type.equals(HUAWEI)) {
                    return ResManager.INSTANCE.getStringSafely(C7373R.string.verify_type_huawei);
                }
                break;
            case -1707903162:
                if (type.equals(WECHAT)) {
                    return ResManager.INSTANCE.getStringSafely(C7373R.string.verify_type_wechat);
                }
                break;
            case 67066748:
                if (type.equals(EMAIL)) {
                    return ResManager.INSTANCE.getStringSafely(C7373R.string.verify_type_email);
                }
                break;
            case 77090126:
                if (type.equals(PHONE)) {
                    return ResManager.INSTANCE.getStringSafely(C7373R.string.verify_type_phone);
                }
                break;
            case 1281629883:
                if (type.equals(PASSWORD)) {
                    return ResManager.INSTANCE.getStringSafely(C7373R.string.verify_type_phone);
                }
                break;
        }
        throw new RuntimeException("Unsupported Verify Type");
    }
}
