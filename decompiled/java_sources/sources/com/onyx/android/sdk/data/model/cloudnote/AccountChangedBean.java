package com.onyx.android.sdk.data.model.cloudnote;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J+\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/model/cloudnote/AccountChangedBean;", "", "appName", "", "status", "", "accountId", "(Ljava/lang/String;ILjava/lang/String;)V", "getAccountId", "()Ljava/lang/String;", "setAccountId", "(Ljava/lang/String;)V", "getAppName", "setAppName", "getStatus", "()I", "setStatus", "(I)V", "component1", "component2", "component3", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class AccountChangedBean {

    @Nullable
    private String accountId;

    @Nullable
    private String appName;
    private int status;

    public AccountChangedBean() {
        this(null, 0, null, 7, null);
    }

    public static /* synthetic */ AccountChangedBean copy$default(AccountChangedBean accountChangedBean, String str, int i, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = accountChangedBean.appName;
        }
        if ((i2 & 2) != 0) {
            i = accountChangedBean.status;
        }
        if ((i2 & 4) != 0) {
            str2 = accountChangedBean.accountId;
        }
        return accountChangedBean.copy(str, i, str2);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getAppName() {
        return this.appName;
    }

    /* renamed from: component2, reason: from getter */
    public final int getStatus() {
        return this.status;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getAccountId() {
        return this.accountId;
    }

    @NotNull
    public final AccountChangedBean copy(@Nullable String appName, int status, @Nullable String accountId) {
        return new AccountChangedBean(appName, status, accountId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AccountChangedBean)) {
            return false;
        }
        AccountChangedBean accountChangedBean = (AccountChangedBean) other;
        return Intrinsics.areEqual(this.appName, accountChangedBean.appName) && this.status == accountChangedBean.status && Intrinsics.areEqual(this.accountId, accountChangedBean.accountId);
    }

    @Nullable
    public final String getAccountId() {
        return this.accountId;
    }

    @Nullable
    public final String getAppName() {
        return this.appName;
    }

    public final int getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.appName;
        int hashCode = (((str == null ? 0 : str.hashCode()) * 31) + Integer.hashCode(this.status)) * 31;
        String str2 = this.accountId;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setAccountId(@Nullable String str) {
        this.accountId = str;
    }

    public final void setAppName(@Nullable String str) {
        this.appName = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    @NotNull
    public String toString() {
        return "AccountChangedBean(appName=" + this.appName + ", status=" + this.status + ", accountId=" + this.accountId + ')';
    }

    public AccountChangedBean(@Nullable String str, int i, @Nullable String str2) {
        this.appName = str;
        this.status = i;
        this.accountId = str2;
    }

    public /* synthetic */ AccountChangedBean(String str, int i, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? null : str2);
    }
}
