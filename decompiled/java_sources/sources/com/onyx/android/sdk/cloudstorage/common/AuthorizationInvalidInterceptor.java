package com.onyx.android.sdk.cloudstorage.common;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0004J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0004H\u0002R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000bR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/AuthorizationInvalidInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "", "checkHeaderKey", AbstractLogger.RESPONSE, "a", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "cloudProvider", "", "b", Constants.STRING_SIG, "getHeaderKey", "()Ljava/lang/String;", "setHeaderKey", "(Ljava/lang/String;)V", "headerKey", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class AuthorizationInvalidInterceptor implements Interceptor {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaseCloudStorageProvider cloudProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String headerKey;

    public AuthorizationInvalidInterceptor(@NotNull BaseCloudStorageProvider cloudProvider) {
        Intrinsics.checkNotNullParameter(cloudProvider, "cloudProvider");
        this.cloudProvider = cloudProvider;
        this.headerKey = "Authorization";
    }

    /* renamed from: a */
    public final boolean m32246a(Response response) {
        return response.code() == 401;
    }

    public final boolean checkHeaderKey(@NotNull Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        if (this.headerKey.length() == 0) {
            return true;
        }
        return StringKt.isNotBlank(chain.request().header(this.headerKey));
    }

    @NotNull
    public final String getHeaderKey() {
        return this.headerKey;
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Response proceed = chain.proceed(chain.request());
        if (checkHeaderKey(chain) && m32246a(proceed)) {
            Debug.INSTANCE.m32059w(getClass(), this.cloudProvider.getProviderType() + " auth token invalid url: " + proceed.request().url(), new Object[0]);
            this.cloudProvider.onAuthorizationInvalid();
        }
        return proceed;
    }

    public final void setHeaderKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.headerKey = str;
    }
}
