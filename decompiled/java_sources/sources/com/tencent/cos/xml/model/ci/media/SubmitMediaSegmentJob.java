package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class SubmitMediaSegmentJob {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public SubmitMediaSegmentJobInput input;
    public SubmitMediaSegmentJobOperation operation;
    public String tag = "Segment";

    @XmlBean(name = "HlsEncrypt")
    /* loaded from: classes10.dex */
    public static class SubmitMediaSegmentJobHlsEncrypt {
        public String isHlsEncrypt;
        public String uriKey;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class SubmitMediaSegmentJobInput {
        public String object;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class SubmitMediaSegmentJobOperation {
        public String jobLevel;
        public SubmitMediaSegmentJobOutput output;
        public SubmitMediaSegmentJobSegment segment;
    }

    @XmlBean(name = "Output")
    /* loaded from: classes10.dex */
    public static class SubmitMediaSegmentJobOutput {
        public String bucket;
        public String object;
        public String region;
    }

    @XmlBean(name = "Segment")
    /* loaded from: classes10.dex */
    public static class SubmitMediaSegmentJobSegment {
        public String duration;
        public String format;
        public SubmitMediaSegmentJobHlsEncrypt hlsEncrypt;
        public String transcodeIndex;
    }
}
