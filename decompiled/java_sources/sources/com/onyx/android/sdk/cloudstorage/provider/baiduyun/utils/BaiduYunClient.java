package com.onyx.android.sdk.cloudstorage.provider.baiduyun.utils;

import androidx.annotation.WorkerThread;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.BaiduYunTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunService;
import com.onyx.android.sdk.cloudstorage.utils.CloudSyncException;
import com.onyx.android.sdk.data.common.cloud.p025v1.FastJsonConverterFactory;
import com.onyx.android.sdk.data.common.cloud.service.ServiceCreateArgs;
import com.onyx.android.sdk.data.common.exception.ContentException;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.HttpUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.Retrofit;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J.\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u00062\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u0007H\u0007J\u0006\u0010\f\u001a\u00020\u0004J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000f\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/utils/BaiduYunClient;", "", "", "updateTokenHeader", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunService;", "getApiService", "T", "Lkotlin/Function1;", "Lretrofit2/Call;", Constants.EXSLT_ELEMNAME_FUNCTION_STRING, "Lretrofit2/Response;", "executeCall", "getBaiduYunUploadService", "b", "c", "d", "Lokhttp3/OkHttpClient$Builder;", "builder", "a", "e", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;", CouchFieldKey.KEY_PROVIDER, "Lretrofit2/Retrofit;", "Lretrofit2/Retrofit;", "retrofit", "uploadRetrofit", "Lokhttp3/OkHttpClient;", "Lokhttp3/OkHttpClient;", "httpClient", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BaiduYunClient {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaiduYunProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    public Retrofit retrofit;

    /* renamed from: c, reason: from kotlin metadata */
    public Retrofit uploadRetrofit;

    /* renamed from: d, reason: from kotlin metadata */
    public OkHttpClient httpClient;

    public BaiduYunClient(@NotNull BaiduYunProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = provider;
        m32415b();
    }

    /* renamed from: a */
    public final void m32414a(OkHttpClient.Builder builder) {
        BaiduYunTokenResponse tokenResponse = this.provider.getTokenResponse();
        if (BaiduYunTokenResponse.INSTANCE.isAccessTokenValid(tokenResponse)) {
            builder.addInterceptor(new TokenQueryParamInterceptor(tokenResponse != null ? tokenResponse.getAccess_token() : null));
        }
    }

    /* renamed from: b */
    public final void m32415b() {
        m32416c();
        m32417d();
        m32418e();
    }

    /* renamed from: c */
    public final void m32416c() {
        HttpUtils httpUtils = HttpUtils.INSTANCE;
        OkHttpClient.Builder addInterceptor = httpUtils.createOkHttpBuilder().addInterceptor(new RefreshTokenInterceptor(this.provider));
        m32414a(addInterceptor);
        httpUtils.addLogInterceptor(addInterceptor);
        this.httpClient = addInterceptor.build();
    }

    /* renamed from: d */
    public final void m32417d() {
        Retrofit.Builder baseUrl = new Retrofit.Builder().baseUrl(CloudStorageConstants.BAIDU_YUN_PAN_URL);
        OkHttpClient okHttpClient = this.httpClient;
        if (okHttpClient == null) {
            Intrinsics.throwUninitializedPropertyAccessException("httpClient");
            okHttpClient = null;
        }
        Retrofit build = baseUrl.client(okHttpClient).addConverterFactory(FastJsonConverterFactory.INSTANCE.create()).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        this.retrofit = build;
    }

    /* renamed from: e */
    public final void m32418e() {
        ServiceCreateArgs thirdPartyServiceCreateArgs = ServiceCreateArgs.INSTANCE.thirdPartyServiceCreateArgs("");
        thirdPartyServiceCreateArgs.setOkHttpWriteTimeoutSecond(60);
        HttpUtils httpUtils = HttpUtils.INSTANCE;
        OkHttpClient.Builder createOkHttpBuilder = httpUtils.createOkHttpBuilder(thirdPartyServiceCreateArgs);
        httpUtils.addLogInterceptor(createOkHttpBuilder);
        Retrofit build = new Retrofit.Builder().baseUrl(CloudStorageConstants.BAIDU_YUN_PCS_URL).client(createOkHttpBuilder.build()).addConverterFactory(FastJsonConverterFactory.INSTANCE.create()).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        this.uploadRetrofit = build;
    }

    @WorkerThread
    @NotNull
    public final <T> Response<T> executeCall(@NotNull Function1<? super BaiduYunService, ? extends Call<T>> function) throws Exception {
        Intrinsics.checkNotNullParameter(function, "function");
        try {
            Response<T> execute = function.invoke(getApiService()).execute();
            Intrinsics.checkNotNullExpressionValue(execute, "execute(...)");
            if (execute.isSuccessful()) {
                return execute;
            }
            throw new Exception("code: " + execute.code() + " message: " + execute.message() + ' ' + execute.raw().message());
        } catch (Exception e) {
            if (CloudSyncException.INSTANCE.isCloudSyncException(e)) {
                throw e;
            }
            throw new ContentException.NetworkException(e);
        }
    }

    @NotNull
    public final BaiduYunService getApiService() {
        Retrofit retrofit = this.retrofit;
        if (retrofit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("retrofit");
            retrofit = null;
        }
        Object create = retrofit.create(BaiduYunService.class);
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return (BaiduYunService) create;
    }

    @NotNull
    public final BaiduYunService getBaiduYunUploadService() {
        Retrofit retrofit = this.uploadRetrofit;
        if (retrofit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("uploadRetrofit");
            retrofit = null;
        }
        Object create = retrofit.create(BaiduYunService.class);
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return (BaiduYunService) create;
    }

    public final void updateTokenHeader() {
        m32415b();
    }
}
