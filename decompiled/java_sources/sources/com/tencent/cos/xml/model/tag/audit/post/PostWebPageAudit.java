package com.tencent.cos.xml.model.tag.audit.post;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.tag.audit.bean.AuditConf;
import com.tencent.cos.xml.model.tag.audit.bean.AuditInput;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class PostWebPageAudit {
    public AuditInput input = new AuditInput();
    public WebPageAuditConf conf = new WebPageAuditConf();

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Conf")
    /* loaded from: classes10.dex */
    public static class WebPageAuditConf extends AuditConf {
        public boolean returnHighlightHtml;
    }
}
