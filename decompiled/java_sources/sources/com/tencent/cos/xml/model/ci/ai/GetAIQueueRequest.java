package com.tencent.cos.xml.model.ci.ai;

import androidx.annotation.NonNull;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public class GetAIQueueRequest extends BucketRequest {
    public int pageNumber;
    public int pageSize;
    public String queueIds;
    public String state;

    public GetAIQueueRequest(@NonNull String str) {
        super(str);
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/ai_queue";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        String str = this.queueIds;
        if (str != null) {
            this.queryParameters.put("queueIds", str);
        }
        String str2 = this.state;
        if (str2 != null) {
            this.queryParameters.put("state", str2);
        }
        this.queryParameters.put(CouchFieldKey.KEY_PAGE_NUMBER, String.valueOf(this.pageNumber));
        this.queryParameters.put("pageSize", String.valueOf(this.pageSize));
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return null;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getRequestHost(CosXmlServiceConfig cosXmlServiceConfig) {
        return cosXmlServiceConfig.getRequestHost(this.region, this.bucket, CosXmlServiceConfig.CI_HOST_FORMAT);
    }
}
