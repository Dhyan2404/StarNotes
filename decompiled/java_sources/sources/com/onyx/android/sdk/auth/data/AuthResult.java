package com.onyx.android.sdk.auth.data;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/auth/data/AuthResult;", "", "Lcom/onyx/android/sdk/auth/data/AuthBean;", "component1", "", "component2", "authBean", FirebaseAnalytics.Param.SUCCESS, "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/auth/data/AuthBean;", "getAuthBean", "()Lcom/onyx/android/sdk/auth/data/AuthBean;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getSuccess", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/auth/data/AuthBean;Z)V", "sdk-auth_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class AuthResult {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final AuthBean authBean;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final boolean success;

    public AuthResult(@NotNull AuthBean authBean, boolean z) {
        Intrinsics.checkNotNullParameter(authBean, "authBean");
        this.authBean = authBean;
        this.success = z;
    }

    public static /* synthetic */ AuthResult copy$default(AuthResult authResult, AuthBean authBean, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            authBean = authResult.authBean;
        }
        if ((i & 2) != 0) {
            z = authResult.success;
        }
        return authResult.copy(authBean, z);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final AuthBean getAuthBean() {
        return this.authBean;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getSuccess() {
        return this.success;
    }

    @NotNull
    public final AuthResult copy(@NotNull AuthBean authBean, boolean success) {
        Intrinsics.checkNotNullParameter(authBean, "authBean");
        return new AuthResult(authBean, success);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AuthResult)) {
            return false;
        }
        AuthResult authResult = (AuthResult) other;
        return Intrinsics.areEqual(this.authBean, authResult.authBean) && this.success == authResult.success;
    }

    @NotNull
    public final AuthBean getAuthBean() {
        return this.authBean;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.authBean.hashCode() * 31;
        boolean z = this.success;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    @NotNull
    public String toString() {
        return "AuthResult(authBean=" + this.authBean + ", success=" + this.success + ')';
    }
}
