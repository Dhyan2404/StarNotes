package com.onyx.android.sdk.data.common.data;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/Certificates;", "", "cert", "", "key", "(Ljava/lang/String;Ljava/lang/String;)V", "getCert", "()Ljava/lang/String;", "setCert", "(Ljava/lang/String;)V", "getKey", "setKey", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class Certificates {

    @Nullable
    private String cert;

    @Nullable
    private String key;

    /* JADX WARN: Multi-variable type inference failed */
    public Certificates() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ Certificates copy$default(Certificates certificates, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = certificates.cert;
        }
        if ((i & 2) != 0) {
            str2 = certificates.key;
        }
        return certificates.copy(str, str2);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getCert() {
        return this.cert;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final Certificates copy(@Nullable String cert, @Nullable String key) {
        return new Certificates(cert, key);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Certificates)) {
            return false;
        }
        Certificates certificates = (Certificates) other;
        return Intrinsics.areEqual(this.cert, certificates.cert) && Intrinsics.areEqual(this.key, certificates.key);
    }

    @Nullable
    public final String getCert() {
        return this.cert;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    public int hashCode() {
        String str = this.cert;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.key;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setCert(@Nullable String str) {
        this.cert = str;
    }

    public final void setKey(@Nullable String str) {
        this.key = str;
    }

    @NotNull
    public String toString() {
        return "Certificates(cert=" + this.cert + ", key=" + this.key + ')';
    }

    public Certificates(@Nullable String str, @Nullable String str2) {
        this.cert = str;
        this.key = str2;
    }

    public /* synthetic */ Certificates(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
    }
}
