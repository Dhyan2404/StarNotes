package com.onyx.android.sdk.data.account.bean;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\b¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;", "", "()V", "accessToken", "", "getAccessToken", "()Ljava/lang/String;", "setAccessToken", "(Ljava/lang/String;)V", "action", "getAction", "setAction", "code", "getCode", "setCode", "openId", "getOpenId", "setOpenId", "state", "getState", "setState", "type", "getType", "setType", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class WechatVerifyArgs {

    @Nullable
    private String accessToken;

    @Nullable
    private String action;

    @Nullable
    private String code;

    @Nullable
    private String openId;

    @Nullable
    private String state;

    @Nullable
    private String type;

    @Nullable
    public final String getAccessToken() {
        return this.accessToken;
    }

    @Nullable
    public final String getAction() {
        return this.action;
    }

    @Nullable
    public final String getCode() {
        return this.code;
    }

    @Nullable
    public final String getOpenId() {
        return this.openId;
    }

    @Nullable
    public final String getState() {
        return this.state;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    public final void setAccessToken(@Nullable String str) {
        this.accessToken = str;
    }

    public final void setAction(@Nullable String str) {
        this.action = str;
    }

    public final void setCode(@Nullable String str) {
        this.code = str;
    }

    public final void setOpenId(@Nullable String str) {
        this.openId = str;
    }

    public final void setState(@Nullable String str) {
        this.state = str;
    }

    public final void setType(@Nullable String str) {
        this.type = str;
    }
}
