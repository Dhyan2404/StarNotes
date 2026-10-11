package com.tencent.cos.xml.model.ci;

import androidx.annotation.NonNull;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;

/* loaded from: classes10.dex */
public abstract class BaseDescribeQueuesRequest extends BucketRequest {
    public BaseDescribeQueuesRequest(String str) {
        super(str);
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return null;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getRequestHost(CosXmlServiceConfig cosXmlServiceConfig) {
        return cosXmlServiceConfig.getRequestHost(this.region, this.bucket, CosXmlServiceConfig.CI_HOST_FORMAT);
    }

    public void setPageNumber(int i) {
        this.queryParameters.put(CouchFieldKey.KEY_PAGE_NUMBER, String.valueOf(i));
    }

    public void setPageSize(int i) {
        this.queryParameters.put("pageSize", String.valueOf(i));
    }

    public void setQueueIds(@NonNull String str) {
        this.queryParameters.put("queueIds", str);
    }

    public void setState(@NonNull String str) {
        this.queryParameters.put("state", str);
    }

    public BaseDescribeQueuesRequest(String str, String str2) {
        super(str);
        this.region = str2;
    }
}
