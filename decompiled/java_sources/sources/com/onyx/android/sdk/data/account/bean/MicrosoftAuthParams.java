package com.onyx.android.sdk.data.account.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/MicrosoftAuthParams;", "", "token", "", "accessToken", "(Ljava/lang/String;Ljava/lang/String;)V", "getAccessToken", "()Ljava/lang/String;", "getToken", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class MicrosoftAuthParams {

    @Nullable
    private final String accessToken;

    @Nullable
    private final String token;

    public MicrosoftAuthParams(@Nullable String str, @Nullable String str2) {
        this.token = str;
        this.accessToken = str2;
    }

    public static /* synthetic */ MicrosoftAuthParams copy$default(MicrosoftAuthParams microsoftAuthParams, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = microsoftAuthParams.token;
        }
        if ((i & 2) != 0) {
            str2 = microsoftAuthParams.accessToken;
        }
        return microsoftAuthParams.copy(str, str2);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getToken() {
        return this.token;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getAccessToken() {
        return this.accessToken;
    }

    @NotNull
    public final MicrosoftAuthParams copy(@Nullable String token, @Nullable String accessToken) {
        return new MicrosoftAuthParams(token, accessToken);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MicrosoftAuthParams)) {
            return false;
        }
        MicrosoftAuthParams microsoftAuthParams = (MicrosoftAuthParams) other;
        return Intrinsics.areEqual(this.token, microsoftAuthParams.token) && Intrinsics.areEqual(this.accessToken, microsoftAuthParams.accessToken);
    }

    @Nullable
    public final String getAccessToken() {
        return this.accessToken;
    }

    @Nullable
    public final String getToken() {
        return this.token;
    }

    public int hashCode() {
        String str = this.token;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.accessToken;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "MicrosoftAuthParams(token=" + this.token + ", accessToken=" + this.accessToken + ')';
    }
}
