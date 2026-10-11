package com.onyx.android.sdk.data.account.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;", "", "()V", "module", "", "getModule", "()Ljava/lang/String;", "setModule", "(Ljava/lang/String;)V", "permission", "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;", "getPermission", "()Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;", "setPermission", "(Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;)V", "subModule", "getSubModule", "setSubModule", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountPermissionItem {

    @NotNull
    private String module = "";

    @NotNull
    private String subModule = "";

    @NotNull
    private AccountPermissionOperate permission = new AccountPermissionOperate();

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.areEqual(AccountPermissionItem.class, other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(other, "null cannot be cast to non-null type com.onyx.android.sdk.data.account.bean.AccountPermissionItem");
        AccountPermissionItem accountPermissionItem = (AccountPermissionItem) other;
        return Intrinsics.areEqual(this.module, accountPermissionItem.module) && Intrinsics.areEqual(this.subModule, accountPermissionItem.subModule) && Intrinsics.areEqual(this.permission, accountPermissionItem.permission);
    }

    @NotNull
    public final String getModule() {
        return this.module;
    }

    @NotNull
    public final AccountPermissionOperate getPermission() {
        return this.permission;
    }

    @NotNull
    public final String getSubModule() {
        return this.subModule;
    }

    public int hashCode() {
        return (((this.module.hashCode() * 31) + this.subModule.hashCode()) * 31) + this.permission.hashCode();
    }

    public final void setModule(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.module = str;
    }

    public final void setPermission(@NotNull AccountPermissionOperate accountPermissionOperate) {
        Intrinsics.checkNotNullParameter(accountPermissionOperate, "<set-?>");
        this.permission = accountPermissionOperate;
    }

    public final void setSubModule(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.subModule = str;
    }
}
