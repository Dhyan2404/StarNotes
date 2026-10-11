package com.tencent.cos.xml.model.tag.audit.post;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.tag.audit.bean.AuditConf;
import com.tencent.cos.xml.model.tag.audit.bean.AuditEncryption;
import com.tencent.cos.xml.model.tag.audit.bean.AuditInput;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;
import com.tencent.qcloud.qcloudxml.annoation.XmlElement;
import java.util.ArrayList;
import java.util.List;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class PostImagesAudit {

    @XmlElement(ignoreListNote = true)
    public List<ImagesAuditInput> input = new ArrayList();
    public AuditConf conf = new AuditConf();

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class ImagesAuditInput extends AuditInput {
        public String content;
        public AuditEncryption encryption;

        @XmlElement(ignoreZero = true)
        public int interval;
        public int largeImageDetect;

        @XmlElement(ignoreZero = true)
        public int maxFrames;
    }
}
