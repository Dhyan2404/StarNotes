package com.onyx.android.sdk.cloudstorage.provider.aliyun.utils;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunError;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/RefreshTokenInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "Lokhttp3/ResponseBody;", "responseBody", "", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", CouchFieldKey.KEY_PROVIDER, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RefreshTokenInterceptor implements Interceptor {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider provider;

    public RefreshTokenInterceptor(@NotNull AliYunProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = provider;
    }

    /* renamed from: a */
    public final boolean m32368a(ResponseBody responseBody) throws IOException {
        if (responseBody != null) {
            return AliYunError.INSTANCE.isTokenExpired(responseBody.string());
        }
        return false;
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Request refreshToken;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Response proceed = chain.proceed(chain.request());
        if (proceed.code() != 403 || !m32368a(proceed.body()) || (refreshToken = RefreshTokenAuthenticator.INSTANCE.refreshToken(this.provider, proceed, null)) == null) {
            return proceed;
        }
        Debug.INSTANCE.m32035d(RefreshTokenInterceptor.class, "header authorization:" + refreshToken.header("Authorization"), new Object[0]);
        return chain.proceed(refreshToken);
    }
}
