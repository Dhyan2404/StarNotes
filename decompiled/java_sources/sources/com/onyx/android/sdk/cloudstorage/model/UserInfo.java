package com.onyx.android.sdk.cloudstorage.model;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0004\u001a\u0004\u0018\u00010\u0002HÆ\u0003J!\u0010\u0007\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;", "", "", "component1", "component2", "accountId", "name", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getAccountId", "()Ljava/lang/String;", "b", "getName", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class UserInfo {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public final String accountId;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public final String name;

    public UserInfo(@Nullable String str, @Nullable String str2) {
        this.accountId = str;
        this.name = str2;
    }

    public static /* synthetic */ UserInfo copy$default(UserInfo userInfo, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = userInfo.accountId;
        }
        if ((i & 2) != 0) {
            str2 = userInfo.name;
        }
        return userInfo.copy(str, str2);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getAccountId() {
        return this.accountId;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final UserInfo copy(@Nullable String accountId, @Nullable String name) {
        return new UserInfo(accountId, name);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserInfo)) {
            return false;
        }
        UserInfo userInfo = (UserInfo) other;
        return Intrinsics.areEqual(this.accountId, userInfo.accountId) && Intrinsics.areEqual(this.name, userInfo.name);
    }

    @Nullable
    public final String getAccountId() {
        return this.accountId;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        String str = this.accountId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.name;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "UserInfo(accountId=" + this.accountId + ", name=" + this.name + ')';
    }
}
