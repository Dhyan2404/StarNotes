package com.onyx.android.sdk.data.model.p028v2;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/model/v2/AccountCommon;", "", "()V", "name", "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "organization", "getOrganization", "setOrganization", "phone", "getPhone", "setPhone", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountCommon {

    @Nullable
    private String name;

    @Nullable
    private String organization;

    @Nullable
    private String phone;

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getOrganization() {
        return this.organization;
    }

    @Nullable
    public final String getPhone() {
        return this.phone;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setOrganization(@Nullable String str) {
        this.organization = str;
    }

    public final void setPhone(@Nullable String str) {
        this.phone = str;
    }
}
