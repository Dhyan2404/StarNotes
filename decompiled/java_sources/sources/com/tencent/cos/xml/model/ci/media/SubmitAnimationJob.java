package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.TemplateAnimation;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class SubmitAnimationJob {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public SubmitAnimationJobInput input;
    public SubmitAnimationJobOperation operation;
    public String tag = "Animation";

    @XmlBean(name = "Animation")
    /* loaded from: classes10.dex */
    public static class SubmitAnimationJobAnimation {
        public TemplateAnimation.TemplateAnimationContainer container;
        public TemplateAnimation.TemplateAnimationTimeInterval timeInterval;
        public TemplateAnimation.TemplateAnimationVideo video;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class SubmitAnimationJobInput {
        public String object;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class SubmitAnimationJobOperation {
        public SubmitAnimationJobAnimation animation;
        public String jobLevel;
        public SubmitAnimationJobOutput output;
        public String templateId;
        public String userData;
    }

    @XmlBean(name = "Output")
    /* loaded from: classes10.dex */
    public static class SubmitAnimationJobOutput {
        public String bucket;
        public String object;
        public String region;
    }
}
