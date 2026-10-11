package com.onyx.android.sdk.data.common.cloud.p025v1;

import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.OnyxIndexService;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.cloud.service.ServiceCreateArgs;
import com.onyx.android.sdk.data.serverconvert.service.DocConvertService;
import com.onyx.android.sdk.data.sync.OnyxSyncService;
import com.onyx.android.sdk.data.utils.HttpUtils;
import io.reactivex.rxjava3.core.Observable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import retrofit2.Retrofit;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u0005J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J!\u0010\u0015\u001a\u0002H\u0016\"\u0004\b\u0000\u0010\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00160\u0018H\u0007¢\u0006\u0002\u0010\u0019J!\u0010\u001a\u001a\u0002H\u0016\"\u0004\b\u0000\u0010\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00160\u0018H\u0007¢\u0006\u0002\u0010\u0019J)\u0010\u001b\u001a\u0002H\u0016\"\u0004\b\u0000\u0010\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00160\u00182\u0006\u0010\u000b\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020\u0005J)\u0010 \u001a\u0002H\u0016\"\u0004\b\u0000\u0010\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00160\u00182\u0006\u0010\u000b\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u001cJ\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00050\"2\b\b\u0002\u0010#\u001a\u00020\u0005J\u0016\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00050\"2\b\b\u0002\u0010#\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;", "", "()V", "clientMap", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lokhttp3/OkHttpClient;", "retrofitMap", "Lretrofit2/Retrofit;", "getAccountService", "Lcom/onyx/android/sdk/data/account/CloudAccountService;", "baseUrl", "getCertificatesService", "Lcom/onyx/android/sdk/data/common/cloud/v1/OnyxCertificatesService;", "getDocConvertServiceSync", "Lcom/onyx/android/sdk/data/serverconvert/service/DocConvertService;", "getIndexService", "Lcom/onyx/android/sdk/data/cluster/OnyxIndexService;", "getOkHttpClient", "args", "Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;", "getOnyxApiV1Service", "T", NotificationCompat.CATEGORY_SERVICE, "Ljava/lang/Class;", "(Ljava/lang/Class;)Ljava/lang/Object;", "getOnyxApiV2Service", "getOnyxSpecifyService", "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;", "getRetrofit", "getSyncService", "Lcom/onyx/android/sdk/data/sync/OnyxSyncService;", "getThirdPartySpecifyService", "loadOnyxApiV1Url", "Lio/reactivex/rxjava3/core/Observable;", "path", "loadOnyxApiV2Url", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ServiceFactory {

    @NotNull
    public static final ServiceFactory INSTANCE = new ServiceFactory();

    @NotNull
    private static final ConcurrentHashMap<String, OkHttpClient> clientMap = new ConcurrentHashMap<>();

    @NotNull
    private static final ConcurrentHashMap<String, Retrofit> retrofitMap = new ConcurrentHashMap<>();

    private ServiceFactory() {
    }

    private final OkHttpClient getOkHttpClient(final ServiceCreateArgs args) {
        ConcurrentHashMap<String, OkHttpClient> concurrentHashMap = clientMap;
        String baseUrl = args.getBaseUrl();
        final Function1<String, OkHttpClient> function1 = new Function1<String, OkHttpClient>() { // from class: com.onyx.android.sdk.data.common.cloud.v1.ServiceFactory$getOkHttpClient$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final OkHttpClient invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return HttpUtils.INSTANCE.createOkHttpBuilder(ServiceCreateArgs.this).build();
            }
        };
        OkHttpClient computeIfAbsent = concurrentHashMap.computeIfAbsent(baseUrl, new Function() { // from class: com.sunia.HTREnginev2.uhm
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                OkHttpClient okHttpClient$lambda$1;
                okHttpClient$lambda$1 = ServiceFactory.getOkHttpClient$lambda$1(Function1.this, obj);
                return okHttpClient$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OkHttpClient getOkHttpClient$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (OkHttpClient) tmp0.invoke(obj);
    }

    private final Retrofit getRetrofit(ServiceCreateArgs args) {
        OkHttpClient okHttpClient = getOkHttpClient(args);
        ConcurrentHashMap<String, Retrofit> concurrentHashMap = retrofitMap;
        Retrofit retrofit = concurrentHashMap.get(args.getBaseUrl());
        if (retrofit != null) {
            return retrofit;
        }
        Retrofit.Builder client = new Retrofit.Builder().baseUrl(args.getBaseUrl()).client(okHttpClient);
        if (args.getUseJsonConverter()) {
            client.addConverterFactory(FastJsonConverterFactory.INSTANCE.create());
        }
        Retrofit build = client.build();
        String baseUrl = args.getBaseUrl();
        Intrinsics.checkNotNull(build);
        concurrentHashMap.put(baseUrl, build);
        return build;
    }

    public static /* synthetic */ Observable loadOnyxApiV1Url$default(ServiceFactory serviceFactory, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return serviceFactory.loadOnyxApiV1Url(str);
    }

    public static /* synthetic */ Observable loadOnyxApiV2Url$default(ServiceFactory serviceFactory, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return serviceFactory.loadOnyxApiV2Url(str);
    }

    @NotNull
    public final CloudAccountService getAccountService(@NotNull String baseUrl) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        return (CloudAccountService) getOnyxSpecifyService(CloudAccountService.class, baseUrl);
    }

    @NotNull
    public final OnyxCertificatesService getCertificatesService(@NotNull String baseUrl) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        return (OnyxCertificatesService) getOnyxSpecifyService(OnyxCertificatesService.class, baseUrl);
    }

    @NotNull
    public final DocConvertService getDocConvertServiceSync() {
        ServiceCreateArgs onyxServiceCreateArgs = ServiceCreateArgs.INSTANCE.onyxServiceCreateArgs(ClusterManager.INSTANCE.getCurClusterInfo().loadOnyxApiV2());
        onyxServiceCreateArgs.setOkhttpReadTimeoutSecond(600);
        Object create = getRetrofit(onyxServiceCreateArgs).create(DocConvertService.class);
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return (DocConvertService) create;
    }

    @NotNull
    public final OnyxIndexService getIndexService(@NotNull String baseUrl) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        return (OnyxIndexService) getThirdPartySpecifyService(OnyxIndexService.class, baseUrl);
    }

    @WorkerThread
    public final <T> T getOnyxApiV1Service(@NotNull Class<T> service) {
        Intrinsics.checkNotNullParameter(service, "service");
        return (T) getOnyxSpecifyService(service, ClusterManager.INSTANCE.getCurClusterInfo().loadOnyxApiBaseUrl());
    }

    @WorkerThread
    public final <T> T getOnyxApiV2Service(@NotNull Class<T> service) {
        Intrinsics.checkNotNullParameter(service, "service");
        return (T) getOnyxSpecifyService(service, ClusterManager.INSTANCE.getCurClusterInfo().loadOnyxApiV2());
    }

    @WorkerThread
    public final <T> T getOnyxSpecifyService(@NotNull Class<T> service, @NotNull String baseUrl) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        return (T) getRetrofit(ServiceCreateArgs.INSTANCE.onyxServiceCreateArgs(baseUrl)).create(service);
    }

    @NotNull
    public final OnyxSyncService getSyncService(@NotNull String baseUrl) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        return (OnyxSyncService) getOnyxSpecifyService(OnyxSyncService.class, baseUrl);
    }

    @WorkerThread
    public final <T> T getThirdPartySpecifyService(@NotNull Class<T> service, @NotNull String baseUrl) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        return (T) getRetrofit(ServiceCreateArgs.INSTANCE.thirdPartyServiceCreateArgs(baseUrl)).create(service);
    }

    @NotNull
    public final Observable<String> loadOnyxApiV1Url(@NotNull final String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        Observable map = ClusterManager.INSTANCE.getCurrentClusterObservable().map(new io.reactivex.rxjava3.functions.Function() { // from class: com.onyx.android.sdk.data.common.cloud.v1.ServiceFactory$loadOnyxApiV1Url$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final String apply(@NotNull ClusterInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.loadOnyxApiBaseUrl() + path;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final Observable<String> loadOnyxApiV2Url(@NotNull final String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        Observable map = ClusterManager.INSTANCE.getCurrentClusterObservable().map(new io.reactivex.rxjava3.functions.Function() { // from class: com.onyx.android.sdk.data.common.cloud.v1.ServiceFactory$loadOnyxApiV2Url$1
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            public final String apply(@NotNull ClusterInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.loadOnyxApiV2() + path;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
