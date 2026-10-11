package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.DigitalWatermark;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class SubmitDigitalWatermarkJob {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public SubmitDigitalWatermarkJobInput input;
    public SubmitDigitalWatermarkJobOperation operation;
    public String tag = "DigitalWatermark";

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class SubmitDigitalWatermarkJobInput {
        public String object;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class SubmitDigitalWatermarkJobOperation {
        public DigitalWatermark digitalWatermark;
        public String jobLevel;
        public SubmitDigitalWatermarkJobOutput output;
        public String userData;
    }

    @XmlBean(name = "Output")
    /* loaded from: classes10.dex */
    public static class SubmitDigitalWatermarkJobOutput {
        public String bucket;
        public String object;
        public String region;
    }
}
