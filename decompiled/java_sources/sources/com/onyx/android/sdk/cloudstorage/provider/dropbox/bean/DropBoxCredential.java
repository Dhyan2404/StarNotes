package com.onyx.android.sdk.cloudstorage.provider.dropbox.bean;

import com.dropbox.core.oauth.DbxCredential;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0006\u0010\u0019\u001a\u00020\u001aR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\u0005R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0007\"\u0004\b\u000e\u0010\u0005R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\u0005¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;", "Ljava/io/Serializable;", "()V", "accessToken", "", "(Ljava/lang/String;)V", "getAccessToken", "()Ljava/lang/String;", "setAccessToken", "appKey", "getAppKey", "setAppKey", "appSecret", "getAppSecret", "setAppSecret", "expiresAt", "", "getExpiresAt", "()Ljava/lang/Long;", "setExpiresAt", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "refreshToken", "getRefreshToken", "setRefreshToken", "toDbxCredential", "Lcom/dropbox/core/oauth/DbxCredential;", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DropBoxCredential implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private String accessToken;

    @Nullable
    private String appKey;

    @Nullable
    private String appSecret;

    @Nullable
    private Long expiresAt;

    @Nullable
    private String refreshToken;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;", "", "()V", "isValid", "", "credential", "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;", "toDropBoxCredential", "Lcom/dropbox/core/oauth/DbxCredential;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isValid(@Nullable DropBoxCredential credential) {
            String accessToken;
            boolean isBlank;
            if (credential == null || (accessToken = credential.getAccessToken()) == null) {
                return false;
            }
            isBlank = StringsKt__StringsJVMKt.isBlank(accessToken);
            return !isBlank;
        }

        @NotNull
        public final DropBoxCredential toDropBoxCredential(@NotNull DbxCredential credential) {
            Intrinsics.checkNotNullParameter(credential, "credential");
            String accessToken = credential.getAccessToken();
            Intrinsics.checkNotNullExpressionValue(accessToken, "getAccessToken(...)");
            DropBoxCredential dropBoxCredential = new DropBoxCredential(accessToken);
            dropBoxCredential.setRefreshToken(credential.getRefreshToken());
            dropBoxCredential.setAppKey(credential.getAppKey());
            dropBoxCredential.setAppSecret(credential.getAppSecret());
            dropBoxCredential.setExpiresAt(credential.getExpiresAt());
            return dropBoxCredential;
        }

        public Companion() {
        }
    }

    public DropBoxCredential() {
    }

    @Nullable
    public final String getAccessToken() {
        return this.accessToken;
    }

    @Nullable
    public final String getAppKey() {
        return this.appKey;
    }

    @Nullable
    public final String getAppSecret() {
        return this.appSecret;
    }

    @Nullable
    public final Long getExpiresAt() {
        return this.expiresAt;
    }

    @Nullable
    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final void setAccessToken(@Nullable String str) {
        this.accessToken = str;
    }

    public final void setAppKey(@Nullable String str) {
        this.appKey = str;
    }

    public final void setAppSecret(@Nullable String str) {
        this.appSecret = str;
    }

    public final void setExpiresAt(@Nullable Long l) {
        this.expiresAt = l;
    }

    public final void setRefreshToken(@Nullable String str) {
        this.refreshToken = str;
    }

    @NotNull
    public final DbxCredential toDbxCredential() {
        return new DbxCredential(this.accessToken, this.expiresAt, this.refreshToken, this.appKey, this.appSecret);
    }

    public DropBoxCredential(@NotNull String accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        this.accessToken = accessToken;
    }
}
