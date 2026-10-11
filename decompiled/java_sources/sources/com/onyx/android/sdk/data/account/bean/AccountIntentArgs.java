package com.onyx.android.sdk.data.account.bean;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u001e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u001eJ\u000e\u0010'\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$J\u0010\u0010+\u001a\u00020\u00002\b\u0010)\u001a\u0004\u0018\u00010\u0004J\u0010\u00101\u001a\u00020\u00002\b\u0010/\u001a\u0004\u0018\u00010\u0004J\u0010\u00104\u001a\u00020\u00002\b\u00102\u001a\u0004\u0018\u00010\u0004J\u000e\u00107\u001a\u00020\u00002\u0006\u00105\u001a\u00020$J\u0010\u0010=\u001a\u00020\u00002\b\u0010;\u001a\u0004\u0018\u00010\u0004J\u0010\u0010@\u001a\u00020\u00002\b\u0010>\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u0011\u0010\u0018\u001a\u00020\u00198F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u00198F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001aR\u0011\u0010\u001c\u001a\u00020\u00198F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001aR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0006\"\u0004\b+\u0010\bR\u001c\u0010,\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\u0006\"\u0004\b.\u0010\bR\u001c\u0010/\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0006\"\u0004\b1\u0010\bR\u001c\u00102\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0006\"\u0004\b4\u0010\bR\u001a\u00105\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010&\"\u0004\b7\u0010(R\u001c\u00108\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010\u0006\"\u0004\b:\u0010\bR\u001c\u0010;\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\u0006\"\u0004\b=\u0010\bR\u001c\u0010>\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u0006\"\u0004\b@\u0010\b¨\u0006B"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountIntentArgs;", "", "()V", "accessToken", "", "getAccessToken", "()Ljava/lang/String;", "setAccessToken", "(Ljava/lang/String;)V", LoginAuthConst.ACCOUNT_AUTH, "getAccount", "setAccount", "areaCode", "getAreaCode", "setAreaCode", "authCode", "getAuthCode", "setAuthCode", Constant.CLIENT_TYPE, "getClientType", "setClientType", "imUserName", "getImUserName", "setImUserName", "isPhoneOrEmail", "", Constants.BOOLEAN_VALUE_SIG, "isWechatApp", "isWechatQr", "lastMasterClearTime", "", "getLastMasterClearTime", "()J", "setLastMasterClearTime", "(J)V", "loginType", "", "getLoginType", "()I", "setLoginType", "(I)V", "nickname", "getNickname", "setNickname", "openid", "getOpenid", "setOpenid", "password", "getPassword", "setPassword", Constant.QRCODE_ID, "getQrcodeId", "setQrcodeId", "resultCode", "getResultCode", "setResultCode", "unionid", "getUnionid", "setUnionid", "verificationCode", "getVerificationCode", "setVerificationCode", "verify", "getVerify", "setVerify", "time", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountIntentArgs {

    @Nullable
    private String accessToken;

    @Nullable
    private String account;

    @Nullable
    private String areaCode;

    @Nullable
    private String authCode;

    @Nullable
    private String clientType;

    @Nullable
    private String imUserName;
    private long lastMasterClearTime;
    private int loginType;

    @Nullable
    private String nickname;

    @Nullable
    private String openid;

    @Nullable
    private String password;

    @Nullable
    private String qrcodeId;
    private int resultCode;

    @Nullable
    private String unionid;

    @Nullable
    private String verificationCode;

    @Nullable
    private String verify;

    @Nullable
    public final String getAccessToken() {
        return this.accessToken;
    }

    @Nullable
    public final String getAccount() {
        return this.account;
    }

    @Nullable
    public final String getAreaCode() {
        return this.areaCode;
    }

    @Nullable
    public final String getAuthCode() {
        return this.authCode;
    }

    @Nullable
    public final String getClientType() {
        return this.clientType;
    }

    @Nullable
    public final String getImUserName() {
        return this.imUserName;
    }

    public final long getLastMasterClearTime() {
        return this.lastMasterClearTime;
    }

    public final int getLoginType() {
        return this.loginType;
    }

    @Nullable
    public final String getNickname() {
        return this.nickname;
    }

    @Nullable
    public final String getOpenid() {
        return this.openid;
    }

    @Nullable
    public final String getPassword() {
        return this.password;
    }

    @Nullable
    public final String getQrcodeId() {
        return this.qrcodeId;
    }

    public final int getResultCode() {
        return this.resultCode;
    }

    @Nullable
    public final String getUnionid() {
        return this.unionid;
    }

    @Nullable
    public final String getVerificationCode() {
        return this.verificationCode;
    }

    @Nullable
    public final String getVerify() {
        return this.verify;
    }

    public final boolean isPhoneOrEmail() {
        int i = this.loginType;
        return i == 1 || i == 2;
    }

    public final boolean isWechatApp() {
        return this.loginType == 4;
    }

    public final boolean isWechatQr() {
        return this.loginType == 5;
    }

    /* renamed from: setAccessToken, reason: collision with other method in class */
    public final void m72182setAccessToken(@Nullable String str) {
        this.accessToken = str;
    }

    /* renamed from: setAccount, reason: collision with other method in class */
    public final void m72183setAccount(@Nullable String str) {
        this.account = str;
    }

    /* renamed from: setAreaCode, reason: collision with other method in class */
    public final void m72184setAreaCode(@Nullable String str) {
        this.areaCode = str;
    }

    /* renamed from: setAuthCode, reason: collision with other method in class */
    public final void m72185setAuthCode(@Nullable String str) {
        this.authCode = str;
    }

    /* renamed from: setClientType, reason: collision with other method in class */
    public final void m72186setClientType(@Nullable String str) {
        this.clientType = str;
    }

    public final void setImUserName(@Nullable String str) {
        this.imUserName = str;
    }

    /* renamed from: setLastMasterClearTime, reason: collision with other method in class */
    public final void m72187setLastMasterClearTime(long j) {
        this.lastMasterClearTime = j;
    }

    /* renamed from: setLoginType, reason: collision with other method in class */
    public final void m72188setLoginType(int i) {
        this.loginType = i;
    }

    /* renamed from: setNickname, reason: collision with other method in class */
    public final void m72189setNickname(@Nullable String str) {
        this.nickname = str;
    }

    public final void setOpenid(@Nullable String str) {
        this.openid = str;
    }

    /* renamed from: setPassword, reason: collision with other method in class */
    public final void m72190setPassword(@Nullable String str) {
        this.password = str;
    }

    /* renamed from: setQrcodeId, reason: collision with other method in class */
    public final void m72191setQrcodeId(@Nullable String str) {
        this.qrcodeId = str;
    }

    /* renamed from: setResultCode, reason: collision with other method in class */
    public final void m72192setResultCode(int i) {
        this.resultCode = i;
    }

    public final void setUnionid(@Nullable String str) {
        this.unionid = str;
    }

    /* renamed from: setVerificationCode, reason: collision with other method in class */
    public final void m72193setVerificationCode(@Nullable String str) {
        this.verificationCode = str;
    }

    /* renamed from: setVerify, reason: collision with other method in class */
    public final void m72194setVerify(@Nullable String str) {
        this.verify = str;
    }

    @NotNull
    public final AccountIntentArgs setAccessToken(@Nullable String accessToken) {
        this.accessToken = accessToken;
        return this;
    }

    @NotNull
    public final AccountIntentArgs setAccount(@Nullable String account) {
        this.account = account;
        return this;
    }

    @NotNull
    public final AccountIntentArgs setAreaCode(@Nullable String areaCode) {
        this.areaCode = areaCode;
        return this;
    }

    @NotNull
    public final AccountIntentArgs setAuthCode(@Nullable String authCode) {
        this.authCode = authCode;
        return this;
    }

    @NotNull
    public final AccountIntentArgs setClientType(@Nullable String clientType) {
        this.clientType = clientType;
        return this;
    }

    @NotNull
    public final AccountIntentArgs setLastMasterClearTime(long time) {
        this.lastMasterClearTime = time;
        return this;
    }

    @NotNull
    public final AccountIntentArgs setLoginType(int loginType) {
        this.loginType = loginType;
        return this;
    }

    @NotNull
    public final AccountIntentArgs setNickname(@Nullable String nickname) {
        this.nickname = nickname;
        return this;
    }

    @NotNull
    public final AccountIntentArgs setPassword(@Nullable String password) {
        this.password = password;
        return this;
    }

    @NotNull
    public final AccountIntentArgs setQrcodeId(@Nullable String qrcodeId) {
        this.qrcodeId = qrcodeId;
        return this;
    }

    @NotNull
    public final AccountIntentArgs setResultCode(int resultCode) {
        this.resultCode = resultCode;
        return this;
    }

    @NotNull
    public final AccountIntentArgs setVerificationCode(@Nullable String verificationCode) {
        this.verificationCode = verificationCode;
        return this;
    }

    @NotNull
    public final AccountIntentArgs setVerify(@Nullable String verify) {
        this.verify = verify;
        return this;
    }
}
