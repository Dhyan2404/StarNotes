package com.tencent.cos.xml.model.ci.asr;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.bucket.BucketRequest;
import com.tencent.cos.xml.model.ci.asr.bean.CreateSpeechJobs;
import com.tencent.cos.xml.model.ci.asr.bean.SpeechRecognition;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.cos.xml.model.tag.Locator;
import com.tencent.cos.xml.utils.QCloudXmlUtils;
import com.tencent.qcloud.core.http.RequestBodySerializer;

/* loaded from: classes10.dex */
public class CreateSpeechJobsRequest extends BucketRequest {
    private final CreateSpeechJobs createSpeechJobs;

    public CreateSpeechJobsRequest(@NonNull String str) {
        super(str);
        addNoSignHeader("Content-Type");
        addNoSignHeader("Content-Length");
        this.createSpeechJobs = new CreateSpeechJobs();
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
        if (TextUtils.isEmpty(this.createSpeechJobs.input.object)) {
            TextUtils.isEmpty(this.createSpeechJobs.input.url);
        }
        if (!TextUtils.isEmpty(this.createSpeechJobs.operation.output.region) && !TextUtils.isEmpty(this.createSpeechJobs.operation.output.bucket)) {
            TextUtils.isEmpty(this.createSpeechJobs.operation.output.object);
        }
        TextUtils.isEmpty(this.createSpeechJobs.operation.speechRecognition.engineModelType);
        SpeechRecognition speechRecognition = this.createSpeechJobs.operation.speechRecognition;
        int i = speechRecognition.channelNum;
        int i2 = speechRecognition.resTextFormat;
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getMethod() {
        return "POST";
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/asr_jobs";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return RequestBodySerializer.string("application/xml", QCloudXmlUtils.toXml(this.createSpeechJobs));
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public String getRequestHost(CosXmlServiceConfig cosXmlServiceConfig) {
        return cosXmlServiceConfig.getRequestHost(this.region, this.bucket, CosXmlServiceConfig.CI_HOST_FORMAT);
    }

    public void setCallBack(@NonNull String str) {
        this.createSpeechJobs.callBack = str;
    }

    public void setCallBackFormat(@NonNull String str) {
        this.createSpeechJobs.callBackFormat = str;
    }

    public void setCallBackMqConfig(@NonNull CallBackMqConfig callBackMqConfig) {
        this.createSpeechJobs.callBackMqConfig = callBackMqConfig;
    }

    public void setCallBackType(@NonNull String str) {
        this.createSpeechJobs.callBackType = str;
    }

    public void setChannelNum(int i) {
        this.createSpeechJobs.operation.speechRecognition.channelNum = i;
    }

    public void setConvertNumMode(int i) {
        this.createSpeechJobs.operation.speechRecognition.convertNumMode = i;
    }

    public void setEngineModelType(@NonNull String str) {
        this.createSpeechJobs.operation.speechRecognition.engineModelType = str;
    }

    public void setFilterDirty(int i) {
        this.createSpeechJobs.operation.speechRecognition.filterDirty = i;
    }

    public void setFilterModal(int i) {
        this.createSpeechJobs.operation.speechRecognition.filterModal = i;
    }

    public void setFilterPunc(int i) {
        this.createSpeechJobs.operation.speechRecognition.filterPunc = i;
    }

    public void setFirstChannelOnly(int i) {
        this.createSpeechJobs.operation.speechRecognition.firstChannelOnly = i;
    }

    public void setFlashAsr(boolean z) {
        this.createSpeechJobs.operation.speechRecognition.flashAsr = z;
    }

    public void setFormat(String str) {
        this.createSpeechJobs.operation.speechRecognition.format = str;
    }

    public void setInputObject(@NonNull String str) {
        this.createSpeechJobs.input.object = str;
    }

    public void setInputUrl(@NonNull String str) {
        this.createSpeechJobs.input.url = str;
    }

    public void setJobLevel(int i) {
        this.createSpeechJobs.operation.jobLevel = i;
    }

    public void setOutput(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        Locator locator = this.createSpeechJobs.operation.output;
        locator.region = str;
        locator.bucket = str2;
        locator.object = str3;
    }

    public void setOutputFileType(String str) {
        this.createSpeechJobs.operation.speechRecognition.outputFileType = str;
    }

    public void setQueueId(@NonNull String str) {
        this.createSpeechJobs.queueId = str;
    }

    public void setResTextFormat(int i) {
        this.createSpeechJobs.operation.speechRecognition.resTextFormat = i;
    }

    public void setSpeakerDiarization(int i) {
        this.createSpeechJobs.operation.speechRecognition.speakerDiarization = i;
    }

    public void setSpeakerNumber(int i) {
        this.createSpeechJobs.operation.speechRecognition.speakerNumber = i;
    }

    public void setTemplateId(String str) {
        this.createSpeechJobs.operation.templateId = str;
    }

    public void setUserData(@NonNull String str) {
        this.createSpeechJobs.operation.userData = str;
    }

    public void setWordInfo(int i) {
        this.createSpeechJobs.operation.speechRecognition.wordInfo = i;
    }
}
