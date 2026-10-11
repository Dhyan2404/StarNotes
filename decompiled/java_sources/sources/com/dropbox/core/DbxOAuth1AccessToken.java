package com.dropbox.core;

/* loaded from: classes4.dex */
public final class DbxOAuth1AccessToken {

    /* renamed from: a */
    public final String f16384a;

    /* renamed from: b */
    public final String f16385b;

    public DbxOAuth1AccessToken(String str, String str2) {
        this.f16384a = str;
        this.f16385b = str2;
    }

    public String getKey() {
        return this.f16384a;
    }

    public String getSecret() {
        return this.f16385b;
    }
}
