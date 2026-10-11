package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class VocalScore {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public VocalScoreInput input;
    public VocalScoreOperation operation;
    public String tag = "VocalScore";

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "CallBackMqConfig")
    /* loaded from: classes10.dex */
    public static class CallBackMqConfig {
        public String mqMode;
        public String mqName;
        public String mqRegion;
    }

    @XmlBean(method = XmlBean.GenerateMethod.ALL, name = "Input")
    /* loaded from: classes10.dex */
    public static class VocalScoreInput {
        public String object;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class VocalScoreOperation {
        public String jobLevel;
        public String userData;
        public VocalScoreVocalScore vocalScore;
    }

    @XmlBean(method = XmlBean.GenerateMethod.ALL, name = "Operation")
    /* loaded from: classes10.dex */
    public static class VocalScoreVocalScore {
        public String standardObject;
    }
}
