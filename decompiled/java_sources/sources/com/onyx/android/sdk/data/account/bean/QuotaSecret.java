package com.onyx.android.sdk.data.account.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/QuotaSecret;", "", "secret", "", "(Ljava/lang/String;)V", "getSecret", "()Ljava/lang/String;", "setSecret", "component1", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class QuotaSecret {

    @NotNull
    private String secret;

    public QuotaSecret(@NotNull String secret) {
        Intrinsics.checkNotNullParameter(secret, "secret");
        this.secret = secret;
    }

    public static /* synthetic */ QuotaSecret copy$default(QuotaSecret quotaSecret, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = quotaSecret.secret;
        }
        return quotaSecret.copy(str);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getSecret() {
        return this.secret;
    }

    @NotNull
    public final QuotaSecret copy(@NotNull String secret) {
        Intrinsics.checkNotNullParameter(secret, "secret");
        return new QuotaSecret(secret);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof QuotaSecret) && Intrinsics.areEqual(this.secret, ((QuotaSecret) other).secret);
    }

    @NotNull
    public final String getSecret() {
        return this.secret;
    }

    public int hashCode() {
        return this.secret.hashCode();
    }

    public final void setSecret(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.secret = str;
    }

    @NotNull
    public String toString() {
        return "QuotaSecret(secret=" + this.secret + ')';
    }
}
