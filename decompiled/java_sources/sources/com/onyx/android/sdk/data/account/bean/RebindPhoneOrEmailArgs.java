package com.onyx.android.sdk.data.account.bean;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\b¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;", "", "()V", "accountType", "", "getAccountType", "()Ljava/lang/String;", "setAccountType", "(Ljava/lang/String;)V", "newAccount", "getNewAccount", "setNewAccount", "newAreaCode", "getNewAreaCode", "setNewAreaCode", "newVerifiedCode", "getNewVerifiedCode", "setNewVerifiedCode", "oldAccount", "getOldAccount", "setOldAccount", "oldVerifiedCode", "getOldVerifiedCode", "setOldVerifiedCode", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class RebindPhoneOrEmailArgs {

    @Nullable
    private String accountType;

    @Nullable
    private String newAccount;

    @Nullable
    private String newAreaCode;

    @Nullable
    private String newVerifiedCode;

    @Nullable
    private String oldAccount;

    @Nullable
    private String oldVerifiedCode;

    @Nullable
    public final String getAccountType() {
        return this.accountType;
    }

    @Nullable
    public final String getNewAccount() {
        return this.newAccount;
    }

    @Nullable
    public final String getNewAreaCode() {
        return this.newAreaCode;
    }

    @Nullable
    public final String getNewVerifiedCode() {
        return this.newVerifiedCode;
    }

    @Nullable
    public final String getOldAccount() {
        return this.oldAccount;
    }

    @Nullable
    public final String getOldVerifiedCode() {
        return this.oldVerifiedCode;
    }

    public final void setAccountType(@Nullable String str) {
        this.accountType = str;
    }

    public final void setNewAccount(@Nullable String str) {
        this.newAccount = str;
    }

    public final void setNewAreaCode(@Nullable String str) {
        this.newAreaCode = str;
    }

    public final void setNewVerifiedCode(@Nullable String str) {
        this.newVerifiedCode = str;
    }

    public final void setOldAccount(@Nullable String str) {
        this.oldAccount = str;
    }

    public final void setOldVerifiedCode(@Nullable String str) {
        this.oldVerifiedCode = str;
    }
}
