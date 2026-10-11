package com.tencent.cos.xml.model.tag.audit.post;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.tag.audit.bean.AuditConf;
import com.tencent.cos.xml.model.tag.audit.bean.AuditEncryption;
import com.tencent.cos.xml.model.tag.audit.bean.AuditInput;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class PostVideoAudit {
    public VideoAuditInput input = new VideoAuditInput();
    public VideoAuditConf conf = new VideoAuditConf();

    @XmlBean(method = XmlBean.GenerateMethod.TO)
    /* loaded from: classes10.dex */
    public static class Snapshot {
        public int count;
        public String mode;

        @XmlElement(ignoreZero = true)
        public float timeInterval;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Conf")
    /* loaded from: classes10.dex */
    public static class VideoAuditConf extends AuditConf {
        public String callbackVersion;
        public int detectContent;
        public Snapshot snapshot = new Snapshot();
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class VideoAuditInput extends AuditInput {
        public AuditEncryption encryption;
    }
}
