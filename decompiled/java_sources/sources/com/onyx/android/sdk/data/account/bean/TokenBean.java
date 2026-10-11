package com.onyx.android.sdk.data.account.bean;

import java.util.Date;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/TokenBean;", "", "()V", "token", "", "getToken", "()Ljava/lang/String;", "setToken", "(Ljava/lang/String;)V", "tokenExpiredAt", "", "getTokenExpiredAt", "()J", "setTokenExpiredAt", "(J)V", "tokenExpiredAtDate", "Ljava/util/Date;", "getTokenExpiredAtDate", "()Ljava/util/Date;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TokenBean {

    @Nullable
    private String token;
    private long tokenExpiredAt;

    @Nullable
    public final String getToken() {
        return this.token;
    }

    public final long getTokenExpiredAt() {
        return this.tokenExpiredAt;
    }

    @NotNull
    public final Date getTokenExpiredAtDate() {
        return new Date(this.tokenExpiredAt * 1000);
    }

    public final void setToken(@Nullable String str) {
        this.token = str;
    }

    public final void setTokenExpiredAt(long j) {
        this.tokenExpiredAt = j;
    }
}
