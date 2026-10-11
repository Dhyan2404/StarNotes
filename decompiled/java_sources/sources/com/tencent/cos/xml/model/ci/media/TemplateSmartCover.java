package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class TemplateSmartCover {
    public String name;
    public TemplateSmartCoverSmartCover smartCover;
    public String tag = "SmartCover";

    @XmlBean(name = "SmartCover")
    /* loaded from: classes10.dex */
    public static class TemplateSmartCoverSmartCover {
        public String count;
        public String deleteDuplicates;
        public String format;
        public String height;
        public String width;
    }
}
