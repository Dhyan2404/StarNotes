package com.onyx.android.sdk.cloudstorage.model;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000b\u0010\u0004\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003J-\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R$\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R$\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0011\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u0015¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;", "", "", "toString", "component1", "component2", "component3", "accountName", "nickName", "id", "copy", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getAccountName", "()Ljava/lang/String;", "setAccountName", "(Ljava/lang/String;)V", "b", "getNickName", "setNickName", "c", "getId", "setId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class AccountInfoBean {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String accountName;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public String nickName;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @Nullable
    public String id;

    public AccountInfoBean() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ AccountInfoBean copy$default(AccountInfoBean accountInfoBean, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = accountInfoBean.accountName;
        }
        if ((i & 2) != 0) {
            str2 = accountInfoBean.nickName;
        }
        if ((i & 4) != 0) {
            str3 = accountInfoBean.id;
        }
        return accountInfoBean.copy(str, str2, str3);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getAccountName() {
        return this.accountName;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getNickName() {
        return this.nickName;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final AccountInfoBean copy(@Nullable String accountName, @Nullable String nickName, @Nullable String id) {
        return new AccountInfoBean(accountName, nickName, id);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AccountInfoBean)) {
            return false;
        }
        AccountInfoBean accountInfoBean = (AccountInfoBean) other;
        return Intrinsics.areEqual(this.accountName, accountInfoBean.accountName) && Intrinsics.areEqual(this.nickName, accountInfoBean.nickName) && Intrinsics.areEqual(this.id, accountInfoBean.id);
    }

    @Nullable
    public final String getAccountName() {
        return this.accountName;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final String getNickName() {
        return this.nickName;
    }

    public int hashCode() {
        String str = this.accountName;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.nickName;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.id;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final void setAccountName(@Nullable String str) {
        this.accountName = str;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setNickName(@Nullable String str) {
        this.nickName = str;
    }

    @NotNull
    public String toString() {
        return "AccountInfoBean{accountName='" + this.accountName + "', nickName='" + this.nickName + "', id='" + this.id + "'}";
    }

    public AccountInfoBean(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.accountName = str;
        this.nickName = str2;
        this.id = str3;
    }

    public /* synthetic */ AccountInfoBean(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
    }
}
