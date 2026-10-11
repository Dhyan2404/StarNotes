package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.CallBackMqConfig;
import com.tencent.cos.xml.model.ci.common.NoiseReduction;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class PostNoiseReduction {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public PostNoiseReductionInput input;
    public PostNoiseReductionOperation operation;
    public String tag = "NoiseReduction";

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class PostNoiseReductionInput {
        public String object;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class PostNoiseReductionOperation {
        public String jobLevel;
        public NoiseReduction noiseReduction;
        public PostNoiseReductionOutput output;
        public String templateId;
        public String userData;
    }

    @XmlBean(method = XmlBean.GenerateMethod.ALL, name = "Output")
    /* loaded from: classes10.dex */
    public static class PostNoiseReductionOutput {
        public String bucket;
        public String object;
        public String region;
    }
}
