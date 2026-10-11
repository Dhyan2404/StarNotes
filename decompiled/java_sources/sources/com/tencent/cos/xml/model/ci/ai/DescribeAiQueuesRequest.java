package com.tencent.cos.xml.model.ci.ai;

import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.model.ci.BaseDescribeQueuesRequest;

/* loaded from: classes10.dex */
public final class DescribeAiQueuesRequest extends BaseDescribeQueuesRequest {
    public DescribeAiQueuesRequest(String str) {
        super(str);
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/ai_queue";
    }

    public DescribeAiQueuesRequest(String str, String str2) {
        super(str);
        this.region = str2;
    }
}
