package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean;

import com.alibaba.fastjson2.JSON;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.http.cookie.ClientCookie;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 \u00142\u00020\u0001:\u0002\u0014\u0015B\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError;", "", "", "a", "I", "getHttpCode", "()I", "setHttpCode", "(I)V", "httpCode", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;", "b", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;", "getError", "()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;", "setError", "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;)V", "error", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "Error", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HuaweiYunError {
    public static final int CODE_FILE_ID_NOT_FOUND = 400;
    public static final int CODE_FOLDER_CONFLICTED = 403;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    public int httpCode;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Error error;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bJ\u0012\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Companion;", "", "()V", "CODE_FILE_ID_NOT_FOUND", "", "CODE_FOLDER_CONFLICTED", "mapToStandardError", "error", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError;", "parse", "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", AbstractLogger.RESPONSE, "Lretrofit2/Response;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int mapToStandardError(@NotNull HuaweiYunError error) {
            Intrinsics.checkNotNullParameter(error, "error");
            return error.getHttpCode();
        }

        @NotNull
        public final CloudNoteException parse(@NotNull Response<?> response) throws Exception {
            Intrinsics.checkNotNullParameter(response, "response");
            HuaweiYunError huaweiYunError = (HuaweiYunError) JSON.parseObject(response.errorBody().string(), HuaweiYunError.class);
            huaweiYunError.setHttpCode(response.code());
            Intrinsics.checkNotNull(huaweiYunError);
            throw new CloudNoteException(mapToStandardError(huaweiYunError), "httpCode:" + huaweiYunError.getHttpCode() + "; error:" + JSONUtils.INSTANCE.toJson(huaweiYunError.getError()));
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u001b\u0010\u001cR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R*\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error;", "", "", "a", "I", "getCode", "()I", "setCode", "(I)V", "code", "", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "description", "", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error$ErrorDetail;", "c", "Ljava/util/List;", "getErrorDetail", "()Ljava/util/List;", "setErrorDetail", "(Ljava/util/List;)V", "errorDetail", Constants.CONSTRUCTOR_NAME, "()V", "ErrorDetail", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class Error {

        /* renamed from: a, reason: from kotlin metadata */
        public int code;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public String description;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public List<ErrorDetail> errorDetail;

        @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunError$Error$ErrorDetail;", "", "", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getDescription", "()Ljava/lang/String;", "setDescription", "(Ljava/lang/String;)V", "description", "b", "getDomain", "setDomain", ClientCookie.DOMAIN_ATTR, "c", "getErrorCode", "setErrorCode", "errorCode", "d", "getReason", "setReason", "reason", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
        /* loaded from: classes7.dex */
        public static final class ErrorDetail {

            /* renamed from: a, reason: from kotlin metadata */
            @Nullable
            public String description;

            /* renamed from: b, reason: from kotlin metadata */
            @Nullable
            public String domain;

            /* renamed from: c, reason: from kotlin metadata */
            @Nullable
            public String errorCode;

            /* renamed from: d, reason: from kotlin metadata */
            @Nullable
            public String reason;

            @Nullable
            public final String getDescription() {
                return this.description;
            }

            @Nullable
            public final String getDomain() {
                return this.domain;
            }

            @Nullable
            public final String getErrorCode() {
                return this.errorCode;
            }

            @Nullable
            public final String getReason() {
                return this.reason;
            }

            public final void setDescription(@Nullable String str) {
                this.description = str;
            }

            public final void setDomain(@Nullable String str) {
                this.domain = str;
            }

            public final void setErrorCode(@Nullable String str) {
                this.errorCode = str;
            }

            public final void setReason(@Nullable String str) {
                this.reason = str;
            }
        }

        public final int getCode() {
            return this.code;
        }

        @Nullable
        public final String getDescription() {
            return this.description;
        }

        @Nullable
        public final List<ErrorDetail> getErrorDetail() {
            return this.errorDetail;
        }

        public final void setCode(int i) {
            this.code = i;
        }

        public final void setDescription(@Nullable String str) {
            this.description = str;
        }

        public final void setErrorDetail(@Nullable List<ErrorDetail> list) {
            this.errorDetail = list;
        }
    }

    @Nullable
    public final Error getError() {
        return this.error;
    }

    public final int getHttpCode() {
        return this.httpCode;
    }

    public final void setError(@Nullable Error error) {
        this.error = error;
    }

    public final void setHttpCode(int i) {
        this.httpCode = i;
    }
}
