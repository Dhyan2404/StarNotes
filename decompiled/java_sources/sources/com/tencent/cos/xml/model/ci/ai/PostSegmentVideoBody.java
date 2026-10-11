package com.tencent.cos.xml.model.ci.ai;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.common.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class PostSegmentVideoBody {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public PostSegmentVideoBodyInput input;
    public PostSegmentVideoBodyOperation operation;
    public String tag = "SegmentVideoBody";

    @XmlBean(method = XmlBean.GenerateMethod.ALL, name = "Input")
    /* loaded from: classes10.dex */
    public static class PostSegmentVideoBodyInput {
        public String object;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class PostSegmentVideoBodyOperation {
        public String jobLevel;
        public PostSegmentVideoBodyOutput output;
        public PostSegmentVideoBodySegmentVideoBody segmentVideoBody;
        public String userData;
    }

    @XmlBean(method = XmlBean.GenerateMethod.ALL, name = "Output")
    /* loaded from: classes10.dex */
    public static class PostSegmentVideoBodyOutput {
        public String bucket;
        public String object;
        public String region;
    }

    @XmlBean(method = XmlBean.GenerateMethod.ALL, name = "SegmentVideoBody")
    /* loaded from: classes10.dex */
    public static class PostSegmentVideoBodySegmentVideoBody {
        public String backgroundBlue;
        public String backgroundGreen;
        public String backgroundLogoUrl;
        public String backgroundRed;
        public String binaryThreshold;
        public String mode;
        public String removeBlue;
        public String removeGreen;
        public String removeRed;
        public String segmentType;
    }
}
