package com.onyx.android.sdk.data.account.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.account.model.GoogleModel;
import com.onyx.android.sdk.data.account.model.HuaweiModel;
import com.onyx.android.sdk.data.account.model.MicrosoftModel;
import com.onyx.android.sdk.data.account.model.WechatModel;
import com.onyx.android.sdk.data.config.cloudnote.SupportAppName;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001a\u0010'\u001a\u00020(X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001a\u00103\u001a\u000204X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001c\u0010?\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010\u0006\"\u0004\bA\u0010\bR\u001c\u0010B\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010\u0006\"\u0004\bD\u0010\bR\u001c\u0010E\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010\u0006\"\u0004\bG\u0010\bR\u001c\u0010H\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010\u0006\"\u0004\bJ\u0010\bR$\u0010K\u001a\b\u0012\u0004\u0012\u00020L0\r8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010\u000f\"\u0004\bN\u0010\u0011R\u001a\u0010O\u001a\u00020PX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u001a\u0010U\u001a\u00020PX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010R\"\u0004\bW\u0010TR\u001c\u0010X\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010\u0006\"\u0004\bZ\u0010\bR\u001c\u0010[\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u0010\u0015\"\u0004\b]\u0010\u0017R\u001c\u0010^\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b_\u0010\u0015\"\u0004\b`\u0010\u0017R\u001c\u0010a\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bb\u0010\u0006\"\u0004\bc\u0010\bR\u001c\u0010d\u001a\u0004\u0018\u00010eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u0010g\"\u0004\bh\u0010i¨\u0006j"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;", "", "()V", "areaCode", "", "getAreaCode", "()Ljava/lang/String;", "setAreaCode", "(Ljava/lang/String;)V", "avatarUrl", "getAvatarUrl", "setAvatarUrl", Constants.ELEMNAME_CHILDREN_STRING, "", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.GET_CHILDREN, "()Ljava/util/List;", "setChildren", "(Ljava/util/List;)V", "created_at", "Ljava/util/Date;", "getCreated_at", "()Ljava/util/Date;", "setCreated_at", "(Ljava/util/Date;)V", "displayId", "getDisplayId", "setDisplayId", "email", "getEmail", "setEmail", "firstLoginDate", "getFirstLoginDate", "setFirstLoginDate", LoginAuthConst.GOOGLE_AUTH, "Lcom/onyx/android/sdk/data/account/model/GoogleModel;", "getGoogle", "()Lcom/onyx/android/sdk/data/account/model/GoogleModel;", "setGoogle", "(Lcom/onyx/android/sdk/data/account/model/GoogleModel;)V", "hasPassword", "", "getHasPassword", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setHasPassword", "(Z)V", LoginAuthConst.HUAWEI_AUTH, "Lcom/onyx/android/sdk/data/account/model/HuaweiModel;", "getHuawei", "()Lcom/onyx/android/sdk/data/account/model/HuaweiModel;", "setHuawei", "(Lcom/onyx/android/sdk/data/account/model/HuaweiModel;)V", "id", "", "getId", "()I", "setId", "(I)V", LoginAuthConst.MICROSOFT_AUTH, "Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;", "getMicrosoft", "()Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;", "setMicrosoft", "(Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;)V", "name", "getName", "setName", "nickname", "getNickname", "setNickname", "parent", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.GET_PARENT, "setParent", "phone", "getPhone", "setPhone", "roles", "Lcom/onyx/android/sdk/data/account/bean/UserRoleItem;", "getRoles", "setRoles", "storage_limit", "", "getStorage_limit", "()J", "setStorage_limit", "(J)V", "storage_used", "getStorage_used", "setStorage_used", "token", "getToken", "setToken", "tokenExpiredAt", "getTokenExpiredAt", "setTokenExpiredAt", "udpated_at", "getUdpated_at", "setUdpated_at", CouchFieldKey.KEY_UID, "getUid", "setUid", SupportAppName.WECHAT, "Lcom/onyx/android/sdk/data/account/model/WechatModel;", "getWechat", "()Lcom/onyx/android/sdk/data/account/model/WechatModel;", "setWechat", "(Lcom/onyx/android/sdk/data/account/model/WechatModel;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CloudOnyxAccount {

    @Nullable
    private String avatarUrl;

    @Nullable
    private List<CloudOnyxAccount> children;

    @Nullable
    private Date created_at;

    @Nullable
    private String email;

    @Nullable
    private String firstLoginDate;

    @Nullable
    private GoogleModel google;

    @Nullable
    private HuaweiModel huawei;
    private int id;

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
    private long storage_limit;
    private long storage_used;

    @Nullable
    private String token;

    @Nullable
    private Date tokenExpiredAt;

    @Nullable
    private Date udpated_at;

    @Nullable
    private String uid;

    @Nullable
    private WechatModel wechat;

    @NotNull
    private String displayId = "";

    @JSONField(alternateNames = {"area_code"})
    @NotNull
    private String areaCode = "";
    private boolean hasPassword = true;

    @JSONField(alternateNames = {"membershipList"})
    @NotNull
    private List<UserRoleItem> roles = new ArrayList();

    @NotNull
    public final String getAreaCode() {
        return this.areaCode;
    }

    @Nullable
    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    @Nullable
    public final List<CloudOnyxAccount> getChildren() {
        return this.children;
    }

    @Nullable
    public final Date getCreated_at() {
        return this.created_at;
    }

    @NotNull
    public final String getDisplayId() {
        return this.displayId;
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

    public final boolean getHasPassword() {
        return this.hasPassword;
    }

    @Nullable
    public final HuaweiModel getHuawei() {
        return this.huawei;
    }

    public final int getId() {
        return this.id;
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

    public final long getStorage_limit() {
        return this.storage_limit;
    }

    public final long getStorage_used() {
        return this.storage_used;
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
    public final Date getUdpated_at() {
        return this.udpated_at;
    }

    @Nullable
    public final String getUid() {
        return this.uid;
    }

    @Nullable
    public final WechatModel getWechat() {
        return this.wechat;
    }

    public final void setAreaCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.areaCode = str;
    }

    public final void setAvatarUrl(@Nullable String str) {
        this.avatarUrl = str;
    }

    public final void setChildren(@Nullable List<CloudOnyxAccount> list) {
        this.children = list;
    }

    public final void setCreated_at(@Nullable Date date) {
        this.created_at = date;
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

    public final void setHasPassword(boolean z) {
        this.hasPassword = z;
    }

    public final void setHuawei(@Nullable HuaweiModel huaweiModel) {
        this.huawei = huaweiModel;
    }

    public final void setId(int i) {
        this.id = i;
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

    public final void setStorage_limit(long j) {
        this.storage_limit = j;
    }

    public final void setStorage_used(long j) {
        this.storage_used = j;
    }

    public final void setToken(@Nullable String str) {
        this.token = str;
    }

    public final void setTokenExpiredAt(@Nullable Date date) {
        this.tokenExpiredAt = date;
    }

    public final void setUdpated_at(@Nullable Date date) {
        this.udpated_at = date;
    }

    public final void setUid(@Nullable String str) {
        this.uid = str;
    }

    public final void setWechat(@Nullable WechatModel wechatModel) {
        this.wechat = wechatModel;
    }
}
