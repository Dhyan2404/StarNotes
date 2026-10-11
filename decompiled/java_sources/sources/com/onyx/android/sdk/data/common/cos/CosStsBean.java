package com.onyx.android.sdk.data.common.cos;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J1\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cos/CosStsBean;", "", "expiredTime", "", "expiration", "credentials", "Lcom/onyx/android/sdk/data/common/cos/CosCredentials;", "requestId", "(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/common/cos/CosCredentials;Ljava/lang/String;)V", "getCredentials", "()Lcom/onyx/android/sdk/data/common/cos/CosCredentials;", "setCredentials", "(Lcom/onyx/android/sdk/data/common/cos/CosCredentials;)V", "getExpiration", "()Ljava/lang/String;", "setExpiration", "(Ljava/lang/String;)V", "getExpiredTime", "setExpiredTime", "getRequestId", "setRequestId", "component1", "component2", "component3", "component4", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class CosStsBean {

    @NotNull
    private CosCredentials credentials;

    @NotNull
    private String expiration;

    @NotNull
    private String expiredTime;

    @NotNull
    private String requestId;

    public CosStsBean(@NotNull String expiredTime, @NotNull String expiration, @NotNull CosCredentials credentials, @NotNull String requestId) {
        Intrinsics.checkNotNullParameter(expiredTime, "expiredTime");
        Intrinsics.checkNotNullParameter(expiration, "expiration");
        Intrinsics.checkNotNullParameter(credentials, "credentials");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.expiredTime = expiredTime;
        this.expiration = expiration;
        this.credentials = credentials;
        this.requestId = requestId;
    }

    public static /* synthetic */ CosStsBean copy$default(CosStsBean cosStsBean, String str, String str2, CosCredentials cosCredentials, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cosStsBean.expiredTime;
        }
        if ((i & 2) != 0) {
            str2 = cosStsBean.expiration;
        }
        if ((i & 4) != 0) {
            cosCredentials = cosStsBean.credentials;
        }
        if ((i & 8) != 0) {
            str3 = cosStsBean.requestId;
        }
        return cosStsBean.copy(str, str2, cosCredentials, str3);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getExpiredTime() {
        return this.expiredTime;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getExpiration() {
        return this.expiration;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final CosCredentials getCredentials() {
        return this.credentials;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getRequestId() {
        return this.requestId;
    }

    @NotNull
    public final CosStsBean copy(@NotNull String expiredTime, @NotNull String expiration, @NotNull CosCredentials credentials, @NotNull String requestId) {
        Intrinsics.checkNotNullParameter(expiredTime, "expiredTime");
        Intrinsics.checkNotNullParameter(expiration, "expiration");
        Intrinsics.checkNotNullParameter(credentials, "credentials");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        return new CosStsBean(expiredTime, expiration, credentials, requestId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CosStsBean)) {
            return false;
        }
        CosStsBean cosStsBean = (CosStsBean) other;
        return Intrinsics.areEqual(this.expiredTime, cosStsBean.expiredTime) && Intrinsics.areEqual(this.expiration, cosStsBean.expiration) && Intrinsics.areEqual(this.credentials, cosStsBean.credentials) && Intrinsics.areEqual(this.requestId, cosStsBean.requestId);
    }

    @NotNull
    public final CosCredentials getCredentials() {
        return this.credentials;
    }

    @NotNull
    public final String getExpiration() {
        return this.expiration;
    }

    @NotNull
    public final String getExpiredTime() {
        return this.expiredTime;
    }

    @NotNull
    public final String getRequestId() {
        return this.requestId;
    }

    public int hashCode() {
        return (((((this.expiredTime.hashCode() * 31) + this.expiration.hashCode()) * 31) + this.credentials.hashCode()) * 31) + this.requestId.hashCode();
    }

    public final void setCredentials(@NotNull CosCredentials cosCredentials) {
        Intrinsics.checkNotNullParameter(cosCredentials, "<set-?>");
        this.credentials = cosCredentials;
    }

    public final void setExpiration(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.expiration = str;
    }

    public final void setExpiredTime(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.expiredTime = str;
    }

    public final void setRequestId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.requestId = str;
    }

    @NotNull
    public String toString() {
        return "CosStsBean(expiredTime=" + this.expiredTime + ", expiration=" + this.expiration + ", credentials=" + this.credentials + ", requestId=" + this.requestId + ')';
    }

    public /* synthetic */ CosStsBean(String str, String str2, CosCredentials cosCredentials, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, str2, cosCredentials, str3);
    }
}
