package com.tencent.cos.xml.model.bucket;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public final class GetBucketLifecycleRequest extends BucketRequest {
    public GetBucketLifecycleRequest(String str) {
        super(str);
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put(RequestParameters.SUBRESOURCE_LIFECYCLE, null);
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() {
        return null;
    }
}
