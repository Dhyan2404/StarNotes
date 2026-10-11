package com.onyx.android.sdk.data.account.bean;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;", "", "()V", "email", "", "getEmail", "()Ljava/lang/String;", "setEmail", "(Ljava/lang/String;)V", "nickname", "getNickname", "setNickname", "phone", "getPhone", "setPhone", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UpdateAccountInfoBean {

    @Nullable
    private String email;

    @Nullable
    private String nickname;

    @Nullable
    private String phone;

    @Nullable
    public final String getEmail() {
        return this.email;
    }

    @Nullable
    public final String getNickname() {
        return this.nickname;
    }

    @Nullable
    public final String getPhone() {
        return this.phone;
    }

    /* renamed from: setEmail, reason: collision with other method in class */
    public final void m72198setEmail(@Nullable String str) {
        this.email = str;
    }

    /* renamed from: setNickname, reason: collision with other method in class */
    public final void m72199setNickname(@Nullable String str) {
        this.nickname = str;
    }

    /* renamed from: setPhone, reason: collision with other method in class */
    public final void m72200setPhone(@Nullable String str) {
        this.phone = str;
    }

    @NotNull
    public final UpdateAccountInfoBean setEmail(@Nullable String email) {
        this.email = email;
        return this;
    }

    @NotNull
    public final UpdateAccountInfoBean setNickname(@Nullable String nickname) {
        this.nickname = nickname;
        return this;
    }

    @NotNull
    public final UpdateAccountInfoBean setPhone(@Nullable String phone) {
        this.phone = phone;
        return this;
    }
}
