package com.tencent.qcloud.core.http;

import com.tencent.qcloud.core.common.QCloudClientException;
import com.tencent.qcloud.core.common.QCloudServiceException;
import java.lang.reflect.Field;
import java.net.InetAddress;
import java.util.List;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Response;

/* loaded from: classes10.dex */
public class OkHttpProxy<T> extends NetworkProxy<T> {
    private Field eventListenerFiled;
    private Call httpCall;
    private OkHttpClient okHttpClient;

    public OkHttpProxy(OkHttpClient okHttpClient) {
        this.okHttpClient = okHttpClient;
    }

    private boolean isCosResponse(Response response) {
        return response != null && HttpConstants.TENCENT_COS_SERVER.equalsIgnoreCase(response.header("Server"));
    }

    private void recordDns(String str, CallMetricsListener callMetricsListener) {
        List<InetAddress> dumpDns;
        if (callMetricsListener == null || (dumpDns = callMetricsListener.dumpDns()) == null) {
            return;
        }
        ConnectionRepository.getInstance().insertDnsRecordCache(str, dumpDns);
    }

    @Override // com.tencent.qcloud.core.http.NetworkProxy
    public void cancel() {
        Call call = this.httpCall;
        if (call != null) {
            call.cancel();
        }
    }

    @Override // com.tencent.qcloud.core.http.NetworkProxy
    public HttpResult<T> convertResponse(HttpRequest<T> httpRequest, Response response) throws QCloudClientException, QCloudServiceException {
        HttpResponse<T> httpResponse = new HttpResponse<>(httpRequest, response);
        ResponseBodyConverter<T> responseBodyConverter = httpRequest.getResponseBodyConverter();
        if (responseBodyConverter instanceof ProgressBody) {
            ((ProgressBody) responseBodyConverter).setProgressListener(this.mProgressListener);
        }
        return new HttpResult<>(httpResponse, responseBodyConverter.convert(httpResponse));
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x00a0: MOVE (r1 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:44:0x00a0 */
    /* JADX WARN: Removed duplicated region for block: B:14:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0051 A[Catch: IOException -> 0x0046, all -> 0x009f, TRY_LEAVE, TryCatch #1 {IOException -> 0x0046, blocks: (B:22:0x0040, B:9:0x004a, B:19:0x0051), top: B:21:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004a A[Catch: IOException -> 0x0046, all -> 0x009f, TryCatch #1 {IOException -> 0x0046, blocks: (B:22:0x0040, B:9:0x004a, B:19:0x0051), top: B:21:0x0040 }] */
    @Override // com.tencent.qcloud.core.http.NetworkProxy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.tencent.qcloud.core.http.HttpResult<T> executeHttpRequest(com.tencent.qcloud.core.http.HttpRequest<T> r7) throws com.tencent.qcloud.core.common.QCloudClientException, com.tencent.qcloud.core.common.QCloudServiceException {
        /*
            r6 = this;
            com.tencent.qcloud.core.http.ResponseBodyConverter r0 = r7.getResponseBodyConverter()
            boolean r0 = r0 instanceof com.tencent.qcloud.core.http.SelfCloseConverter
            r1 = 0
            java.lang.String r2 = r6.identifier     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            r7.setOkHttpRequestTag(r2)     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            okhttp3.Request r2 = r7.buildRealRequest()     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            okhttp3.OkHttpClient r3 = r6.okHttpClient     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            okhttp3.Call r2 = r3.newCall(r2)     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            r6.httpCall = r2     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            java.lang.reflect.Field r3 = r6.eventListenerFiled     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            if (r3 != 0) goto L37
            java.lang.Class r2 = r2.getClass()     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L61 java.io.IOException -> L63
            java.lang.String r3 = "eventListener"
            java.lang.reflect.Field r2 = r2.getDeclaredField(r3)     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L61 java.io.IOException -> L63
            r6.eventListenerFiled = r2     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L61 java.io.IOException -> L63
            r3 = 1
            r2.setAccessible(r3)     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L61 java.io.IOException -> L63
            java.lang.reflect.Field r2 = r6.eventListenerFiled     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L61 java.io.IOException -> L63
            okhttp3.Call r3 = r6.httpCall     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L61 java.io.IOException -> L63
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L61 java.io.IOException -> L63
            com.tencent.qcloud.core.http.CallMetricsListener r2 = (com.tencent.qcloud.core.http.CallMetricsListener) r2     // Catch: java.lang.Throwable -> L37 java.lang.Throwable -> L61 java.io.IOException -> L63
            goto L38
        L37:
            r2 = r1
        L38:
            okhttp3.Call r3 = r6.httpCall     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            okhttp3.Response r3 = r3.execute()     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            if (r2 == 0) goto L48
            com.tencent.qcloud.core.http.HttpTaskMetrics r4 = r6.metrics     // Catch: java.io.IOException -> L46 java.lang.Throwable -> L9f
            r2.dumpMetrics(r4)     // Catch: java.io.IOException -> L46 java.lang.Throwable -> L9f
            goto L48
        L46:
            r6 = move-exception
            goto L65
        L48:
            if (r3 == 0) goto L51
            com.tencent.qcloud.core.http.HttpResult r6 = r6.convertResponse(r7, r3)     // Catch: java.io.IOException -> L46 java.lang.Throwable -> L9f
            r7 = r6
            r6 = r1
            goto L59
        L51:
            com.tencent.qcloud.core.common.QCloudServiceException r6 = new com.tencent.qcloud.core.common.QCloudServiceException     // Catch: java.io.IOException -> L46 java.lang.Throwable -> L9f
            java.lang.String r7 = "http response is null"
            r6.<init>(r7)     // Catch: java.io.IOException -> L46 java.lang.Throwable -> L9f
            r7 = r1
        L59:
            if (r3 == 0) goto L98
            if (r0 != 0) goto L98
            com.tencent.qcloud.core.util.OkhttpInternalUtils.closeQuietly(r3)
            goto L98
        L61:
            r6 = move-exception
            goto La1
        L63:
            r6 = move-exception
            r3 = r1
        L65:
            java.lang.Throwable r7 = r6.getCause()     // Catch: java.lang.Throwable -> L9f
            boolean r7 = r7 instanceof com.tencent.qcloud.core.common.QCloudClientException     // Catch: java.lang.Throwable -> L9f
            if (r7 == 0) goto L75
            java.lang.Throwable r6 = r6.getCause()     // Catch: java.lang.Throwable -> L9f
            com.tencent.qcloud.core.common.QCloudClientException r6 = (com.tencent.qcloud.core.common.QCloudClientException) r6     // Catch: java.lang.Throwable -> L9f
        L73:
            r7 = r1
            goto L8d
        L75:
            java.lang.Throwable r7 = r6.getCause()     // Catch: java.lang.Throwable -> L9f
            boolean r7 = r7 instanceof com.tencent.qcloud.core.common.QCloudServiceException     // Catch: java.lang.Throwable -> L9f
            if (r7 == 0) goto L86
            java.lang.Throwable r6 = r6.getCause()     // Catch: java.lang.Throwable -> L9f
            com.tencent.qcloud.core.common.QCloudServiceException r6 = (com.tencent.qcloud.core.common.QCloudServiceException) r6     // Catch: java.lang.Throwable -> L9f
            r7 = r6
            r6 = r1
            goto L8d
        L86:
            com.tencent.qcloud.core.common.QCloudClientException r7 = new com.tencent.qcloud.core.common.QCloudClientException     // Catch: java.lang.Throwable -> L9f
            r7.<init>(r6)     // Catch: java.lang.Throwable -> L9f
            r6 = r7
            goto L73
        L8d:
            if (r3 == 0) goto L94
            if (r0 != 0) goto L94
            com.tencent.qcloud.core.util.OkhttpInternalUtils.closeQuietly(r3)
        L94:
            r5 = r1
            r1 = r6
            r6 = r7
            r7 = r5
        L98:
            if (r1 != 0) goto L9e
            if (r6 != 0) goto L9d
            return r7
        L9d:
            throw r6
        L9e:
            throw r1
        L9f:
            r6 = move-exception
            r1 = r3
        La1:
            if (r1 == 0) goto La8
            if (r0 != 0) goto La8
            com.tencent.qcloud.core.util.OkhttpInternalUtils.closeQuietly(r1)
        La8:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qcloud.core.http.OkHttpProxy.executeHttpRequest(com.tencent.qcloud.core.http.HttpRequest):com.tencent.qcloud.core.http.HttpResult");
    }
}
