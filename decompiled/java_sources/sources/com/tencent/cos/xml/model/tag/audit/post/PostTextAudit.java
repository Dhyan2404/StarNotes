package com.tencent.cos.xml.model.tag.audit.post;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.tag.audit.bean.AuditConf;
import com.tencent.cos.xml.model.tag.audit.bean.AuditInput;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class PostTextAudit {
    public TextAuditInput input = new TextAuditInput();
    public TextAuditConf conf = new TextAuditConf();

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Conf")
    /* loaded from: classes10.dex */
    public static class TextAuditConf extends AuditConf {
        public String callbackVersion;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class TextAuditInput extends AuditInput {
        public String content;
    }
}
