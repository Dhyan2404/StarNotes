package com.onyx.android.sdk.cloudstorage.common.p019ui;

import android.os.Bundle;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0012\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b#\u0010$J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0003JA\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\t\u0010\u000f\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u0018R\u0019\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u0016\u001a\u0004\b\u001e\u0010\u0018R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;", "", "", "component1", "component2", "component3", "component4", "Landroid/os/Bundle;", "component5", CouchFieldKey.KEY_PROVIDER, "authUrl", "authSuccessCallbackUrl", "codeKey", "extraMap", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getProvider", "()Ljava/lang/String;", "b", "getAuthUrl", "c", "getAuthSuccessCallbackUrl", "d", "getCodeKey", "e", "Landroid/os/Bundle;", "getExtraMap", "()Landroid/os/Bundle;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class OAuthDialogParam {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String provider;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String authUrl;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @Nullable
    public final String authSuccessCallbackUrl;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @Nullable
    public final String codeKey;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @Nullable
    public final Bundle extraMap;

    public OAuthDialogParam(@NotNull String provider, @NotNull String authUrl, @Nullable String str, @Nullable String str2, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(authUrl, "authUrl");
        this.provider = provider;
        this.authUrl = authUrl;
        this.authSuccessCallbackUrl = str;
        this.codeKey = str2;
        this.extraMap = bundle;
    }

    public static /* synthetic */ OAuthDialogParam copy$default(OAuthDialogParam oAuthDialogParam, String str, String str2, String str3, String str4, Bundle bundle, int i, Object obj) {
        if ((i & 1) != 0) {
            str = oAuthDialogParam.provider;
        }
        if ((i & 2) != 0) {
            str2 = oAuthDialogParam.authUrl;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            str3 = oAuthDialogParam.authSuccessCallbackUrl;
        }
        String str6 = str3;
        if ((i & 8) != 0) {
            str4 = oAuthDialogParam.codeKey;
        }
        String str7 = str4;
        if ((i & 16) != 0) {
            bundle = oAuthDialogParam.extraMap;
        }
        return oAuthDialogParam.copy(str, str5, str6, str7, bundle);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getProvider() {
        return this.provider;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getAuthUrl() {
        return this.authUrl;
    }

    @Nullable
    /* renamed from: component3, reason: from getter */
    public final String getAuthSuccessCallbackUrl() {
        return this.authSuccessCallbackUrl;
    }

    @Nullable
    /* renamed from: component4, reason: from getter */
    public final String getCodeKey() {
        return this.codeKey;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final Bundle getExtraMap() {
        return this.extraMap;
    }

    @NotNull
    public final OAuthDialogParam copy(@NotNull String provider, @NotNull String authUrl, @Nullable String authSuccessCallbackUrl, @Nullable String codeKey, @Nullable Bundle extraMap) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(authUrl, "authUrl");
        return new OAuthDialogParam(provider, authUrl, authSuccessCallbackUrl, codeKey, extraMap);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OAuthDialogParam)) {
            return false;
        }
        OAuthDialogParam oAuthDialogParam = (OAuthDialogParam) other;
        return Intrinsics.areEqual(this.provider, oAuthDialogParam.provider) && Intrinsics.areEqual(this.authUrl, oAuthDialogParam.authUrl) && Intrinsics.areEqual(this.authSuccessCallbackUrl, oAuthDialogParam.authSuccessCallbackUrl) && Intrinsics.areEqual(this.codeKey, oAuthDialogParam.codeKey) && Intrinsics.areEqual(this.extraMap, oAuthDialogParam.extraMap);
    }

    @Nullable
    public final String getAuthSuccessCallbackUrl() {
        return this.authSuccessCallbackUrl;
    }

    @NotNull
    public final String getAuthUrl() {
        return this.authUrl;
    }

    @Nullable
    public final String getCodeKey() {
        return this.codeKey;
    }

    @Nullable
    public final Bundle getExtraMap() {
        return this.extraMap;
    }

    @NotNull
    public final String getProvider() {
        return this.provider;
    }

    public int hashCode() {
        int hashCode = ((this.provider.hashCode() * 31) + this.authUrl.hashCode()) * 31;
        String str = this.authSuccessCallbackUrl;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.codeKey;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Bundle bundle = this.extraMap;
        return hashCode3 + (bundle != null ? bundle.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "OAuthDialogParam(provider=" + this.provider + ", authUrl=" + this.authUrl + ", authSuccessCallbackUrl=" + this.authSuccessCallbackUrl + ", codeKey=" + this.codeKey + ", extraMap=" + this.extraMap + ')';
    }

    public /* synthetic */ OAuthDialogParam(String str, String str2, String str3, String str4, Bundle bundle, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : bundle);
    }
}
