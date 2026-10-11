package com.tencent.cos.xml.model.ci.ai;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public class AILicenseRecRequest extends BucketRequest {
    public String cardType;
    public String ciProcess;
    public String detectUrl;
    protected final String objectKey;

    public AILicenseRecRequest(@NonNull String str, @NonNull String str2) {
        super(str);
        this.ciProcess = "AILicenseRec";
        this.objectKey = str2;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        if (!TextUtils.isEmpty(this.detectUrl) || TextUtils.isEmpty(this.objectKey)) {
            return "/";
        }
        return "/" + this.objectKey;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put("ci-process", this.ciProcess);
        this.queryParameters.put("detect-url", this.detectUrl);
        this.queryParameters.put("CardType", this.cardType);
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return null;
    }
}
