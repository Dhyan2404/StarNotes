package com.onyx.android.sdk.data.account.bean;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountVerifyPurpose;", "", "()V", "KEY_PURPOSE", "", "PURPOSE_BIND", "PURPOSE_BIND_EMAIL_AFTER_LOGIN", "PURPOSE_BIND_EMAIL_BEFORE_VERIFY", "PURPOSE_BIND_PHONE_AFTER_LOGIN", "PURPOSE_LOGIN", "PURPOSE_LOGOFF", "PURPOSE_MESSAGE_CENTER", "PURPOSE_NONE", "PURPOSE_PASSWORD_RECOVER", "PURPOSE_PASSWORD_RESET", "PURPOSE_REBIND", "PURPOSE_SECURITY", "PURPOSE_UNBIND", "purposeToAction", AccountVerifyPurpose.KEY_PURPOSE, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountVerifyPurpose {

    @NotNull
    public static final AccountVerifyPurpose INSTANCE = new AccountVerifyPurpose();

    @NotNull
    public static final String KEY_PURPOSE = "purpose";

    @NotNull
    public static final String PURPOSE_BIND = "bind";

    @NotNull
    public static final String PURPOSE_BIND_EMAIL_AFTER_LOGIN = "bind_email_after_login";

    @NotNull
    public static final String PURPOSE_BIND_EMAIL_BEFORE_VERIFY = "bind_email_before_verify";

    @NotNull
    public static final String PURPOSE_BIND_PHONE_AFTER_LOGIN = "bind_phone_after_login";

    @NotNull
    public static final String PURPOSE_LOGIN = "login";

    @NotNull
    public static final String PURPOSE_LOGOFF = "destroy";

    @NotNull
    public static final String PURPOSE_MESSAGE_CENTER = "message_center";

    @NotNull
    public static final String PURPOSE_NONE = "none";

    @NotNull
    public static final String PURPOSE_PASSWORD_RECOVER = "password_recover";

    @NotNull
    public static final String PURPOSE_PASSWORD_RESET = "password_reset";

    @NotNull
    public static final String PURPOSE_REBIND = "rebind";

    @NotNull
    public static final String PURPOSE_SECURITY = "security";

    @NotNull
    public static final String PURPOSE_UNBIND = "unbind";

    private AccountVerifyPurpose() {
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000a. Please report as an issue. */
    @Nullable
    public final String purposeToAction(@Nullable String purpose) {
        if (purpose == null) {
            return purpose;
        }
        switch (purpose.hashCode()) {
            case -2125020557:
                if (!purpose.equals(PURPOSE_BIND_PHONE_AFTER_LOGIN)) {
                    return purpose;
                }
                return "bind";
            case -1541145695:
                if (!purpose.equals(PURPOSE_BIND_EMAIL_AFTER_LOGIN)) {
                    return purpose;
                }
                return "bind";
            case -187786581:
                if (!purpose.equals(PURPOSE_PASSWORD_RESET)) {
                    return purpose;
                }
                return "security";
            case -88751168:
                if (!purpose.equals(PURPOSE_PASSWORD_RECOVER)) {
                    return purpose;
                }
                return "security";
            default:
                return purpose;
        }
    }
}
