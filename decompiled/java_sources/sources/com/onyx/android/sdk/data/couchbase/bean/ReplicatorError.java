package com.onyx.android.sdk.data.couchbase.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\b\u0010\u0012\u001a\u00020\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;", "", "()V", "code", "", "getCode", "()I", "setCode", "(I)V", "message", "", "getMessage", "()Ljava/lang/String;", "setMessage", "(Ljava/lang/String;)V", "isNeedRetryError", "", "isTokenInvalid", "toString", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ReplicatorError {
    public static final int BAT_GATEWAY = 10502;
    public static final int CONNECTION_TIME_COUNT = 5003;
    public static final int CONNECT_SYNC_SERVICE_ERROR = 110;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int EOF_EXCEPTION = 5022;

    @NotNull
    private static final String FILTER_MESSAGE_START_STR = "(CouchbaseLite Android";
    public static final int HTTP_SERVICE_UNAVAILABLE_ERROR = 10503;
    public static final int INTERNAL_SERVER_ERROR = 10500;
    public static final int PREPARE_ERROR = 100;
    public static final int REMOTE_ERROR = 26;
    public static final int RESOLVE_HOST = 5002;
    public static final int SSL_HANDSHAKE_EXCEPTION = 5006;
    public static final int TOKEN_INVALID = 10401;
    private int code;

    @Nullable
    private String message = "";

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError$Companion;", "", "()V", "BAT_GATEWAY", "", "CONNECTION_TIME_COUNT", "CONNECT_SYNC_SERVICE_ERROR", "EOF_EXCEPTION", "FILTER_MESSAGE_START_STR", "", "HTTP_SERVICE_UNAVAILABLE_ERROR", "INTERNAL_SERVER_ERROR", "PREPARE_ERROR", "REMOTE_ERROR", "RESOLVE_HOST", "SSL_HANDSHAKE_EXCEPTION", "TOKEN_INVALID", "isNetworkError", "", "type", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isNetworkError(int type) {
            return type == 5006 || type == 5003 || type == 5002;
        }

        private Companion() {
        }
    }

    public final int getCode() {
        return this.code;
    }

    @Nullable
    public final String getMessage() {
        return this.message;
    }

    public final boolean isNeedRetryError() {
        int i = this.code;
        return i == 10500 || i == 10503 || i == 26;
    }

    public final boolean isTokenInvalid() {
        return this.code == 10401;
    }

    /* renamed from: setCode, reason: collision with other method in class */
    public final void m72256setCode(int i) {
        this.code = i;
    }

    /* renamed from: setMessage, reason: collision with other method in class */
    public final void m72257setMessage(@Nullable String str) {
        this.message = str;
    }

    @NotNull
    public String toString() {
        return "CouchError{message='" + this.message + "', code=" + this.code + '}';
    }

    @NotNull
    public final ReplicatorError setCode(int code) {
        this.code = code;
        return this;
    }

    @NotNull
    public final ReplicatorError setMessage(@Nullable String message) {
        this.message = message;
        return this;
    }
}
