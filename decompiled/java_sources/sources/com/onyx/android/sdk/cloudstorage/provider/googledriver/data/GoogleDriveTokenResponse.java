package com.onyx.android.sdk.cloudstorage.provider.googledriver.data;

import com.onyx.android.sdk.base.extension.StringKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000f\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\b¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;", "", "()V", "access_token", "", "getAccess_token", "()Ljava/lang/String;", "setAccess_token", "(Ljava/lang/String;)V", "expires_in", "", "getExpires_in", "()J", "setExpires_in", "(J)V", "refresh_token", "getRefresh_token", "setRefresh_token", "scope", "getScope", "setScope", "token_type", "getToken_type", "setToken_type", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GoogleDriveTokenResponse {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private String access_token;
    private long expires_in;

    @Nullable
    private String refresh_token;

    @Nullable
    private String scope;

    @Nullable
    private String token_type;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\b\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse$Companion;", "", "()V", "isAccessTokenValid", "", AbstractLogger.RESPONSE, "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/data/GoogleDriveTokenResponse;", "isRefreshTokenValid", "isValid", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isAccessTokenValid(@Nullable GoogleDriveTokenResponse response) {
            return response != null && StringKt.isNotBlank(response.getAccess_token());
        }

        public final boolean isRefreshTokenValid(@Nullable GoogleDriveTokenResponse response) {
            return response != null && StringKt.isNotBlank(response.getRefresh_token());
        }

        public final boolean isValid(@Nullable GoogleDriveTokenResponse response) {
            return isAccessTokenValid(response) && isRefreshTokenValid(response);
        }

        private Companion() {
        }
    }

    @Nullable
    public final String getAccess_token() {
        return this.access_token;
    }

    public final long getExpires_in() {
        return this.expires_in;
    }

    @Nullable
    public final String getRefresh_token() {
        return this.refresh_token;
    }

    @Nullable
    public final String getScope() {
        return this.scope;
    }

    @Nullable
    public final String getToken_type() {
        return this.token_type;
    }

    public final void setAccess_token(@Nullable String str) {
        this.access_token = str;
    }

    public final void setExpires_in(long j) {
        this.expires_in = j;
    }

    public final void setRefresh_token(@Nullable String str) {
        this.refresh_token = str;
    }

    public final void setScope(@Nullable String str) {
        this.scope = str;
    }

    public final void setToken_type(@Nullable String str) {
        this.token_type = str;
    }
}
