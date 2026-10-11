package com.onyx.android.sdk.cloudstorage.provider.aliyun.bean;

import com.onyx.android.sdk.base.extension.StringKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u000e\u0010\u000fR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/BaiduYunTokenResponse;", "", "", "a", Constants.STRING_SIG, "getAccess_token", "()Ljava/lang/String;", "setAccess_token", "(Ljava/lang/String;)V", "access_token", "b", "getRefresh_token", "setRefresh_token", "refresh_token", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunTokenResponse {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String access_token;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String refresh_token;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\b\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/BaiduYunTokenResponse$Companion;", "", "()V", "isAccessTokenValid", "", AbstractLogger.RESPONSE, "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/BaiduYunTokenResponse;", "isRefreshTokenValid", "isValid", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isAccessTokenValid(@Nullable BaiduYunTokenResponse response) {
            return response != null && StringKt.isNotBlank(response.getAccess_token());
        }

        public final boolean isRefreshTokenValid(@Nullable BaiduYunTokenResponse response) {
            return response != null && StringKt.isNotBlank(response.getRefresh_token());
        }

        public final boolean isValid(@Nullable BaiduYunTokenResponse response) {
            return isAccessTokenValid(response) && isRefreshTokenValid(response);
        }

        public Companion() {
        }
    }

    @Nullable
    public final String getAccess_token() {
        return this.access_token;
    }

    @Nullable
    public final String getRefresh_token() {
        return this.refresh_token;
    }

    public final void setAccess_token(@Nullable String str) {
        this.access_token = str;
    }

    public final void setRefresh_token(@Nullable String str) {
        this.refresh_token = str;
    }
}
