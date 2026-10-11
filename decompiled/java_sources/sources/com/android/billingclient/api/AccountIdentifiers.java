package com.android.billingclient.api;

import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public final class AccountIdentifiers {

    /* renamed from: a */
    @Nullable
    public final String f13361a;

    /* renamed from: b */
    @Nullable
    public final String f13362b;

    public AccountIdentifiers(@Nullable String str, @Nullable String str2) {
        this.f13361a = str;
        this.f13362b = str2;
    }

    @Nullable
    public String getObfuscatedAccountId() {
        return this.f13361a;
    }

    @Nullable
    public String getObfuscatedProfileId() {
        return this.f13362b;
    }
}
