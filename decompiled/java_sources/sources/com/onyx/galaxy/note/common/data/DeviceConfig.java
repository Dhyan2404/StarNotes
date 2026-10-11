package com.onyx.galaxy.note.common.data;

import com.onyx.android.sdk.data.account.bean.AccountPermissionItem;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/data/DeviceConfig;", "", "()V", "permissions", "", "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;", "getPermissions", "()Ljava/util/List;", "setPermissions", "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class DeviceConfig {

    @NotNull
    private List<AccountPermissionItem> permissions = new ArrayList();

    @NotNull
    public final List<AccountPermissionItem> getPermissions() {
        return this.permissions;
    }

    public final void setPermissions(@NotNull List<AccountPermissionItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.permissions = list;
    }
}
