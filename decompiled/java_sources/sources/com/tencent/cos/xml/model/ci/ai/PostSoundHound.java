package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class PostSoundHound {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public PostSoundHoundInput input;
    public PostSoundHoundOperation operation;
    public String tag = "SoundHound";

    @XmlBean(method = XmlBean.GenerateMethod.ALL, name = "Input")
    /* loaded from: classes10.dex */
    public static class PostSoundHoundInput {
        public String object;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class PostSoundHoundOperation {
        public String jobLevel;
        public String userData;
    }
}
