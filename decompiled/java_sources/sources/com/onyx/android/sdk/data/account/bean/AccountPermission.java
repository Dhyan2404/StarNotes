package com.onyx.android.sdk.data.account.bean;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountPermission;", "", "()V", "permissionList", "", "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;", "getPermissionList", "()Ljava/util/List;", "setPermissionList", "(Ljava/util/List;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountPermission {

    @NotNull
    private List<AccountPermissionItem> permissionList;

    public AccountPermission() {
        List<AccountPermissionItem> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.permissionList = emptyList;
    }

    @NotNull
    public final List<AccountPermissionItem> getPermissionList() {
        return this.permissionList;
    }

    public final void setPermissionList(@NotNull List<AccountPermissionItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.permissionList = list;
    }
}
