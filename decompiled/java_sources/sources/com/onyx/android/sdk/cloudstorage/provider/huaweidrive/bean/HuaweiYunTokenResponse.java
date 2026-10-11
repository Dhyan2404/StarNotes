package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.StringKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0017\u0018\u0000 $2\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b\"\u0010#R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR$\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR$\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\b¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse;", "", "", "a", Constants.STRING_SIG, "getAccessToken", "()Ljava/lang/String;", "setAccessToken", "(Ljava/lang/String;)V", "accessToken", "b", "getRefreshToken", "setRefreshToken", "refreshToken", "", "c", "J", "getExpiresIn", "()J", "setExpiresIn", "(J)V", "expiresIn", "d", "getScope", "setScope", "scope", "e", "getTokenType", "setTokenType", "tokenType", C6997f.f39671c, "getIdToken", "setIdToken", "idToken", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HuaweiYunTokenResponse {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @JSONField(alternateNames = {"access_token"})
    @Nullable
    public String accessToken;

    /* renamed from: b, reason: from kotlin metadata */
    @JSONField(alternateNames = {"refresh_token"})
    @Nullable
    public String refreshToken;

    /* renamed from: c, reason: from kotlin metadata */
    @JSONField(alternateNames = {"expires_in"})
    public long expiresIn;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String scope;

    /* renamed from: e, reason: from kotlin metadata */
    @JSONField(alternateNames = {"token_type"})
    @Nullable
    public String tokenType;

    /* renamed from: f, reason: from kotlin metadata */
    @JSONField(alternateNames = {com.onyx.android.sdk.cloudstorage.constans.Constants.HUAWEI_YUN_ID_TOKEN})
    @Nullable
    public String idToken;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse$Companion;", "", "()V", "isValid", "", AbstractLogger.RESPONSE, "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunTokenResponse;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isValid(@Nullable HuaweiYunTokenResponse response) {
            return response != null && StringKt.isNotBlank(response.getAccessToken()) && StringKt.isNotBlank(response.getRefreshToken());
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
    public final String getIdToken() {
        return this.idToken;
    }

    @Nullable
    public final String getRefreshToken() {
        return this.refreshToken;
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

    public final void setIdToken(@Nullable String str) {
        this.idToken = str;
    }

    public final void setRefreshToken(@Nullable String str) {
        this.refreshToken = str;
    }

    public final void setScope(@Nullable String str) {
        this.scope = str;
    }

    public final void setTokenType(@Nullable String str) {
        this.tokenType = str;
    }
}
