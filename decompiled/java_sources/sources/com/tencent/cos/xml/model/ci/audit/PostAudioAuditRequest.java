package com.tencent.cos.xml.model.ci.audit;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.tag.audit.bean.AuditInput;
import com.tencent.cos.xml.model.tag.audit.post.PostAudioAudit;
import com.tencent.cos.xml.utils.QCloudXmlUtils;
import com.tencent.qcloud.core.http.RequestBodySerializer;

/* loaded from: classes10.dex */
public class PostAudioAuditRequest extends BasePostAuditRequest {
    private final PostAudioAudit postAudioAudit;

    public PostAudioAuditRequest(@NonNull String str) {
        super(str);
        this.postAudioAudit = new PostAudioAudit();
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
        if (TextUtils.isEmpty(this.postAudioAudit.input.object)) {
            TextUtils.isEmpty(this.postAudioAudit.input.url);
        }
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/audio/auditing";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return RequestBodySerializer.string("application/xml", QCloudXmlUtils.toXml(this.postAudioAudit));
    }

    @Deprecated
    public void setBizType(@NonNull String str) {
        this.postAudioAudit.conf.bizType = str;
    }

    @Deprecated
    public void setCallback(@NonNull String str) {
        this.postAudioAudit.conf.callback = str;
    }

    @Deprecated
    public void setCallbackVersion(@NonNull String str) {
        this.postAudioAudit.conf.callbackVersion = str;
    }

    public void setConfig(@NonNull PostAudioAudit.AudioAuditConf audioAuditConf) {
        this.postAudioAudit.conf = audioAuditConf;
    }

    @Deprecated
    public void setDataId(@NonNull String str) {
        this.postAudioAudit.input.dataId = str;
    }

    @Deprecated
    public void setDetectType(@NonNull String str) {
        this.postAudioAudit.conf.detectType = str;
    }

    public void setInput(@NonNull AuditInput auditInput) {
        this.postAudioAudit.input = auditInput;
    }

    @Deprecated
    public void setObject(@NonNull String str) {
        this.postAudioAudit.input.object = str;
    }

    @Deprecated
    public void setUrl(@NonNull String str) {
        this.postAudioAudit.input.url = str;
    }
}
