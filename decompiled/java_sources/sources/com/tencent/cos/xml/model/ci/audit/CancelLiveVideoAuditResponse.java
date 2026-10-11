package com.tencent.cos.xml.model.ci.audit;

import com.tencent.qcloud.qcloudxml.annoation.XmlBean;

@XmlBean(method = XmlBean.GenerateMethod.FROM, name = "Response")
/* loaded from: classes10.dex */
public class CancelLiveVideoAuditResponse {
    public CancelLiveVideoAuditResponseJobsDetail jobsDetail;
    public String requestId;

    @XmlBean(method = XmlBean.GenerateMethod.FROM, name = "JobsDetail")
    /* loaded from: classes10.dex */
    public static class CancelLiveVideoAuditResponseJobsDetail {
        public String creationTime;
        public String dataId;
        public String jobId;
    }
}
