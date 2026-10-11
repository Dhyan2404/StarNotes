package com.onyx.android.sdk.data.account.bean;

import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/LogoutReason;", "", "()V", "CLUSTER_CHANGE", "", "MANUAL", "NOT_BIND_DEVICE", "TOKEN_DISABLED", "TOKEN_EXPIRED", "TOKEN_EXPIRED_REASON_API", "TOKEN_EXPIRED_REASON_WEBVIEW", "TOKEN_INVALID", "TOKEN_UNKNOWN", HwrRecognizerConstant.RECOGNIZER_UNKNOWN, "USER_IS_DISABLED", "USER_NOT_FOUND", "isAutoLogoutReason", "", "reason", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LogoutReason {
    public static final int CLUSTER_CHANGE = 2;

    @NotNull
    public static final LogoutReason INSTANCE = new LogoutReason();
    public static final int MANUAL = 1;
    public static final int NOT_BIND_DEVICE = 42010015;
    public static final int TOKEN_DISABLED = 42010009;
    public static final int TOKEN_EXPIRED = 42010022;
    public static final int TOKEN_EXPIRED_REASON_API = 0;
    public static final int TOKEN_EXPIRED_REASON_WEBVIEW = 1;
    public static final int TOKEN_INVALID = 42010011;
    public static final int TOKEN_UNKNOWN = 42010012;
    public static final int UNKNOWN = 0;
    public static final int USER_IS_DISABLED = 42010014;
    public static final int USER_NOT_FOUND = 42010013;

    private LogoutReason() {
    }

    public final boolean isAutoLogoutReason(int reason) {
        return reason != 1;
    }
}
