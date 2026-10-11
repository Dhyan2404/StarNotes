package com.onyx.android.sdk.cloudstorage.provider.huaweidrive.utils;

import androidx.annotation.WorkerThread;
import com.onyx.android.sdk.cloudstorage.common.TokenHeaderInterceptor;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunService;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunError;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunTokenResponse;
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

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0012¢\u0006\u0004\b\u0017\u0010\u0018J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J.\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u00052\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u0006H\u0007J\b\u0010\f\u001a\u00020\u0007H\u0002J\b\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\f\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/utils/HuaweiYunClient;", "", "", "updateTokenHeader", "init", "T", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;", "Lretrofit2/Call;", Constants.EXSLT_ELEMNAME_FUNCTION_STRING, "Lretrofit2/Response;", "executeCall", "b", "Lokhttp3/OkHttpClient;", "c", "Lokhttp3/OkHttpClient$Builder;", "builder", "a", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunService;", "apiService", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HuaweiYunClient {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final HuaweiYunProvider provider;

    /* renamed from: b, reason: from kotlin metadata */
    public HuaweiYunService apiService;

    public HuaweiYunClient(@NotNull HuaweiYunProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.provider = provider;
        init();
    }

    /* renamed from: a */
    public final void m32730a(OkHttpClient.Builder builder) {
        HuaweiYunTokenResponse tokenResponse = this.provider.getTokenResponse();
        if (tokenResponse == null || !HuaweiYunTokenResponse.INSTANCE.isValid(tokenResponse)) {
            return;
        }
        builder.addInterceptor(new TokenHeaderInterceptor("Authorization", this.provider.getBearAccessToken()));
    }

    /* renamed from: b */
    public final HuaweiYunService m32731b() {
        Object create = new Retrofit.Builder().baseUrl(CloudStorageConstants.HUAWEIYUN_DRIVE_BASE_URL).client(m32732c()).addConverterFactory(FastJsonConverterFactory.INSTANCE.create()).build().create(HuaweiYunService.class);
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return (HuaweiYunService) create;
    }

    /* renamed from: c */
    public final OkHttpClient m32732c() {
        HttpUtils httpUtils = HttpUtils.INSTANCE;
        OkHttpClient.Builder addInterceptor = httpUtils.createOkHttpBuilder().authenticator(new RefreshTokenAuthenticator(this.provider)).addInterceptor(new RefreshTokenInterceptor(this.provider));
        m32730a(addInterceptor);
        httpUtils.addLogInterceptor(addInterceptor);
        return addInterceptor.build();
    }

    @WorkerThread
    @NotNull
    public final <T> Response<T> executeCall(@NotNull Function1<? super HuaweiYunService, ? extends Call<T>> function) throws Exception {
        Intrinsics.checkNotNullParameter(function, "function");
        try {
            HuaweiYunService huaweiYunService = this.apiService;
            if (huaweiYunService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("apiService");
                huaweiYunService = null;
            }
            Response<T> execute = function.invoke(huaweiYunService).execute();
            if (execute.isSuccessful()) {
                Intrinsics.checkNotNull(execute);
                return execute;
            }
            HuaweiYunError.Companion companion = HuaweiYunError.INSTANCE;
            Intrinsics.checkNotNull(execute);
            throw companion.parse(execute);
        } catch (Exception e) {
            if (e instanceof SocketTimeoutException) {
                throw ContentException.INSTANCE.timeoutException();
            }
            throw new ContentException.NetworkException(e);
        }
    }

    public final void init() {
        this.apiService = m32731b();
    }

    public final void updateTokenHeader() {
        init();
    }
}
