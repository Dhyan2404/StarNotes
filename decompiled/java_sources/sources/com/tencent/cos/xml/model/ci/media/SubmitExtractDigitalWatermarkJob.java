package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class SubmitExtractDigitalWatermarkJob {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public SubmitExtractDigitalWatermarkJobInput input;
    public SubmitExtractDigitalWatermarkJobOperation operation;
    public String tag = "ExtractDigitalWatermark";

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "ExtractDigitalWatermark")
    /* loaded from: classes10.dex */
    public static class SubmitExtractDigitalWatermarkJobExtractDigitalWatermark {
        public String type = "Text";
        public String version = "V1";
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class SubmitExtractDigitalWatermarkJobInput {
        public String object;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class SubmitExtractDigitalWatermarkJobOperation {
        public SubmitExtractDigitalWatermarkJobExtractDigitalWatermark extractDigitalWatermark;
        public String jobLevel;
        public String userData;
    }
}
