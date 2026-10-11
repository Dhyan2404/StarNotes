package com.onyx.android.sdk.cloudstorage.provider.baiduyun.utils;

import com.onyx.android.sdk.cloudstorage.common.utils.InterceptorUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunFileResponseBody;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/utils/RefreshTokenInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", AbstractLogger.RESPONSE, "", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", CouchFieldKey.KEY_PROVIDER, "b", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RefreshTokenInterceptor implements Interceptor {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider provider;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/utils/RefreshTokenInterceptor$Companion;", "", "()V", "updateTokenParam", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "accessToken", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Response updateTokenParam(@NotNull Interceptor.Chain chain, @Nullable String accessToken) throws IOException {
            Intrinsics.checkNotNullParameter(chain, "chain");
            if (accessToken == null || accessToken.length() == 0) {
                return chain.proceed(chain.request());
            }
            Request request = chain.request();
            return chain.proceed(request.newBuilder().url(request.url().newBuilder().setQueryParameter("access_token", accessToken).build()).build());
        }

        public Companion() {
        }
    }

    public RefreshTokenInterceptor(@NotNull BaiduYunProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = provider;
    }

    /* renamed from: a */
    public final boolean m32419a(Response response) throws IOException {
        return BaiduYunFileResponseBody.INSTANCE.isTokenExpired(InterceptorUtils.INSTANCE.getPlainTextResponseBodyString(response));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0014 A[Catch: Exception -> 0x0061, TRY_LEAVE, TryCatch #0 {Exception -> 0x0061, blocks: (B:3:0x0001, B:5:0x0008, B:10:0x0014, B:12:0x0018, B:14:0x003f, B:17:0x004d, B:18:0x0056, B:19:0x0057, B:20:0x0060), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0057 A[Catch: Exception -> 0x0061, TryCatch #0 {Exception -> 0x0061, blocks: (B:3:0x0001, B:5:0x0008, B:10:0x0014, B:12:0x0018, B:14:0x003f, B:17:0x004d, B:18:0x0056, B:19:0x0057, B:20:0x0060), top: B:2:0x0001 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m32420b(com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider r7) {
        /*
            r6 = this;
            r6 = 0
            java.lang.String r0 = r7.getRefreshToken()     // Catch: java.lang.Exception -> L61
            r1 = 1
            if (r0 == 0) goto L11
            int r2 = r0.length()     // Catch: java.lang.Exception -> L61
            if (r2 != 0) goto Lf
            goto L11
        Lf:
            r2 = r6
            goto L12
        L11:
            r2 = r1
        L12:
            if (r2 != 0) goto L57
            com.onyx.android.sdk.base.utils.Debug r2 = com.onyx.android.sdk.base.utils.Debug.INSTANCE     // Catch: java.lang.Exception -> L61
            java.lang.Class<com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider> r3 = com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider.class
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L61
            r4.<init>()     // Catch: java.lang.Exception -> L61
            java.lang.String r5 = "refresh token:"
            r4.append(r5)     // Catch: java.lang.Exception -> L61
            r4.append(r0)     // Catch: java.lang.Exception -> L61
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L61
            java.lang.Object[] r5 = new java.lang.Object[r6]     // Catch: java.lang.Exception -> L61
            r2.m32035d(r3, r4, r5)     // Catch: java.lang.Exception -> L61
            com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunRefreshTokenRequest r4 = new com.onyx.android.sdk.cloudstorage.provider.baiduyun.request.BaiduYunRefreshTokenRequest     // Catch: java.lang.Exception -> L61
            r4.<init>(r7, r0)     // Catch: java.lang.Exception -> L61
            com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.BaiduYunTokenResponse r0 = r4.execute()     // Catch: java.lang.Exception -> L61
            com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.BaiduYunTokenResponse$Companion r4 = com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.BaiduYunTokenResponse.INSTANCE     // Catch: java.lang.Exception -> L61
            boolean r4 = r4.isValid(r0)     // Catch: java.lang.Exception -> L61
            if (r4 == 0) goto L4d
            r7.setDriveToken(r0)     // Catch: java.lang.Exception -> L61
            r7.saveCredential(r0)     // Catch: java.lang.Exception -> L61
            java.lang.String r0 = "baidu yun refresh token success"
            java.lang.Object[] r4 = new java.lang.Object[r6]     // Catch: java.lang.Exception -> L61
            r2.m32052i(r3, r0, r4)     // Catch: java.lang.Exception -> L61
            return r1
        L4d:
            com.onyx.android.sdk.cloudstorage.common.exception.TokenExpiredException r0 = new com.onyx.android.sdk.cloudstorage.common.exception.TokenExpiredException     // Catch: java.lang.Exception -> L61
            com.onyx.android.sdk.data.config.cloudnote.Provider r1 = r7.getProviderType()     // Catch: java.lang.Exception -> L61
            r0.<init>(r1)     // Catch: java.lang.Exception -> L61
            throw r0     // Catch: java.lang.Exception -> L61
        L57:
            com.onyx.android.sdk.cloudstorage.common.exception.TokenExpiredException r0 = new com.onyx.android.sdk.cloudstorage.common.exception.TokenExpiredException     // Catch: java.lang.Exception -> L61
            com.onyx.android.sdk.data.config.cloudnote.Provider r1 = r7.getProviderType()     // Catch: java.lang.Exception -> L61
            r0.<init>(r1)     // Catch: java.lang.Exception -> L61
            throw r0     // Catch: java.lang.Exception -> L61
        L61:
            r0 = move-exception
            com.onyx.android.sdk.data.common.exception.CloudNoteException$Companion r1 = com.onyx.android.sdk.data.common.exception.CloudNoteException.INSTANCE
            boolean r1 = r1.isTokenInvalid(r0)
            if (r1 == 0) goto L6d
            r7.onProviderAuthFail()
        L6d:
            com.onyx.android.sdk.base.utils.Debug r1 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.Class r7 = r7.getClass()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            com.onyx.android.sdk.data.config.cloudnote.Provider r3 = com.onyx.android.sdk.data.config.cloudnote.Provider.BAIDU_YUN
            java.lang.String r3 = r3.getTitle()
            r2.append(r3)
            java.lang.String r3 = " refresh authentication"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.m32043e(r7, r2, r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.cloudstorage.provider.baiduyun.utils.RefreshTokenInterceptor.m32420b(com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider):boolean");
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Response proceed = chain.proceed(chain.request());
        if (!m32419a(proceed) || !m32420b(this.provider)) {
            return proceed;
        }
        proceed.close();
        return INSTANCE.updateTokenParam(chain, this.provider.getAccessToken());
    }
}
