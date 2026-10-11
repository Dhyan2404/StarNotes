package com.onyx.android.sdk_google;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J'\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u0002HÆ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk_google/MicrosoftAuthResult;", "", "", "component1", "component2", "component3", "id", "idToken", "accessToken", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "b", "getIdToken", "c", "getAccessToken", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-google_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class MicrosoftAuthResult {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String id;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String idToken;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final String accessToken;

    public MicrosoftAuthResult(@NotNull String id, @NotNull String idToken, @NotNull String accessToken) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(idToken, "idToken");
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        this.id = id;
        this.idToken = idToken;
        this.accessToken = accessToken;
    }

    public static /* synthetic */ MicrosoftAuthResult copy$default(MicrosoftAuthResult microsoftAuthResult, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = microsoftAuthResult.id;
        }
        if ((i & 2) != 0) {
            str2 = microsoftAuthResult.idToken;
        }
        if ((i & 4) != 0) {
            str3 = microsoftAuthResult.accessToken;
        }
        return microsoftAuthResult.copy(str, str2, str3);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getIdToken() {
        return this.idToken;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final String getAccessToken() {
        return this.accessToken;
    }

    @NotNull
    public final MicrosoftAuthResult copy(@NotNull String id, @NotNull String idToken, @NotNull String accessToken) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(idToken, "idToken");
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        return new MicrosoftAuthResult(id, idToken, accessToken);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MicrosoftAuthResult)) {
            return false;
        }
        MicrosoftAuthResult microsoftAuthResult = (MicrosoftAuthResult) other;
        return Intrinsics.areEqual(this.id, microsoftAuthResult.id) && Intrinsics.areEqual(this.idToken, microsoftAuthResult.idToken) && Intrinsics.areEqual(this.accessToken, microsoftAuthResult.accessToken);
    }

    @NotNull
    public final String getAccessToken() {
        return this.accessToken;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final String getIdToken() {
        return this.idToken;
    }

    public int hashCode() {
        return (((this.id.hashCode() * 31) + this.idToken.hashCode()) * 31) + this.accessToken.hashCode();
    }

    @NotNull
    public String toString() {
        return "MicrosoftAuthResult(id=" + this.id + ", idToken=" + this.idToken + ", accessToken=" + this.accessToken + ')';
    }
}
