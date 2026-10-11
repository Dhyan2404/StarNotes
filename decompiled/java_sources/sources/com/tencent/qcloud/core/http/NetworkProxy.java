package com.tencent.qcloud.core.http;

import com.tencent.qcloud.core.common.QCloudClientException;
import com.tencent.qcloud.core.common.QCloudProgressListener;
import com.tencent.qcloud.core.common.QCloudServiceException;
import okhttp3.Response;

/* loaded from: classes10.dex */
public abstract class NetworkProxy<T> {
    protected String identifier;
    protected QCloudProgressListener mProgressListener;
    protected HttpTaskMetrics metrics;

    public abstract void cancel();

    public abstract HttpResult<T> convertResponse(HttpRequest<T> httpRequest, Response response) throws QCloudClientException, QCloudServiceException;

    public abstract HttpResult<T> executeHttpRequest(HttpRequest<T> httpRequest) throws QCloudClientException, QCloudServiceException;
}
