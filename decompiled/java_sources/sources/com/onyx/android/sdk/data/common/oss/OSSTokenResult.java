package com.onyx.android.sdk.data.common.oss;

import com.onyx.android.sdk.data.common.data.ResultCode;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \t2\u00020\u0001:\u0002\t\nB\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;", "Lcom/onyx/android/sdk/data/common/data/ResultCode;", "()V", "data", "Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;", "getData", "()Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;", "setData", "(Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;)V", "Companion", "OSSToken", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OSSTokenResult extends ResultCode {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private OSSToken data;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$Companion;", "", "()V", "hasData", "", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult;", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean hasData(@Nullable OSSTokenResult result) {
            return (result == null || result.getCode() != 0 || result.getData() == null) ? false : true;
        }

        private Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/oss/OSSTokenResult$OSSToken;", "Ljava/io/Serializable;", "()V", "AccessKeyId", "", "getAccessKeyId", "()Ljava/lang/String;", "setAccessKeyId", "(Ljava/lang/String;)V", "AccessKeySecret", "getAccessKeySecret", "setAccessKeySecret", "Expiration", "getExpiration", "setExpiration", "SecurityToken", "getSecurityToken", "setSecurityToken", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class OSSToken implements Serializable {

        @Nullable
        private String AccessKeyId;

        @Nullable
        private String AccessKeySecret;

        @Nullable
        private String Expiration;

        @Nullable
        private String SecurityToken;

        @Nullable
        public final String getAccessKeyId() {
            return this.AccessKeyId;
        }

        @Nullable
        public final String getAccessKeySecret() {
            return this.AccessKeySecret;
        }

        @Nullable
        public final String getExpiration() {
            return this.Expiration;
        }

        @Nullable
        public final String getSecurityToken() {
            return this.SecurityToken;
        }

        public final void setAccessKeyId(@Nullable String str) {
            this.AccessKeyId = str;
        }

        public final void setAccessKeySecret(@Nullable String str) {
            this.AccessKeySecret = str;
        }

        public final void setExpiration(@Nullable String str) {
            this.Expiration = str;
        }

        public final void setSecurityToken(@Nullable String str) {
            this.SecurityToken = str;
        }
    }

    @Nullable
    public final OSSToken getData() {
        return this.data;
    }

    public final void setData(@Nullable OSSToken oSSToken) {
        this.data = oSSToken;
    }
}
