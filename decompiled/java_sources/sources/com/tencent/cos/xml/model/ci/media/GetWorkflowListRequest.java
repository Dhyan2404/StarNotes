package com.tencent.cos.xml.model.ci.media;

import androidx.annotation.NonNull;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public class GetWorkflowListRequest extends BucketRequest {
    public String ids;
    public String name;
    public String pageNumber;
    public String pageSize;

    public GetWorkflowListRequest(@NonNull String str) {
        super(str);
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/workflow";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put("ids", this.ids);
        this.queryParameters.put("name", this.name);
        this.queryParameters.put(CouchFieldKey.KEY_PAGE_NUMBER, this.pageNumber);
        this.queryParameters.put("pageSize", this.pageSize);
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
