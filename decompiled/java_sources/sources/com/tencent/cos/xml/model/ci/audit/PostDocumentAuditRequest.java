package com.tencent.cos.xml.model.ci.audit;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.tag.audit.bean.AuditConf;
import com.tencent.cos.xml.model.tag.audit.post.PostDocumentAudit;
import com.tencent.cos.xml.utils.QCloudXmlUtils;
import com.tencent.qcloud.core.http.RequestBodySerializer;

/* loaded from: classes10.dex */
public class PostDocumentAuditRequest extends BasePostAuditRequest {
    private final PostDocumentAudit postDocumentAudit;

    public PostDocumentAuditRequest(@NonNull String str) {
        super(str);
        this.postDocumentAudit = new PostDocumentAudit();
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
        if (TextUtils.isEmpty(this.postDocumentAudit.input.object)) {
            TextUtils.isEmpty(this.postDocumentAudit.input.url);
        }
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/document/auditing";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return RequestBodySerializer.string("application/xml", QCloudXmlUtils.toXml(this.postDocumentAudit));
    }

    @Deprecated
    public void setBizType(@NonNull String str) {
        this.postDocumentAudit.conf.bizType = str;
    }

    @Deprecated
    public void setCallback(@NonNull String str) {
        this.postDocumentAudit.conf.callback = str;
    }

    public void setConfig(@NonNull AuditConf auditConf) {
        this.postDocumentAudit.conf = auditConf;
    }

    @Deprecated
    public void setDataId(@NonNull String str) {
        this.postDocumentAudit.input.dataId = str;
    }

    @Deprecated
    public void setDetectType(@NonNull String str) {
        this.postDocumentAudit.conf.detectType = str;
    }

    public void setInput(@NonNull PostDocumentAudit.DocumentAuditInput documentAuditInput) {
        this.postDocumentAudit.input = documentAuditInput;
    }

    @Deprecated
    public void setObject(@NonNull String str) {
        this.postDocumentAudit.input.object = str;
    }

    @Deprecated
    public void setType(@NonNull String str) {
        this.postDocumentAudit.input.type = str;
    }

    @Deprecated
    public void setUrl(@NonNull String str) {
        this.postDocumentAudit.input.url = str;
    }
}
