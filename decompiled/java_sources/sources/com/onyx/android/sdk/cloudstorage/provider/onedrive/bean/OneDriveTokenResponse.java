package com.onyx.android.sdk.cloudstorage.provider.onedrive.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u001b\u0018\u0000 &2\u00020\u0001:\u0001&B\u0007¢\u0006\u0004\b$\u0010%J\u0006\u0010\u0003\u001a\u00020\u0002R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0017\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0006\u001a\u0004\b\u0015\u0010\b\"\u0004\b\u0016\u0010\nR$\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0006\u001a\u0004\b\u0019\u0010\b\"\u0004\b\u001a\u0010\nR$\u0010\u001f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0006\u001a\u0004\b\u001d\u0010\b\"\u0004\b\u001e\u0010\nR$\u0010#\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u0006\u001a\u0004\b!\u0010\b\"\u0004\b\"\u0010\n¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;", "", "", "updateExpiresToDateTime", "", "a", Constants.STRING_SIG, "getTokenType", "()Ljava/lang/String;", "setTokenType", "(Ljava/lang/String;)V", "tokenType", "", "b", "J", "getExpiresIn", "()J", "setExpiresIn", "(J)V", "expiresIn", "c", "getScope", "setScope", "scope", "d", "getAccessToken", "setAccessToken", "accessToken", "e", "getRefreshToken", "setRefreshToken", "refreshToken", C6997f.f39671c, "getResource", "setResource", "resource", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriveTokenResponse {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @JSONField(alternateNames = {"token_type"})
    @Nullable
    public String tokenType;

    /* renamed from: b, reason: from kotlin metadata */
    @JSONField(alternateNames = {"expires_in"})
    public long expiresIn;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String scope;

    /* renamed from: d, reason: from kotlin metadata */
    @JSONField(alternateNames = {"access_token"})
    @Nullable
    public String accessToken;

    /* renamed from: e, reason: from kotlin metadata */
    @JSONField(alternateNames = {"refresh_token"})
    @Nullable
    public String refreshToken;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public String resource;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse$Companion;", "", "()V", "isValid", "", AbstractLogger.RESPONSE, "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isValid(@Nullable OneDriveTokenResponse response) {
            if (response == null) {
                return false;
            }
            String accessToken = response.getAccessToken();
            if (accessToken == null || accessToken.length() == 0) {
                return false;
            }
            String refreshToken = response.getRefreshToken();
            return !(refreshToken == null || refreshToken.length() == 0);
        }

        public Companion() {
        }
    }

    @Nullable
    public final String getAccessToken() {
        return this.accessToken;
    }

    public final long getExpiresIn() {
        return this.expiresIn;
    }

    @Nullable
    public final String getRefreshToken() {
        return this.refreshToken;
    }

    @Nullable
    public final String getResource() {
        return this.resource;
    }

    @Nullable
    public final String getScope() {
        return this.scope;
    }

    @Nullable
    public final String getTokenType() {
        return this.tokenType;
    }

    public final void setAccessToken(@Nullable String str) {
        this.accessToken = str;
    }

    public final void setExpiresIn(long j) {
        this.expiresIn = j;
    }

    public final void setRefreshToken(@Nullable String str) {
        this.refreshToken = str;
    }

    public final void setResource(@Nullable String str) {
        this.resource = str;
    }

    public final void setScope(@Nullable String str) {
        this.scope = str;
    }

    public final void setTokenType(@Nullable String str) {
        this.tokenType = str;
    }

    public final void updateExpiresToDateTime() {
        long j = this.expiresIn;
        if (j <= 0 || j >= System.currentTimeMillis()) {
            return;
        }
        this.expiresIn = System.currentTimeMillis() + (this.expiresIn * 1000);
    }
}
