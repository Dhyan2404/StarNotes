package com.tencent.cos.xml.model.ci.audit;

import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;

/* loaded from: classes10.dex */
public class GetImageAuditRequest extends GetAuditRequest {
    public GetImageAuditRequest(String str, @NonNull String str2) {
        super(str, str2);
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/image/auditing/" + this.jobId;
    }
}
