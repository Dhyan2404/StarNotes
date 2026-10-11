package com.tencent.cos.xml.model.ci;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.CosXmlRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;

/* loaded from: classes10.dex */
public class DescribeDocProcessBucketsRequest extends CosXmlRequest {
    public DescribeDocProcessBucketsRequest() {
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/docbucket";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return null;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getRequestHost(CosXmlServiceConfig cosXmlServiceConfig) {
        return cosXmlServiceConfig.getRequestHost(this.region, CosXmlServiceConfig.CI_REGION_HOST_FORMAT);
    }

    public void setBucketName(String str) {
        this.queryParameters.put("bucketName", str);
    }

    public void setBucketNames(String str) {
        this.queryParameters.put("bucketNames", str);
    }

    public void setPageNumber(int i) {
        this.queryParameters.put(CouchFieldKey.KEY_PAGE_NUMBER, String.valueOf(i));
    }

    public void setPageSize(int i) {
        this.queryParameters.put("pageSize", String.valueOf(i));
    }

    public void setRegions(String str) {
        this.queryParameters.put("regions", str);
    }

    public DescribeDocProcessBucketsRequest(String str) {
        this.region = str;
    }
}
