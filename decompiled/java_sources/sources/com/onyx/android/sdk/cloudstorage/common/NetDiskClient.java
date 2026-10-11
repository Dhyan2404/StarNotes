package com.onyx.android.sdk.cloudstorage.common;

import com.couchbase.lite.internal.core.C4Replicator;
import com.onyx.android.sdk.cloudstorage.CloudStorageServiceFactory;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.cloud.p025v1.FastJsonConverterFactory;
import com.onyx.android.sdk.data.utils.HttpUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Authenticator;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J\u0016\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bJ#\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u000b¢\u0006\u0004\b\n\u0010\rJ\u0016\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0004J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0015H\u0002R \u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u001aR \u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00150\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u001a¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/NetDiskClient;", "", "", "baseUrl", "tokenKey", "token", "Lretrofit2/Retrofit;", "addRetrofitTokenHeader", "Lokhttp3/Interceptor;", "interceptor", "addRetrofitInterceptor", "", "interceptors", "(Ljava/lang/String;[Lokhttp3/Interceptor;)Lretrofit2/Retrofit;", "Lokhttp3/Authenticator;", C4Replicator.REPLICATOR_OPTION_AUTHENTICATION, "", "addAuthenticator", "getRetrofit", "Lretrofit2/Retrofit$Builder;", "c", "Lokhttp3/OkHttpClient;", "b", Constant.CLIENT, "a", "Ljava/util/concurrent/ConcurrentHashMap;", "Ljava/util/concurrent/ConcurrentHashMap;", "retrofitMap", "clientMap", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class NetDiskClient {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ConcurrentHashMap<String, Retrofit> retrofitMap = new ConcurrentHashMap<>();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final ConcurrentHashMap<String, OkHttpClient> clientMap = new ConcurrentHashMap<>();

    /* renamed from: a */
    public final void m32247a(String baseUrl, OkHttpClient client) {
        Retrofit build = m32249c(baseUrl).client(client).build();
        ConcurrentHashMap<String, Retrofit> concurrentHashMap = this.retrofitMap;
        Intrinsics.checkNotNull(build);
        concurrentHashMap.put(baseUrl, build);
        this.clientMap.put(baseUrl, client);
    }

    public final void addAuthenticator(@NotNull String baseUrl, @NotNull Authenticator auth) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Intrinsics.checkNotNullParameter(auth, "auth");
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        if (!this.clientMap.containsKey(baseUrl)) {
            builder = HttpUtils.INSTANCE.createOkHttpBuilder();
        }
        CloudStorageServiceFactory.INSTANCE.restoreBuilderFromClient(this.clientMap.get(baseUrl), builder);
        m32247a(baseUrl, builder.authenticator(auth).build());
    }

    @NotNull
    public final Retrofit addRetrofitInterceptor(@NotNull String baseUrl, @NotNull Interceptor interceptor) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Intrinsics.checkNotNullParameter(interceptor, "interceptor");
        return addRetrofitInterceptor(baseUrl, new Interceptor[]{interceptor});
    }

    @NotNull
    public final Retrofit addRetrofitTokenHeader(@NotNull String baseUrl, @NotNull String tokenKey, @NotNull String token) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Intrinsics.checkNotNullParameter(tokenKey, "tokenKey");
        Intrinsics.checkNotNullParameter(token, "token");
        return addRetrofitInterceptor(baseUrl, new TokenHeaderInterceptor(tokenKey, token));
    }

    /* renamed from: b */
    public final OkHttpClient m32248b(String baseUrl) {
        if (this.clientMap.containsKey(baseUrl)) {
            OkHttpClient okHttpClient = this.clientMap.get(baseUrl);
            Intrinsics.checkNotNull(okHttpClient);
            return okHttpClient;
        }
        OkHttpClient build = HttpUtils.INSTANCE.createOkHttpBuilder().build();
        this.clientMap.put(baseUrl, build);
        return build;
    }

    /* renamed from: c */
    public final Retrofit.Builder m32249c(String baseUrl) {
        Retrofit.Builder addConverterFactory = new Retrofit.Builder().baseUrl(baseUrl).client(m32248b(baseUrl)).addConverterFactory(new StringConverterFactory()).addConverterFactory(FastJsonConverterFactory.INSTANCE.create());
        Intrinsics.checkNotNullExpressionValue(addConverterFactory, "addConverterFactory(...)");
        return addConverterFactory;
    }

    @NotNull
    public final Retrofit getRetrofit(@NotNull String baseUrl) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        if (!this.retrofitMap.containsKey(baseUrl)) {
            Retrofit build = m32249c(baseUrl).build();
            ConcurrentHashMap<String, Retrofit> concurrentHashMap = this.retrofitMap;
            Intrinsics.checkNotNull(build);
            concurrentHashMap.put(baseUrl, build);
        }
        Retrofit retrofit = this.retrofitMap.get(baseUrl);
        Intrinsics.checkNotNull(retrofit);
        return retrofit;
    }

    @NotNull
    public final Retrofit addRetrofitInterceptor(@NotNull String baseUrl, @NotNull Interceptor[] interceptors) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        m32247a(baseUrl, CloudStorageServiceFactory.INSTANCE.resetInterceptors(this.clientMap.get(baseUrl), interceptors));
        Retrofit retrofit = this.retrofitMap.get(baseUrl);
        Intrinsics.checkNotNull(retrofit);
        return retrofit;
    }
}
