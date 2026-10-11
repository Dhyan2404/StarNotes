package com.tencent.cos.xml.model.tag.audit.post;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.tag.audit.bean.AuditConf;
import com.tencent.cos.xml.model.tag.audit.bean.AuditInput;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class PostDocumentAudit {
    public DocumentAuditInput input = new DocumentAuditInput();
    public AuditConf conf = new AuditConf();

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class DocumentAuditInput extends AuditInput {
        public String type;
    }
}
