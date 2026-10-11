package com.tencent.qcloud.core.http.interceptor;

import android.text.TextUtils;
import com.tencent.cos.xml.crypto.Headers;
import com.tencent.qcloud.core.common.DomainSwitchException;
import com.tencent.qcloud.core.http.HttpTask;
import com.tencent.qcloud.core.task.TaskManager;
import com.tencent.qcloud.core.util.DomainSwitchUtils;
import com.tencent.qcloud.core.util.OkhttpInternalUtils;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes10.dex */
public class RedirectInterceptor implements Interceptor {
    private static final int MAX_FOLLOW_UPS = 20;
    private OkHttpClient client;

    private Request followUpRequest(Response response, boolean z, boolean z2) throws DomainSwitchException {
        HttpUrl resolve;
        if (response == null) {
            throw new IllegalStateException();
        }
        int code = response.code();
        String method = response.request().method();
        if (code != 307 && code != 308) {
            switch (code) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return null;
            }
        } else if (!method.equals("GET") && !method.equals("HEAD")) {
            return null;
        }
        if (z && !z2 && DomainSwitchUtils.isMyqcloudUrl(response.request().url().host()) && TextUtils.isEmpty(response.header(Headers.REQUEST_ID))) {
            throw new DomainSwitchException();
        }
        String header = response.header("Location");
        if (header == null || (resolve = response.request().url().resolve(header)) == null) {
            return null;
        }
        if (!resolve.scheme().equals(response.request().url().scheme()) && !this.client.followSslRedirects()) {
            return null;
        }
        Request.Builder newBuilder = response.request().newBuilder();
        if (OkhttpInternalUtils.permitsRequestBody(method)) {
            boolean redirectsWithBody = OkhttpInternalUtils.redirectsWithBody(method);
            if (OkhttpInternalUtils.redirectsToGet(method)) {
                newBuilder.method("GET", null);
            } else {
                newBuilder.method(method, redirectsWithBody ? response.request().body() : null);
            }
            if (!redirectsWithBody) {
                newBuilder.removeHeader("Transfer-Encoding");
                newBuilder.removeHeader("Content-Length");
                newBuilder.removeHeader("Content-Type");
            }
        }
        if (!sameConnection(response, resolve)) {
            newBuilder.removeHeader("Authorization");
        }
        newBuilder.removeHeader("Host");
        return newBuilder.url(resolve).build();
    }

    private boolean sameConnection(Response response, HttpUrl httpUrl) {
        HttpUrl url = response.request().url();
        return url.host().equals(httpUrl.host()) && url.port() == httpUrl.port() && url.scheme().equals(httpUrl.scheme());
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        HttpTask httpTask = (HttpTask) TaskManager.getInstance().get((String) request.tag());
        int i = 0;
        Response response = null;
        while (httpTask != null && !httpTask.isCanceled()) {
            Response proceed = chain.proceed(request);
            if (response != null) {
                proceed = proceed.newBuilder().priorResponse(response.newBuilder().body(null).build()).build();
            }
            response = proceed;
            request = followUpRequest(response, httpTask.isDomainSwitch(), httpTask.isSelfSigner());
            if (request == null) {
                return response;
            }
            OkhttpInternalUtils.closeQuietly(response.body());
            i++;
            if (i > 20) {
                throw new ProtocolException("Too many follow-up requests: " + i);
            }
        }
        throw new IOException("CANCELED");
    }

    public void setClient(OkHttpClient okHttpClient) {
        this.client = okHttpClient;
    }
}
