package com.onyx.android.sdk.data.account;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/AccountConstant;", "", "()V", "ONE_MONTH_TIME_MS", "", "getONE_MONTH_TIME_MS", "()J", "setONE_MONTH_TIME_MS", "(J)V", "REFRESH_TOKEN_EXPIRED_TIME_KEY", "", "REFRESH_TOKEN_REFRESH_TIME_KEY", "TOKEN_EXPIRED_TIME_MS", "getTOKEN_EXPIRED_TIME_MS", "setTOKEN_EXPIRED_TIME_MS", "TOKEN_REFRESH_TIME_MS", "getTOKEN_REFRESH_TIME_MS", "setTOKEN_REFRESH_TIME_MS", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountConstant {

    @NotNull
    public static final String REFRESH_TOKEN_EXPIRED_TIME_KEY = "expired_time_second";

    @NotNull
    public static final String REFRESH_TOKEN_REFRESH_TIME_KEY = "refresh_time_second";

    @NotNull
    public static final AccountConstant INSTANCE = new AccountConstant();
    private static long ONE_MONTH_TIME_MS = 2592000000L;
    private static long TOKEN_EXPIRED_TIME_MS = 6 * 2592000000L;
    private static long TOKEN_REFRESH_TIME_MS = 2592000000L;

    private AccountConstant() {
    }

    public final long getONE_MONTH_TIME_MS() {
        return ONE_MONTH_TIME_MS;
    }

    public final long getTOKEN_EXPIRED_TIME_MS() {
        return TOKEN_EXPIRED_TIME_MS;
    }

    public final long getTOKEN_REFRESH_TIME_MS() {
        return TOKEN_REFRESH_TIME_MS;
    }

    public final void setONE_MONTH_TIME_MS(long j) {
        ONE_MONTH_TIME_MS = j;
    }

    public final void setTOKEN_EXPIRED_TIME_MS(long j) {
        TOKEN_EXPIRED_TIME_MS = j;
    }

    public final void setTOKEN_REFRESH_TIME_MS(long j) {
        TOKEN_REFRESH_TIME_MS = j;
    }
}
