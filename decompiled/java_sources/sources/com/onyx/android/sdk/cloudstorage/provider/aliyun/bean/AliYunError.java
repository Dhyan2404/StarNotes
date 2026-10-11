package com.onyx.android.sdk.cloudstorage.provider.aliyun.bean;

import com.alibaba.fastjson2.JSON;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;", "", "", "a", "I", "getHttpCode", "()I", "setHttpCode", "(I)V", "httpCode", "", "b", Constants.STRING_SIG, "getCode", "()Ljava/lang/String;", "setCode", "(Ljava/lang/String;)V", "code", "c", "getMessage", "setMessage", "message", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunError {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: d */
    @NotNull
    public static String f41213d = "A403JE";

    /* renamed from: e */
    public static int f41214e = 400;

    /* renamed from: a, reason: from kotlin metadata */
    public int httpCode;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String code;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String message;

    @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\nJ\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014J\u0012\u0010\u0015\u001a\u00020\u00162\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0018R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError$Companion;", "", "()V", "CODE_FILE_ID_NOT_FOUND", "", "getCODE_FILE_ID_NOT_FOUND", "()I", "setCODE_FILE_ID_NOT_FOUND", "(I)V", "CODE_TOKEN_EXPIRED", "", "getCODE_TOKEN_EXPIRED", "()Ljava/lang/String;", "setCODE_TOKEN_EXPIRED", "(Ljava/lang/String;)V", "isTokenExpired", "", "message", "mapToStandardError", "error", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunError;", "parse", "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;", AbstractLogger.RESPONSE, "Lretrofit2/Response;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getCODE_FILE_ID_NOT_FOUND() {
            return AliYunError.f41214e;
        }

        @NotNull
        public final String getCODE_TOKEN_EXPIRED() {
            return AliYunError.f41213d;
        }

        public final boolean isTokenExpired(@NotNull String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            AliYunError aliYunError = (AliYunError) JSONUtils.INSTANCE.parseObject(message, AliYunError.class);
            if (aliYunError != null) {
                return StringUtils.equals(aliYunError.getCode(), getCODE_TOKEN_EXPIRED());
            }
            Debug.INSTANCE.m32035d(AliYunError.class, "can't parse to aliyun drive error:" + message, new Object[0]);
            return false;
        }

        public final int mapToStandardError(@NotNull AliYunError error) {
            Intrinsics.checkNotNullParameter(error, "error");
            return error.getHttpCode();
        }

        @NotNull
        public final CloudNoteException parse(@NotNull Response<?> response) throws Exception {
            Intrinsics.checkNotNullParameter(response, "response");
            AliYunError aliYunError = (AliYunError) JSON.parseObject(response.errorBody().string(), AliYunError.class);
            aliYunError.setHttpCode(response.code());
            Intrinsics.checkNotNull(aliYunError);
            throw new CloudNoteException(mapToStandardError(aliYunError), aliYunError.getHttpCode() + ' ' + aliYunError.getCode() + ' ' + aliYunError.getMessage());
        }

        public final void setCODE_FILE_ID_NOT_FOUND(int i) {
            AliYunError.f41214e = i;
        }

        public final void setCODE_TOKEN_EXPIRED(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            AliYunError.f41213d = str;
        }

        public Companion() {
        }
    }

    @Nullable
    public final String getCode() {
        return this.code;
    }

    public final int getHttpCode() {
        return this.httpCode;
    }

    @Nullable
    public final String getMessage() {
        return this.message;
    }

    public final void setCode(@Nullable String str) {
        this.code = str;
    }

    public final void setHttpCode(int i) {
        this.httpCode = i;
    }

    public final void setMessage(@Nullable String str) {
        this.message = str;
    }
}
