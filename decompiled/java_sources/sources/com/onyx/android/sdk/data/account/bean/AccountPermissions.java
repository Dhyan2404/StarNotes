package com.onyx.android.sdk.data.account.bean;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0007\u001a\u0004\u0018\u00010\b*\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u0004H\u0002J\u0012\u0010\r\u001a\u00020\u000e*\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tJ\u001a\u0010\u000f\u001a\u00020\u000e*\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u000e*\u0004\u0018\u00010\bH\u0002J\u000e\u0010\u0011\u001a\u00020\u000e*\u0004\u0018\u00010\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountPermissions;", "", "()V", "KEY_MODULE_CLOUD", "", "KEY_MODULE_LOGIN", "KEY_MODULE_SYNC", "getPermissionOperate", "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;", "", "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;", "module", "subModule", "hasCloudSyncPermission", "", "hasLoginPermission", "hasReadPermission", "hasWritePermission", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nAccountPermissions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountPermissions.kt\ncom/onyx/android/sdk/data/account/bean/AccountPermissions\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n288#2,2:33\n*S KotlinDebug\n*F\n+ 1 AccountPermissions.kt\ncom/onyx/android/sdk/data/account/bean/AccountPermissions\n*L\n22#1:33,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AccountPermissions {

    @NotNull
    public static final AccountPermissions INSTANCE = new AccountPermissions();

    @NotNull
    private static final String KEY_MODULE_CLOUD = "cloud";

    @NotNull
    private static final String KEY_MODULE_LOGIN = "login";

    @NotNull
    private static final String KEY_MODULE_SYNC = "sync";

    private AccountPermissions() {
    }

    private final AccountPermissionOperate getPermissionOperate(List<AccountPermissionItem> list, String str, String str2) {
        Object obj;
        if (list == null) {
            return null;
        }
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            AccountPermissionItem accountPermissionItem = (AccountPermissionItem) obj;
            if (Intrinsics.areEqual(accountPermissionItem.getModule(), str) && Intrinsics.areEqual(accountPermissionItem.getSubModule(), str2)) {
                break;
            }
        }
        AccountPermissionItem accountPermissionItem2 = (AccountPermissionItem) obj;
        if (accountPermissionItem2 != null) {
            return accountPermissionItem2.getPermission();
        }
        return null;
    }

    public static /* synthetic */ AccountPermissionOperate getPermissionOperate$default(AccountPermissions accountPermissions, List list, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        return accountPermissions.getPermissionOperate(list, str, str2);
    }

    private final boolean hasReadPermission(AccountPermissionOperate accountPermissionOperate) {
        return accountPermissionOperate != null && accountPermissionOperate.getRead();
    }

    private final boolean hasWritePermission(AccountPermissionOperate accountPermissionOperate) {
        return accountPermissionOperate != null && accountPermissionOperate.getWrite();
    }

    public final boolean hasCloudSyncPermission(@Nullable List<AccountPermissionItem> list) {
        if (list == null) {
            return false;
        }
        return hasWritePermission(getPermissionOperate(list, KEY_MODULE_CLOUD, "sync"));
    }

    public final boolean hasLoginPermission(@Nullable List<AccountPermissionItem> list, @NotNull String subModule) {
        Intrinsics.checkNotNullParameter(subModule, "subModule");
        if (list == null) {
            return false;
        }
        return hasWritePermission(getPermissionOperate(list, "login", subModule));
    }
}
