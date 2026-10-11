package com.onyx.android.sdk.data.sync.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import kotlin.Metadata;
import org.apache.http.cookie.ClientCookie;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR \u0010\f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/sync/bean/SyncGatewayResponse;", "", "()V", "cookieName", "", "getCookieName", "()Ljava/lang/String;", "setCookieName", "(Ljava/lang/String;)V", ClientCookie.EXPIRES_ATTR, "getExpires", "setExpires", "sessionId", "getSessionId", "setSessionId", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SyncGatewayResponse {

    @JSONField(name = "cookie_name")
    @Nullable
    private String cookieName;

    @Nullable
    private String expires;

    @JSONField(name = "session_id")
    @Nullable
    private String sessionId;

    @Nullable
    public final String getCookieName() {
        return this.cookieName;
    }

    @Nullable
    public final String getExpires() {
        return this.expires;
    }

    @Nullable
    public final String getSessionId() {
        return this.sessionId;
    }

    public final void setCookieName(@Nullable String str) {
        this.cookieName = str;
    }

    public final void setExpires(@Nullable String str) {
        this.expires = str;
    }

    public final void setSessionId(@Nullable String str) {
        this.sessionId = str;
    }
}
