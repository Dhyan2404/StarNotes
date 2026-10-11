package com.tencent.cos.xml.model.ci.ai;

import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.Map;

/* loaded from: classes10.dex */
public class LivenessRecognitionRequest extends BucketRequest {
    public int bestFrameNum;
    public String ciProcess;
    public String idCard;
    public String livenessType;
    public String name;
    protected final String objectKey;
    public String validateData;

    public LivenessRecognitionRequest(@NonNull String str, @NonNull String str2) {
        super(str);
        this.ciProcess = "LivenessRecognition";
        this.objectKey = str2;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/" + this.objectKey;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public Map<String, String> getQueryString() {
        this.queryParameters.put("ci-process", this.ciProcess);
        this.queryParameters.put("IdCard", this.idCard);
        this.queryParameters.put("Name", this.name);
        this.queryParameters.put("LivenessType", this.livenessType);
        this.queryParameters.put("ValidateData", this.validateData);
        this.queryParameters.put("BestFrameNum", String.valueOf(this.bestFrameNum));
        return super.getQueryString();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return null;
    }
}
