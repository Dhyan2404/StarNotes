package com.onyx.android.sdk.cloudstorage.provider.onedrive;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.common.TokenHeaderInterceptor;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.bean.OneDriveTokenResponse;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.utils.RefreshTokenAuthenticator;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.FastJsonConverterFactory;
import com.onyx.android.sdk.data.common.cloud.service.ServiceCreateArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.HttpUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0011¢\u0006\u0004\b\u001a\u0010\u001bJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\b\u001a\u00020\u0004J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\u0012\u0010\f\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\f\u0010\u0014R\u0016\u0010\u0016\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\t\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\n\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;", "", "", "updateTokenHeader", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveService;", "getOneDriveService", "", "baseUrl", "getOneDriveUploadService", "c", "d", "token", "b", "e", "Lretrofit2/Retrofit;", "a", C6997f.f39671c, "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;", CouchFieldKey.KEY_PROVIDER, "Lretrofit2/Retrofit;", "retrofit", "uploadRetrofit", "Lokhttp3/OkHttpClient;", "Lokhttp3/OkHttpClient;", "httpClient", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OneDriveClient {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final OneDriveProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    public Retrofit retrofit;

    /* renamed from: c, reason: from kotlin metadata */
    public Retrofit uploadRetrofit;

    /* renamed from: d, reason: from kotlin metadata */
    public OkHttpClient httpClient;

    public OneDriveClient(@NotNull OneDriveProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = provider;
        m32739c();
    }

    /* renamed from: a */
    public final Retrofit m32737a(String baseUrl) {
        Retrofit.Builder baseUrl2 = new Retrofit.Builder().baseUrl(baseUrl);
        OkHttpClient okHttpClient = this.httpClient;
        if (okHttpClient == null) {
            Intrinsics.throwUninitializedPropertyAccessException("httpClient");
            okHttpClient = null;
        }
        Retrofit build = baseUrl2.client(okHttpClient).addConverterFactory(FastJsonConverterFactory.INSTANCE.create()).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    /* renamed from: b */
    public final String m32738b(String token) {
        return BaseCloudRequest.BEARER_TOKEN_PREFIX + token;
    }

    /* renamed from: c */
    public final void m32739c() {
        m32740d();
        m32741e();
        m32742f();
    }

    /* renamed from: d */
    public final void m32740d() {
        OkHttpClient.Builder createOkHttpBuilder = HttpUtils.INSTANCE.createOkHttpBuilder();
        createOkHttpBuilder.authenticator(new RefreshTokenAuthenticator(this.provider));
        OneDriveTokenResponse tokenResponse = this.provider.getTokenResponse();
        createOkHttpBuilder.addInterceptor(new TokenHeaderInterceptor("Authorization", m32738b(tokenResponse != null ? tokenResponse.getAccessToken() : null)));
        this.httpClient = createOkHttpBuilder.build();
    }

    /* renamed from: e */
    public final void m32741e() {
        this.retrofit = m32737a(CloudStorageConstants.ONE_DRIVE_BASE_API);
    }

    /* renamed from: f */
    public final void m32742f() {
        ServiceCreateArgs thirdPartyServiceCreateArgs = ServiceCreateArgs.INSTANCE.thirdPartyServiceCreateArgs("");
        thirdPartyServiceCreateArgs.setOkHttpWriteTimeoutSecond(60);
        Retrofit build = new Retrofit.Builder().baseUrl(CloudStorageConstants.ONE_DRIVE_BASE_API).client(HttpUtils.INSTANCE.createOkHttpBuilder(thirdPartyServiceCreateArgs).build()).addConverterFactory(FastJsonConverterFactory.INSTANCE.create()).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        this.uploadRetrofit = build;
    }

    @NotNull
    public final OneDriveService getOneDriveService() {
        Retrofit retrofit = this.retrofit;
        if (retrofit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("retrofit");
            retrofit = null;
        }
        Object create = retrofit.create(OneDriveService.class);
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return (OneDriveService) create;
    }

    @NotNull
    public final OneDriveService getOneDriveUploadService() {
        Retrofit retrofit = this.uploadRetrofit;
        if (retrofit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("uploadRetrofit");
            retrofit = null;
        }
        Object create = retrofit.create(OneDriveService.class);
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return (OneDriveService) create;
    }

    public final void updateTokenHeader() {
        m32739c();
    }

    @NotNull
    public final OneDriveService getOneDriveService(@NotNull String baseUrl) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Object create = m32737a(baseUrl).create(OneDriveService.class);
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return (OneDriveService) create;
    }
}
