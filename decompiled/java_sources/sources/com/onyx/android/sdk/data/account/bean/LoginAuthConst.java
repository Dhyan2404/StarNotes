package com.onyx.android.sdk.data.account.bean;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/LoginAuthConst;", "", "()V", "ACCOUNT_AUTH", "", "EMAIL_AUTH", "GOOGLE_AUTH", "HUAWEI_AUTH", "MICROSOFT_AUTH", "PHONE_AUTH", "WECHAT_APP_AUTH", "WECHAT_QR_CODE_AUTH", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LoginAuthConst {

    @NotNull
    public static final String ACCOUNT_AUTH = "account";

    @NotNull
    public static final String EMAIL_AUTH = "email";

    @NotNull
    public static final String GOOGLE_AUTH = "google";

    @NotNull
    public static final String HUAWEI_AUTH = "huawei";

    @NotNull
    public static final LoginAuthConst INSTANCE = new LoginAuthConst();

    @NotNull
    public static final String MICROSOFT_AUTH = "microsoft";

    @NotNull
    public static final String PHONE_AUTH = "phone";

    @NotNull
    public static final String WECHAT_APP_AUTH = "wechatApp";

    @NotNull
    public static final String WECHAT_QR_CODE_AUTH = "wechatQrCode";

    private LoginAuthConst() {
    }
}
