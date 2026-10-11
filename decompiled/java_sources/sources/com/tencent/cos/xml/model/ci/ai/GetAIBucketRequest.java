package com.tencent.cos.xml.model.ci.ai;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.CosXmlRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public class GetAIBucketRequest extends CosXmlRequest {
    public String bucketName;
    public String bucketNames;
    public int pageNumber;
    public int pageSize;
    public String regions;

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/ai_bucket";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        String str = this.regions;
        if (str != null) {
            this.queryParameters.put("regions", str);
        }
        String str2 = this.bucketNames;
        if (str2 != null) {
            this.queryParameters.put("bucketNames", str2);
        }
        String str3 = this.bucketName;
        if (str3 != null) {
            this.queryParameters.put("bucketName", str3);
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
        return cosXmlServiceConfig.getRequestHost(this.region, CosXmlServiceConfig.CI_REGION_HOST_FORMAT);
    }
}
