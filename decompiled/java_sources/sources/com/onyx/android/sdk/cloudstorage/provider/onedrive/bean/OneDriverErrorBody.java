package com.onyx.android.sdk.cloudstorage.provider.onedrive.bean;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.utils.JSONUtils;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000 \t2\u00020\u0001:\u0003\t\n\u000bB\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody;", "Ljava/io/Serializable;", "()V", "error", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;", "getError", "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;", "setError", "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;)V", "Companion", "CompatibleError", "Error", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class OneDriverErrorBody implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String NOT_OPERATION_SUPPORT = "notSupported";

    @Nullable
    private Error error;

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ\u0012\u0010\f\u001a\u00020\r2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Companion;", "", "()V", "NOT_OPERATION_SUPPORT", "", "isOperationNotSupportError", "", AbstractLogger.RESPONSE, "Lretrofit2/Response;", "mapToStandardError", "", "errorCode", "parseError", "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isOperationNotSupportError(@NotNull Response<?> response) throws Exception {
            Intrinsics.checkNotNullParameter(response, "response");
            if (response.code() != 400) {
                return false;
            }
            OneDriverErrorBody oneDriverErrorBody = (OneDriverErrorBody) JSONUtils.INSTANCE.parseObject(response.errorBody().string(), OneDriverErrorBody.class);
            if ((oneDriverErrorBody != null ? oneDriverErrorBody.getError() : null) == null) {
                return false;
            }
            Error error = oneDriverErrorBody.getError();
            Intrinsics.checkNotNull(error);
            return StringKt.safelyEqualsIgnoreCase(OneDriverErrorBody.NOT_OPERATION_SUPPORT, error.getCode());
        }

        public final int mapToStandardError(int errorCode) {
            if (errorCode == 507) {
                return 1002;
            }
            return errorCode;
        }

        @NotNull
        public final CloudNoteException parseError(@NotNull Response<?> response) throws Exception {
            Intrinsics.checkNotNullParameter(response, "response");
            String str = "";
            try {
                str = response.errorBody().string();
                Error error = ((OneDriverErrorBody) JSON.parseObject(str, OneDriverErrorBody.class)).getError();
                int mapToStandardError = mapToStandardError(response.code());
                StringBuilder sb = new StringBuilder();
                sb.append(error != null ? error.getCode() : null);
                sb.append("\r\n");
                sb.append(error != null ? error.getMessage() : null);
                throw new CloudNoteException(mapToStandardError, sb.toString());
            } catch (Exception e) {
                if (!(e instanceof JSONException)) {
                    if (e instanceof CloudNoteException) {
                        throw e;
                    }
                    throw new CloudNoteException(mapToStandardError(response.code()), e.getMessage());
                }
                CompatibleError compatibleError = (CompatibleError) JSON.parseObject(str, CompatibleError.class);
                throw new CloudNoteException(mapToStandardError(response.code()), compatibleError.getError() + "\r\n" + compatibleError.getErrorDescription()).setThirdErrorCode((compatibleError.getErrorCodes().length == 0) ^ true ? compatibleError.getErrorCodes()[0] : 1);
            }
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$CompatibleError;", "Ljava/io/Serializable;", "()V", "error", "", "getError", "()Ljava/lang/String;", "setError", "(Ljava/lang/String;)V", "errorCodes", "", "getErrorCodes", "()[I", "setErrorCodes", "([I)V", "errorDescription", "getErrorDescription", "setErrorDescription", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class CompatibleError implements Serializable {

        @Nullable
        private String error;

        @JSONField(alternateNames = {OneDriverConstants.ERROR_CODES})
        public int[] errorCodes;

        @JSONField(alternateNames = {"error_description"})
        @Nullable
        private String errorDescription;

        @Nullable
        public final String getError() {
            return this.error;
        }

        @NotNull
        public final int[] getErrorCodes() {
            int[] iArr = this.errorCodes;
            if (iArr != null) {
                return iArr;
            }
            Intrinsics.throwUninitializedPropertyAccessException("errorCodes");
            return null;
        }

        @Nullable
        public final String getErrorDescription() {
            return this.errorDescription;
        }

        public final void setError(@Nullable String str) {
            this.error = str;
        }

        public final void setErrorCodes(@NotNull int[] iArr) {
            Intrinsics.checkNotNullParameter(iArr, "<set-?>");
            this.errorCodes = iArr;
        }

        public final void setErrorDescription(@Nullable String str) {
            this.errorDescription = str;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverErrorBody$Error;", "Ljava/io/Serializable;", "()V", "code", "", "getCode", "()Ljava/lang/String;", "setCode", "(Ljava/lang/String;)V", "message", "getMessage", "setMessage", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Error implements Serializable {

        @Nullable
        private String code;

        @Nullable
        private String message;

        @Nullable
        public final String getCode() {
            return this.code;
        }

        @Nullable
        public final String getMessage() {
            return this.message;
        }

        public final void setCode(@Nullable String str) {
            this.code = str;
        }

        public final void setMessage(@Nullable String str) {
            this.message = str;
        }
    }

    @Nullable
    public final Error getError() {
        return this.error;
    }

    public final void setError(@Nullable Error error) {
        this.error = error;
    }
}
