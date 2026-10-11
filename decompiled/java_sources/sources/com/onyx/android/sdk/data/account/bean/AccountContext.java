package com.onyx.android.sdk.data.account.bean;

import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u00100\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0010\u00101\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\fR\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\"\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\"\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\f@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0018R\u0011\u0010\u001a\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0018R\u0011\u0010\u001b\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0018R\u0011\u0010\u001c\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0018R\u0011\u0010\u001d\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0018R\u0011\u0010\u001e\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u0018R\u0011\u0010\u001f\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0018R\u0011\u0010 \u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b \u0010\u0018R\u0011\u0010!\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b!\u0010\u0018R\u0011\u0010\"\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b$\u0010%R\u001c\u0010&\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0006\"\u0004\b(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountContext;", "", "()V", "accountId", "", "getAccountId", "()Ljava/lang/String;", "<set-?>", "Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;", "accountIntentArgs", "getAccountIntentArgs", "()Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;", "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;", "cloudOnyxAccount", "getCloudOnyxAccount", "()Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;", "clusterInfo", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "getClusterInfo", "()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "setClusterInfo", "(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V", "isLoginAccount", "", Constants.BOOLEAN_VALUE_SIG, "isLoginChild", "isLoginGoogle", "isLoginHuawei", "isLoginMaster", "isLoginMicrosoft", "isOnyxQrCode", "isPhoneOrEmail", "isWechatApp", "isWechatQr", "loginType", "", "getLoginType", "()I", "token", "getToken", "setToken", "(Ljava/lang/String;)V", "tokenExpiredAt", "Ljava/util/Date;", "getTokenExpiredAt", "()Ljava/util/Date;", "setTokenExpiredAt", "(Ljava/util/Date;)V", "setAccountIntentArgs", "setCloudOnyxAccount", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountContext {

    @Nullable
    private AccountIntentArgs accountIntentArgs;

    @Nullable
    private CloudOnyxAccount cloudOnyxAccount;

    @Nullable
    private ClusterInfo clusterInfo;

    @Nullable
    private String token;

    @Nullable
    private Date tokenExpiredAt;

    @Nullable
    public final String getAccountId() {
        CloudOnyxAccount cloudOnyxAccount = this.cloudOnyxAccount;
        if (cloudOnyxAccount == null) {
            return null;
        }
        Intrinsics.checkNotNull(cloudOnyxAccount);
        return cloudOnyxAccount.getUid();
    }

    @Nullable
    public final AccountIntentArgs getAccountIntentArgs() {
        return this.accountIntentArgs;
    }

    @Nullable
    public final CloudOnyxAccount getCloudOnyxAccount() {
        return this.cloudOnyxAccount;
    }

    @Nullable
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    public final int getLoginType() {
        AccountIntentArgs accountIntentArgs = this.accountIntentArgs;
        Intrinsics.checkNotNull(accountIntentArgs);
        return accountIntentArgs.getLoginType();
    }

    @Nullable
    public final String getToken() {
        return this.token;
    }

    @Nullable
    public final Date getTokenExpiredAt() {
        return this.tokenExpiredAt;
    }

    public final boolean isLoginAccount() {
        return getLoginType() == 6;
    }

    public final boolean isLoginChild() {
        return getLoginType() == 20;
    }

    public final boolean isLoginGoogle() {
        return getLoginType() == 8;
    }

    public final boolean isLoginHuawei() {
        return getLoginType() == 3;
    }

    public final boolean isLoginMaster() {
        return getLoginType() == 21;
    }

    public final boolean isLoginMicrosoft() {
        return getLoginType() == 9;
    }

    public final boolean isOnyxQrCode() {
        return getLoginType() == 7;
    }

    public final boolean isPhoneOrEmail() {
        return getLoginType() == 1 || getLoginType() == 2;
    }

    public final boolean isWechatApp() {
        return getLoginType() == 4;
    }

    public final boolean isWechatQr() {
        return getLoginType() == 5;
    }

    @NotNull
    public final AccountContext setAccountIntentArgs(@Nullable AccountIntentArgs accountIntentArgs) {
        this.accountIntentArgs = accountIntentArgs;
        return this;
    }

    @NotNull
    public final AccountContext setCloudOnyxAccount(@Nullable CloudOnyxAccount cloudOnyxAccount) {
        this.cloudOnyxAccount = cloudOnyxAccount;
        return this;
    }

    public final void setClusterInfo(@Nullable ClusterInfo clusterInfo) {
        this.clusterInfo = clusterInfo;
    }

    public final void setToken(@Nullable String str) {
        this.token = str;
    }

    public final void setTokenExpiredAt(@Nullable Date date) {
        this.tokenExpiredAt = date;
    }
}
