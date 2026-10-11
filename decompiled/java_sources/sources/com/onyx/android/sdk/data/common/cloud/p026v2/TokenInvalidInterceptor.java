package com.onyx.android.sdk.data.common.cloud.p026v2;

import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Response;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004H\u0002¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v2/TokenInvalidInterceptor;", "Lokhttp3/Interceptor;", "()V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "isTokenInvalid", "", AbstractLogger.RESPONSE, "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TokenInvalidInterceptor implements Interceptor {
    private final boolean isTokenInvalid(Response response) {
        if (response.code() != 401) {
            return false;
        }
        Debug.INSTANCE.m32044e(TokenInvalidInterceptor.class, "Token Invalid", new Object[0]);
        return true;
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Response proceed = chain.proceed(chain.request());
        if (StringUtils.isNotBlank(chain.request().header(Constant.TAG_AUTHORIZATION)) && isTokenInvalid(proceed)) {
            Debug.INSTANCE.m32044e(TokenInvalidInterceptor.class, "token invalid url: " + proceed.request().url(), new Object[0]);
        }
        return proceed;
    }
}
