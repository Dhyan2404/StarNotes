package com.onyx.android.sdk.data.common.exception;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 \u001d2\u00060\u0001j\u0002`\u0002:\u0001\u001dB\u0007\b\u0016¢\u0006\u0002\u0010\u0003B\u0011\b\u0016\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006B\u0011\b\u0016\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tB\u0019\b\u0016\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\rB#\b\u0016\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\u000eB\u0019\b\u0016\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\u000fJ\u0006\u0010\u0017\u001a\u00020\bJ\b\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u00192\b\u0010\f\u001a\u0004\u0018\u00010\bJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u000bJ\b\u0010\u001c\u001a\u00020\bH\u0016R\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\"\u0010\u0013\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "()V", "cause", "", "(Ljava/lang/Throwable;)V", "message", "", "(Ljava/lang/String;)V", "code", "", "error", "(ILjava/lang/String;)V", "(Ljava/lang/String;Ljava/lang/Throwable;I)V", "(Ljava/lang/Throwable;I)V", "<set-?>", "getCode", "()I", "errorMsg", "getErrorMsg", "()Ljava/lang/String;", "thirdErrorCode", "getError", "init", "", "setError", "setThirdErrorCode", "toString", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class CloudNoteException extends Exception {
    public static final int ABORT_TRANSFER = 1004;
    public static final int AUTH_ERROR = 600;
    public static final int BAD_REQUEST = 400;
    public static final int BOUND_DEVICES_COUNT_OUT_RANGE_ERROR = 405;
    public static final int CLOUD_STORAGE_CAPACITY_FULL = 1002;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int DISABLE_UNBIND_ONLY_LOGIN_TYPE = 418;
    public static final int DUPLICATE_BINDING = 1005;
    public static final int EMAIL_IS_USED = -3;
    public static final int FILE_OR_FOLDER_EXIST = 1001;
    public static final int FILE_OR_FOLDER_NAME_ERROR = 1000;
    public static final int NETWORK_OR_SERVER_ERROR = 2;
    public static final int ONE_DRIVE_INVALID_GRANT = 70000;
    public static final int ONE_DRIVE_QUOTA_LIMIT_REACHED = 507;
    public static final int ONE_NOTE_ERROR_ENTITY_NAME_TOO_LONG = 20155;
    public static final int ONE_NOTE_ERROR_FILE_EXCEEDS_LIMIT = 20014;
    public static final int ONE_NOTE_ERROR_UPLOAD_LIMIT = 30101;
    public static final int ONE_NOTE_SERVER_ERROR = 40001;
    public static final int PERMISSION_DENIED = 1003;
    public static final int PHONE_IS_USED = -2;
    public static final int TOKEN_INVALID = 401;
    public static final int UNKNOWN_ERROR = 1;
    public static final int VERIFICATION_CODE_ERROR = 500;
    private int code;

    @Nullable
    private String errorMsg;
    private int thirdErrorCode;

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eJ\u0010\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001f\u001a\u0004\u0018\u00010 J\u0010\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010 J\u0010\u0010$\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010 J\u0010\u0010%\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010 J\u0010\u0010&\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010 J\u0010\u0010'\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010 J\u0010\u0010(\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010 J\u0010\u0010)\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010 J\u0018\u0010*\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010 2\u0006\u0010\u001c\u001a\u00020\u0004J\u0018\u0010+\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010 2\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010,\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u0004J\u0010\u0010,\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010 J\u0010\u0010-\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010 R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/exception/CloudNoteException$Companion;", "", "()V", "ABORT_TRANSFER", "", "AUTH_ERROR", "BAD_REQUEST", "BOUND_DEVICES_COUNT_OUT_RANGE_ERROR", "CLOUD_STORAGE_CAPACITY_FULL", "DISABLE_UNBIND_ONLY_LOGIN_TYPE", "DUPLICATE_BINDING", "EMAIL_IS_USED", "FILE_OR_FOLDER_EXIST", "FILE_OR_FOLDER_NAME_ERROR", "NETWORK_OR_SERVER_ERROR", "ONE_DRIVE_INVALID_GRANT", "ONE_DRIVE_QUOTA_LIMIT_REACHED", "ONE_NOTE_ERROR_ENTITY_NAME_TOO_LONG", "ONE_NOTE_ERROR_FILE_EXCEEDS_LIMIT", "ONE_NOTE_ERROR_UPLOAD_LIMIT", "ONE_NOTE_SERVER_ERROR", "PERMISSION_DENIED", "PHONE_IS_USED", "TOKEN_INVALID", "UNKNOWN_ERROR", "VERIFICATION_CODE_ERROR", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", "code", "error", "", "cause", "", "isAuthError", "", "e", "isCloudNoteException", "isConflictError", "isEntityNameTooLongError", "isFileExceedsLimitError", "isOneDriveInvalidGrantError", "isOneNoteServerError", "isSpecifiedCode", "isSpecifiedThirdCode", "isTokenInvalid", "isUploadLimitError", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CloudNoteException create(@Nullable Throwable cause) {
            return new CloudNoteException(cause);
        }

        public final boolean isAuthError(@Nullable Throwable e) {
            return isSpecifiedCode(e, 600);
        }

        public final boolean isCloudNoteException(@Nullable Throwable e) {
            if (e == null) {
                return false;
            }
            return e instanceof CloudNoteException;
        }

        public final boolean isConflictError(@Nullable Throwable e) {
            return isSpecifiedCode(e, 409);
        }

        public final boolean isEntityNameTooLongError(@Nullable Throwable e) {
            return isSpecifiedCode(e, CloudNoteException.ONE_NOTE_ERROR_ENTITY_NAME_TOO_LONG);
        }

        public final boolean isFileExceedsLimitError(@Nullable Throwable e) {
            return isSpecifiedCode(e, 20014);
        }

        public final boolean isOneDriveInvalidGrantError(@Nullable Throwable e) {
            return isSpecifiedThirdCode(e, CloudNoteException.ONE_DRIVE_INVALID_GRANT);
        }

        public final boolean isOneNoteServerError(@Nullable Throwable e) {
            return isSpecifiedCode(e, 40001);
        }

        public final boolean isSpecifiedCode(@Nullable Throwable e, int code) {
            if (!isCloudNoteException(e)) {
                return false;
            }
            CloudNoteException cloudNoteException = (CloudNoteException) e;
            Intrinsics.checkNotNull(cloudNoteException);
            return cloudNoteException.getCode() == code;
        }

        public final boolean isSpecifiedThirdCode(@Nullable Throwable e, int code) {
            if (!isCloudNoteException(e)) {
                return false;
            }
            CloudNoteException cloudNoteException = (CloudNoteException) e;
            Intrinsics.checkNotNull(cloudNoteException);
            return cloudNoteException.thirdErrorCode == code;
        }

        public final boolean isTokenInvalid(int code) {
            return 401 == code;
        }

        public final boolean isUploadLimitError(@Nullable Throwable e) {
            return (e instanceof CloudNoteException) && ((CloudNoteException) e).getCode() == 30101;
        }

        private Companion() {
        }

        @NotNull
        public final CloudNoteException create(int code, @Nullable String error) {
            return new CloudNoteException(code, error);
        }

        public final boolean isTokenInvalid(@Nullable Throwable e) {
            return isSpecifiedCode(e, 401);
        }
    }

    public CloudNoteException() {
        this.thirdErrorCode = 1;
        this.code = 1;
    }

    private final void init() {
        Debug.INSTANCE.m32046e(toString());
    }

    public final int getCode() {
        return this.code;
    }

    @NotNull
    public final String getError() {
        String message;
        Throwable cause = getCause();
        return (cause == null || (message = cause.getMessage()) == null) ? "" : message;
    }

    @Nullable
    public final String getErrorMsg() {
        return this.errorMsg;
    }

    public final void setError(@Nullable String error) {
        this.errorMsg = error;
    }

    @NotNull
    public final CloudNoteException setThirdErrorCode(int thirdErrorCode) {
        this.thirdErrorCode = thirdErrorCode;
        return this;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String toString() {
        return "error:" + this.errorMsg + "  code:" + this.code;
    }

    public CloudNoteException(@Nullable Throwable th) {
        super(th);
        this.thirdErrorCode = 1;
        this.code = 1;
    }

    public CloudNoteException(@Nullable String str) {
        super(str);
        this.thirdErrorCode = 1;
        this.code = 1;
        this.errorMsg = str;
    }

    public CloudNoteException(int i, @Nullable String str) {
        this.thirdErrorCode = 1;
        this.code = i;
        this.errorMsg = str;
        init();
    }

    public CloudNoteException(@Nullable String str, @Nullable Throwable th, int i) {
        super(str, th);
        this.thirdErrorCode = 1;
        this.code = i;
        init();
    }

    public CloudNoteException(@Nullable Throwable th, int i) {
        super(th);
        this.thirdErrorCode = 1;
        this.code = i;
        init();
    }
}
