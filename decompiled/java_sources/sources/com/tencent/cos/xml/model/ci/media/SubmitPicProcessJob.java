package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.PicProcess;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class SubmitPicProcessJob {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public SubmitPicProcessJobInput input;
    public SubmitPicProcessJobOperation operation;
    public String tag = "PicProcess";

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class SubmitPicProcessJobInput {
        public String object;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class SubmitPicProcessJobOperation {
        public String jobLevel;
        public SubmitPicProcessJobOutput output;
        public PicProcess picProcess;
        public String templateId;
        public String userData;
    }

    @XmlBean(name = "Output")
    /* loaded from: classes10.dex */
    public static class SubmitPicProcessJobOutput {
        public String bucket;
        public String object;
        public String region;
    }
}
