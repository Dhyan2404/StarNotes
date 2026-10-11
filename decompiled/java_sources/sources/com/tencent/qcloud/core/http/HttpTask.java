package com.tencent.qcloud.core.http;

import bolts.CancellationTokenSource;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.tencent.qcloud.core.auth.QCloudCredentialProvider;
import com.tencent.qcloud.core.auth.QCloudSigner;
import com.tencent.qcloud.core.auth.ScopeLimitCredentialProvider;
import com.tencent.qcloud.core.common.QCloudAuthenticationException;
import com.tencent.qcloud.core.common.QCloudClientException;
import com.tencent.qcloud.core.common.QCloudDigistListener;
import com.tencent.qcloud.core.common.QCloudProgressListener;
import com.tencent.qcloud.core.common.QCloudServiceException;
import com.tencent.qcloud.core.task.QCloudTask;
import com.tencent.qcloud.core.task.TaskExecutors;
import java.io.IOException;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.RequestBody;
import okhttp3.Response;
import okio.Buffer;

/* loaded from: classes10.dex */
public final class HttpTask<T> extends QCloudTask<HttpResult<T>> {
    private static AtomicInteger increments = new AtomicInteger(1);
    protected final QCloudCredentialProvider credentialProvider;
    protected final HttpRequest<T> httpRequest;
    protected HttpResult<T> httpResult;
    private QCloudProgressListener mProgressListener;
    protected HttpTaskMetrics metrics;
    private NetworkProxy<T> networkProxy;

    public HttpTask(HttpRequest<T> httpRequest, QCloudCredentialProvider qCloudCredentialProvider, NetworkClient networkClient) {
        super("HttpTask-" + httpRequest.tag() + "-" + increments.getAndIncrement(), httpRequest.tag());
        this.mProgressListener = new QCloudProgressListener() { // from class: com.tencent.qcloud.core.http.HttpTask.1
            @Override // com.tencent.qcloud.core.common.QCloudProgressListener
            public void onProgress(long j, long j2) {
                HttpTask.this.onProgress(j, j2);
            }
        };
        this.httpRequest = httpRequest;
        this.credentialProvider = qCloudCredentialProvider;
        NetworkProxy<T> networkProxy = networkClient.getNetworkProxy();
        this.networkProxy = networkProxy;
        networkProxy.identifier = getIdentifier();
        this.networkProxy.mProgressListener = this.mProgressListener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void calculateContentMD5() throws QCloudClientException {
        RequestBody requestBody = this.httpRequest.getRequestBody();
        if (requestBody == 0) {
            throw new QCloudClientException(new IllegalArgumentException("get md5 canceled, request body is null."));
        }
        if (requestBody instanceof QCloudDigistListener) {
            try {
                if (this.httpRequest.getRequestBody() instanceof MultipartStreamRequestBody) {
                    ((MultipartStreamRequestBody) this.httpRequest.getRequestBody()).addMd5();
                } else {
                    this.httpRequest.addHeader("Content-MD5", ((QCloudDigistListener) requestBody).onGetMd5());
                }
                return;
            } catch (IOException e) {
                throw new QCloudClientException("calculate md5 error: " + e.getMessage(), e);
            }
        }
        Buffer buffer = new Buffer();
        try {
            requestBody.writeTo(buffer);
            this.httpRequest.addHeader("Content-MD5", buffer.md5().base64());
            buffer.close();
        } catch (IOException e2) {
            throw new QCloudClientException("calculate md5 error" + e2.getMessage(), e2);
        }
    }

    private boolean isClockSkewedError(QCloudServiceException qCloudServiceException) {
        return QCloudServiceException.ERR0R_REQUEST_IS_EXPIRED.equals(qCloudServiceException.getErrorCode()) || QCloudServiceException.ERR0R_REQUEST_TIME_TOO_SKEWED.equals(qCloudServiceException.getErrorCode());
    }

    private boolean isCompleteMultipartRequest(HttpRequest httpRequest) {
        Set<String> keySet = httpRequest.queries.keySet();
        return keySet != null && keySet.size() == 1 && keySet.contains(RequestParameters.UPLOAD_ID);
    }

    private void signRequest(QCloudSigner qCloudSigner, QCloudHttpRequest qCloudHttpRequest) throws QCloudClientException {
        QCloudCredentialProvider qCloudCredentialProvider = this.credentialProvider;
        if (qCloudCredentialProvider == null) {
            throw new QCloudClientException(new QCloudAuthenticationException("no credentials provider"));
        }
        qCloudSigner.sign(qCloudHttpRequest, qCloudCredentialProvider instanceof ScopeLimitCredentialProvider ? ((ScopeLimitCredentialProvider) qCloudCredentialProvider).getCredentials(qCloudHttpRequest.getCredentialScope()) : qCloudCredentialProvider.getCredentials());
    }

    public HttpTask<T> attachMetric(HttpTaskMetrics httpTaskMetrics) {
        this.metrics = httpTaskMetrics;
        return this;
    }

    @Override // com.tencent.qcloud.core.task.QCloudTask
    public void cancel() {
        this.networkProxy.cancel();
        super.cancel();
    }

    public void convertResponse(Response response) throws QCloudClientException, QCloudServiceException {
        this.httpResult = this.networkProxy.convertResponse(this.httpRequest, response);
    }

    public double getAverageStreamingSpeed(long j) {
        if ((this.httpRequest.getRequestBody() instanceof ProgressBody ? (ProgressBody) this.httpRequest.getRequestBody() : this.httpRequest.getResponseBodyConverter() instanceof ProgressBody ? (ProgressBody) this.httpRequest.getResponseBodyConverter() : null) != null) {
            return (r4.getBytesTransferred() / 1024.0d) / (j / 1000.0d);
        }
        return 0.0d;
    }

    public long getTransferBodySize() {
        ProgressBody progressBody = this.httpRequest.getRequestBody() instanceof ProgressBody ? (ProgressBody) this.httpRequest.getRequestBody() : this.httpRequest.getResponseBodyConverter() instanceof ProgressBody ? (ProgressBody) this.httpRequest.getResponseBodyConverter() : null;
        if (progressBody != null) {
            return progressBody.getBytesTransferred();
        }
        return 0L;
    }

    public boolean isDownloadTask() {
        return this.httpRequest.getResponseBodyConverter() instanceof ProgressBody;
    }

    public boolean isResponseFilePathConverter() {
        return (this.httpRequest.getResponseBodyConverter() instanceof ResponseFileConverter) && ((ResponseFileConverter) this.httpRequest.getResponseBodyConverter()).isFilePathConverter();
    }

    public boolean isSelfSigner() {
        return this.httpRequest.getQCloudSelfSigner() != null;
    }

    public boolean isSuccessful() {
        HttpResult<T> httpResult = this.httpResult;
        return httpResult != null && httpResult.isSuccessful();
    }

    public boolean isUploadTask() {
        if (this.httpRequest.getRequestBody() instanceof StreamingRequestBody) {
            return ((StreamingRequestBody) this.httpRequest.getRequestBody()).isLargeData();
        }
        return false;
    }

    public HttpTaskMetrics metrics() {
        return this.metrics;
    }

    public HttpRequest<T> request() {
        return this.httpRequest;
    }

    public HttpTask<T> schedule() {
        schedule(2);
        return this;
    }

    public HttpTask<T> scheduleOn(Executor executor) {
        scheduleOn(executor, 2);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00db, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0162, code lost:
    
        if ((r4.httpRequest.getRequestBody() instanceof com.tencent.qcloud.core.http.StreamingRequestBody) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01c1, code lost:
    
        if ((r4.httpRequest.getRequestBody() instanceof com.tencent.qcloud.core.http.StreamingRequestBody) != false) goto L33;
     */
    @Override // com.tencent.qcloud.core.task.QCloudTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.tencent.qcloud.core.http.HttpResult<T> execute() throws com.tencent.qcloud.core.common.QCloudClientException, com.tencent.qcloud.core.common.QCloudServiceException {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qcloud.core.http.HttpTask.execute():com.tencent.qcloud.core.http.HttpResult");
    }

    @Override // com.tencent.qcloud.core.task.QCloudTask
    public HttpResult<T> getResult() {
        return this.httpResult;
    }

    public HttpTask<T> schedule(int i) {
        if (this.httpRequest.getRequestBody() instanceof ProgressBody) {
            scheduleOn(TaskExecutors.UPLOAD_EXECUTOR, i);
        } else if (this.httpRequest.getResponseBodyConverter() instanceof ProgressBody) {
            scheduleOn(TaskExecutors.DOWNLOAD_EXECUTOR, i);
        } else {
            scheduleOn(TaskExecutors.COMMAND_EXECUTOR, i);
        }
        return this;
    }

    public HttpTask<T> scheduleOn(Executor executor, int i) {
        scheduleOn(executor, new CancellationTokenSource(), i);
        return this;
    }

    @Override // com.tencent.qcloud.core.task.QCloudTask
    public void cancel(boolean z) {
        this.networkProxy.cancel();
        super.cancel(z);
    }
}
