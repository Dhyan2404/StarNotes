package com.tencent.cos.xml.model.ci.audit;

import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.model.bucket.BucketRequest;

/* loaded from: classes10.dex */
public abstract class BasePostAuditRequest extends BucketRequest {
    public BasePostAuditRequest(@NonNull String str) {
        super(str);
        addNoSignHeader("Content-Type");
        addNoSignHeader("Content-Length");
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "POST";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getRequestHost(CosXmlServiceConfig cosXmlServiceConfig) {
        return cosXmlServiceConfig.getRequestHost(this.region, this.bucket, CosXmlServiceConfig.CI_HOST_FORMAT);
    }
}
