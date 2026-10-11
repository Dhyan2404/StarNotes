package com.onyx.android.sdk.cloudstorage.model;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0012\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0011\b\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u0002¢\u0006\u0004\b \u0010\bB\u001b\b\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b \u0010!R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0018\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u001c\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017R\u0011\u0010\u001e\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0015¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "isSuccess", Constants.BOOLEAN_VALUE_SIG, "setSuccess", "(Z)V", "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", "b", "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", "getException", "()Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", "setException", "(Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;)V", "exception", "", "c", Constants.STRING_SIG, "getAuthName", "()Ljava/lang/String;", "setAuthName", "(Ljava/lang/String;)V", "authName", "d", "getAccountId", "setAccountId", "accountId", "getError", "error", FirebaseAnalytics.Param.SUCCESS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AuthResult {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    public boolean isSuccess;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public CloudNoteException exception;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String authName;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String accountId;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\u0007\u001a\u00020\u0004¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;", "", "()V", "authFail", "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;", "exception", "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", "authSuccess", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AuthResult authFail() {
            return new AuthResult(false);
        }

        @NotNull
        public final AuthResult authSuccess() {
            return new AuthResult(true);
        }

        public Companion() {
        }

        @NotNull
        public final AuthResult authFail(@Nullable CloudNoteException exception) {
            return new AuthResult(false, exception);
        }
    }

    public AuthResult(boolean z) {
        this.isSuccess = z;
    }

    @Nullable
    public final String getAccountId() {
        return this.accountId;
    }

    @Nullable
    public final String getAuthName() {
        return this.authName;
    }

    @NotNull
    public final String getError() {
        CloudNoteException cloudNoteException = this.exception;
        if (cloudNoteException == null) {
            return "";
        }
        Intrinsics.checkNotNull(cloudNoteException);
        return cloudNoteException.getError();
    }

    @Nullable
    public final CloudNoteException getException() {
        return this.exception;
    }

    /* renamed from: isSuccess, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final void setAccountId(@Nullable String str) {
        this.accountId = str;
    }

    public final void setAuthName(@Nullable String str) {
        this.authName = str;
    }

    public final void setException(@Nullable CloudNoteException cloudNoteException) {
        this.exception = cloudNoteException;
    }

    public final void setSuccess(boolean z) {
        this.isSuccess = z;
    }

    public AuthResult(boolean z, @Nullable CloudNoteException cloudNoteException) {
        this.isSuccess = z;
        this.exception = cloudNoteException;
    }
}
