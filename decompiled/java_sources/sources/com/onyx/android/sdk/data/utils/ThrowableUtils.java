package com.onyx.android.sdk.data.utils;

import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.common.data.ErrorCode;
import com.onyx.android.sdk.data.common.exception.AbortException;
import com.onyx.android.sdk.data.common.exception.BaseException;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\n\u0010\b\u001a\u00020\u0004*\u00020\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/ThrowableUtils;", "", "()V", "handleIOException", "Lcom/onyx/android/sdk/data/common/data/ErrorCode;", "throwable", "Ljava/io/IOException;", "unknownError", "getErrorCode", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ThrowableUtils {

    @NotNull
    public static final ThrowableUtils INSTANCE = new ThrowableUtils();

    private ThrowableUtils() {
    }

    private final ErrorCode handleIOException(IOException throwable) {
        String message = throwable.getMessage();
        BaseError baseError = BaseError.INSTANCE;
        if (baseError.isNoSpace(message)) {
            return new ErrorCode("101", message, C7373R.string.space_not_enough_error);
        }
        if (baseError.isFileTooLarge(message)) {
            return new ErrorCode("101", message, C7373R.string.file_too_large_space_not_enough_error);
        }
        Throwable cause = throwable.getCause();
        return cause instanceof IOException ? handleIOException((IOException) cause) : unknownError();
    }

    private final ErrorCode unknownError() {
        return new ErrorCode("1", ResManager.INSTANCE.getString(C7373R.string.unknown_error_contact_help), 0, 4, null);
    }

    @NotNull
    public final ErrorCode getErrorCode(@NotNull Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        if (!(th instanceof CloudNoteException)) {
            return th instanceof AbortException ? new ErrorCode("100", "Abort", 0, 4, null) : th instanceof BaseException ? ((BaseException) th).getErrorCode() : th instanceof IOException ? handleIOException((IOException) th) : unknownError();
        }
        CloudNoteException cloudNoteException = (CloudNoteException) th;
        return new ErrorCode(String.valueOf(cloudNoteException.getCode()), cloudNoteException.getErrorMsg(), 0, 4, null);
    }
}
