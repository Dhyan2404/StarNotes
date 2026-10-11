package com.onyx.android.sdk.data.account.model;

import com.sunia.HTREnginev2.sod;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\b¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/model/WechatModel;", "", "()V", "city", "", "getCity", "()Ljava/lang/String;", "setCity", "(Ljava/lang/String;)V", sod.f84350C, "getCountry", "setCountry", "headimgurl", "getHeadimgurl", "setHeadimgurl", "nickname", "getNickname", "setNickname", "openid", "getOpenid", "setOpenid", "sex", "", "getSex", "()I", "setSex", "(I)V", "unionid", "getUnionid", "setUnionid", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class WechatModel {

    @Nullable
    private String city;

    @Nullable
    private String country;

    @Nullable
    private String headimgurl;

    @Nullable
    private String nickname;

    @Nullable
    private String openid;
    private int sex;

    @Nullable
    private String unionid;

    @Nullable
    public final String getCity() {
        return this.city;
    }

    @Nullable
    public final String getCountry() {
        return this.country;
    }

    @Nullable
    public final String getHeadimgurl() {
        return this.headimgurl;
    }

    @Nullable
    public final String getNickname() {
        return this.nickname;
    }

    @Nullable
    public final String getOpenid() {
        return this.openid;
    }

    public final int getSex() {
        return this.sex;
    }

    @Nullable
    public final String getUnionid() {
        return this.unionid;
    }

    public final void setCity(@Nullable String str) {
        this.city = str;
    }

    public final void setCountry(@Nullable String str) {
        this.country = str;
    }

    public final void setHeadimgurl(@Nullable String str) {
        this.headimgurl = str;
    }

    public final void setNickname(@Nullable String str) {
        this.nickname = str;
    }

    public final void setOpenid(@Nullable String str) {
        this.openid = str;
    }

    public final void setSex(int i) {
        this.sex = i;
    }

    public final void setUnionid(@Nullable String str) {
        this.unionid = str;
    }
}
