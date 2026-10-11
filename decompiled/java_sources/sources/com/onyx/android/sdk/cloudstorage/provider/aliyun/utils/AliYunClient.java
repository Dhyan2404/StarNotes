package com.onyx.android.sdk.cloudstorage.provider.aliyun.utils;

import androidx.annotation.WorkerThread;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.common.TokenHeaderInterceptor;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunService;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunError;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.bean.AliYunTokenResponse;
import com.onyx.android.sdk.data.common.cloud.p025v1.FastJsonConverterFactory;
import com.onyx.android.sdk.data.common.exception.ContentException;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.HttpUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.net.SocketTimeoutException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.Retrofit;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0013¢\u0006\u0004\b\u001e\u0010\u001fJ\u0006\u0010\u0003\u001a\u00020\u0002J.\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u0004\b\u0000\u0010\u00042\u0018\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u0005H\u0007J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001c¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;", "", "", "updateTokenHeader", "T", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;", "Lretrofit2/Call;", Constants.EXSLT_ELEMNAME_FUNCTION_STRING, "Lretrofit2/Response;", "executeCall", "d", "Lokhttp3/OkHttpClient;", "e", C6997f.f39671c, "Lokhttp3/OkHttpClient$Builder;", "builder", "b", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;", CouchFieldKey.KEY_PROVIDER, "Lretrofit2/Retrofit;", "Lretrofit2/Retrofit;", "retrofit", "c", "Lokhttp3/OkHttpClient;", "httpClient", "()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunService;", "apiService", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AliYunClient {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final AliYunProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    public Retrofit retrofit;

    /* renamed from: c, reason: from kotlin metadata */
    public OkHttpClient httpClient;

    public AliYunClient(@NotNull AliYunProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = provider;
        m32361d();
    }

    /* renamed from: a */
    public final void m32358a(OkHttpClient.Builder builder) {
        if (Debug.INSTANCE.getDebug()) {
            builder.addInterceptor(new GrayTestHeaderInterceptor());
        }
    }

    /* renamed from: b */
    public final void m32359b(OkHttpClient.Builder builder) {
        AliYunTokenResponse tokenResponse = this.provider.getTokenResponse();
        if (tokenResponse == null || !AliYunTokenResponse.INSTANCE.isValid(tokenResponse)) {
            return;
        }
        builder.addInterceptor(new TokenHeaderInterceptor("Authorization", this.provider.getBearAccessToken()));
    }

    /* renamed from: c */
    public final AliYunService m32360c() {
        Retrofit retrofit = this.retrofit;
        if (retrofit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("retrofit");
            retrofit = null;
        }
        Object create = retrofit.create(AliYunService.class);
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return (AliYunService) create;
    }

    /* renamed from: d */
    public final void m32361d() {
        m32362e();
        m32363f();
    }

    /* renamed from: e */
    public final OkHttpClient m32362e() {
        HttpUtils httpUtils = HttpUtils.INSTANCE;
        OkHttpClient.Builder addInterceptor = httpUtils.createOkHttpBuilder().authenticator(new RefreshTokenAuthenticator(this.provider)).addInterceptor(new RefreshTokenInterceptor(this.provider));
        m32359b(addInterceptor);
        m32358a(addInterceptor);
        httpUtils.addLogInterceptor(addInterceptor);
        OkHttpClient build = addInterceptor.build();
        this.httpClient = build;
        if (build != null) {
            return build;
        }
        Intrinsics.throwUninitializedPropertyAccessException("httpClient");
        return null;
    }

    @WorkerThread
    @NotNull
    public final <T> Response<T> executeCall(@NotNull Function1<? super AliYunService, ? extends Call<T>> function) throws Exception {
        Intrinsics.checkNotNullParameter(function, "function");
        try {
            Response<T> execute = function.invoke(m32360c()).execute();
            Intrinsics.checkNotNull(execute);
            if (execute.isSuccessful()) {
                return execute;
            }
            throw AliYunError.INSTANCE.parse(execute);
        } catch (Exception e) {
            if (e instanceof SocketTimeoutException) {
                throw ContentException.INSTANCE.timeoutException();
            }
            throw new ContentException.NetworkException(e);
        }
    }

    /* renamed from: f */
    public final void m32363f() {
        Retrofit.Builder baseUrl = new Retrofit.Builder().baseUrl(CloudStorageConstants.ALIYUN_DRIVE_BASE_API);
        OkHttpClient okHttpClient = this.httpClient;
        if (okHttpClient == null) {
            Intrinsics.throwUninitializedPropertyAccessException("httpClient");
            okHttpClient = null;
        }
        Retrofit build = baseUrl.client(okHttpClient).addConverterFactory(FastJsonConverterFactory.INSTANCE.create()).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        this.retrofit = build;
    }

    public final void updateTokenHeader() {
        m32361d();
    }
}
