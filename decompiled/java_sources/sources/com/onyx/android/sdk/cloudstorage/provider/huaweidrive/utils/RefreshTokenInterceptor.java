package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.utils;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/RefreshTokenInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", CouchFieldKey.KEY_PROVIDER, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RefreshTokenInterceptor implements Interceptor {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider provider;

    public RefreshTokenInterceptor(@NotNull HuaweiYunProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = provider;
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Request refreshToken;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Response proceed = chain.proceed(chain.request());
        if (proceed.code() != 401 || (refreshToken = RefreshTokenAuthenticator.INSTANCE.refreshToken(this.provider, proceed, null)) == null) {
            return proceed;
        }
        Debug.INSTANCE.m32035d(RefreshTokenInterceptor.class, "header authorization:" + refreshToken.header("Authorization"), new Object[0]);
        return chain.proceed(refreshToken);
    }
}
