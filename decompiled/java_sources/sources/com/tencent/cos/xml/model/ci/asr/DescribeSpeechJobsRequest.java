package com.tencent.cos.xml.model.ci.asr;

import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.qcloud.core.http.RequestBodySerializer;

/* loaded from: classes10.dex */
public final class DescribeSpeechJobsRequest extends BucketRequest {
    public DescribeSpeechJobsRequest(String str) {
        super(str);
        this.queryParameters.put("tag", "SpeechRecognition");
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "GET";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/asr_jobs";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return null;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getRequestHost(CosXmlServiceConfig cosXmlServiceConfig) {
        return cosXmlServiceConfig.getRequestHost(this.region, this.bucket, CosXmlServiceConfig.CI_HOST_FORMAT);
    }

    public void setEndCreationTime(String str) {
        this.queryParameters.put("endCreationTime", str);
    }

    public void setNextToken(String str) {
        this.queryParameters.put("nextToken", str);
    }

    public void setOrderByTime(String str) {
        this.queryParameters.put("orderByTime", str);
    }

    public void setQueueId(@NonNull String str) {
        this.queryParameters.put("queueId", str);
    }

    public void setSize(int i) {
        this.queryParameters.put("size", String.valueOf(i));
    }

    public void setStartCreationTime(String str) {
        this.queryParameters.put("startCreationTime", str);
    }

    public void setStates(String str) {
        this.queryParameters.put("states", str);
    }

    public DescribeSpeechJobsRequest(String str, String str2) {
        this(str);
        this.region = str2;
    }
}
