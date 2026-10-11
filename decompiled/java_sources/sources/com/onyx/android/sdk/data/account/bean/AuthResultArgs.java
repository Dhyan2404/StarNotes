package com.onyx.android.sdk.data.account.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AuthResultArgs;", "", "authId", "", "idToken", "authToken", "authCode", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAuthCode", "()Ljava/lang/String;", "setAuthCode", "(Ljava/lang/String;)V", "getAuthId", "setAuthId", "getAuthToken", "setAuthToken", "getIdToken", "setIdToken", "component1", "component2", "component3", "component4", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class AuthResultArgs {

    @NotNull
    private String authCode;

    @NotNull
    private String authId;

    @NotNull
    private String authToken;

    @NotNull
    private String idToken;

    public AuthResultArgs() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ AuthResultArgs copy$default(AuthResultArgs authResultArgs, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = authResultArgs.authId;
        }
        if ((i & 2) != 0) {
            str2 = authResultArgs.idToken;
        }
        if ((i & 4) != 0) {
            str3 = authResultArgs.authToken;
        }
        if ((i & 8) != 0) {
            str4 = authResultArgs.authCode;
        }
        return authResultArgs.copy(str, str2, str3, str4);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getAuthId() {
        return this.authId;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getIdToken() {
        return this.idToken;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getAuthToken() {
        return this.authToken;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getAuthCode() {
        return this.authCode;
    }

    @NotNull
    public final AuthResultArgs copy(@NotNull String authId, @NotNull String idToken, @NotNull String authToken, @NotNull String authCode) {
        Intrinsics.checkNotNullParameter(authId, "authId");
        Intrinsics.checkNotNullParameter(idToken, "idToken");
        Intrinsics.checkNotNullParameter(authToken, "authToken");
        Intrinsics.checkNotNullParameter(authCode, "authCode");
        return new AuthResultArgs(authId, idToken, authToken, authCode);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AuthResultArgs)) {
            return false;
        }
        AuthResultArgs authResultArgs = (AuthResultArgs) other;
        return Intrinsics.areEqual(this.authId, authResultArgs.authId) && Intrinsics.areEqual(this.idToken, authResultArgs.idToken) && Intrinsics.areEqual(this.authToken, authResultArgs.authToken) && Intrinsics.areEqual(this.authCode, authResultArgs.authCode);
    }

    @NotNull
    public final String getAuthCode() {
        return this.authCode;
    }

    @NotNull
    public final String getAuthId() {
        return this.authId;
    }

    @NotNull
    public final String getAuthToken() {
        return this.authToken;
    }

    @NotNull
    public final String getIdToken() {
        return this.idToken;
    }

    public int hashCode() {
        return (((((this.authId.hashCode() * 31) + this.idToken.hashCode()) * 31) + this.authToken.hashCode()) * 31) + this.authCode.hashCode();
    }

    public final void setAuthCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.authCode = str;
    }

    public final void setAuthId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.authId = str;
    }

    public final void setAuthToken(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.authToken = str;
    }

    public final void setIdToken(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.idToken = str;
    }

    @NotNull
    public String toString() {
        return "AuthResultArgs(authId=" + this.authId + ", idToken=" + this.idToken + ", authToken=" + this.authToken + ", authCode=" + this.authCode + ')';
    }

    public AuthResultArgs(@NotNull String authId, @NotNull String idToken, @NotNull String authToken, @NotNull String authCode) {
        Intrinsics.checkNotNullParameter(authId, "authId");
        Intrinsics.checkNotNullParameter(idToken, "idToken");
        Intrinsics.checkNotNullParameter(authToken, "authToken");
        Intrinsics.checkNotNullParameter(authCode, "authCode");
        this.authId = authId;
        this.idToken = idToken;
        this.authToken = authToken;
        this.authCode = authCode;
    }

    public /* synthetic */ AuthResultArgs(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4);
    }
}
