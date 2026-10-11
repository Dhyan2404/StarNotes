package com.onyx.android.sdk.cloudstorage.model;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u001f\b\u0086\b\u0018\u0000 ,2\u00020\u0001:\u0001,B'\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\f\u001a\u00020\b¢\u0006\u0004\b*\u0010+J\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J)\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\f\u001a\u00020\bHÆ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\t\u0010\u0010\u001a\u00020\bHÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010\f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0011\u0010%\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b%\u0010\u0016R\u0011\u0010&\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b&\u0010\u0016R\u0011\u0010)\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b'\u0010(¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "", "", "retry", "", "component1", "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", "component2", "", "component3", FirebaseAnalytics.Param.SUCCESS, "exception", "retryCount", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getSuccess", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "setSuccess", "(Z)V", "b", "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", "getException", "()Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", "setException", "(Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;)V", "c", "I", "getRetryCount", "()I", "setRetryCount", "(I)V", "isNetWorkError", "isFinished", "getError", "()Ljava/lang/String;", "error", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;I)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final /* data */ class AsyncResult {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int RETRY_COUNT = 1;

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public boolean success;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public CloudNoteException exception;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public int retryCount;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u0005\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u000b\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult$Companion;", "", "()V", "RETRY_COUNT", "", OneDriverConstants.CONFLICT_BEHAVIOR_FAIL, "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;", "exception", "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", "throwable", "", FirebaseAnalytics.Param.SUCCESS, "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AsyncResult fail() {
            return new AsyncResult(false, null, 0, 7, null);
        }

        @NotNull
        public final AsyncResult success() {
            AsyncResult asyncResult = new AsyncResult(false, null, 0, 7, null);
            asyncResult.setSuccess(true);
            return asyncResult;
        }

        public Companion() {
        }

        @NotNull
        public final AsyncResult fail(@Nullable CloudNoteException exception) {
            AsyncResult asyncResult = new AsyncResult(false, null, 0, 7, null);
            asyncResult.setException(exception);
            return asyncResult;
        }

        @NotNull
        public final AsyncResult fail(@Nullable Throwable throwable) {
            return fail(new CloudNoteException(throwable));
        }
    }

    public AsyncResult() {
        this(false, null, 0, 7, null);
    }

    public static /* synthetic */ AsyncResult copy$default(AsyncResult asyncResult, boolean z, CloudNoteException cloudNoteException, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = asyncResult.success;
        }
        if ((i2 & 2) != 0) {
            cloudNoteException = asyncResult.exception;
        }
        if ((i2 & 4) != 0) {
            i = asyncResult.retryCount;
        }
        return asyncResult.copy(z, cloudNoteException, i);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getSuccess() {
        return this.success;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final CloudNoteException getException() {
        return this.exception;
    }

    /* renamed from: component3, reason: from getter */
    public final int getRetryCount() {
        return this.retryCount;
    }

    @NotNull
    public final AsyncResult copy(boolean success, @Nullable CloudNoteException exception, int retryCount) {
        return new AsyncResult(success, exception, retryCount);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AsyncResult)) {
            return false;
        }
        AsyncResult asyncResult = (AsyncResult) other;
        return this.success == asyncResult.success && Intrinsics.areEqual(this.exception, asyncResult.exception) && this.retryCount == asyncResult.retryCount;
    }

    @NotNull
    public final String getError() {
        CloudNoteException cloudNoteException = this.exception;
        if (cloudNoteException == null) {
            return "";
        }
        Intrinsics.checkNotNull(cloudNoteException);
        String errorMsg = cloudNoteException.getErrorMsg();
        if (StringUtils.isEmpty(errorMsg)) {
            CloudNoteException cloudNoteException2 = this.exception;
            Intrinsics.checkNotNull(cloudNoteException2);
            if (cloudNoteException2.getCause() != null) {
                CloudNoteException cloudNoteException3 = this.exception;
                Intrinsics.checkNotNull(cloudNoteException3);
                errorMsg = String.valueOf(cloudNoteException3.getCause());
            }
        }
        return errorMsg == null ? "" : errorMsg;
    }

    @Nullable
    public final CloudNoteException getException() {
        return this.exception;
    }

    public final int getRetryCount() {
        return this.retryCount;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public int hashCode() {
        boolean z = this.success;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        CloudNoteException cloudNoteException = this.exception;
        return ((i + (cloudNoteException == null ? 0 : cloudNoteException.hashCode())) * 31) + Integer.hashCode(this.retryCount);
    }

    public final boolean isFinished() {
        return this.success || this.retryCount > 1;
    }

    public final boolean isNetWorkError() {
        CloudNoteException cloudNoteException = this.exception;
        if (cloudNoteException != null) {
            Intrinsics.checkNotNull(cloudNoteException);
            if (!(cloudNoteException.getCause() instanceof UnknownHostException)) {
                CloudNoteException cloudNoteException2 = this.exception;
                Intrinsics.checkNotNull(cloudNoteException2);
                if (!(cloudNoteException2.getCause() instanceof ConnectException)) {
                    CloudNoteException cloudNoteException3 = this.exception;
                    Intrinsics.checkNotNull(cloudNoteException3);
                    if (cloudNoteException3.getCause() instanceof SocketTimeoutException) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    public final void retry() {
        this.retryCount++;
    }

    public final void setException(@Nullable CloudNoteException cloudNoteException) {
        this.exception = cloudNoteException;
    }

    public final void setRetryCount(int i) {
        this.retryCount = i;
    }

    public final void setSuccess(boolean z) {
        this.success = z;
    }

    @NotNull
    public String toString() {
        return "AsyncResult(success=" + this.success + ", exception=" + this.exception + ", retryCount=" + this.retryCount + ')';
    }

    public AsyncResult(boolean z, @Nullable CloudNoteException cloudNoteException, int i) {
        this.success = z;
        this.exception = cloudNoteException;
        this.retryCount = i;
    }

    public /* synthetic */ AsyncResult(boolean z, CloudNoteException cloudNoteException, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? null : cloudNoteException, (i2 & 4) != 0 ? 0 : i);
    }
}
