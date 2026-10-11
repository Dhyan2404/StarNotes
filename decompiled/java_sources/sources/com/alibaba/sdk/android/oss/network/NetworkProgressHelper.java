package com.alibaba.sdk.android.oss.network;

import java.io.IOException;
import java.io.InputStream;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;

/* loaded from: classes3.dex */
public class NetworkProgressHelper {

    /* renamed from: com.alibaba.sdk.android.oss.network.NetworkProgressHelper$a */
    /* loaded from: classes3.dex */
    public static class C1778a implements Interceptor {

        /* renamed from: a */
        public final /* synthetic */ ExecutionContext f13341a;

        public C1778a(ExecutionContext executionContext) {
            this.f13341a = executionContext;
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) throws IOException {
            Response proceed = chain.proceed(chain.request());
            return proceed.newBuilder().body(new ProgressTouchableResponseBody(proceed.body(), this.f13341a)).build();
        }
    }

    public static ProgressTouchableRequestBody addProgressRequestBody(InputStream inputStream, long j, String str, ExecutionContext executionContext) {
        return new ProgressTouchableRequestBody(inputStream, j, str, executionContext);
    }

    public static OkHttpClient addProgressResponseListener(OkHttpClient okHttpClient, ExecutionContext executionContext) {
        return okHttpClient.newBuilder().addNetworkInterceptor(new C1778a(executionContext)).build();
    }
}
