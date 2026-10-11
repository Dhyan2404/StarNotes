package com.tencent.cos.xml.model.ci.audit;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.tag.audit.bean.AuditInput;
import com.tencent.cos.xml.model.tag.audit.post.PostWebPageAudit;
import com.tencent.cos.xml.utils.QCloudXmlUtils;
import com.tencent.qcloud.core.http.RequestBodySerializer;

/* loaded from: classes10.dex */
public class PostWebPageAuditRequest extends BasePostAuditRequest {
    private final PostWebPageAudit postWebPageAudit;

    public PostWebPageAuditRequest(@NonNull String str) {
        super(str);
        this.postWebPageAudit = new PostWebPageAudit();
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
        TextUtils.isEmpty(this.postWebPageAudit.input.url);
        TextUtils.isEmpty(this.postWebPageAudit.conf.detectType);
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/webpage/auditing";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return RequestBodySerializer.string("application/xml", QCloudXmlUtils.toXml(this.postWebPageAudit));
    }

    @Deprecated
    public void setCallback(@NonNull String str) {
        this.postWebPageAudit.conf.callback = str;
    }

    public void setConfig(@NonNull PostWebPageAudit.WebPageAuditConf webPageAuditConf) {
        this.postWebPageAudit.conf = webPageAuditConf;
    }

    @Deprecated
    public void setDetectType(@NonNull String str) {
        this.postWebPageAudit.conf.detectType = str;
    }

    public void setInput(@NonNull AuditInput auditInput) {
        this.postWebPageAudit.input = auditInput;
    }

    @Deprecated
    public void setReturnHighlightHtml(boolean z) {
        this.postWebPageAudit.conf.returnHighlightHtml = z;
    }

    @Deprecated
    public void setUrl(@NonNull String str) {
        this.postWebPageAudit.input.url = str;
    }
}
