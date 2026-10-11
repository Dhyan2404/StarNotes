package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.CallBackMqConfig;
import com.tencent.cos.xml.model.ci.common.VideoTargetRec;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class PostVideoTargetRec {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public PostVideoTargetRecInput input;
    public PostVideoTargetRecOperation operation;
    public String tag = "VideoTargetRec";

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class PostVideoTargetRecInput {
        public String object;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class PostVideoTargetRecOperation {
        public String jobLevel;
        public String templateId;
        public String userData;
        public VideoTargetRec videoTargetRec;
    }
}
