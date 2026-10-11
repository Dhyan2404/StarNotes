package com.tencent.cos.xml.model.ci.media;

import com.bumptech.glide.request.SingleRequest;
import com.tencent.cos.xml.model.ci.media.TemplateSnapshot;
import com.tencent.cos.xml.model.tag.CallBackMqConfig;
import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.TO, name = SingleRequest.f15334D)
/* loaded from: classes10.dex */
public class SubmitSnapshotJob {
    public String callBack;
    public String callBackFormat;
    public CallBackMqConfig callBackMqConfig;
    public String callBackType;
    public SubmitSnapshotJobInput input;
    public SubmitSnapshotJobOperation operation;
    public String tag = "Snapshot";

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Input")
    /* loaded from: classes10.dex */
    public static class SubmitSnapshotJobInput {
        public String object;
    }

    @XmlBean(method = XmlBean.GenerateMethod.TO, name = "Operation")
    /* loaded from: classes10.dex */
    public static class SubmitSnapshotJobOperation {
        public String jobLevel;
        public SubmitSnapshotJobOutput output;
        public TemplateSnapshot.TemplateSnapshotSnapshot snapshot;
        public String templateId;
        public String userData;
    }

    @XmlBean(name = "Output")
    /* loaded from: classes10.dex */
    public static class SubmitSnapshotJobOutput {
        public String bucket;
        public String object;
        public String region;
        public String spriteObject;
    }
}
