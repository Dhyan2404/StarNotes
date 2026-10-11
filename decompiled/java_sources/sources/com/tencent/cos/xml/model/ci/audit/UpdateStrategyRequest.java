package com.tencent.cos.xml.model.ci.audit;

import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.cos.xml.utils.QCloudXmlUtils;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public class UpdateStrategyRequest extends BucketRequest {
    private final String bizType;
    private final String service;
    private UpdateStrategy updateStrategy;

    public UpdateStrategyRequest(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        super(str);
        addNoSignHeader("Content-Type");
        this.service = str2;
        this.bizType = str3;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "PUT";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/audit/strategy/" + this.bizType;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put(NotificationCompat.CATEGORY_SERVICE, this.service);
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return RequestBodySerializer.string("application/xml", QCloudXmlUtils.toXml(this.updateStrategy));
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getRequestHost(CosXmlServiceConfig cosXmlServiceConfig) {
        return cosXmlServiceConfig.getRequestHost(this.region, this.bucket, CosXmlServiceConfig.CI_HOST_FORMAT);
    }

    public void updateStrategy(@NonNull UpdateStrategy updateStrategy) {
        this.updateStrategy = updateStrategy;
    }
}
