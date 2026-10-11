package com.onyx.android.sdk.cloudstorage;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.cloudstorage.common.StringConverterFactory;
import com.onyx.android.sdk.cloudstorage.common.TokenHeaderInterceptor;
import com.onyx.android.sdk.data.common.cloud.p025v1.FastJsonConverterFactory;
import com.onyx.android.sdk.data.utils.HttpUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Retrofit;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b(\u0010)J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J)\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nJ%\u0010\u0010\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0015\u001a\u00020\u00142\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0013\u001a\u00020\u0012J\u001e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0002J\u0016\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000eJ#\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001e\u0010\"\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u000e0 H\u0002J\u001e\u0010#\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u000e0 H\u0002R \u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010%R \u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010%¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/CloudStorageServiceFactory;", "", "", "baseUrl", "Lretrofit2/Retrofit;", "init", "T", "Ljava/lang/Class;", NotificationCompat.CATEGORY_SERVICE, "getSpecifyService", "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;", "Lokhttp3/OkHttpClient;", "okHttpClient", "", "Lokhttp3/Interceptor;", "interceptors", "resetInterceptors", "(Lokhttp3/OkHttpClient;[Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient;", "Lokhttp3/OkHttpClient$Builder;", "builder", "", "restoreBuilderFromClient", "tokenKey", "token", "addRetrofitTokenHeader", "interceptor", "addRetrofitInterceptor", "(Ljava/lang/String;[Lokhttp3/Interceptor;)Lretrofit2/Retrofit;", "e", "Lretrofit2/Retrofit$Builder;", "d", "c", "", "interList", "a", "b", "Ljava/util/concurrent/ConcurrentHashMap;", "Ljava/util/concurrent/ConcurrentHashMap;", "retrofitMap", "clientMap", Constants.CONSTRUCTOR_NAME, "()V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCloudStorageServiceFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudStorageServiceFactory.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageServiceFactory\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,129:1\n11065#2:130\n11400#2,3:131\n37#3,2:134\n*S KotlinDebug\n*F\n+ 1 CloudStorageServiceFactory.kt\ncom/onyx/android/sdk/cloudstorage/CloudStorageServiceFactory\n*L\n42#1:130\n42#1:131,3\n42#1:134,2\n*E\n"})
/* loaded from: classes7.dex */
public final class CloudStorageServiceFactory {

    @NotNull
    public static final CloudStorageServiceFactory INSTANCE = new CloudStorageServiceFactory();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final ConcurrentHashMap<String, Retrofit> retrofitMap = new ConcurrentHashMap<>();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final ConcurrentHashMap<String, OkHttpClient> clientMap = new ConcurrentHashMap<>();

    /* renamed from: a */
    public final void m32241a(OkHttpClient.Builder builder, List<? extends Interceptor> interList) {
        if (interList.isEmpty()) {
            return;
        }
        Iterator<? extends Interceptor> it2 = interList.iterator();
        while (it2.hasNext()) {
            builder.addInterceptor(it2.next());
        }
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
    public final void m32242b(OkHttpClient.Builder builder, List<? extends Interceptor> interList) {
        if (interList.isEmpty()) {
            return;
        }
        Iterator<? extends Interceptor> it2 = interList.iterator();
        while (it2.hasNext()) {
            builder.addNetworkInterceptor(it2.next());
        }
    }

    /* renamed from: c */
    public final OkHttpClient m32243c(String baseUrl) {
        ConcurrentHashMap<String, OkHttpClient> concurrentHashMap = clientMap;
        if (concurrentHashMap.containsKey(baseUrl)) {
            OkHttpClient okHttpClient = concurrentHashMap.get(baseUrl);
            Intrinsics.checkNotNull(okHttpClient);
            return okHttpClient;
        }
        OkHttpClient build = HttpUtils.INSTANCE.createOkHttpBuilder().build();
        concurrentHashMap.put(baseUrl, build);
        return build;
    }

    /* renamed from: d */
    public final Retrofit.Builder m32244d(String baseUrl) {
        Retrofit.Builder addConverterFactory = new Retrofit.Builder().baseUrl(baseUrl).client(m32243c(baseUrl)).addConverterFactory(new StringConverterFactory()).addConverterFactory(FastJsonConverterFactory.INSTANCE.create());
        Intrinsics.checkNotNullExpressionValue(addConverterFactory, "addConverterFactory(...)");
        return addConverterFactory;
    }

    /* renamed from: e */
    public final Retrofit m32245e(String baseUrl) {
        ConcurrentHashMap<String, Retrofit> concurrentHashMap = retrofitMap;
        if (!concurrentHashMap.containsKey(baseUrl)) {
            Retrofit build = m32244d(baseUrl).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            concurrentHashMap.put(baseUrl, build);
        }
        Retrofit retrofit = concurrentHashMap.get(baseUrl);
        Intrinsics.checkNotNull(retrofit);
        return retrofit;
    }

    public final <T> T getSpecifyService(@NotNull Class<T> service, @NotNull String baseUrl) {
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        return (T) m32245e(baseUrl).create(service);
    }

    @NotNull
    public final Retrofit init(@NotNull String baseUrl) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        return m32245e(baseUrl);
    }

    @NotNull
    public final OkHttpClient resetInterceptors(@Nullable OkHttpClient okHttpClient, @NotNull Interceptor[] interceptors) {
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        if (okHttpClient != null) {
            restoreBuilderFromClient(okHttpClient, builder);
            ArrayList arrayList = new ArrayList(interceptors.length);
            for (Interceptor interceptor : interceptors) {
                arrayList.add(interceptor.getClass());
            }
            Class[] clsArr = (Class[]) arrayList.toArray(new Class[0]);
            HttpUtils.INSTANCE.removeInterceptors(builder, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
        }
        for (Interceptor interceptor2 : interceptors) {
            builder.addInterceptor(interceptor2);
        }
        HttpUtils.INSTANCE.addLogInterceptor(builder);
        return builder.build();
    }

    public final void restoreBuilderFromClient(@Nullable OkHttpClient okHttpClient, @NotNull OkHttpClient.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        if (okHttpClient == null) {
            return;
        }
        m32241a(builder, okHttpClient.interceptors());
        m32242b(builder, okHttpClient.networkInterceptors());
        builder.authenticator(okHttpClient.authenticator());
    }

    @NotNull
    public final Retrofit addRetrofitInterceptor(@NotNull String baseUrl, @NotNull Interceptor[] interceptors) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        ConcurrentHashMap<String, OkHttpClient> concurrentHashMap = clientMap;
        OkHttpClient resetInterceptors = resetInterceptors(concurrentHashMap.get(baseUrl), interceptors);
        Retrofit build = m32244d(baseUrl).client(resetInterceptors).build();
        ConcurrentHashMap<String, Retrofit> concurrentHashMap2 = retrofitMap;
        Intrinsics.checkNotNull(build);
        concurrentHashMap2.put(baseUrl, build);
        concurrentHashMap.put(baseUrl, resetInterceptors);
        return build;
    }
}
