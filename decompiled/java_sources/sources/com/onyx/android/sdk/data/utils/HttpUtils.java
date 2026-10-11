package com.onyx.android.sdk.data.utils;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.cloud.p026v2.AndroidVersionHeaderInterceptor;
import com.onyx.android.sdk.data.common.cloud.p026v2.ClientIdHeaderInterceptor;
import com.onyx.android.sdk.data.common.cloud.p026v2.HttpInterceptorsKt;
import com.onyx.android.sdk.data.common.cloud.p026v2.MarketChannelHeaderInterceptor;
import com.onyx.android.sdk.data.common.cloud.p026v2.OnyxHttpLoggingInterceptor;
import com.onyx.android.sdk.data.common.cloud.service.ServiceCreateArgs;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fJ/\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u001a\u0010\u0011\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00130\u0012\"\u0006\u0012\u0002\b\u00030\u0013¢\u0006\u0002\u0010\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/HttpUtils;", "", "()V", "httpLogLevel", "Lokhttp3/logging/HttpLoggingInterceptor$Level;", "getHttpLogLevel", "()Lokhttp3/logging/HttpLoggingInterceptor$Level;", "setHttpLogLevel", "(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V", "addLogInterceptor", "", "builder", "Lokhttp3/OkHttpClient$Builder;", "createOkHttpBuilder", "args", "Lcom/onyx/android/sdk/data/common/cloud/service/ServiceCreateArgs;", "removeInterceptors", "clazz", "", "Ljava/lang/Class;", "(Lokhttp3/OkHttpClient$Builder;[Ljava/lang/Class;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HttpUtils {

    @NotNull
    public static final HttpUtils INSTANCE = new HttpUtils();

    @NotNull
    private static HttpLoggingInterceptor.Level httpLogLevel = HttpLoggingInterceptor.Level.BODY;

    private HttpUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void addLogInterceptor(@NotNull OkHttpClient.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        if (Debug.INSTANCE.getDebug()) {
            removeInterceptors(builder, HttpLoggingInterceptor.class, OnyxHttpLoggingInterceptor.class);
            OnyxHttpLoggingInterceptor onyxHttpLoggingInterceptor = new OnyxHttpLoggingInterceptor(null, 1, 0 == true ? 1 : 0);
            onyxHttpLoggingInterceptor.setLevel(httpLogLevel);
            builder.addInterceptor(onyxHttpLoggingInterceptor);
        }
    }

    @NotNull
    public final OkHttpClient.Builder createOkHttpBuilder() {
        return createOkHttpBuilder(ServiceCreateArgs.INSTANCE.thirdPartyServiceCreateArgs(""));
    }

    @NotNull
    public final HttpLoggingInterceptor.Level getHttpLogLevel() {
        return httpLogLevel;
    }

    public final void removeInterceptors(@NotNull OkHttpClient.Builder builder, @NotNull final Class<?>... clazz) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (builder.interceptors().isEmpty()) {
            return;
        }
        if (clazz.length == 0) {
            return;
        }
        CollectionKt.safelyRemove(builder.interceptors(), new Comparable<Interceptor>() { // from class: com.onyx.android.sdk.data.utils.HttpUtils$removeInterceptors$1
            @Override // java.lang.Comparable
            public int compareTo(@NotNull Interceptor other) {
                Intrinsics.checkNotNullParameter(other, "other");
                for (Class<?> cls : clazz) {
                    if (cls.isInstance(other)) {
                        return 0;
                    }
                }
                return 1;
            }
        }, true);
    }

    public final void setHttpLogLevel(@NotNull HttpLoggingInterceptor.Level level) {
        Intrinsics.checkNotNullParameter(level, "<set-?>");
        httpLogLevel = level;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final OkHttpClient.Builder createOkHttpBuilder(@NotNull ServiceCreateArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        OkHttpClient.Builder newBuilder = new OkHttpClient().newBuilder();
        long okhttpReadTimeoutSecond = args.getOkhttpReadTimeoutSecond();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient.Builder addInterceptor = newBuilder.readTimeout(okhttpReadTimeoutSecond, timeUnit).writeTimeout(args.getOkHttpWriteTimeoutSecond(), timeUnit).addInterceptor(new AndroidVersionHeaderInterceptor()).addInterceptor(new ClientIdHeaderInterceptor()).addInterceptor(new MarketChannelHeaderInterceptor(null, 1, 0 == true ? 1 : 0));
        if (args.getUseTokenInterceptor()) {
            addInterceptor.addInterceptor(HttpInterceptorsKt.getLoginTokenInterceptor());
        }
        if (args.getUseApkVersionInterceptor()) {
            addInterceptor.addInterceptor(HttpInterceptorsKt.getApkVersionInterceptor());
        }
        if (args.getUseDeviceInterceptor()) {
            addInterceptor.addInterceptor(HttpInterceptorsKt.getDeviceIdInterceptor());
        }
        if (args.getUseLangInterceptor()) {
            addInterceptor.addInterceptor(HttpInterceptorsKt.getLangHeaderInterceptor());
        }
        if (args.getUseAuthInterceptor()) {
            addInterceptor.authenticator(HttpInterceptorsKt.getAuthenticator());
        }
        if (args.getUseProjectIdentityInterceptor()) {
            addInterceptor.addInterceptor(HttpInterceptorsKt.getProjectIdentifyInterceptor());
        }
        if (args.getUseDeviceSystemInterceptor()) {
            addInterceptor.addInterceptor(HttpInterceptorsKt.getDeviceSystemInterceptor());
        }
        addLogInterceptor(addInterceptor);
        return addInterceptor;
    }
}
