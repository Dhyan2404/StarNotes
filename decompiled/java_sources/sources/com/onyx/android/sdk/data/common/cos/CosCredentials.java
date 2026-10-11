package com.onyx.android.sdk.data.common.cos;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cos/CosCredentials;", "", "token", "", "tmpSecretId", "tmpSecretKey", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getTmpSecretId", "()Ljava/lang/String;", "setTmpSecretId", "(Ljava/lang/String;)V", "getTmpSecretKey", "setTmpSecretKey", "getToken", "setToken", "component1", "component2", "component3", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class CosCredentials {

    @NotNull
    private String tmpSecretId;

    @NotNull
    private String tmpSecretKey;

    @NotNull
    private String token;

    public CosCredentials(@NotNull String token, @NotNull String tmpSecretId, @NotNull String tmpSecretKey) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(tmpSecretId, "tmpSecretId");
        Intrinsics.checkNotNullParameter(tmpSecretKey, "tmpSecretKey");
        this.token = token;
        this.tmpSecretId = tmpSecretId;
        this.tmpSecretKey = tmpSecretKey;
    }

    public static /* synthetic */ CosCredentials copy$default(CosCredentials cosCredentials, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cosCredentials.token;
        }
        if ((i & 2) != 0) {
            str2 = cosCredentials.tmpSecretId;
        }
        if ((i & 4) != 0) {
            str3 = cosCredentials.tmpSecretKey;
        }
        return cosCredentials.copy(str, str2, str3);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getToken() {
        return this.token;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getTmpSecretId() {
        return this.tmpSecretId;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getTmpSecretKey() {
        return this.tmpSecretKey;
    }

    @NotNull
    public final CosCredentials copy(@NotNull String token, @NotNull String tmpSecretId, @NotNull String tmpSecretKey) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(tmpSecretId, "tmpSecretId");
        Intrinsics.checkNotNullParameter(tmpSecretKey, "tmpSecretKey");
        return new CosCredentials(token, tmpSecretId, tmpSecretKey);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CosCredentials)) {
            return false;
        }
        CosCredentials cosCredentials = (CosCredentials) other;
        return Intrinsics.areEqual(this.token, cosCredentials.token) && Intrinsics.areEqual(this.tmpSecretId, cosCredentials.tmpSecretId) && Intrinsics.areEqual(this.tmpSecretKey, cosCredentials.tmpSecretKey);
    }

    @NotNull
    public final String getTmpSecretId() {
        return this.tmpSecretId;
    }

    @NotNull
    public final String getTmpSecretKey() {
        return this.tmpSecretKey;
    }

    @NotNull
    public final String getToken() {
        return this.token;
    }

    public int hashCode() {
        return (((this.token.hashCode() * 31) + this.tmpSecretId.hashCode()) * 31) + this.tmpSecretKey.hashCode();
    }

    public final void setTmpSecretId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.tmpSecretId = str;
    }

    public final void setTmpSecretKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.tmpSecretKey = str;
    }

    public final void setToken(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.token = str;
    }

    @NotNull
    public String toString() {
        return "CosCredentials(token=" + this.token + ", tmpSecretId=" + this.tmpSecretId + ", tmpSecretKey=" + this.tmpSecretKey + ')';
    }

    public /* synthetic */ CosCredentials(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, str2, str3);
    }
}
