package com.onyx.android.sdk.data.account.model;

import androidx.core.content.FileProvider;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.data.account.bean.AccountPermission;
import com.onyx.android.sdk.data.account.bean.AccountQuota;
import com.onyx.android.sdk.data.account.bean.CloudOnyxAccount;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.account.bean.UserRoleItem;
import com.onyx.android.sdk.data.config.cloudnote.SupportAppName;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.compress.java.util.jar.Pack200;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\t\u0010\u008d\u0001\u001a\u00020\u001cH\u0016J\u0012\u0010\u008e\u0001\u001a\u00030\u008f\u00012\b\u0010\u0090\u0001\u001a\u00030\u0091\u0001J\u0011\u0010\u008e\u0001\u001a\u00030\u008f\u00012\u0007\u0010\u0090\u0001\u001a\u00020\u0000R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001e\"\u0004\b#\u0010 R\u001c\u0010$\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001e\"\u0004\b&\u0010 R\u001a\u0010'\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001e\"\u0004\b)\u0010 R\u0013\u0010*\u001a\u0004\u0018\u00010\u001c8F¢\u0006\u0006\u001a\u0004\b+\u0010\u001eR\u001c\u0010,\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u001e\"\u0004\b.\u0010 R\u001c\u0010/\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u001e\"\u0004\b1\u0010 R\u001c\u00102\u001a\u0004\u0018\u000103X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001a\u00108\u001a\u000209X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001a\u0010>\u001a\u000209X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010;\"\u0004\b@\u0010=R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u001c\u0010G\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010\u0006\"\u0004\bI\u0010\bR\u001a\u0010J\u001a\u000209X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010;\"\u0004\bL\u0010=R\u001c\u0010M\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010\u0006\"\u0004\bO\u0010\bR\u001c\u0010P\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010\u001e\"\u0004\bR\u0010 R\u001c\u0010S\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u0010\u0006\"\u0004\bU\u0010\bR\u001a\u0010V\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010\f\"\u0004\bX\u0010\u000eR\u001a\u0010Y\u001a\u000209X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u0010;\"\u0004\b[\u0010=R\u001a\u0010\\\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010\f\"\u0004\b^\u0010\u000eR\u001c\u0010_\u001a\u0004\u0018\u00010`X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\ba\u0010b\"\u0004\bc\u0010dR\u001c\u0010e\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u0010\u001e\"\u0004\bg\u0010 R\u001c\u0010h\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bi\u0010\u001e\"\u0004\bj\u0010 R\u001c\u0010k\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bl\u0010\u001e\"\u0004\bm\u0010 R\u001c\u0010n\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bo\u0010\u001e\"\u0004\bp\u0010 R \u0010q\u001a\b\u0012\u0004\u0012\u00020s0rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bt\u0010u\"\u0004\bv\u0010wR\u001a\u0010x\u001a\u00020yX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bz\u0010{\"\u0004\b|\u0010}R\u001b\u0010~\u001a\u00020yX\u0086\u000e¢\u0006\u000f\n\u0000\u001a\u0004\b\u007f\u0010{\"\u0005\b\u0080\u0001\u0010}R\u001f\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0082\u0001\u0010\u001e\"\u0005\b\u0083\u0001\u0010 R\u001f\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0085\u0001\u0010\u0006\"\u0005\b\u0086\u0001\u0010\bR\"\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001\"\u0006\b\u008b\u0001\u0010\u008c\u0001¨\u0006\u0092\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "accountCreateAt", "Ljava/util/Date;", "getAccountCreateAt", "()Ljava/util/Date;", "setAccountCreateAt", "(Ljava/util/Date;)V", "accountId", "", "getAccountId", "()I", "setAccountId", "(I)V", "accountPermission", "Lcom/onyx/android/sdk/data/account/bean/AccountPermission;", "getAccountPermission", "()Lcom/onyx/android/sdk/data/account/bean/AccountPermission;", "setAccountPermission", "(Lcom/onyx/android/sdk/data/account/bean/AccountPermission;)V", "accountQuota", "Lcom/onyx/android/sdk/data/account/bean/AccountQuota;", "getAccountQuota", "()Lcom/onyx/android/sdk/data/account/bean/AccountQuota;", "setAccountQuota", "(Lcom/onyx/android/sdk/data/account/bean/AccountQuota;)V", "areaCode", "", "getAreaCode", "()Ljava/lang/String;", "setAreaCode", "(Ljava/lang/String;)V", "avatarUrl", "getAvatarUrl", "setAvatarUrl", "clusterId", "getClusterId", "setClusterId", "displayId", "getDisplayId", "setDisplayId", FileProvider.f5230t, "getDisplayName", "email", "getEmail", "setEmail", "firstLoginDate", "getFirstLoginDate", "setFirstLoginDate", LoginAuthConst.GOOGLE_AUTH, "Lcom/onyx/android/sdk/data/account/model/GoogleModel;", "getGoogle", "()Lcom/onyx/android/sdk/data/account/model/GoogleModel;", "setGoogle", "(Lcom/onyx/android/sdk/data/account/model/GoogleModel;)V", CouchFieldKey.KEY_IS_LOGGED_IN, "", "getHasLoggedIn", Constants.BOOLEAN_VALUE_SIG, "setHasLoggedIn", "(Z)V", "hasPassword", "getHasPassword", "setHasPassword", LoginAuthConst.HUAWEI_AUTH, "Lcom/onyx/android/sdk/data/account/model/HuaweiModel;", "getHuawei", "()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;", "setHuawei", "(Lcom/onyx/android/sdk/data/account/model/HuaweiModel;)V", "localLoginAt", "getLocalLoginAt", "setLocalLoginAt", "localVisible", "getLocalVisible", "setLocalVisible", "logOutAt", "getLogOutAt", "setLogOutAt", "loginAccount", "getLoginAccount", "setLoginAccount", "loginAt", "getLoginAt", "setLoginAt", "loginType", "getLoginType", "setLoginType", "logoff", "getLogoff", "setLogoff", "logoutReason", "getLogoutReason", "setLogoutReason", LoginAuthConst.MICROSOFT_AUTH, "Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;", "getMicrosoft", "()Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;", "setMicrosoft", "(Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;)V", "name", "getName", "setName", "nickname", "getNickname", "setNickname", "parent", Constants.GET_PARENT, "setParent", "phone", "getPhone", "setPhone", "roles", "", "Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;", "getRoles", "()Ljava/util/List;", "setRoles", "(Ljava/util/List;)V", "storageLimit", "", "getStorageLimit", "()J", "setStorageLimit", "(J)V", "storageUsed", "getStorageUsed", "setStorageUsed", "token", "getToken", "setToken", "tokenExpiredAt", "getTokenExpiredAt", "setTokenExpiredAt", SupportAppName.WECHAT, "Lcom/onyx/android/sdk/data/account/model/WechatModel;", "getWechat", "()Lcom/onyx/android/sdk/data/account/model/WechatModel;", "setWechat", "(Lcom/onyx/android/sdk/data/account/model/WechatModel;)V", "toString", "updateAttribute", "", Pack200.Packer.LATEST, "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OnyxAccountModel extends BaseReplicatorModel {

    @Nullable
    private Date accountCreateAt;
    private int accountId;

    @Nullable
    private String areaCode;

    @Nullable
    private String avatarUrl;

    @Nullable
    private String clusterId;

    @Nullable
    private String email;

    @Nullable
    private String firstLoginDate;

    @Nullable
    private GoogleModel google;
    private boolean hasLoggedIn;

    @Nullable
    private HuaweiModel huawei;

    @Nullable
    private Date localLoginAt;

    @Nullable
    private Date logOutAt;

    @Nullable
    private String loginAccount;

    @Nullable
    private Date loginAt;
    private boolean logoff;
    private int logoutReason;

    @Nullable
    private MicrosoftModel microsoft;

    @Nullable
    private String name;

    @Nullable
    private String nickname;

    @Nullable
    private String parent;

    @Nullable
    private String phone;

    @Nullable
    private String token;

    @Nullable
    private Date tokenExpiredAt;

    @Nullable
    private WechatModel wechat;

    @NotNull
    private String displayId = "";
    private int loginType = 1;
    private boolean hasPassword = true;
    private long storageLimit = -1;
    private long storageUsed = -1;

    @NotNull
    private AccountPermission accountPermission = new AccountPermission();

    @NotNull
    private AccountQuota accountQuota = new AccountQuota();

    @NotNull
    private List<UserRoleItem> roles = new ArrayList();
    private boolean localVisible = true;

    @Nullable
    public final Date getAccountCreateAt() {
        return this.accountCreateAt;
    }

    public final int getAccountId() {
        return this.accountId;
    }

    @NotNull
    public final AccountPermission getAccountPermission() {
        return this.accountPermission;
    }

    @NotNull
    public final AccountQuota getAccountQuota() {
        return this.accountQuota;
    }

    @Nullable
    public final String getAreaCode() {
        return this.areaCode;
    }

    @Nullable
    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    @Nullable
    public final String getClusterId() {
        return this.clusterId;
    }

    @NotNull
    public final String getDisplayId() {
        return this.displayId;
    }

    @Nullable
    public final String getDisplayName() {
        String str = this.nickname;
        if (str != null) {
            return str;
        }
        String str2 = this.name;
        if (str2 != null) {
            return str2;
        }
        String str3 = this.phone;
        if (str3 != null) {
            return str3;
        }
        String str4 = this.email;
        return str4 != null ? str4 : "";
    }

    @Nullable
    public final String getEmail() {
        return this.email;
    }

    @Nullable
    public final String getFirstLoginDate() {
        return this.firstLoginDate;
    }

    @Nullable
    public final GoogleModel getGoogle() {
        return this.google;
    }

    public final boolean getHasLoggedIn() {
        return this.hasLoggedIn;
    }

    public final boolean getHasPassword() {
        return this.hasPassword;
    }

    @Nullable
    public final HuaweiModel getHuawei() {
        return this.huawei;
    }

    @Nullable
    public final Date getLocalLoginAt() {
        return this.localLoginAt;
    }

    public final boolean getLocalVisible() {
        return this.localVisible;
    }

    @Nullable
    public final Date getLogOutAt() {
        return this.logOutAt;
    }

    @Nullable
    public final String getLoginAccount() {
        return this.loginAccount;
    }

    @Nullable
    public final Date getLoginAt() {
        return this.loginAt;
    }

    public final int getLoginType() {
        return this.loginType;
    }

    public final boolean getLogoff() {
        return this.logoff;
    }

    public final int getLogoutReason() {
        return this.logoutReason;
    }

    @Nullable
    public final MicrosoftModel getMicrosoft() {
        return this.microsoft;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getNickname() {
        return this.nickname;
    }

    @Nullable
    public final String getParent() {
        return this.parent;
    }

    @Nullable
    public final String getPhone() {
        return this.phone;
    }

    @NotNull
    public final List<UserRoleItem> getRoles() {
        return this.roles;
    }

    public final long getStorageLimit() {
        return this.storageLimit;
    }

    public final long getStorageUsed() {
        return this.storageUsed;
    }

    @Nullable
    public final String getToken() {
        return this.token;
    }

    @Nullable
    public final Date getTokenExpiredAt() {
        return this.tokenExpiredAt;
    }

    @Nullable
    public final WechatModel getWechat() {
        return this.wechat;
    }

    public final void setAccountCreateAt(@Nullable Date date) {
        this.accountCreateAt = date;
    }

    public final void setAccountId(int i) {
        this.accountId = i;
    }

    public final void setAccountPermission(@NotNull AccountPermission accountPermission) {
        Intrinsics.checkNotNullParameter(accountPermission, "<set-?>");
        this.accountPermission = accountPermission;
    }

    public final void setAccountQuota(@NotNull AccountQuota accountQuota) {
        Intrinsics.checkNotNullParameter(accountQuota, "<set-?>");
        this.accountQuota = accountQuota;
    }

    public final void setAreaCode(@Nullable String str) {
        this.areaCode = str;
    }

    public final void setAvatarUrl(@Nullable String str) {
        this.avatarUrl = str;
    }

    public final void setClusterId(@Nullable String str) {
        this.clusterId = str;
    }

    public final void setDisplayId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.displayId = str;
    }

    public final void setEmail(@Nullable String str) {
        this.email = str;
    }

    public final void setFirstLoginDate(@Nullable String str) {
        this.firstLoginDate = str;
    }

    public final void setGoogle(@Nullable GoogleModel googleModel) {
        this.google = googleModel;
    }

    public final void setHasLoggedIn(boolean z) {
        this.hasLoggedIn = z;
    }

    public final void setHasPassword(boolean z) {
        this.hasPassword = z;
    }

    public final void setHuawei(@Nullable HuaweiModel huaweiModel) {
        this.huawei = huaweiModel;
    }

    public final void setLocalLoginAt(@Nullable Date date) {
        this.localLoginAt = date;
    }

    public final void setLocalVisible(boolean z) {
        this.localVisible = z;
    }

    public final void setLogOutAt(@Nullable Date date) {
        this.logOutAt = date;
    }

    public final void setLoginAccount(@Nullable String str) {
        this.loginAccount = str;
    }

    public final void setLoginAt(@Nullable Date date) {
        this.loginAt = date;
    }

    public final void setLoginType(int i) {
        this.loginType = i;
    }

    public final void setLogoff(boolean z) {
        this.logoff = z;
    }

    public final void setLogoutReason(int i) {
        this.logoutReason = i;
    }

    public final void setMicrosoft(@Nullable MicrosoftModel microsoftModel) {
        this.microsoft = microsoftModel;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setNickname(@Nullable String str) {
        this.nickname = str;
    }

    public final void setParent(@Nullable String str) {
        this.parent = str;
    }

    public final void setPhone(@Nullable String str) {
        this.phone = str;
    }

    public final void setRoles(@NotNull List<UserRoleItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.roles = list;
    }

    public final void setStorageLimit(long j) {
        this.storageLimit = j;
    }

    public final void setStorageUsed(long j) {
        this.storageUsed = j;
    }

    public final void setToken(@Nullable String str) {
        this.token = str;
    }

    public final void setTokenExpiredAt(@Nullable Date date) {
        this.tokenExpiredAt = date;
    }

    public final void setWechat(@Nullable WechatModel wechatModel) {
        this.wechat = wechatModel;
    }

    @NotNull
    public String toString() {
        return "nickname:" + this.nickname + ",uid:" + getUniqueId() + ",clusterId:" + this.clusterId;
    }

    public final void updateAttribute(@NotNull final OnyxAccountModel latest) {
        Intrinsics.checkNotNullParameter(latest, "latest");
        this.nickname = latest.nickname;
        this.areaCode = latest.areaCode;
        this.phone = latest.phone;
        this.email = latest.email;
        this.hasPassword = latest.hasPassword;
        this.wechat = latest.wechat;
        this.huawei = latest.huawei;
        this.google = latest.google;
        this.microsoft = latest.microsoft;
        this.avatarUrl = latest.avatarUrl;
        this.roles = latest.roles;
        AnyKt.whenNotNull(latest.token, new Function1<String, Unit>() { // from class: com.onyx.android.sdk.data.account.model.OnyxAccountModel$updateAttribute$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxAccountModel.this.setToken(latest.getToken());
            }
        });
        AnyKt.whenNotNull(latest.tokenExpiredAt, new Function1<Date, Unit>() { // from class: com.onyx.android.sdk.data.account.model.OnyxAccountModel$updateAttribute$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Date date) {
                invoke2(date);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Date it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxAccountModel.this.setTokenExpiredAt(latest.getTokenExpiredAt());
            }
        });
        this.clusterId = latest.clusterId;
    }

    public final void updateAttribute(@NotNull final CloudOnyxAccount latest) {
        Intrinsics.checkNotNullParameter(latest, "latest");
        String uid = latest.getUid();
        Intrinsics.checkNotNull(uid);
        setUniqueId(uid);
        this.accountId = latest.getId();
        this.displayId = latest.getDisplayId();
        this.nickname = latest.getNickname();
        this.areaCode = latest.getAreaCode();
        this.hasPassword = latest.getHasPassword();
        this.phone = latest.getPhone();
        this.email = latest.getEmail();
        this.wechat = latest.getWechat();
        this.huawei = latest.getHuawei();
        this.google = latest.getGoogle();
        this.microsoft = latest.getMicrosoft();
        this.avatarUrl = latest.getAvatarUrl();
        this.roles = latest.getRoles();
        AnyKt.whenNotNull(latest.getToken(), new Function1<String, Unit>() { // from class: com.onyx.android.sdk.data.account.model.OnyxAccountModel$updateAttribute$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxAccountModel.this.setToken(latest.getToken());
            }
        });
        AnyKt.whenNotNull(latest.getTokenExpiredAt(), new Function1<Date, Unit>() { // from class: com.onyx.android.sdk.data.account.model.OnyxAccountModel$updateAttribute$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Date date) {
                invoke2(date);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Date it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OnyxAccountModel.this.setTokenExpiredAt(latest.getTokenExpiredAt());
            }
        });
        this.storageLimit = latest.getStorage_limit();
        this.storageUsed = latest.getStorage_used();
        this.firstLoginDate = latest.getFirstLoginDate();
    }
}
