package com.tencent.cos.xml.model.ci.audit;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.tag.audit.post.PostTextAudit;
import com.tencent.cos.xml.utils.QCloudXmlUtils;
import com.tencent.qcloud.core.http.RequestBodySerializer;

/* loaded from: classes10.dex */
public class PostTextAuditRequest extends BasePostAuditRequest {
    protected final PostTextAudit postTextAudit;

    public PostTextAuditRequest(@NonNull String str) {
        super(str);
        this.postTextAudit = new PostTextAudit();
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
        if (TextUtils.isEmpty(this.postTextAudit.input.object) && TextUtils.isEmpty(this.postTextAudit.input.url)) {
            TextUtils.isEmpty(this.postTextAudit.input.content);
        }
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/text/auditing";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return RequestBodySerializer.string("application/xml", QCloudXmlUtils.toXml(this.postTextAudit));
    }

    @Deprecated
    public void setBizType(@NonNull String str) {
        this.postTextAudit.conf.bizType = str;
    }

    @Deprecated
    public void setCallback(@NonNull String str) {
        this.postTextAudit.conf.callback = str;
    }

    @Deprecated
    public void setCallbackVersion(@NonNull String str) {
        this.postTextAudit.conf.callbackVersion = str;
    }

    public void setConfig(@NonNull PostTextAudit.TextAuditConf textAuditConf) {
        this.postTextAudit.conf = textAuditConf;
    }

    @Deprecated
    public void setContent(@NonNull String str) {
        this.postTextAudit.input.content = str;
    }

    @Deprecated
    public void setDataId(@NonNull String str) {
        this.postTextAudit.input.dataId = str;
    }

    @Deprecated
    public void setDetectType(@NonNull String str) {
        this.postTextAudit.conf.detectType = str;
    }

    public void setInput(@NonNull PostTextAudit.TextAuditInput textAuditInput) {
        this.postTextAudit.input = textAuditInput;
    }

    @Deprecated
    public void setObject(@NonNull String str) {
        this.postTextAudit.input.object = str;
    }

    @Deprecated
    public void setUrl(@NonNull String str) {
        this.postTextAudit.input.url = str;
    }
}
