package com.tencent.cos.xml.model.ci.audit;

import androidx.annotation.NonNull;
import com.tencent.cos.xml.CosXmlServiceConfig;
import com.tencent.cos.xml.exception.CosXmlClientException;
import com.tencent.cos.xml.model.tag.audit.bean.AuditConf;
import com.tencent.cos.xml.model.tag.audit.post.PostImagesAudit;
import com.tencent.cos.xml.utils.QCloudXmlUtils;
import com.tencent.qcloud.core.http.RequestBodySerializer;
import java.util.List;

/* loaded from: classes10.dex */
public class PostImagesAuditRequest extends BasePostAuditRequest {
    private final PostImagesAudit postImagesAudit;

    public PostImagesAuditRequest(@NonNull String str) {
        super(str);
        this.postImagesAudit = new PostImagesAudit();
    }

    public void addImage(@NonNull PostImagesAudit.ImagesAuditInput imagesAuditInput) {
        this.postImagesAudit.input.add(imagesAuditInput);
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public void checkParameters() throws CosXmlClientException {
        super.checkParameters();
        List<PostImagesAudit.ImagesAuditInput> list = this.postImagesAudit.input;
        if (list != null) {
            list.size();
        }
    }

    @Override // com.tencent.cos.xml.model.bucket.BucketRequest, com.tencent.cos.xml.model.CosXmlRequest
    public String getPath(CosXmlServiceConfig cosXmlServiceConfig) {
        return "/image/auditing";
    }

    @Override // com.tencent.cos.xml.model.CosXmlRequest
    public RequestBodySerializer getRequestBody() throws CosXmlClientException {
        return RequestBodySerializer.string("application/xml", QCloudXmlUtils.toXml(this.postImagesAudit));
    }

    @Deprecated
    public void setAsync(int i) {
        this.postImagesAudit.conf.async = i;
    }

    @Deprecated
    public void setBizType(@NonNull String str) {
        this.postImagesAudit.conf.bizType = str;
    }

    @Deprecated
    public void setCallback(@NonNull String str) {
        this.postImagesAudit.conf.callback = str;
    }

    public void setConfig(@NonNull AuditConf auditConf) {
        this.postImagesAudit.conf = auditConf;
    }

    @Deprecated
    public void setDetectType(@NonNull String str) {
        this.postImagesAudit.conf.detectType = str;
    }

    @Deprecated
    public void setFreeze(@NonNull AuditConf.Freeze freeze) {
        this.postImagesAudit.conf.freeze = freeze;
    }
}
