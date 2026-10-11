package com.onyx.android.sdk.data.account.model;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/model/MicrosoftModel;", "", "()V", "email", "", "getEmail", "()Ljava/lang/String;", "setEmail", "(Ljava/lang/String;)V", "nickname", "getNickname", "setNickname", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class MicrosoftModel {

    @Nullable
    private String email;

    @Nullable
    private String nickname;

    @Nullable
    public final String getEmail() {
        return this.email;
    }

    @Nullable
    public final String getNickname() {
        return this.nickname;
    }

    public final void setEmail(@Nullable String str) {
        this.email = str;
    }

    public final void setNickname(@Nullable String str) {
        this.nickname = str;
    }
}
