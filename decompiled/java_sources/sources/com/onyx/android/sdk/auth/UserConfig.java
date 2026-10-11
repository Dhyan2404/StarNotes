package com.onyx.android.sdk.auth;

/* loaded from: classes7.dex */
public class UserConfig {

    /* renamed from: b */
    public static final UserConfig f40660b = new UserConfig();

    /* renamed from: a */
    public volatile String f40661a = "";

    public static UserConfig singleton() {
        return f40660b;
    }

    public String getUserId() {
        return this.f40661a;
    }

    public void setUserId(String str) {
        this.f40661a = str;
    }
}
