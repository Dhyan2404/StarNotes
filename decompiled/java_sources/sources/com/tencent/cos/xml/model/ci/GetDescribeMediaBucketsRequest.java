package com.tencent.cos.xml.model.ci;

import androidx.annotation.NonNull;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.model.CosXmlRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;

/* loaded from: classes10.dex */
public final class GetDescribeMediaBucketsRequest extends CosXmlRequest {
    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/mediabucket";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() {
        return null;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getRequestHost(CosXmlServiceConfig cosXmlServiceConfig) {
        return String.format("ci.%s.myqcloud.com", cosXmlServiceConfig.getRegion());
    }

    public void setBucketName(@NonNull String str) {
        this.queryParameters.put("bucketName", str);
    }

    public void setBucketNames(@NonNull String str) {
        this.queryParameters.put("bucketNames", str);
    }

    public void setPageNumber(int i) {
        this.queryParameters.put(CouchFieldKey.KEY_PAGE_NUMBER, String.valueOf(i));
    }

    public void setPageSize(int i) {
        this.queryParameters.put("pageSize", String.valueOf(i));
    }

    public void setRegions(@NonNull String str) {
        this.queryParameters.put("regions", str);
    }
}
