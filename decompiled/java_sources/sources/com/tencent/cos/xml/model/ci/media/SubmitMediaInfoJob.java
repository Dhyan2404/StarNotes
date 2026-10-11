package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class SubmitMediaInfoJob {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public SubmitMediaInfoJobInput input;
    public SubmitMediaInfoJobOperation operation;
    public String tag = "MediaInfo";

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class SubmitMediaInfoJobInput {
        public String object;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class SubmitMediaInfoJobOperation {
        public String jobLevel;
        public String userData;
    }
}
