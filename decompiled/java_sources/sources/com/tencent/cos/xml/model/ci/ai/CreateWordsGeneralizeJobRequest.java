package com.tencent.cos.xml.model.ci.ai;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.common.ClientErrorCode;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.cos.xml.model.ci.ai.bean.CreateWordsGeneralizeJob;
import com.tencent.cos.xml.utils.QCloudXmlUtils;
import com.tencent.qcloud.core.http.RequestBodySerializer;

/* loaded from: classes10.dex */
public class CreateWordsGeneralizeJobRequest extends BucketRequest {
    private final CreateWordsGeneralizeJob createWordsGeneralizeJob;

    public CreateWordsGeneralizeJobRequest(@NonNull String str) {
        super(str);
        addNoSignHeader("Content-Type");
        addNoSignHeader("Content-Length");
        this.createWordsGeneralizeJob = new CreateWordsGeneralizeJob();
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
        if (TextUtils.isEmpty(this.createWordsGeneralizeJob.input.object)) {
            throw new CosXmlClientException(ClientErrorCode.INVALID_ARGUMENT.getCode(), "input must be non-empty");
        }
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "POST";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/ai_jobs";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return RequestBodySerializer.string("application/xml", QCloudXmlUtils.toXml(this.createWordsGeneralizeJob));
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getRequestHost(CosXmlServiceConfig cosXmlServiceConfig) {
        return cosXmlServiceConfig.getRequestHost(this.region, this.bucket, CosXmlServiceConfig.CI_HOST_FORMAT);
    }

    public void setCallBack(@NonNull String str) {
        this.createWordsGeneralizeJob.callBack = str;
    }

    public void setCallBackFormat(@NonNull String str) {
        this.createWordsGeneralizeJob.callBackFormat = str;
    }

    public void setInputObject(@NonNull String str) {
        this.createWordsGeneralizeJob.input.object = str;
    }

    public void setJobLevel(int i) {
        this.createWordsGeneralizeJob.operation.jobLevel = i;
    }

    public void setNerMethod(@NonNull String str) {
        this.createWordsGeneralizeJob.operation.wordsGeneralize.nerMethod = str;
    }

    public void setQueueId(@NonNull String str) {
        this.createWordsGeneralizeJob.queueId = str;
    }

    public void setSegMethod(@NonNull String str) {
        this.createWordsGeneralizeJob.operation.wordsGeneralize.segMethod = str;
    }

    public void setUserData(@NonNull String str) {
        this.createWordsGeneralizeJob.operation.userData = str;
    }
}
