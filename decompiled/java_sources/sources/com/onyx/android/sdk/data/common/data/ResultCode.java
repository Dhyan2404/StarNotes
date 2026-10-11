package com.onyx.android.sdk.data.common.data;

import androidx.core.app.NotificationCompat;
import androidx.core.provider.FontsContractCompat;
import com.alibaba.fastjson2.annotation.JSONCreator;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;
import retrofit2.Response;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\b\u0016\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\b\u0017¢\u0006\u0002\u0010\u0002B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u0014\u001a\u00020\u0006H\u0016R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\f\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000eR \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/ResultCode;", "Ljava/io/Serializable;", "()V", "code", "", "message", "", "(ILjava/lang/String;)V", "getCode", "()I", "setCode", "(I)V", "isSuccessful", "", Constants.BOOLEAN_VALUE_SIG, "isTokenInvalid", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "toString", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class ResultCode implements Serializable {
    public static final int CLOUD_SPACE_NOT_ENOUGH = 42010456;

    @NotNull
    public static final String CODE = "code";
    public static final int CODE_FAIL = -1;
    public static final int CODE_SUCCESS = 0;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int DEVICE_NOT_FOUND = 2000014;
    public static final int EMAIL_ADDRESS_ERROR = 42010089;

    @NotNull
    public static final String MESSAGE = "message";
    public static final int SERVER_ERROR = 50000001;
    public static final int SESSION_TOKEN_INVALID = 42010011;
    public static final int SESSION_TOKEN_MISSING = 42010010;
    public static final int VERIFICATION_CODE_EXPIRED = 102002;
    public static final int VERIFICATION_CODE_INVALIDED = 102001;

    @JSONField(alternateNames = {FontsContractCompat.Columns.RESULT_CODE, "ret"})
    private int code;

    @JSONField(alternateNames = {NotificationCompat.CATEGORY_MESSAGE})
    @Nullable
    private String message;

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004J\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004J\u0012\u0010\u0017\u001a\u00020\u00182\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;", "", "()V", "CLOUD_SPACE_NOT_ENOUGH", "", "CODE", "", "CODE_FAIL", "CODE_SUCCESS", "DEVICE_NOT_FOUND", "EMAIL_ADDRESS_ERROR", SyncConstant.MESSAGE_DB_NAME, "SERVER_ERROR", "SESSION_TOKEN_INVALID", "SESSION_TOKEN_MISSING", "VERIFICATION_CODE_EXPIRED", "VERIFICATION_CODE_INVALIDED", "isDeviceInvalid", "", "code", "isServerError", "isSuccessful", "isTokenInvalid", "parseResponse", "Lcom/onyx/android/sdk/data/common/data/ResultCode;", AbstractLogger.RESPONSE, "Lretrofit2/Response;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isDeviceInvalid(int code) {
            return code == 2000014;
        }

        public final boolean isServerError(int code) {
            return code == 50000001;
        }

        public final boolean isSuccessful(int code) {
            return code == 0;
        }

        public final boolean isTokenInvalid(int code) {
            return code == 42010011 || code == 42010010;
        }

        @NotNull
        public final ResultCode parseResponse(@NotNull Response<?> response) {
            String str;
            Intrinsics.checkNotNullParameter(response, "response");
            try {
                str = response.errorBody().string();
            } catch (IOException e) {
                e.printStackTrace();
                str = null;
            }
            ResultCode resultCode = (ResultCode) JSONUtils.INSTANCE.parseObject(str, ResultCode.class);
            if (resultCode != null && (resultCode.getCode() != 0 || !StringUtils.isEmpty(resultCode.getMessage()))) {
                return resultCode;
            }
            ResultCode resultCode2 = new ResultCode(response.code(), str);
            Debug.INSTANCE.m32059w(ResultCode.class, "parseResponse resultCode.code=" + resultCode2.getCode(), new Object[0]);
            return resultCode2;
        }

        private Companion() {
        }
    }

    @JSONCreator
    public ResultCode() {
    }

    public final int getCode() {
        return this.code;
    }

    @Nullable
    public final String getMessage() {
        return this.message;
    }

    public final boolean isSuccessful() {
        return INSTANCE.isSuccessful(this.code);
    }

    public final boolean isTokenInvalid() {
        return INSTANCE.isTokenInvalid(this.code);
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setMessage(@Nullable String str) {
        this.message = str;
    }

    @NotNull
    public String toString() {
        return "ResultCode{code=" + this.code + ", message=" + this.message + '}';
    }

    public ResultCode(int i, @Nullable String str) {
        this.code = i;
        this.message = str;
    }
}
