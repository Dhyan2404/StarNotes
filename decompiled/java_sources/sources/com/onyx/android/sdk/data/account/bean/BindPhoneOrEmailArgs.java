package com.onyx.android.sdk.data.account.bean;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;", "", "()V", "areaCode", "", "getAreaCode", "()Ljava/lang/String;", "setAreaCode", "(Ljava/lang/String;)V", "boundAccountType", "getBoundAccountType", "setBoundAccountType", "code", "getCode", "setCode", "verifiedAccount", "getVerifiedAccount", "setVerifiedAccount", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BindPhoneOrEmailArgs {

    @Nullable
    private String areaCode;

    @Nullable
    private String boundAccountType;

    @Nullable
    private String code;

    @Nullable
    private String verifiedAccount;

    @Nullable
    public final String getAreaCode() {
        return this.areaCode;
    }

    @Nullable
    public final String getBoundAccountType() {
        return this.boundAccountType;
    }

    @Nullable
    public final String getCode() {
        return this.code;
    }

    @Nullable
    public final String getVerifiedAccount() {
        return this.verifiedAccount;
    }

    public final void setAreaCode(@Nullable String str) {
        this.areaCode = str;
    }

    public final void setBoundAccountType(@Nullable String str) {
        this.boundAccountType = str;
    }

    public final void setCode(@Nullable String str) {
        this.code = str;
    }

    public final void setVerifiedAccount(@Nullable String str) {
        this.verifiedAccount = str;
    }
}
