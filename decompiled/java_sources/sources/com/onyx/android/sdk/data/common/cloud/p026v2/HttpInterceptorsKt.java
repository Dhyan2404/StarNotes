package com.onyx.android.sdk.data.common.cloud.p026v2;

import com.onyx.android.sdk.base.utils.PackageUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.Device;
import com.onyx.android.sdk.data.account.event.LocalAccountExpired;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.cloud.p026v2.HttpInterceptorsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Authenticator;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0011\u0010\b\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0003\"\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r\"\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0011\u0010\u0012\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0003\"\u0011\u0010\u0014\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0003¨\u0006\u0016"}, m61528d2 = {"ApkVersionInterceptor", "Lokhttp3/Interceptor;", "getApkVersionInterceptor", "()Lokhttp3/Interceptor;", "Authenticator", "Lokhttp3/Authenticator;", "getAuthenticator", "()Lokhttp3/Authenticator;", "DeviceIdInterceptor", "getDeviceIdInterceptor", "DeviceSystemInterceptor", "Lcom/onyx/android/sdk/data/common/cloud/v2/DeviceSystemHeaderInterceptor;", "getDeviceSystemInterceptor", "()Lcom/onyx/android/sdk/data/common/cloud/v2/DeviceSystemHeaderInterceptor;", "LangHeaderInterceptor", "Lcom/onyx/android/sdk/data/common/cloud/v2/LanguageHeaderInterceptor;", "getLangHeaderInterceptor", "()Lcom/onyx/android/sdk/data/common/cloud/v2/LanguageHeaderInterceptor;", "LoginTokenInterceptor", "getLoginTokenInterceptor", "ProjectIdentifyInterceptor", "getProjectIdentifyInterceptor", "sdk-data_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class HttpInterceptorsKt {

    @NotNull
    private static final Interceptor ProjectIdentifyInterceptor = new Interceptor() { // from class: com.sunia.HTREnginev2.d0i
        @Override // okhttp3.Interceptor
        public final Response intercept(Interceptor.Chain chain) {
            Response ProjectIdentifyInterceptor$lambda$1;
            ProjectIdentifyInterceptor$lambda$1 = HttpInterceptorsKt.ProjectIdentifyInterceptor$lambda$1(chain);
            return ProjectIdentifyInterceptor$lambda$1;
        }
    };

    @NotNull
    private static final Interceptor LoginTokenInterceptor = new Interceptor() { // from class: com.sunia.HTREnginev2.e0i
        @Override // okhttp3.Interceptor
        public final Response intercept(Interceptor.Chain chain) {
            Response LoginTokenInterceptor$lambda$3;
            LoginTokenInterceptor$lambda$3 = HttpInterceptorsKt.LoginTokenInterceptor$lambda$3(chain);
            return LoginTokenInterceptor$lambda$3;
        }
    };

    @NotNull
    private static final Interceptor ApkVersionInterceptor = new Interceptor() { // from class: com.sunia.HTREnginev2.f0i
        @Override // okhttp3.Interceptor
        public final Response intercept(Interceptor.Chain chain) {
            Response ApkVersionInterceptor$lambda$5;
            ApkVersionInterceptor$lambda$5 = HttpInterceptorsKt.ApkVersionInterceptor$lambda$5(chain);
            return ApkVersionInterceptor$lambda$5;
        }
    };

    @NotNull
    private static final Interceptor DeviceIdInterceptor = new Interceptor() { // from class: com.sunia.HTREnginev2.g0i
        @Override // okhttp3.Interceptor
        public final Response intercept(Interceptor.Chain chain) {
            Response DeviceIdInterceptor$lambda$7;
            DeviceIdInterceptor$lambda$7 = HttpInterceptorsKt.DeviceIdInterceptor$lambda$7(chain);
            return DeviceIdInterceptor$lambda$7;
        }
    };

    @NotNull
    private static final LanguageHeaderInterceptor LangHeaderInterceptor = new LanguageHeaderInterceptor();

    @NotNull
    private static final DeviceSystemHeaderInterceptor DeviceSystemInterceptor = new DeviceSystemHeaderInterceptor();

    @NotNull
    private static final Authenticator Authenticator = new Authenticator() { // from class: com.sunia.HTREnginev2.h0i
        @Override // okhttp3.Authenticator
        public final Request authenticate(Route route, Response response) {
            Request Authenticator$lambda$8;
            Authenticator$lambda$8 = HttpInterceptorsKt.Authenticator$lambda$8(route, response);
            return Authenticator$lambda$8;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final Response ApkVersionInterceptor$lambda$5(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request.Builder newBuilder = chain.request().newBuilder();
        newBuilder.header(Constant.TAG_APK_VERSION, String.valueOf(PackageUtils.INSTANCE.getAppVersionCode()));
        return chain.proceed(newBuilder.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Request Authenticator$lambda$8(Route route, Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        response.request().header("Authorization");
        AccountDataBundle.INSTANCE.postEvent(new LocalAccountExpired(0, response.request().url().getUrl(), 1, null));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Response DeviceIdInterceptor$lambda$7(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request.Builder newBuilder = chain.request().newBuilder();
        newBuilder.header(Constant.TAG_DEVICE_ID, Device.INSTANCE.getAndroidId(ResManager.INSTANCE.getAppContext()));
        return chain.proceed(newBuilder.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final okhttp3.Response LoginTokenInterceptor$lambda$3(okhttp3.Interceptor.Chain r3) {
        /*
            java.lang.String r0 = "chain"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            com.onyx.android.sdk.data.account.AccountDataBundle r0 = com.onyx.android.sdk.data.account.AccountDataBundle.INSTANCE
            java.lang.String r0 = r0.getAccountToken()
            okhttp3.Request r1 = r3.request()
            okhttp3.Request$Builder r1 = r1.newBuilder()
            if (r0 == 0) goto L1e
            boolean r2 = kotlin.text.StringsKt.isBlank(r0)
            if (r2 == 0) goto L1c
            goto L1e
        L1c:
            r2 = 0
            goto L1f
        L1e:
            r2 = 1
        L1f:
            if (r2 != 0) goto L26
            java.lang.String r2 = "Authorization"
            r1.header(r2, r0)
        L26:
            okhttp3.Request r0 = r1.build()
            okhttp3.Response r3 = r3.proceed(r0)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.data.common.cloud.p026v2.HttpInterceptorsKt.LoginTokenInterceptor$lambda$3(okhttp3.Interceptor$Chain):okhttp3.Response");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Response ProjectIdentifyInterceptor$lambda$1(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request.Builder newBuilder = chain.request().newBuilder();
        newBuilder.header(Constant.HEADER_CLIENT_TYPE, "galaxy");
        return chain.proceed(newBuilder.build());
    }

    @NotNull
    public static final Interceptor getApkVersionInterceptor() {
        return ApkVersionInterceptor;
    }

    @NotNull
    public static final Authenticator getAuthenticator() {
        return Authenticator;
    }

    @NotNull
    public static final Interceptor getDeviceIdInterceptor() {
        return DeviceIdInterceptor;
    }

    @NotNull
    public static final DeviceSystemHeaderInterceptor getDeviceSystemInterceptor() {
        return DeviceSystemInterceptor;
    }

    @NotNull
    public static final LanguageHeaderInterceptor getLangHeaderInterceptor() {
        return LangHeaderInterceptor;
    }

    @NotNull
    public static final Interceptor getLoginTokenInterceptor() {
        return LoginTokenInterceptor;
    }

    @NotNull
    public static final Interceptor getProjectIdentifyInterceptor() {
        return ProjectIdentifyInterceptor;
    }
}
