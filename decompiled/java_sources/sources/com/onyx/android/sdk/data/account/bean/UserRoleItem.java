package com.onyx.android.sdk.data.account.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;", "", "()V", "name", "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "role", "getRole", "setRole", CouchFieldKey.KEY_UNIQUE_ID, "getUniqueId", "setUniqueId", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UserRoleItem {

    @NotNull
    private String uniqueId = "";

    @NotNull
    private String name = "";

    @JSONField(alternateNames = {"powerRole"})
    @NotNull
    private String role = "";

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getRole() {
        return this.role;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setRole(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.role = str;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }
}
