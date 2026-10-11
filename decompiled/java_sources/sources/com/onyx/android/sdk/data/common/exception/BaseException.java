package com.onyx.android.sdk.data.common.exception;

import com.onyx.android.sdk.data.common.data.ErrorCode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00060\u0001j\u0002`\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/BaseException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "errorCode", "Lcom/onyx/android/sdk/data/common/data/ErrorCode;", "(Lcom/onyx/android/sdk/data/common/data/ErrorCode;)V", "getErrorCode", "()Lcom/onyx/android/sdk/data/common/data/ErrorCode;", "setErrorCode", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class BaseException extends Exception {

    @NotNull
    private ErrorCode errorCode;

    public BaseException(@NotNull ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        this.errorCode = errorCode;
    }

    @NotNull
    public final ErrorCode getErrorCode() {
        return this.errorCode;
    }

    public final void setErrorCode(@NotNull ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "<set-?>");
        this.errorCode = errorCode;
    }
}
