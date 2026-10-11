package com.tencent.cos.xml.model.ci.audit;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.tag.audit.post.PostVideoAudit;
import com.tencent.cos.xml.utils.QCloudXmlUtils;
import com.tencent.qcloud.core.http.RequestBodySerializer;

/* loaded from: classes10.dex */
public class PostVideoAuditRequest extends BasePostAuditRequest {
    private final PostVideoAudit postVideoAudit;

    public PostVideoAuditRequest(@NonNull String str) {
        super(str);
        this.postVideoAudit = new PostVideoAudit();
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
        if (TextUtils.isEmpty(this.postVideoAudit.input.object)) {
            TextUtils.isEmpty(this.postVideoAudit.input.url);
        }
        int i = this.postVideoAudit.conf.snapshot.count;
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/video/auditing";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return RequestBodySerializer.string("application/xml", QCloudXmlUtils.toXml(this.postVideoAudit));
    }

    @Deprecated
    public void setBizType(@NonNull String str) {
        this.postVideoAudit.conf.bizType = str;
    }

    @Deprecated
    public void setCallback(@NonNull String str) {
        this.postVideoAudit.conf.callback = str;
    }

    @Deprecated
    public void setCallbackVersion(@NonNull String str) {
        this.postVideoAudit.conf.callbackVersion = str;
    }

    public void setConfig(@NonNull PostVideoAudit.VideoAuditConf videoAuditConf) {
        this.postVideoAudit.conf = videoAuditConf;
    }

    @Deprecated
    public void setCount(int i) {
        this.postVideoAudit.conf.snapshot.count = i;
    }

    @Deprecated
    public void setDataId(@NonNull String str) {
        this.postVideoAudit.input.dataId = str;
    }

    @Deprecated
    public void setDetectContent(int i) {
        this.postVideoAudit.conf.detectContent = i;
    }

    @Deprecated
    public void setDetectType(@NonNull String str) {
        this.postVideoAudit.conf.detectType = str;
    }

    public void setInput(@NonNull PostVideoAudit.VideoAuditInput videoAuditInput) {
        this.postVideoAudit.input = videoAuditInput;
    }

    @Deprecated
    public void setMode(@NonNull String str) {
        this.postVideoAudit.conf.snapshot.mode = str;
    }

    @Deprecated
    public void setObject(@NonNull String str) {
        this.postVideoAudit.input.object = str;
    }

    @Deprecated
    public void setTimeInterval(float f) {
        this.postVideoAudit.conf.snapshot.timeInterval = f;
    }

    @Deprecated
    public void setUrl(@NonNull String str) {
        this.postVideoAudit.input.url = str;
    }
}
